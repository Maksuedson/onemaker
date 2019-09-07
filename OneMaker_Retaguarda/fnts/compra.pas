unit compra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, TFlatPanelUnit,
  AdvOfficeStatusBar, wwdblook, RzEdit,
  RzDBEdit, RzDBBnEd, RzLabel, AdvGlowButton,
  AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  Grids, Wwdbigrd, Wwdbgrid, ImgList, RzPanel, RzCmboBx, DB,
  ZAbstractRODataset, ZAbstractDataset, AdvOfficeStatusBarStylers
{$IFDEF VER150}
    , XPMan
{$ENDIF}
{$IFDEF VER160}
    , XPMan
{$ENDIF}
{$IFDEF VER170}
    , XPMan
{$ENDIF}
{$IFDEF VER180}
    , XPMan, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset
{$ENDIF},
  ZDataset, AdvPreviewMenuStylers, RzDBCmbo, AdvMenus, AdvMenuStylers,
  BaseGrid, AdvGrid, DBAdvGrid, Menus, PageView, AdvShapeButton, RzSpnEdt,
  RzBtnEdt, RzDBSpin, System.ImageList, JvExMask, JvToolEdit, JvDBControls,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  Tfrmcompra = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    stilo2: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler3: TAdvOfficeStatusBarOfficeStyler;
    AdvPreviewMenu1: TAdvPreviewMenu;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    ImageList1: TImageList;
    AdvOfficeStatusBarOfficeStyler4: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler5: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler6: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler7: TAdvOfficeStatusBarOfficeStyler;
    dsnota: TDataSource;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    qrnota_item: TZQuery;
    dscompra_item: TDataSource;
    qrnf: TZQuery;
    qrgrade_entrada: TZQuery;
    AdvOfficeStatusBarOfficeStyler2: TAdvOfficeStatusBarOfficeStyler;
    query: TZQuery;
    tab_principal: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    PageSheet12: TPageSheet;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    wwDBGrid1: TwwDBGrid;
    Panel3: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBNumericEdit11: TRzDBNumericEdit;
    RzDBNumericEdit13: TRzDBNumericEdit;
    RzDBNumericEdit17: TRzDBNumericEdit;
    RzDBNumericEdit18: TRzDBNumericEdit;
    RzDBNumericEdit19: TRzDBNumericEdit;
    RzDBNumericEdit20: TRzDBNumericEdit;
    RzDBNumericEdit21: TRzDBNumericEdit;
    RzDBNumericEdit22: TRzDBNumericEdit;
    RzDBNumericEdit23: TRzDBNumericEdit;
    RzDBNumericEdit24: TRzDBNumericEdit;
    RzDBNumericEdit25: TRzDBNumericEdit;
    RzDBNumericEdit26: TRzDBNumericEdit;
    RzDBNumericEdit27: TRzDBNumericEdit;
    RzDBNumericEdit28: TRzDBNumericEdit;
    RzDBNumericEdit29: TRzDBNumericEdit;
    RzDBNumericEdit30: TRzDBNumericEdit;
    RzDBNumericEdit31: TRzDBNumericEdit;
    RzDBNumericEdit32: TRzDBNumericEdit;
    RzDBNumericEdit33: TRzDBNumericEdit;
    RzDBNumericEdit34: TRzDBNumericEdit;
    RzDBNumericEdit35: TRzDBNumericEdit;
    RzDBNumericEdit36: TRzDBNumericEdit;
    RzDBNumericEdit37: TRzDBNumericEdit;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
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
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    PageSheet3: TPageSheet;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit3: TDBEdit;
    ecodremetente: TRzDBButtonEdit;
    emercadoria: TRzDBNumericEdit;
    RzDBComboBox3: TRzDBComboBox;
    enota_fiscal: TDBEdit;
    RzDBNumericEdit4: TRzDBNumericEdit;
    Bevel2: TBevel;
    Label21: TLabel;
    Label22: TLabel;
    Panel4: TPanel;
    Label24: TLabel;
    RzDBNumericEdit38: TRzDBNumericEdit;
    Label53: TLabel;
    RzDBNumericEdit39: TRzDBNumericEdit;
    Label56: TLabel;
    RzDBNumericEdit40: TRzDBNumericEdit;
    Label57: TLabel;
    RzDBNumericEdit41: TRzDBNumericEdit;
    Label58: TLabel;
    RzDBNumericEdit42: TRzDBNumericEdit;
    Panel5: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label32: TLabel;
    eserie: TDBEdit;
    ecodempresa: TRzDBButtonEdit;
    DBEdit22: TDBEdit;
    DBEdit1: TDBEdit;
    combo_tipo: TRzDBComboBox;
    Edit2: TEdit;
    ecodmodelo: TRzDBButtonEdit;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    ECODFORNECEDOR: TRzDBButtonEdit;
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    eemissao: TJvDBDateEdit;
    eentrada: TJvDBDateEdit;
    ecfop: TRzDBButtonEdit;
    Panel6: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    ebase_icms: TRzDBNumericEdit;
    RzDBNumericEdit2: TRzDBNumericEdit;
    ebase_subst: TRzDBNumericEdit;
    evalor_subst: TRzDBNumericEdit;
    RzDBNumericEdit5: TRzDBNumericEdit;
    RzDBNumericEdit6: TRzDBNumericEdit;
    RzDBNumericEdit7: TRzDBNumericEdit;
    RzDBNumericEdit8: TRzDBNumericEdit;
    RzDBNumericEdit9: TRzDBNumericEdit;
    RzDBNumericEdit10: TRzDBNumericEdit;
    rdesconto: TRzDBNumericEdit;
    XDESCONTO: TDBCheckBox;
    Label15: TLabel;
    enumero: TDBEdit;
    Bevel6: TBevel;
    evalor_produtos: TRzDBNumericEdit;
    Label2: TLabel;
    Bevel4: TBevel;
    Bevel8: TBevel;
    Label59: TLabel;
    Label19: TLabel;
    etotalnota: TRzDBNumericEdit;
    Label60: TLabel;
    GroupBox1: TGroupBox;
    etipo_baseicms: TDBCheckBox;
    Panel1: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    batualiza_itens: TButton;
    Label26: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label20: TLabel;
    Label55: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Shape13: TShape;
    Label80: TLabel;
    DBText14: TDBText;
    DBText13: TDBText;
    Label81: TLabel;
    Label82: TLabel;
    img: TAdvShapeButton;
    pfatura: TPanel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    bgerar: TAdvGlowButton;
    wwDBGrid2: TwwDBGrid;
    Panel7: TPanel;
    Bevel13: TBevel;
    qrpagar: TZQuery;
    dspagar: TDataSource;
    econta: TRzDBButtonEdit;
    edit5: TRzDBEdit;
    ecount: TRzDBSpinEdit;
    RzDBEdit1: TRzDBEdit;
    Bevel3: TBevel;
    AdvGlowButton2: TAdvGlowButton;
    Panel2: TPanel;
    Label23: TLabel;
    Label4: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label54: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    edbicms: TRzNumericEdit;
    edfrete: TRzNumericEdit;
    edvicms: TRzNumericEdit;
    edseguro: TRzNumericEdit;
    edbst: TRzNumericEdit;
    edoutras: TRzNumericEdit;
    edipi: TRzNumericEdit;
    edvst: TRzNumericEdit;
    edtotal: TRzNumericEdit;
    edprodutos: TRzNumericEdit;
    edespecial: TRzNumericEdit;
    dbedit4: TwwDBLookupCombo;
    ZQuery1: TZQuery;
    qrnota_item_lista: TZQuery;
    Label7: TLabel;
    eddesconto: TRzNumericEdit;
    rtproduto: TRzNumericEdit;
    GroupBox2: TGroupBox;
    DBEdit19: TDBEdit;
    qrproduto_grade: TZQuery;
    qrproduto_serial: TZQuery;
    Label86: TLabel;
    rtipo: TRzDBComboBox;
    Label87: TLabel;
    rintegracao: TRzDBNumericEdit;
    eaproveita_credito: TRzComboBox;
    Label88: TLabel;
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
    qrproduto_gradeCODIGO: TWideStringField;
    qrproduto_gradeCODPRODUTO: TWideStringField;
    qrproduto_gradeNUMERACAO: TWideStringField;
    qrproduto_gradeCODBARRA: TWideStringField;
    qrproduto_gradeESTOQUE: TFloatField;
    qrproduto_gradeCOR: TWideStringField;
    qrproduto_serialCODIGO: TWideStringField;
    qrproduto_serialCODPRODUTO: TWideStringField;
    qrproduto_serialSERIAL: TWideStringField;
    qrproduto_serialESTOQUE: TFloatField;
    qrproduto_serialCODCLIENTE: TWideStringField;
    qrproduto_serialPRECOCUSTO: TFloatField;
    qrproduto_serialPRECOVENDA: TFloatField;
    qrproduto_serialSITUACAO: TIntegerField;
    qrproduto_serialCLIENTE: TWideStringField;
    qrproduto_serialCODNOTA: TWideStringField;
    qrproduto_serialCODITEM: TWideStringField;
    qrproduto_serialNUMERONOTA: TWideStringField;
    qrproduto_serialCODFORNECEDOR: TWideStringField;
    qrproduto_serialCODVENDA_ITEM: TWideStringField;
    qrproduto_serialFILTRO: TIntegerField;
    qrproduto_serialCODVENDA: TWideStringField;
    Label89: TLabel;
    qrnota_itemnatureza: TStringField;
    qrnota_itemcst_descricao: TStringField;
    qrnota_itemPRODUTO: TWideStringField;
    qrpagarDATA_VENCIMENTO: TDateField;
    qrpagarDATA_EMISSAO: TDateField;
    qrpagarDATA_PAGAMENTO: TDateField;
    qrproduto_serialDATAVENDA: TDateField;
    qrproduto_serialDATACOMPRA: TDateField;
    qrnota_itemCODIGO: TWideStringField;
    qrnota_itemITEM: TWideStringField;
    qrnota_itemCODNOTA: TWideStringField;
    qrnota_itemCODPRODUTO: TWideStringField;
    qrnota_itemCODLANCAMENTO: TWideStringField;
    qrnota_itemUN_COMPRA: TWideStringField;
    qrnota_itemUN_FRACAO: TWideStringField;
    qrnota_itemFRACAO: TFloatField;
    qrnota_itemCST: TWideStringField;
    qrnota_itemCFOP: TWideStringField;
    qrnota_itemQTDE: TFloatField;
    qrnota_itemUNITARIO: TFloatField;
    qrnota_itemSUBTOTAL: TFloatField;
    qrnota_itemDESCONTO: TFloatField;
    qrnota_itemTOTAL: TFloatField;
    qrnota_itemDESCONTO_P: TFloatField;
    qrnota_itemICMS_RETIDO: TWideStringField;
    qrnota_itemICMS_ALIQUOTA: TFloatField;
    qrnota_itemICMS_REDUCAO: TFloatField;
    qrnota_itemICMS_BASE: TFloatField;
    qrnota_itemICMS_VALOR: TFloatField;
    qrnota_itemICMS_VALORRETIDO: TFloatField;
    qrnota_itemICMS_ISENTO: TFloatField;
    qrnota_itemICMS_NAOTRIBUTADO: TFloatField;
    qrnota_itemSUB_MARGEM: TFloatField;
    qrnota_itemSUB_BASE: TFloatField;
    qrnota_itemSUB_VALOR: TFloatField;
    qrnota_itemIPI_TIPO: TWideStringField;
    qrnota_itemIPI_ALIQUOTA: TFloatField;
    qrnota_itemIPI_BASE: TFloatField;
    qrnota_itemIPI_VALOR: TFloatField;
    qrnota_itemDATA: TDateField;
    qrnota_itemTIPO: TIntegerField;
    qrnota_itemNOTAFISCAL: TWideStringField;
    qrnota_itemFRETE: TFloatField;
    qrnota_itemOUTRAS: TFloatField;
    qrnota_itemSEGURO: TFloatField;
    qrnota_itemCLASSIFICACAO_FISCAL: TWideStringField;
    qrnota_itemSUB_PRODUTOS: TFloatField;
    qrnota_itemCODFORNECEDOR: TWideStringField;
    qrnota_itemITEM_ESPECIAL_VALOR: TFloatField;
    qrnota_itemICMS_OUTRAS: TFloatField;
    qrnota_itemALTERA_ITEM: TIntegerField;
    qrnota_itemCREDITO_ICMS: TFloatField;
    qrnota_itemCREDITO_ICMS_BASE: TFloatField;
    qrnota_itemPIS_BASE: TFloatField;
    qrnota_itemPIS: TFloatField;
    qrnota_itemCOFINS_BASE: TFloatField;
    qrnota_itemCOFINS: TFloatField;
    qrnota_itemLOTE_FABRICACAO: TWideStringField;
    qrnota_itemLOTE_VALIDADE: TDateField;
    qrnota_itemLOTE_FABRICACAO_DATA: TDateField;
    qrnota_itemCODBARRA: TWideStringField;
    qrnota_itemPMARGEM: TSingleField;
    qrnota_itemPRECOVENDA: TSingleField;
    qrnota_itemPRECOCUSTO: TSingleField;
    qrnota_item_listaCODIGO: TWideStringField;
    qrnota_item_listaITEM: TWideStringField;
    qrnota_item_listaCODNOTA: TWideStringField;
    qrnota_item_listaCODPRODUTO: TWideStringField;
    qrnota_item_listaCODLANCAMENTO: TWideStringField;
    qrnota_item_listaUN_COMPRA: TWideStringField;
    qrnota_item_listaUN_FRACAO: TWideStringField;
    qrnota_item_listaFRACAO: TFloatField;
    qrnota_item_listaCST: TWideStringField;
    qrnota_item_listaCFOP: TWideStringField;
    qrnota_item_listaQTDE: TFloatField;
    qrnota_item_listaUNITARIO: TFloatField;
    qrnota_item_listaSUBTOTAL: TFloatField;
    qrnota_item_listaDESCONTO: TFloatField;
    qrnota_item_listaTOTAL: TFloatField;
    qrnota_item_listaDESCONTO_P: TFloatField;
    qrnota_item_listaICMS_RETIDO: TWideStringField;
    qrnota_item_listaICMS_ALIQUOTA: TFloatField;
    qrnota_item_listaICMS_REDUCAO: TFloatField;
    qrnota_item_listaICMS_BASE: TFloatField;
    qrnota_item_listaICMS_VALOR: TFloatField;
    qrnota_item_listaICMS_VALORRETIDO: TFloatField;
    qrnota_item_listaICMS_ISENTO: TFloatField;
    qrnota_item_listaICMS_NAOTRIBUTADO: TFloatField;
    qrnota_item_listaSUB_MARGEM: TFloatField;
    qrnota_item_listaSUB_BASE: TFloatField;
    qrnota_item_listaSUB_VALOR: TFloatField;
    qrnota_item_listaIPI_TIPO: TWideStringField;
    qrnota_item_listaIPI_ALIQUOTA: TFloatField;
    qrnota_item_listaIPI_BASE: TFloatField;
    qrnota_item_listaIPI_VALOR: TFloatField;
    qrnota_item_listaDATA: TDateField;
    qrnota_item_listaTIPO: TIntegerField;
    qrnota_item_listaNOTAFISCAL: TWideStringField;
    qrnota_item_listaFRETE: TFloatField;
    qrnota_item_listaOUTRAS: TFloatField;
    qrnota_item_listaSEGURO: TFloatField;
    qrnota_item_listaCLASSIFICACAO_FISCAL: TWideStringField;
    qrnota_item_listaSUB_PRODUTOS: TFloatField;
    qrnota_item_listaCODFORNECEDOR: TWideStringField;
    qrnota_item_listaITEM_ESPECIAL_VALOR: TFloatField;
    qrnota_item_listaICMS_OUTRAS: TFloatField;
    qrnota_item_listaALTERA_ITEM: TIntegerField;
    qrnota_item_listaCREDITO_ICMS: TFloatField;
    qrnota_item_listaCREDITO_ICMS_BASE: TFloatField;
    qrnota_item_listaPIS_BASE: TFloatField;
    qrnota_item_listaPIS: TFloatField;
    qrnota_item_listaCOFINS_BASE: TFloatField;
    qrnota_item_listaCOFINS: TFloatField;
    qrnota_item_listaLOTE_FABRICACAO: TWideStringField;
    qrnota_item_listaLOTE_VALIDADE: TDateField;
    qrnota_item_listaLOTE_FABRICACAO_DATA: TDateField;
    qrnota_item_listaCODBARRA: TWideStringField;
    qrnota_item_listaPRODUTO: TWideStringField;
    qrnota_item_listaPMARGEM: TSingleField;
    qrnota_item_listaPRECOVENDA: TSingleField;
    qrnota_item_listaPRECOCUSTO: TSingleField;
    qrnota_item_listaPRODUTO_1: TWideStringField;
    Label90: TLabel;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ecodempresaButtonClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure ecodempresaKeyPress(Sender: TObject; var Key: Char);
    procedure enumeroExit(Sender: TObject);
    procedure enumeroEnter(Sender: TObject);
    procedure enumeroKeyPress(Sender: TObject; var Key: Char);
    procedure eserieExit(Sender: TObject);
    procedure ECODFORNECEDORKeyPress(Sender: TObject; var Key: Char);
    procedure ECODFORNECEDORButtonClick(Sender: TObject);
    procedure eemissaoEnter(Sender: TObject);
    procedure eentradaEnter(Sender: TObject);
    procedure evalor_substExit(Sender: TObject);
    procedure RzDBNumericEdit9Exit(Sender: TObject);
    procedure etotalnotaKeyPress(Sender: TObject; var Key: Char);
    procedure xdescontoClick(Sender: TObject);
    procedure ecfopKeyPress(Sender: TObject; var Key: Char);
    procedure ecfopButtonClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure batualiza_itensClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure RzDBNumericEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure combo_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure ecodremetenteKeyPress(Sender: TObject; var Key: Char);
    procedure ecodremetenteButtonClick(Sender: TObject);
    procedure combo_tipoChange(Sender: TObject);
    procedure enota_fiscalExit(Sender: TObject);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit1Exit(Sender: TObject);
    procedure RzDBNumericEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure edvicmsExit(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure ecfopExit(Sender: TObject);
    procedure ecodmodeloKeyPress(Sender: TObject; var Key: Char);
    procedure ecodmodeloButtonClick(Sender: TObject);
    procedure evalor_produtosExit(Sender: TObject);
    procedure ECODFORNECEDORExit(Sender: TObject);
    procedure XDESCONTOKeyPress(Sender: TObject; var Key: Char);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure econtaButtonClick(Sender: TObject);
    procedure edit5KeyPress(Sender: TObject; var Key: Char);
    procedure ecountKeyPress(Sender: TObject; var Key: Char);
    procedure bgerarClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure qrpagarBeforePost(DataSet: TDataSet);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure ebase_icmsKeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit41KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19Exit(Sender: TObject);
    procedure ecountExit(Sender: TObject);
    procedure eemissaoExit(Sender: TObject);
    procedure eentradaExit(Sender: TObject);
    procedure eaproveita_creditoKeyPress(Sender: TObject; var Key: Char);
    procedure RzDBComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure ecodmodeloExit(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public

    vbicms, vvicms, vipi, vbst, vvst, vfrete, vespecial, vseguro, voutras,
      vprodutos, vtotal: double;
    { Public declarations }
  end;

var
  frmcompra: Tfrmcompra;
  itens: integer;
  altera_preco: boolean;
  xreducao: real;
  xipi: integer;
  aceita_inclusao: boolean;
   const
   sc_DragMove = $f012;
implementation

uses modulo, xloc_empresa, principal, xloc_fornecedor, xloc_cfop,
  compra_item, compra_menu, xloc_modelo, loc_conta;

{$R *.dfm}

procedure Tfrmcompra.bcancelarClick(Sender: TObject);
var
  texto: PWideChar;
begin
  if frmcompra_menu.vopcao_nfe = 1 then
  begin
    query.close;
    query.sql.clear;
    query.sql.add('delete from c000088 where notafiscal = ''' +
      enumero.Text + '''');
    query.sql.add('and codfornecedor = ''' + ECODFORNECEDOR.Text + '''');
    query.ExecSQL;

    qrpagar.close;
    qrpagar.sql.clear;
    qrpagar.sql.add('DELETE FROM C000046 WHERE CODNOTA = ''' +
      frmcompra_menu.QRNOTA.FIELDBYNAME('CODIGO').ASSTRING + '''');
    qrpagar.ExecSQL;

    frmcompra_menu.QRNOTA.cancel;
    frmmodulo.Conexao.Commit;
    Application.ProcessMessages;
    close;
  end
  else
  begin
    bgravarClick(frmcompra);
  end;

end;

procedure Tfrmcompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcompra.FormShow(Sender: TObject);
var
  vitem: integer;
begin
  CAPTION := CAPTION + '       Código: ' + frmcompra_menu.QRNOTA.FIELDBYNAME
    ('codigo').ASSTRING;

  if frmcompra_menu.QRNOTA.State = dsinsert then
  begin
    bcancelar.CAPTION := 'Cancelar';
    bcancelar.Picture := img.Picture;
  end
  else
  begin
    bcancelar.CAPTION := 'Retornar';
  end;

  xipi := 0;
  altera_preco := false;
  xreducao := 0;

  if frmcompra_menu.QRNOTA.State = dsinsert then
  begin

    frmcompra_menu.qrempresa.close;
    frmcompra_menu.qrempresa.sql.clear;
    frmcompra_menu.qrempresa.sql.add('select * from c000004');
    frmcompra_menu.qrempresa.open;

    Edit2.Text := frmcompra_menu.qrempresa.FIELDBYNAME('uf').ASSTRING;
    frmcompra_menu.QRNOTA.FIELDBYNAME('codempresa').ASSTRING :=
      frmcompra_menu.qrempresa.FIELDBYNAME('codigo').ASSTRING;

    frmcompra_menu.qrempresa.close;
    frmcompra_menu.qrempresa.sql.clear;
    frmcompra_menu.qrempresa.sql.add('select * from c000004 where codigo = ''' +
      frmcompra_menu.qrnotaCODEMPRESA.Value + '''');
    frmcompra_menu.qrempresa.open;

  end
  else
  begin
    frmcompra_menu.qrempresa.close;
    frmcompra_menu.qrempresa.sql.clear;
    frmcompra_menu.qrempresa.sql.add('select * from c000004 where codigo = ''' +
      frmcompra_menu.qrnotaCODEMPRESA.Value + '''');
    frmcompra_menu.qrempresa.open;
    Edit2.Text := frmcompra_menu.qrempresa.FIELDBYNAME('uf').ASSTRING;
  end;

  frmcompra_menu.qrfornecedor.close;
  frmcompra_menu.qrfornecedor.sql.clear;
  frmcompra_menu.qrfornecedor.sql.add('select * from c000009 where codigo = '''
    + frmcompra_menu.qrnotaCODFORNECEDOR.Value + '''');
  frmcompra_menu.qrfornecedor.open;
  Edit1.Text := frmcompra_menu.qrfornecedorUF.Value;
  eemissao.setfocus;

  frmmodulo.qrtransportador.open;

  { qrnota_item.Close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add('select * from c000088 where codnota = '''+frmcompra_menu.qrnota.fieldbyname('codigo').asstring+''' order by item');
    qrnota_item.Open;

  }

  qrnota_item_lista.close;
  qrnota_item_lista.sql.clear;
  qrnota_item_lista.sql.add
    ('select item.*, produto.produto from c000088 item, c000025 produto');
  qrnota_item_lista.sql.add('where item.codproduto = produto.codigo');
  qrnota_item_lista.sql.add('and codnota = ''' +
    frmcompra_menu.QRNOTA.FIELDBYNAME('codigo').ASSTRING + ''' order by item');
  qrnota_item_lista.open;

  itens := qrnota_item_lista.RecordCount + 1;

  // atualiza somatoria da nota fiscal
  edbicms.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_BASEICMS').asfloat;
  edvicms.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORICMS').asfloat;
  edipi.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat;
  edbst.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_BASESUB').asfloat;
  edvst.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORSUB').asfloat;
  edfrete.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat;
  edespecial.Value := frmcompra_menu.QRNOTA.FIELDBYNAME
    ('CONF_ITEM_ESPECIAL').asfloat;
  edseguro.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat;
  edoutras.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat;
  edprodutos.Value := frmcompra_menu.QRNOTA.FIELDBYNAME
    ('CONF_TOTALPRODUTOS').asfloat;


  // if frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat > 0 then
  // eddesconto.Value    := frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat
  // else
  // eddesconto.Value    := frmcompra_menu.qrnota.fieldbyname('DESCONTO').asfloat;

  if rtipo.Text = '' then
    rtipo.ItemIndex := 0;

  eddesconto.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('desconto').asfloat;

  edtotal.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat;

  vespecial := frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat;

  if frmcompra_menu.QRNOTA.State = dsedit then
  begin
    tab_principal.ActivePageIndex := 0;
    if (ecodmodelo.Text = '07') or (ecodmodelo.Text = '08') or
      (ecodmodelo.Text = '09') or (ecodmodelo.Text = '10') or
      (ecodmodelo.Text = '11') then
    begin
      combo_tipo.ItemIndex := 3;
      tab_principal.ActivePageIndex := 5;
    end;

    ECODFORNECEDOR.setfocus;
  end
  else
  begin
    ecodempresa.setfocus;
  end;

  qrpagar.close;
  qrpagar.sql.clear;
  qrpagar.sql.add('SELECT * FROM C000046 WHERE CODNOTA = ''' +
    frmcompra_menu.QRNOTA.FIELDBYNAME('NUMERO').ASSTRING +
    ''' ORDER BY DATA_VENCIMENTO');
  qrpagar.open;

  aceita_inclusao := false;
  if frmcompra_menu.QRNOTA.State = dsinsert then
  begin
    pfatura.Enabled := true;
  end
  else
  begin
    if qrpagar.RecordCount > 0 then
      pfatura.Enabled := false
    else
      pfatura.Enabled := true;
  end;

  rtproduto.Value := 0;

  frmcompra.qrnota_item_lista.first;
  while not frmcompra.qrnota_item_lista.Eof do
  begin
    rtproduto.Value := rtproduto.Value + frmcompra.qrnota_item_lista.FIELDBYNAME
      ('total').asfloat;
    itens := itens + 1;
    frmcompra.qrnota_item_lista.next;
  end;

  (* ********************* verificar a nota nao tem item mas na 88 existe ********************** *)
  if qrnota_item_lista.RecordCount = 0 then
  begin

    query.close;
    query.sql.clear;
    query.sql.add('select * from c000032 where numeronota = ''' +
      frmcompra_menu.QRNOTA.FIELDBYNAME('numero').ASSTRING + '''');
    query.sql.add('and codcliente = ''' + frmcompra_menu.QRNOTA.FIELDBYNAME
      ('codfornecedor').ASSTRING + '''');
    query.sql.add('and cupom_modelo = ''' + frmcompra_menu.QRNOTA.FIELDBYNAME
      ('modelo').ASSTRING + '''');
    query.sql.add('and data = :vdat');
    query.Params.ParamByName('vdat').AsDateTime :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('DATA_EMISSAO').AsDateTime;
    query.open;

    if query.RecordCount > 0 then
    begin

      frmcompra.qrnota_item.open;

      vitem := 0;

      while not query.Eof do
      begin
        vitem := vitem + 1;
        frmcompra.qrnota_item.Insert;
        frmcompra.qrnota_item.FIELDBYNAME('codigo').ASSTRING :=
          frmprincipal.codifica('000032');
        frmcompra.qrnota_item.FIELDBYNAME('codlancamento').ASSTRING :=
          frmcompra.qrnota_item.FIELDBYNAME('codigo').ASSTRING;
        frmcompra.qrnota_item.FIELDBYNAME('data').AsDateTime :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('DATA_LANCAMENTO').asfloat;

        codigo_it := frmcompra.qrnota_item.FIELDBYNAME('codigo').ASSTRING;
        frmcompra.qrnota_item.FIELDBYNAME('codnota').ASSTRING :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('codigo').ASSTRING;
        frmcompra.qrnota_item.FIELDBYNAME('notafiscal').ASSTRING :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('numero').ASSTRING;
        frmcompra.qrnota_item.FIELDBYNAME('codfornecedor').ASSTRING :=
          frmcompra.ECODFORNECEDOR.Text;
        frmcompra.qrnota_item.FIELDBYNAME('CFOP').ASSTRING :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('CFOP').ASSTRING;
        if frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat > 0 then
          frmcompra.qrnota_item.FIELDBYNAME('icms_retido').ASSTRING := 'S'
        else
          frmcompra.qrnota_item.FIELDBYNAME('icms_retido').ASSTRING := 'N';
        frmcompra.qrnota_item.FIELDBYNAME('item').ASSTRING :=
          frmprincipal.zerarcodigo(inttostr(itens), 3);

        if frmcompra.rdesconto.Value = 0 then
        begin
          frmcompra.qrnota_item.FIELDBYNAME('DESCONTO').asfloat := 0;
          frmcompra.qrnota_item.FIELDBYNAME('DESCONTO_P').asfloat := 0;
        end;
        frmcompra.qrnota_item.FIELDBYNAME('ICMS_ISENTO').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('ICMS_NAOTRIBUTADO').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('ICMS_VALORRETIDO').asfloat := 0;

        frmcompra.qrnota_item.FIELDBYNAME('ICMS_ALIQUOTA').asfloat :=
          query.FIELDBYNAME('icms').asfloat;
        frmcompra.qrnota_item.FIELDBYNAME('ICMS_REDUCAO').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('ICMS_BASE').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('ICMS_VALOR').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('SUB_VALOR').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('IPI_BASE').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('IPI_VALOR').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('IPI_ALIQUOTA').asfloat := 0;;
        frmcompra.qrnota_item.FIELDBYNAME('CLASSIFICACAO_FISCAL')
          .ASSTRING := '';

        frmcompra.qrnota_item.FIELDBYNAME('SUB_MARGEM').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('SUB_BASE').asfloat := 0;
        frmcompra.qrnota_item.FIELDBYNAME('SUB_PRODUTOS').asfloat := 0;

        frmcompra.qrnota_itemCODPRODUTO.ASSTRING :=
          query.FIELDBYNAME('codproduto').ASSTRING;
        frmcompra.qrnota_itemQTDE.asfloat := query.FIELDBYNAME('qtde').asfloat;
        frmcompra.qrnota_itemUNITARIO.asfloat :=
          query.FIELDBYNAME('unitario').asfloat;
        frmcompra.qrnota_itemITEM.ASSTRING :=
          frmprincipal.zerarcodigo(inttostr(vitem), 3);
        if (query.FIELDBYNAME('cst').Value = '') or
          (query.FIELDBYNAME('cst').Value = null) then
          frmcompra.qrnota_itemCST.ASSTRING := '000'
        else
          frmcompra.qrnota_itemCST.ASSTRING := query.FIELDBYNAME('cst')
            .ASSTRING;
        frmcompra.qrnota_itemDESCONTO.asfloat :=
          query.FIELDBYNAME('desconto').asfloat;
        frmcompra.qrnota_itemSUBTOTAL.asfloat := query.FIELDBYNAME('total')
          .asfloat - query.FIELDBYNAME('desconto').asfloat;
        frmcompra.qrnota_itemTOTAL.asfloat :=
          query.FIELDBYNAME('total').asfloat;
        frmcompra.qrnota_itemICMS_ALIQUOTA.asfloat :=
          query.FIELDBYNAME('aliquota').asfloat;
        frmcompra.qrnota_itemUN_COMPRA.ASSTRING :=
          query.FIELDBYNAME('unidade').ASSTRING;
        frmcompra.qrnota_itemIPI_TIPO.ASSTRING := '0.Não Tem IPI';

        frmcompra.qrnota_item.Post;

        query.next;
      end;
      frmmodulo.Conexao.Commit;
      Application.ProcessMessages;
      close;
    end;
  end;



end;

procedure Tfrmcompra.ecodempresaButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_empresa := tfrmxloc_empresa.create(self);
  frmxloc_empresa.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmcompra_menu.qrempresa.close;
    frmcompra_menu.qrempresa.sql.clear;
    frmcompra_menu.qrempresa.sql.add('select * from c000004 where codigo = ''' +
      resultado_pesquisa1 + '''');
    frmcompra_menu.qrempresa.open;
    frmcompra_menu.QRNOTA.FIELDBYNAME('codempresa').ASSTRING :=
      resultado_pesquisa1;

    Edit2.Text := frmcompra_menu.qrEMPRESAUF.Value;

    enumero.setfocus;
  end;
end;

procedure Tfrmcompra.bgravarClick(Sender: TObject);
var
  texto: PWideChar;
  vqde_item: integer;
  vitem: integer;

begin

  if copy(datetostr(eemissao.date), 7, 4) <> copy(datetostr(date), 7, 4) then
  begin
    if application.messagebox('Data de Emissão fora do ano corrente, Continua?', 'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
    begin
      eemissao.SetFocus;
      exit;
    end;
  end;

  if copy(datetostr(eentrada.date), 7, 4) <> copy(datetostr(date), 7, 4) then
  begin
    if application.messagebox('Data de Entrada fora do ano corrente, Continua?', 'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
    begin
      eentrada.SetFocus;
      exit;
    end;
  end;

  if dsnota.DataSet.State in [dsinsert, dsedit] then
  begin
    dsnota.dataset.fieldbyname('obs7').asstring := frmPrincipal.zerarcodigo(dbedit19.text, 6);
    dsnota.dataset.fieldbyname('obs8').asstring := frmPrincipal.zerarcodigo(inttostr(ecount.IntValue), 3);
  end;

  if ecodmodelo.text = '' then
  begin
    showmessage('Favor informar um modelo de documento válido!');
    ecodmodelo.setfocus;
    exit;
  end;

  if eemissao.text = '  /  /    ' then
  begin
    showmessage('Data de Emissão Não pode ser em branco, Verifique...');
    eemissao.SetFocus;
    exit;
  end;

  if eentrada.text = '  /  /    ' then
  begin
    showmessage('Data de Entrada Não pode ser em branco, Verifique...');
    eentrada.SetFocus;
    exit;
  end;

   (********************** verificar se existe a mesma nota para o mesmo forncedor ***********************)
  if frmcompra_menu.qrnota.State = dsinsert then
  begin
    qrnf.close;
    qrnf.SQL.clear;
    qrnf.SQL.Add('select * from c000087 where numero = ''' + frmcompra_menu.qrnota.fieldbyname('numero').asstring + '''');
    qrnf.SQL.Add('and codfornecedor = ''' + frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring + '''');
    qrnf.SQL.Add('and modelo = ''' + frmcompra_menu.qrnota.fieldbyname('modelo').asstring + '''');
    qrnf.open;
    if qrnf.recordcount > 0 then
    begin
      application.messagebox('Já existe uma NOTA FISCAL cadastrada com este MODELO e o mesmo NÚMERO para este FORNECEDOR!', 'Atenção', mb_ok + mb_iconerror);
      exit;
    end;
  end;


    (**********************verificar campos obrigatorios***********************)
  if (ecodempresa.text = '') or (ecodempresa.text = '000000') then
  begin
    application.MessageBox('Favor informar a empresa!', 'Erro', mb_ok + mb_iconerror);
    exit;
  end;
  if (ecodfornecedor.text = '') or (ecodfornecedor.text = '000000') then
  begin
    application.MessageBox('Favor informar o fornecedor!', 'Erro', mb_ok + mb_iconerror);
    exit;
  end;
  if (enumero.text = '') or (enumero.text = '000000') then
  begin
    application.MessageBox('Favor informar o número da nota!', 'Erro', mb_ok + mb_iconerror);
    exit;
  end;

    (**********************lancar dados do conhecimento de transporte**********)

  if COMBO_TIPO.ItemIndex = 3 then
  begin
     // atualiza somatoria da nota fiscal
    edbicms.Value := frmcompra_menu.qrnota.fieldbyname('CONF_BASEICMS').asfloat;
    edvicms.Value := frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat;
    edipi.Value := frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;
    edbst.Value := frmcompra_menu.qrnota.fieldbyname('CONF_BASESUB').asfloat;
    edvst.Value := frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat;
    edfrete.Value := frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat;
    edespecial.Value := frmcompra_menu.qrnota.fieldbyname('CONF_ITEM_ESPECIAL').asfloat;
    edseguro.Value := frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat;
    edoutras.Value := frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat;
    edprodutos.Value := frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat;
    edtotal.Value := frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat;
  end
  else
  begin
    if (frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat = 0) or (frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat = 0) then
    begin
      application.MessageBox('Valor da Nota/Produtos zerado! Deseja prosseguir?', 'Erro', mb_ok + mb_iconquestion);
      frmcompra_menu.qrnota.post;
      frmmodulo.conexao.commit;
      Application.ProcessMessages;
      close;
      exit;
    end;

    if ((frmcompra_menu.qrnota.FieldByName('TOTAL_produtos').asfloat -
      frmcompra_menu.qrnota.FieldByName('conf_TOTALprodutos').asfloat) > 0.10) or
      ((frmcompra_menu.qrnota.FieldByName('TOTAL_produtos').asfloat -
      frmcompra_menu.qrnota.FieldByName('CONF_TOTALprodutos').asfloat) < (-0.10)) then

    begin
      texto := PWideChar('Foi alterado alguma Informação na Nota Fiscal de Entrada' + #13 +
        'ou há Inconsistência no valor total dos Produtos.' + #13 +
        'Por isso, esta nota precisa ser gravada para sua finalização!' + #13 +
        'Deseja prosseguir com a finalização?' + #13 +
        'Diferença: R$' + formatfloat('###,###,##0.00', (frmcompra_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat - frmcompra_menu.qrnota.FieldByName('conf_TOTALNOTA').asfloat)));


      if application.messagebox(texto, 'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then exit;
    end;
   (********************** verificar total do ipi ***********************)

    if ((frmcompra_menu.qrnota.FieldByName('ipi').asfloat -
      frmcompra_menu.qrnota.FieldByName('conf_ipi').asfloat) > 0.10) or
      ((frmcompra_menu.qrnota.FieldByName('ipi').asfloat -
      frmcompra_menu.qrnota.FieldByName('CONF_ipi').asfloat) < (-0.10)) then
    begin
      texto := PWideChar('Houve inconsistência no valor total do IPI!' + #13 +
        'Diferença: R$' + formatfloat('###,###,##0.00', (frmcompra_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat - frmcompra_menu.qrnota.FieldByName('conf_TOTALNOTA').asfloat)) + #13 +
        'Deseja prosseguir com a finalização?');

      if application.messagebox(texto, 'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then exit;
    end;

  end;

  qrnota_item.Close;
  qrnota_item.sql.clear;
  qrnota_item.sql.add('select * from c000088 where codproduto is not null and codnota = ''' + frmcompra_menu.qrnota.fieldbyname('codigo').asstring + ''' order by item');
  qrnota_item.Open;

  if frmcompra_menu.qrnota.state = dsinsert then
  begin

      //frmmodulo.qrproduto_mov.Open;
    FRMMODULO.QRPRODUTO_MOV.CLOSE;
    FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
    FRMMODULO.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ''XXXXXX''');
    FRMMODULO.QRPRODUTO_MOV.OPEN;

    if qrnota_item.recordcount > 0 then
    begin
      qrnota_item.first;
      while not qrnota_item.eof do
      begin
        frmmodulo.qrproduto_mov.Insert;
        frmmodulo.qrproduto_mov.FieldByName('codigo').AsString := qrnota_item.fieldbyname('codlancamento').asstring;
        frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString := qrnota_item.fieldbyname('codnota').asstring + 'NE';
        frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString := ''; //qrnota_item.fieldbyname('codigo').asstring;
        frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString := frmcompra_menu.qrnota.fieldbyname('NUMERO').asstring;
        frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring := qrnota_item.fieldbyname('codproduto').asstring;
        if qrnota_item.FieldByName('fracao').asfloat > 0 then
        begin
          frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat;
          frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat / (qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat);
        end
        else
        begin
          frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat;
          frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat / qrnota_item.FieldByName('qtde').asfloat;
        end;
        frmmodulo.qrproduto_mov.fieldbyname('total').asfloat := qrnota_item.fieldbyname('total').asfloat;

        if qrnota_item.fieldbyname('un_fracao').AsString <> '' then
          frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring := qrnota_item.fieldbyname('un_fracao').AsString
        else
          frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring := qrnota_item.fieldbyname('un_compra').AsString;

        frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT := qrnota_item.fieldbyname('ICMS_ALIQUOTA').asFLOAT;
        frmmodulo.qrproduto_mov.fieldbyname('credito_icms').asFLOAT := qrnota_item.fieldbyname('CREDITO_ICMS').asFLOAT;
        frmmodulo.qrproduto_mov.fieldbyname('pis').asFLOAT := qrnota_item.fieldbyname('PIS').asFLOAT;
        frmmodulo.qrproduto_mov.fieldbyname('cofins').asFLOAT := qrnota_item.fieldbyname('COFINS').asFLOAT;
        frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmcompra_menu.qrnota.FIELDBYNAME('MODELO').ASSTRING;
        frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;
        frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString := 'S/VEND';
        frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 1;
        frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmcompra_menu.qrnota.FIELDBYNAME('DATA_LANCAMENTO').ASSTRING;
        frmmodulo.qrproduto_mov.fieldbyname('cfop').AsString := qrnota_item.fieldbyname('cfop').AsString;

        frmmodulo.qrproduto_mov.fieldbyname('lote_fabricacao').AsString := qrnota_item.fieldbyname('LOTE_FABRICACAO').AsString;
        frmmodulo.qrproduto_mov.fieldbyname('vencimento').AsDateTime := qrnota_item.fieldbyname('LOTE_VALIDADE').AsDateTime;

        frmmodulo.qrproduto_mov.Post;
        qrnota_item.Next;
      end;
    end
    else
    begin
        {
        // vrifica se o sistema nao achou informações na tabela qrnota_item
        // e pegou as informações da qrnota_item_lista

          if qrnota_item_lista.RecordCount > 0 then
            begin
              qrnota_item_lista.First;
              while not qrnota_item_lista.Eof do begin
                frmmodulo.qrproduto_mov.Insert;
                frmmodulo.qrproduto_mov.FieldByName('codigo').AsString       := qrnota_item_lista.fieldbyname('codlancamento').asstring;
                frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString      := qrnota_item_lista.fieldbyname('codnota').asstring+'NE';
                frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString       := qrnota_item_lista.fieldbyname('codigo').asstring;
                frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString   := frmcompra_menu.qrnota.fieldbyname('NUMERO').asstring;
                frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring   := qrnota_item_lista.fieldbyname('codproduto').asstring;
                if qrnota_item_lista.FieldByName('fracao').asfloat > 0 then
                  begin
                    frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item_lista.FieldByName('qtde').asfloat * qrnota_item_lista.FieldByName('fracao').asfloat;
                    frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item_lista.FieldByName('total').asfloat/(qrnota_item_lista.FieldByName('qtde').asfloat * qrnota_item_lista.FieldByName('fracao').asfloat);
                  end
                ELSE
                  begin
                    frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat        := qrnota_item_lista.FieldByName('qtde').asfloat;
                    frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat    := qrnota_item_lista.FieldByName('total').asfloat/qrnota_item_lista.FieldByName('qtde').asfloat;
                  end;
                frmmodulo.qrproduto_mov.fieldbyname('total').asfloat         := qrnota_item_lista.fieldbyname('total').asfloat;
                frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item_lista.fieldbyname('un_fracao').AsString;

                frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT      := qrnota_item_lista.fieldbyname('ICMS_ALIQUOTA').asFLOAT;
                frmmodulo.qrproduto_mov.fieldbyname('CST').AsString      := qrnota_item_lista.fieldbyname('CST').AsString;
                frmmodulo.qrproduto_mov.fieldbyname('cfop').AsString      := qrnota_item_lista.fieldbyname('cfop').AsString;
                frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmcompra_menu.qrnota.FIELDBYNAME('MODELO').ASSTRING;
                frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString   := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;
                frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString  := 'S/VEND';
                frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER   := 1;
                frmmodulo.qrproduto_mov.FieldByName('data').asstring         := frmcompra_menu.qrnota.FIELDBYNAME('DATA_emissao').ASSTRING;
                frmmodulo.qrproduto_mov.Post;

                qrnota_item_lista.Next;
              end;

        end;
        }
    end;

  end
  else
  begin

    if qrnota_item.recordcount > 0 then
    begin
      qrnota_item.first;
      while not qrnota_item.eof do
      begin

        FRMMODULO.QRPRODUTO_MOV.CLOSE;
        FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
        FRMMODULO.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ' + QuotedStr(qrnota_itemCODNOTA.AsString + 'NE'));
        FRMMODULO.QRPRODUTO_MOV.SQL.ADD('AND CODPRODUTO = ' + QuotedStr(qrnota_itemCODPRODUTO.AsString));
        FRMMODULO.QRPRODUTO_MOV.OPEN;
          // deilson

        if FRMMODULO.QRPRODUTO_MOV.RecordCount > 0 then
        begin

          frmmodulo.qrproduto_mov.EDIT;
          frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString := qrnota_item.fieldbyname('codnota').asstring + 'NE';
          frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString := frmcompra_menu.qrnota.fieldbyname('NUMERO').asstring;
          frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring := qrnota_item.fieldbyname('codproduto').asstring;
          if qrnota_item.FieldByName('fracao').asfloat > 0 then
          begin
            frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat;
            frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat / (qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat);
          end
          else
          begin
            frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat;
            frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat / qrnota_item.FieldByName('qtde').asfloat;
          end;
          frmmodulo.qrproduto_mov.fieldbyname('total').asfloat := qrnota_item.fieldbyname('total').asfloat;

          if qrnota_item.fieldbyname('un_fracao').AsString <> '' then
            frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring := qrnota_item.fieldbyname('un_fracao').AsString
          else
            frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring := qrnota_item.fieldbyname('un_compra').AsString;

            //frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item.fieldbyname('un_compra').AsString; //qrnota_item.fieldbyname('un_fracao').AsString;

          frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT := qrnota_item.fieldbyname('ICMS_ALIQUOTA').asFLOAT;
          frmmodulo.qrproduto_mov.fieldbyname('credito_icms').asFLOAT := qrnota_item.fieldbyname('CREDITO_ICMS').asFLOAT;
          frmmodulo.qrproduto_mov.fieldbyname('pis').asFLOAT := qrnota_item.fieldbyname('PIS').asFLOAT;
          frmmodulo.qrproduto_mov.fieldbyname('cofins').asFLOAT := qrnota_item.fieldbyname('COFINS').asFLOAT;
          frmmodulo.qrproduto_mov.fieldbyname('CST').AsString := qrnota_item.fieldbyname('CST').AsString;
          frmmodulo.qrproduto_mov.fieldbyname('cfop').AsString := qrnota_item.fieldbyname('cfop').AsString;

          frmmodulo.qrproduto_mov.fieldbyname('lote_fabricacao').AsString := qrnota_item.fieldbyname('LOTE_FABRICACAO').AsString;
          frmmodulo.qrproduto_mov.fieldbyname('vencimento').AsDateTime := qrnota_item.fieldbyname('LOTE_VALIDADE').AsDateTime;

          frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmcompra_menu.qrnota.FIELDBYNAME('MODELO').ASSTRING;
          frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;
          frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString := 'S/VEND';
          frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 1;
          frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmcompra_menu.qrnota.FIELDBYNAME('DATA_emissao').ASSTRING;


          frmmodulo.qrproduto_mov.Post;

            //frmmodulo.qrproduto_mov.Open;
          FRMMODULO.QRPRODUTO_MOV.CLOSE;
          FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
          FRMMODULO.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ''' + qrnota_item.FIELDBYNAME('CODNOTA').ASSTRING + 'NE' + '''');
          FRMMODULO.QRPRODUTO_MOV.SQL.ADD('and CODPRODUTO = ''' + qrnota_item.FIELDBYNAME('CODPRODUTO').ASSTRING + '''');
          FRMMODULO.QRPRODUTO_MOV.OPEN;

        end
        else
        begin

          query.Close;
          query.sql.clear;
          query.sql.add('select codigo, produto from c000025 where codigo = ''' + qrnota_item.fieldbyname('codproduto').asstring + '''');
          query.open;
            {
            texto := pansichar(query.fieldbyname('codigo').asstring+' - '+ query.fieldbyname('produto').asstring);
            case application.messagebox(pansichar('O produto: [ '+texto+' ] não possue lançamento de estoque!'+#13+
                                        'Existem 3 possibilidades para que isso aconteça:'+#13+
                                        '1ª - Esta nota está sendo alterada o foi feita a inclusão deste item (Clique em SIM);'+#13+
                                        '2ª - Foi feita a atualização do sistema, e esta nota foi lançada antes da atualização (Clique em NÃO);'+#13+
                                        '3ª - O lançamento foi excluído indevidamente; (Clique em Sim);'+#13+
                                        'Caso tenha dúvidas, clique em cancelar e consulte o suporte!'+#13+
                                        'Deseja criar o lançamento de Estoque para este produto?'),
                                        'Atenção',MB_YESNOCANCEL+mb_iconwarning+MB_DEFBUTTON3) of
            idYes :
             }
             //begin

          frmmodulo.qrproduto_mov.Insert;
          frmmodulo.qrproduto_mov.FieldByName('codigo').AsString := qrnota_item.fieldbyname('codlancamento').asstring;
          frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString := qrnota_item.fieldbyname('codnota').asstring + 'NE';
          frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString := ''; //qrnota_item.fieldbyname('codigo').asstring;
          frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString := frmcompra_menu.qrnota.fieldbyname('NUMERO').asstring;
          frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring := qrnota_item.fieldbyname('codproduto').asstring;
          if qrnota_item.FieldByName('fracao').asfloat > 0 then
          begin
            frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat;
            frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat / (qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat);
          end
          else
          begin
            frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat;
            frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat / qrnota_item.FieldByName('qtde').asfloat;
          end;
          frmmodulo.qrproduto_mov.fieldbyname('total').asfloat := qrnota_item.fieldbyname('total').asfloat;

          if qrnota_item.fieldbyname('un_fracao').AsString <> '' then
            frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring := qrnota_item.fieldbyname('un_fracao').AsString
          else
            frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring := qrnota_item.fieldbyname('un_compra').AsString;

              //frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item.fieldbyname('un_compra').AsString; //qrnota_item.fieldbyname('un_fracao').AsString;

          frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT := qrnota_item.fieldbyname('ICMS_ALIQUOTA').asFLOAT;
          frmmodulo.qrproduto_mov.fieldbyname('credito_icms').asFLOAT := qrnota_item.fieldbyname('CREDITO_ICMS').asFLOAT;
          frmmodulo.qrproduto_mov.fieldbyname('pis').asFLOAT := qrnota_item.fieldbyname('PIS').asFLOAT;
          frmmodulo.qrproduto_mov.fieldbyname('cofins').asFLOAT := qrnota_item.fieldbyname('COFINS').asFLOAT;
          frmmodulo.qrproduto_mov.fieldbyname('CST').AsString := qrnota_item.fieldbyname('CST').AsString;
          frmmodulo.qrproduto_mov.fieldbyname('cfop').AsString := qrnota_item.fieldbyname('cfop').AsString;

          frmmodulo.qrproduto_mov.fieldbyname('lote_fabricacao').AsString := qrnota_item.fieldbyname('LOTE_FABRICACAO').AsString;
          frmmodulo.qrproduto_mov.fieldbyname('vencimento').AsDateTime := qrnota_item.fieldbyname('LOTE_VALIDADE').AsDateTime;

          frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmcompra_menu.qrnota.FIELDBYNAME('MODELO').ASSTRING;
          frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;
          frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString := 'S/VEND';
          frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 1;
          frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmcompra_menu.qrnota.FIELDBYNAME('DATA_emissao').ASSTRING;
          frmmodulo.qrproduto_mov.Post;
            //end;
            {
            idcancel :begin
                       break;
                       exit;
                      end;

            end;
            }
        end;
        qrnota_item.next;
        Application.ProcessMessages;
      end;

    end;




  end;

   // ajusta o total da nota pelo rodapé

  frmcompra_menu.qrnota.fieldbyname('SERIE').AsString := frmPrincipal.somenteNumero(eserie.Text);

  frmcompra_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat := edtotal.Value;
  frmcompra_menu.qrnota.fieldbyname('TOTAL_PRODUTOS').asfloat := edprodutos.Value;

  frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat := edtotal.Value;
  frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat := edprodutos.Value;

  frmcompra_menu.qrnota.fieldbyname('CONF_BASEICMS').asfloat := edbicms.Value;
  frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat := edvicms.Value;

  frmcompra_menu.qrnota.fieldbyname('CONF_BASESUB').asfloat := edbst.Value;
  frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat := edvst.Value;

  frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat := edfrete.Value;
  frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat := edseguro.Value;
  frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat := edoutras.Value;
  frmcompra_menu.qrnota.fieldbyname('CONF_ITEM_ESPECIAL').asfloat := edespecial.Value;
  frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat := edipi.Value;

  frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat := rdesconto.Value;
  frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat := RzDBNumericEdit9.Value;

  if COMBO_TIPO.ItemIndex = 3 then // CONHECIMENTO DE TRANSPORTE
  begin
    frmcompra_menu.qrnota.fieldbyname('BASE_ICMS').asfloat := 0;
    frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat := 0;
    frmcompra_menu.qrnota.fieldbyname('ICMS_ISENTO').asfloat := 0;
    frmcompra_menu.qrnota.fieldbyname('ICMS_OUTRAS').asfloat := edtotal.Value - edipi.Value;
  end
  else
  begin
    frmcompra_menu.qrnota.fieldbyname('BASE_ICMS').asfloat := edbicms.value; //frmcompra_menu.qrnota.fieldbyname('CONF_BASEICMS').asfloat;
    frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat := edvicms.value; //frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat;
    if (frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat = 0) and (frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat = 0) then
      frmcompra_menu.qrnota.fieldbyname('ICMS_ISENTO').asfloat := edprodutos.value; //frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat;
  end;
  frmcompra_menu.qrnota.fieldbyname('SEGURO').asfloat := edseguro.value; //frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat;
  frmcompra_menu.qrnota.fieldbyname('OUTRAS').asfloat := edseguro.value; //frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat;
  frmcompra_menu.qrnota.fieldbyname('FRETE').asfloat := edfrete.value; //frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat;
  frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat := edespecial.value; //frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat;
  frmcompra_menu.qrnota.fieldbyname('IPI').asfloat := edipi.value; //frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat;


  frmcompra_menu.qrnota.post;

  /// recodifica os itens da nota fiscal

  vqde_item := 0;
  qrnota_item.first;
  while not qrnota_item.Eof do
  begin
    vqde_item := vqde_item + 1;
    qrnota_item.Edit;
    qrnota_item.FieldByName('ITEM').AsString := frmPrincipal.zerarcodigo(INTTOSTR(vqde_item), 3);
    qrnota_item.Post;
    qrnota_item.Next;
  end;
{
    // Atualiza Dados Estoque
    QryCMD.close;
    QryCmd.sql.clear;
    QryCmd.sql.add('update c000100 set');
    QryCmd.sql.add('estoque_inicial = 0 ');
    QryCmd.sql.add('Where estoque_inicial is null ');
    QryCmd.ExecSQL;

    QryCMD.close;
    QryCmd.sql.clear;
    QryCmd.sql.add('update c000100 set');
    QryCmd.sql.add('estoque_atual = estoque_inicial + entradas - saidas');
    QryCmd.ExecSQL;
}

  frmmodulo.conexao.commit;
  Application.ProcessMessages;

  close;
end;

procedure Tfrmcompra.ecodempresaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmcompra_menu.QRNOTA.State <> dsedit then
      if frmcompra_menu.QRNOTA.State <> dsinsert then
        exit;

    frmcompra_menu.QRNOTA.FIELDBYNAME('codempresa').ASSTRING :=
      frmprincipal.zerarcodigo(TEdit(Sender).Text, 6);
    if TEdit(Sender).Text <> '000000' then
    begin
      frmcompra_menu.qrempresa.close;
      frmcompra_menu.qrempresa.sql.clear;
      frmcompra_menu.qrempresa.sql.add('select * from c000004 where codigo = '''
        + ecodempresa.Text + '''');
      frmcompra_menu.qrempresa.open;

      if frmcompra_menu.qrempresa.RecordCount = 0 then
      begin
        Application.messagebox('Empresa não cadastrada!', 'Aviso',
          mb_ok + MB_ICONWARNING);
        ecodempresa.setfocus;
      end
      else
      begin
        Edit2.Text := frmcompra_menu.qrEMPRESAUF.Value;
        Perform(wm_nextdlgctl, 0, 0);
      end;
    end
    else
    begin
      ecodempresaButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra.enumeroExit(Sender: TObject);
begin
  TEdit(Sender).color := clbtnface;
  if frmcompra_menu.QRNOTA.State <> dsedit then
    if frmcompra_menu.QRNOTA.State <> dsinsert then
      exit;

  frmcompra_menu.QRNOTA.FIELDBYNAME('numero').ASSTRING :=
    frmprincipal.zerarcodigo(frmcompra_menu.QRNOTA.FIELDBYNAME('numero')
    .ASSTRING, 6);

  if frmcompra_menu.QRNOTA.FIELDBYNAME('numero').ASSTRING = '000000' then
  begin
    Application.messagebox('Favor informar um número válido!', 'Atenção',
      mb_ok + mb_iconerror);
    enumero.setfocus;
  end;
end;

procedure Tfrmcompra.enumeroEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;
end;

procedure Tfrmcompra.enumeroKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
    Perform(wm_nextdlgctl, 0, 0);

  // if key <> #8 then
  // if key = #13 then
  // perform(wm_nextdlgctl,0,0);
  // else
  // if ( key  in ['0'..'9']) then
  // //
  // else abort;
end;

procedure Tfrmcompra.eserieExit(Sender: TObject);
begin
  if (trim(eserie.Text) = '0') or (trim(eserie.Text) = '00') or
    (trim(eserie.Text) = '000') then
  begin
    showmessage('Série Inválida, Verifique...');
    eserie.setfocus;
    exit;
  end;
  TEdit(Sender).color := clwindow;

end;

procedure Tfrmcompra.ECODFORNECEDORKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmcompra_menu.QRNOTA.State <> dsedit then
      if frmcompra_menu.QRNOTA.State <> dsinsert then
        exit;

    frmcompra_menu.QRNOTA.FIELDBYNAME('codfornecedor').ASSTRING :=
      frmprincipal.zerarcodigo(TEdit(Sender).Text, 6);
    if TEdit(Sender).Text <> '000000' then
    begin

      frmcompra_menu.qrfornecedor.close;
      frmcompra_menu.qrfornecedor.sql.clear;
      frmcompra_menu.qrfornecedor.sql.add
        ('select * from c000009 where codigo = ''' +
        ECODFORNECEDOR.Text + '''');
      frmcompra_menu.qrfornecedor.open;
      if frmcompra_menu.qrfornecedor.RecordCount = 0 then
      begin
        Application.messagebox('Fornecedor não cadastrado!', 'Aviso',
          mb_ok + MB_ICONWARNING);
        ECODFORNECEDOR.Text := '';
        ECODFORNECEDOR.setfocus;
        exit;
      end
      else if (frmcompra_menu.qrfornecedorCNPJ.Value = '') or
        (frmcompra_menu.qrfornecedorUF.Value = '') or
        (frmcompra_menu.qrfornecedorIE.Value = '') then
      begin
        showmessage('Atenção! Dados de Fornecedor Inconsistente...');
        exit;
      end;

      Edit1.Text := frmcompra_menu.qrfornecedorUF.Value;

      Perform(wm_nextdlgctl, 0, 0);
    end
    else
    begin
      ECODFORNECEDORButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra.ECODFORNECEDORButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
  frmxloc_fornecedor.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmcompra_menu.qrfornecedor.close;
    frmcompra_menu.qrfornecedor.sql.clear;
    frmcompra_menu.qrfornecedor.sql.add
      ('select * from c000009 where codigo = ''' + resultado_pesquisa1 + '''');
    frmcompra_menu.qrfornecedor.open;
    frmcompra_menu.QRNOTA.FIELDBYNAME('codfornecedor').ASSTRING :=
      resultado_pesquisa1;

    if (frmcompra_menu.qrfornecedorCNPJ.Value = '') or
      (frmcompra_menu.qrfornecedorUF.Value = '') or
      (frmcompra_menu.qrfornecedorIE.Value = '') then
    begin
      showmessage('Atenção! Dados de Fornecedor Inconsistente...');
      exit;
    end;

    Edit1.Text := frmcompra_menu.qrfornecedorUF.Value;
    eemissao.setfocus;
  end;
end;

procedure Tfrmcompra.eemissaoEnter(Sender: TObject);
begin
  if eemissao.Text = '  /  /    ' then
    eemissao.date := date;
end;

procedure Tfrmcompra.eentradaEnter(Sender: TObject);
begin
  if eentrada.Text = '  /  /    ' then
    eentrada.date := date;
end;

procedure Tfrmcompra.evalor_substExit(Sender: TObject);
begin
  if frmcompra_menu.QRNOTA.State <> dsedit then
    if frmcompra_menu.QRNOTA.State <> dsinsert then
      exit;

  if frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat > 0 then
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat;
  end
  else
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORSUB').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORSUB').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('conf_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat;
  end;

end;

procedure Tfrmcompra.RzDBNumericEdit9Exit(Sender: TObject);
begin
  if frmcompra_menu.QRNOTA.State <> dsedit then
    if frmcompra_menu.QRNOTA.State <> dsinsert then
      exit;

  if frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat > 0 then
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('conf_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('conf_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat;

    if frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORICMS').asfloat > 0 then
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSREDITO_PERC').asfloat :=
        (frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat * 100) /
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORICMS').asfloat;

  end
  else
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORSUB').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('conf_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORSUB').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('conf_ITEM_ESPECIAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat;
  end;

end;

procedure Tfrmcompra.etotalnotaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

    tab_principal.ActivePageIndex := 0;
    if combo_tipo.ItemIndex = 3 then
    begin
      tab_principal.ActivePageIndex := 5;
      enota_fiscal.setfocus;

    end
    else
    begin
      tab_principal.ActivePageIndex := 0;
      bincluir.setfocus;
    end;
  end;
end;

procedure Tfrmcompra.xdescontoClick(Sender: TObject);
begin
  if XDESCONTO.checked then
  begin

    if frmcompra_menu.QRNOTA.State <> dsedit then
      if frmcompra_menu.QRNOTA.State <> dsinsert then
        exit;

    if frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat > 0 then
    begin
      if XDESCONTO.checked then
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat -
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat
      else
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat;
    end
    else
    begin
      if XDESCONTO.checked then
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORSUB').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat -
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat
      else
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORSUB').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ITEM_ESPECIAL').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat;
    end;

  end;
end;

procedure Tfrmcompra.ecfopKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmcompra_menu.QRNOTA.State <> dsedit then
      if frmcompra_menu.QRNOTA.State <> dsinsert then
        exit;
    if TEdit(Sender).Text <> '' then
    begin
      frmmodulo.qrcfop.close;
      frmmodulo.qrcfop.sql.clear;
      frmmodulo.qrcfop.sql.add('select * from c000030 where cfop = ''' +
        ecfop.Text + ''' and tipo = 1');
      frmmodulo.qrcfop.open;
      if frmmodulo.qrcfop.RecordCount = 0 then
      begin
        Application.messagebox('CFOP não cadastrado ou não é de entrada!',
          'Aviso', mb_ok + MB_ICONWARNING);
        ecfop.setfocus;
      end
      else
        Perform(wm_nextdlgctl, 0, 0);
    end
    else
    begin
      ecfopButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra.ecfopButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  parametro_pesquisa := ' = 1 ';
  frmxloc_cfOP := tfrmxloc_cfOP.create(self);
  frmxloc_cfOP.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrcfop.close;
    frmmodulo.qrcfop.sql.clear;
    frmmodulo.qrcfop.sql.add('select * from c000030 where cfop = ''' +
      resultado_pesquisa1 + '''');
    frmmodulo.qrcfop.open;
    frmcompra_menu.QRNOTA.FIELDBYNAME('cfOP').ASSTRING := resultado_pesquisa1;
    ebase_icms.setfocus;
  end;
end;

procedure Tfrmcompra.bincluirClick(Sender: TObject);
var
  codg: string;
begin

  if etotalnota.Value = 0 then
  begin
    Application.messagebox('Favor informar o Valor da Nota Fiscal!', 'Atenção',
      mb_ok + mb_iconerror);
    evalor_produtos.setfocus;
    exit;
  end;

  frmcompra_menu.vopcao_item := 1;

  if (frmcompra_menu.QRNOTA.FIELDBYNAME('numero').ASSTRING = '000000') and
    (frmcompra_menu.QRNOTA.FIELDBYNAME('numero').ASSTRING = '') then
  begin
    Application.messagebox('Favor informar um número válido para Nota Fiscal!',
      'Atenção', mb_ok + mb_iconerror);
    enumero.setfocus;
    exit;
  end;

  // balterar.Enabled := False;

  // frmcompra_menu.vopcao_nfe := 1;

  vbicms := 0;
  vvicms := 0;
  vipi := 0;
  vbst := 0;
  vvst := 0;
  vfrete := 0;
  // vespecial := 0;
  vseguro := 0;
  voutras := 0;
  vprodutos := 0;
  vtotal := 0;
  codg := frmprincipal.codifica('000032');
  qrnota_item.close;
  qrnota_item.sql.clear;
  qrnota_item.sql.add('select * from c000088 where codigo = ''' + codg +
    ''' and codnota = ''' + qrnota_item_lista.FIELDBYNAME('codnota')
    .ASSTRING + '''');
  qrnota_item.open;

  qrnota_item.Insert;
  qrnota_item.FIELDBYNAME('codigo').ASSTRING := codg;
  qrnota_item.FIELDBYNAME('codlancamento').ASSTRING :=
    qrnota_item.FIELDBYNAME('codigo').ASSTRING;
  qrnota_item.FIELDBYNAME('data').AsDateTime :=
    frmcompra_menu.QRNOTA.FIELDBYNAME('DATA_LANCAMENTO').asfloat;
  codigo_it := qrnota_item.FIELDBYNAME('codigo').ASSTRING;
  qrnota_item.FIELDBYNAME('codnota').ASSTRING :=
    frmcompra_menu.QRNOTA.FIELDBYNAME('codigo').ASSTRING;
  qrnota_item.FIELDBYNAME('codfornecedor').ASSTRING := ECODFORNECEDOR.Text;
  qrnota_item.FIELDBYNAME('notafiscal').ASSTRING :=
    frmcompra_menu.QRNOTA.FIELDBYNAME('numero').ASSTRING;
  qrnota_item.FIELDBYNAME('CFOP').ASSTRING := frmcompra_menu.QRNOTA.FIELDBYNAME
    ('CFOP').ASSTRING;

  if frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat > 0 then
    qrnota_item.FIELDBYNAME('icms_retido').ASSTRING := 'S'
  else
    qrnota_item.FIELDBYNAME('icms_retido').ASSTRING := 'N';

  qrnota_item.FIELDBYNAME('item').ASSTRING :=
    frmprincipal.zerarcodigo(inttostr(itens), 3);
  qrnota_item.FIELDBYNAME('IPI_TIPO').ASSTRING := '0.Não Tem IPI';

  if rdesconto.Value = 0 then
  begin
    qrnota_item.FIELDBYNAME('DESCONTO').asfloat := 0;
    qrnota_item.FIELDBYNAME('DESCONTO_P').asfloat := 0;
  end;

  qrnota_item.FIELDBYNAME('ICMS_ALIQUOTA').asfloat := 0;
  qrnota_item.FIELDBYNAME('ICMS_REDUCAO').asfloat := 0;
  qrnota_item.FIELDBYNAME('ICMS_BASE').asfloat := 0;
  qrnota_item.FIELDBYNAME('ICMS_VALOR').asfloat := 0;
  qrnota_item.FIELDBYNAME('ICMS_ISENTO').asfloat := 0;
  qrnota_item.FIELDBYNAME('ICMS_NAOTRIBUTADO').asfloat := 0;
  qrnota_item.FIELDBYNAME('ICMS_VALORRETIDO').asfloat := 0;
  qrnota_item.FIELDBYNAME('SUB_BASE').asfloat := 0;
  qrnota_item.FIELDBYNAME('SUB_VALOR').asfloat := 0;
  qrnota_item.FIELDBYNAME('IPI_ALIQUOTA').asfloat := 0;
  qrnota_item.FIELDBYNAME('IPI_BASE').asfloat := 0;
  qrnota_item.FIELDBYNAME('IPI_VALOR').asfloat := 0;
  qrnota_item.FIELDBYNAME('CLASSIFICACAO_FISCAL').ASSTRING := '';
  qrnota_item.FIELDBYNAME('SUB_MARGEM').asfloat := 0;
  qrnota_item.FIELDBYNAME('SUB_BASE').asfloat := 0;
  // frmcompra_menu.qrnotaCONF_BASESUB.AsFloat;
  qrnota_item.FIELDBYNAME('SUB_PRODUTOS').asfloat := 0;

  qrnota_item.FIELDBYNAME('frete').asfloat := 0;
  qrnota_item.FIELDBYNAME('seguro').asfloat := 0;
  qrnota_item.FIELDBYNAME('outras').asfloat := 0;
  qrnota_item.FIELDBYNAME('ITEM_ESPECIAL_VALOR').asfloat := 0;

  if frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_BASESUB').asfloat > 0 then
    qrnota_item.FIELDBYNAME('SUB_PRODUTOS').asfloat :=
      frmcompra_menu.qrnotaCONF_TOTALPRODUTOS.asfloat;

  frmcompra_item := tfrmcompra_item.create(self);
  frmcompra_item.showmodal;

  qrnota_item_lista.Refresh;

  batualiza_itensClick(frmcompra);

  bgravar.setfocus;

end;

procedure Tfrmcompra.batualiza_itensClick(Sender: TObject);
begin
  frmcompra_menu.QRNOTA.FIELDBYNAME('BASE_ICMS').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('valor_ICMS').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('BASE_sub').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('valor_sub').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('frete').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('seguro').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('outras').asfloat := 0;
  // frmcompra_menu.qrnota.fieldbyname('item_especial_total').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('ipi').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('total_produtos').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('credito_icms').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('pis').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('cofins').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('ipi').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('ICMS_ISENTO').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('ICMS_OUTRAS').asfloat := 0;
  frmcompra_menu.QRNOTA.FIELDBYNAME('desconto').asfloat := 0;

  itens := 1;

  frmcompra.qrnota_item_lista.first;
  rtproduto.Value := 0;

  while not frmcompra.qrnota_item_lista.Eof do
  begin

    frmcompra_menu.QRNOTA.FIELDBYNAME('ICMS_ISENTO').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('ICMS_ISENTO').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('ICMS_ISENTO').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('ICMS_NAOTRIBUTADO').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('ICMS_OUTRAS').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('ICMS_OUTRAS').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('ICMS_OUTRAS').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('BASE_ICMS').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('BASE_ICMS').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('icms_base').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('valor_ICMS').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_ICMS').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('icms_valor').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('BASE_sub').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('Base_sub').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('sub_base').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('valor_sub').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_sub').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('sub_valor').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('frete').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('frete').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('frete').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('seguro').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('seguro').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('seguro').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('outras').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('outras').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('outras').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('ipi').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('ipi').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('ipi_valor').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('credito_icms').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('credito_icms').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('credito_icms').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('pis').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('pis').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('pis').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('cofins').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('cofins').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('cofins').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('total_produtos').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('total_produtos').asfloat +
      frmcompra.qrnota_item_lista.FIELDBYNAME('subtotal').asfloat;

    rtproduto.Value := rtproduto.Value + frmcompra.qrnota_item_lista.FIELDBYNAME
      ('total').asfloat;

    if rdesconto.Value > 0 then
    begin
      if (XDESCONTO.checked = false) and
        (frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat > 0) then
      begin
        // frmcompra_menu.qrnota.fieldbyname('desconto').asfloat := frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat;

        frmcompra_menu.QRNOTA.FIELDBYNAME('desconto').asfloat :=
          frmcompra_menu.QRNOTA.FIELDBYNAME('desconto').asfloat +
          frmcompra.qrnota_item_lista.FIELDBYNAME('desconto').asfloat;

        frmcompra_menu.QRNOTA.FIELDBYNAME('total_nota').asfloat :=
          (frmcompra_menu.QRNOTA.FIELDBYNAME('total_produtos').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('frete').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('seguro').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('outras').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('ipi').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('item_especial_total').asfloat +
          frmcompra_menu.QRNOTA.FIELDBYNAME('valor_sub').asfloat) -
          frmcompra_menu.QRNOTA.FIELDBYNAME('desconto').asfloat;

      end
      else
      begin
        if (frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat > 0) then
        begin

          // frmcompra_menu.qrnota.fieldbyname('desconto').asfloat := frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat;

          frmcompra_menu.QRNOTA.FIELDBYNAME('desconto').asfloat :=
            frmcompra_menu.QRNOTA.FIELDBYNAME('desconto').asfloat +
            frmcompra.qrnota_item_lista.FIELDBYNAME('desconto').asfloat;

          frmcompra_menu.QRNOTA.FIELDBYNAME('total_nota').asfloat :=
            (frmcompra_menu.QRNOTA.FIELDBYNAME('total_produtos').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('frete').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('seguro').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('outras').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('item_especial_total').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('ipi').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('valor_sub').asfloat) -
            frmcompra_menu.QRNOTA.FIELDBYNAME('desconto').asfloat;

        end
        else
        begin
          frmcompra_menu.QRNOTA.FIELDBYNAME('desconto').asfloat := 0;
          frmcompra_menu.QRNOTA.FIELDBYNAME('total_nota').asfloat :=
            frmcompra_menu.QRNOTA.FIELDBYNAME('total_produtos').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('frete').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('seguro').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('outras').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('ipi').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('valor_sub').asfloat +
            frmcompra_menu.QRNOTA.FIELDBYNAME('item_especial_total').asfloat;

        end;
      end;
    end
    else
    begin

      frmcompra_menu.QRNOTA.FIELDBYNAME('desconto').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('desconto').asfloat +
        frmcompra.qrnota_item_lista.FIELDBYNAME('desconto').asfloat;

      frmcompra_menu.QRNOTA.FIELDBYNAME('total_nota').asfloat :=
        (frmcompra_menu.QRNOTA.FIELDBYNAME('total_produtos').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('frete').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('seguro').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('outras').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('item_especial_total').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('ipi').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('valor_sub').asfloat) -
        frmcompra_menu.QRNOTA.FIELDBYNAME('desconto').asfloat;

    end;

    edtotal.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('total_nota').asfloat;

    itens := itens + 1;

    frmcompra.qrnota_item_lista.next;
  end;

  frmcompra_menu.QRNOTA.FIELDBYNAME('itens').AsINTEGER := itens - 1;

  eddesconto.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('desconto').asfloat;

  frmcompra.edbicms.Value := frmcompra_menu.QRNOTA.FIELDBYNAME
    ('base_icms').asfloat;
  frmcompra.edvicms.Value := frmcompra_menu.QRNOTA.FIELDBYNAME
    ('valor_icms').asfloat;
  frmcompra.edipi.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('ipi').asfloat;
  frmcompra.edbst.Value := frmcompra_menu.QRNOTA.FIELDBYNAME
    ('base_sub').asfloat;
  frmcompra.edvst.Value := frmcompra_menu.QRNOTA.FIELDBYNAME
    ('valor_sub').asfloat;
  frmcompra.edfrete.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('frete').asfloat;
  frmcompra.edespecial.Value := frmcompra_menu.QRNOTA.FIELDBYNAME
    ('item_especial_total').asfloat;
  frmcompra.edseguro.Value := frmcompra_menu.QRNOTA.FIELDBYNAME
    ('seguro').asfloat;
  frmcompra.edoutras.Value := frmcompra_menu.QRNOTA.FIELDBYNAME
    ('outras').asfloat;
  frmcompra.edprodutos.Value := frmcompra_menu.QRNOTA.FIELDBYNAME
    ('total_produtos').asfloat;
  frmcompra.edtotal.Value := frmcompra_menu.QRNOTA.FIELDBYNAME
    ('total_nota').asfloat;


  // action := cafree;

end;

procedure Tfrmcompra.bexcluirClick(Sender: TObject);
var
  vrecno: integer;
  vqde_item: integer;
begin
  vrecno := qrnota_item.RecNo;
  vbicms := 0;
  vvicms := 0;
  vipi := 0;
  vbst := 0;
  vvst := 0;
  vfrete := 0;
  // vespecial := 0;
  vseguro := 0;
  voutras := 0;
  vprodutos := 0;
  vtotal := 0;
  if Application.messagebox('Confirma a exclusão do item?', 'Atenção',
    mb_yesno + MB_ICONWARNING) = idyes then
  begin
    if qrnota_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING <> 'XXXXXX' then
    begin
      frmmodulo.QRPRODUTO_MOV.close;
      frmmodulo.QRPRODUTO_MOV.sql.clear;
      frmmodulo.QRPRODUTO_MOV.sql.add('DELETE FROM C000032 WHERE CODIGO = ''' +
        qrnota_item_lista.FIELDBYNAME('CODLANCAMENTO').ASSTRING + '''');
      frmmodulo.QRPRODUTO_MOV.ExecSQL;
      qrgrade_entrada.close;
      qrgrade_entrada.sql.clear;
      qrgrade_entrada.sql.add('select * from c000033 where coditem = ''' +
        qrnota_item_lista.FIELDBYNAME('CODLANCAMENTO').ASSTRING + '''');
      qrgrade_entrada.open;
      frmmodulo.qrgrade_produto.close;
      frmmodulo.qrgrade_produto.sql.clear;
      frmmodulo.qrgrade_produto.sql.add
        ('select * from c000021 where codproduto = ''' +
        qrnota_item_lista.FIELDBYNAME('CODPRODUTO').ASSTRING + '''');
      frmmodulo.qrgrade_produto.open;
      while qrgrade_entrada.RecordCount <> 0 do
      begin
        if frmmodulo.qrgrade_produto.Locate('codigo',
          qrgrade_entrada.FIELDBYNAME('codgrade').ASSTRING, [loCaseInsensitive])
        then
        begin
          frmmodulo.qrgrade_produto.EDIT;
          frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').asfloat :=
            frmmodulo.qrgrade_produto.FIELDBYNAME('estoque').asfloat -
            qrgrade_entrada.FIELDBYNAME('qtde').asfloat;
          frmmodulo.qrgrade_produto.Post;
        end;
        qrgrade_entrada.delete;
      end;
    end;

    qrnota_item.close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add('delete from c000088 where codigo = ''' +
      qrnota_item_lista.FIELDBYNAME('codigo').ASSTRING + ''' and codnota = ''' +
      qrnota_item_lista.FIELDBYNAME('codnota').ASSTRING + '''');
    qrnota_item.ExecSQL;
    frmmodulo.Conexao.Commit;
    Application.ProcessMessages;

    qrnota_item.close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add('select * from c000088 where codnota = ''' +
      qrnota_item_lista.FIELDBYNAME('codnota').ASSTRING + '''');
    qrnota_item.open;

    vqde_item := 0;
    qrnota_item.first;
    while not qrnota_item.Eof do
    begin
      vqde_item := vqde_item + 1;
      qrnota_item.EDIT;
      qrnota_item.FIELDBYNAME('ITEM').ASSTRING :=
        frmprincipal.zerarcodigo(inttostr(vqde_item), 3);
      qrnota_item.Post;
      qrnota_item.next;
    end;

    frmmodulo.Conexao.Commit;
    Application.ProcessMessages;

    qrnota_item_lista.Refresh;

    batualiza_itensClick(frmcompra);
  end;
end;

procedure Tfrmcompra.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcompra.RzDBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBEdit5.setfocus;
end;

procedure Tfrmcompra.DBEdit4Enter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;
end;

procedure Tfrmcompra.DBEdit4Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  if frmmodulo.qrtransportador.Locate('nome', dbedit4.Text, [loCaseInsensitive])
  then
  begin
    frmcompra_menu.QRNOTA.FIELDBYNAME('TRANSP_PLACA').ASSTRING :=
      frmmodulo.qrtransportador.FIELDBYNAME('placa').ASSTRING;
    frmcompra_menu.QRNOTA.FIELDBYNAME('TRANSP_UF').ASSTRING :=
      frmmodulo.qrtransportador.FIELDBYNAME('ufplaca').ASSTRING;
    frmcompra_menu.QRNOTA.FIELDBYNAME('TRANSP_CNPJ').ASSTRING :=
      frmmodulo.qrtransportador.FIELDBYNAME('cpf').ASSTRING;
    frmcompra_menu.QRNOTA.FIELDBYNAME('TRANSP_IE').ASSTRING :=
      frmmodulo.qrtransportador.FIELDBYNAME('rg').ASSTRING;
    frmcompra_menu.QRNOTA.FIELDBYNAME('TRANSP_ENDERECO').ASSTRING :=
      frmmodulo.qrtransportador.FIELDBYNAME('endereco').ASSTRING;
    frmcompra_menu.QRNOTA.FIELDBYNAME('TRANSP_CIDADE').ASSTRING :=
      frmmodulo.qrtransportador.FIELDBYNAME('cidade').ASSTRING;
    frmcompra_menu.QRNOTA.FIELDBYNAME('TRANSP_UF').ASSTRING :=
      frmmodulo.qrtransportador.FIELDBYNAME('uf').ASSTRING;
  end;
end;

procedure Tfrmcompra.RzDBNumericEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcompra.combo_tipoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ECODFORNECEDOR.setfocus;
end;

procedure Tfrmcompra.ecodremetenteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmcompra_menu.QRNOTA.State <> dsedit then
      if frmcompra_menu.QRNOTA.State <> dsinsert then
        exit;

    frmcompra_menu.QRNOTA.FIELDBYNAME('codremetente').ASSTRING :=
      frmprincipal.zerarcodigo(TEdit(Sender).Text, 6);
    if TEdit(Sender).Text <> '000000' then
    begin
      frmcompra_menu.qrfornecedor.close;
      frmcompra_menu.qrfornecedor.sql.clear;
      frmcompra_menu.qrfornecedor.sql.add
        ('select * from c000009 where codigo = ''' + ecodremetente.Text + '''');
      frmcompra_menu.qrfornecedor.open;
      if frmcompra_menu.qrfornecedor.RecordCount = 0 then
      begin
        Application.messagebox('Fornecedor/Remetente não cadastrado!', 'Aviso',
          mb_ok + MB_ICONWARNING);
        ecodremetente.setfocus;
      end
      else
        Perform(wm_nextdlgctl, 0, 0);
    end
    else
    begin
      ecodremetenteButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra.ecodremetenteButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
  frmxloc_fornecedor.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmcompra_menu.qrfornecedor.close;
    frmcompra_menu.qrfornecedor.sql.clear;
    frmcompra_menu.qrfornecedor.sql.add
      ('select * from c000009 where codigo = ''' + resultado_pesquisa1 + '''');
    frmcompra_menu.qrfornecedor.open;
    frmcompra_menu.QRNOTA.FIELDBYNAME('codremetente').ASSTRING :=
      resultado_pesquisa1;
    emercadoria.setfocus;
  end;
end;

procedure Tfrmcompra.combo_tipoChange(Sender: TObject);
begin
  if combo_tipo.ItemIndex = 3 then
    tab_principal.ActivePageIndex := 5
  else
    tab_principal.ActivePageIndex := 0;
end;

procedure Tfrmcompra.enota_fiscalExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  if frmcompra_menu.QRNOTA.State <> dsedit then
    if frmcompra_menu.QRNOTA.State <> dsinsert then
      exit;

  frmcompra_menu.QRNOTA.FIELDBYNAME('nota_fiscal').ASSTRING :=
    frmprincipal.zerarcodigo(frmcompra_menu.QRNOTA.FIELDBYNAME('nota_fiscal')
    .ASSTRING, 6);

  qrnf.close;
  qrnf.sql.clear;
  qrnf.sql.add('select * from c000087 where numero = ''' +
    frmcompra_menu.QRNOTA.FIELDBYNAME('nota_fiscal').ASSTRING + '''');
  qrnf.open;
  if qrnf.RecordCount = 1 then
  begin
    frmcompra_menu.QRNOTA.FIELDBYNAME('codremetente').ASSTRING :=
      qrnf.FIELDBYNAME('codfornecedor').ASSTRING;
    frmcompra_menu.QRNOTA.FIELDBYNAME('VALOR_MERCADORIAS').ASSTRING :=
      qrnf.FIELDBYNAME('total_produtos').ASSTRING;

  end;

end;

procedure Tfrmcompra.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcompra.RzDBNumericEdit1Exit(Sender: TObject);
begin
  if frmcompra_menu.QRNOTA.State <> dsedit then
    if frmcompra_menu.QRNOTA.State <> dsinsert then
      exit;

  with frmcompra_menu.QRNOTA do
  begin
    if FIELDBYNAME('ITEM_FRETE_VALOR').asfloat > 0 then
    begin
      if FIELDBYNAME('ITEM_FRETE_BASE').asfloat = 0 then
        FIELDBYNAME('ITEM_FRETE_BASE').asfloat :=
          FIELDBYNAME('ITEM_FRETE_VALOR').asfloat;
      if FIELDBYNAME('ITEM_FRETE_BASE').asfloat > 0 then
      begin
        if (FIELDBYNAME('ITEM_FRETE_BASE').asfloat > 0) and
          (FIELDBYNAME('ITEM_FRETE_ALIQUOTA').asfloat > 0) then
        begin
          FIELDBYNAME('ITEM_FRETE_ICMS').asfloat :=
            FIELDBYNAME('ITEM_FRETE_BASE').asfloat *
            (FIELDBYNAME('ITEM_FRETE_ALIQUOTA').asfloat / 100);
        end;
      end;
    end;

    if FIELDBYNAME('ITEM_SEGURO_VALOR').asfloat > 0 then
    begin
      if FIELDBYNAME('ITEM_SEGURO_BASE').asfloat = 0 then
        FIELDBYNAME('ITEM_SEGURO_BASE').asfloat :=
          FIELDBYNAME('ITEM_SEGURO_VALOR').asfloat;
      if FIELDBYNAME('ITEM_SEGURO_BASE').asfloat > 0 then
      begin
        if (FIELDBYNAME('ITEM_SEGURO_BASE').asfloat > 0) and
          (FIELDBYNAME('ITEM_SEGURO_ALIQUOTA').asfloat > 0) then
        begin
          FIELDBYNAME('ITEM_SEGURO_ICMS').asfloat :=
            FIELDBYNAME('ITEM_SEGURO_BASE').asfloat *
            (FIELDBYNAME('ITEM_SEGURO_ALIQUOTA').asfloat / 100);
        end;
      end;
    end;

    if FIELDBYNAME('ITEM_PIS_VALOR').asfloat > 0 then
    begin
      if FIELDBYNAME('ITEM_PIS_BASE').asfloat = 0 then
        FIELDBYNAME('ITEM_PIS_BASE').asfloat :=
          FIELDBYNAME('ITEM_PIS_VALOR').asfloat;
      if FIELDBYNAME('ITEM_PIS_BASE').asfloat > 0 then
      begin
        if (FIELDBYNAME('ITEM_PIS_BASE').asfloat > 0) and
          (FIELDBYNAME('ITEM_PIS_ALIQUOTA').asfloat > 0) then
        begin
          FIELDBYNAME('ITEM_PIS_ICMS').asfloat := FIELDBYNAME('ITEM_PIS_BASE')
            .asfloat * (FIELDBYNAME('ITEM_PIS_ALIQUOTA').asfloat / 100);
        end;
      end;
    end;

    if FIELDBYNAME('ITEM_COMPLEMENTO_VALOR').asfloat > 0 then
    begin
      if FIELDBYNAME('ITEM_COMPLEMENTO_BASE').asfloat = 0 then
        FIELDBYNAME('ITEM_COMPLEMENTO_BASE').asfloat :=
          FIELDBYNAME('ITEM_COMPLEMENTO_VALOR').asfloat;
      if FIELDBYNAME('ITEM_COMPLEMENTO_BASE').asfloat > 0 then
      begin
        if (FIELDBYNAME('ITEM_COMPLEMENTO_BASE').asfloat > 0) and
          (FIELDBYNAME('ITEM_COMPLEMENTO_ALIQUOTA').asfloat > 0) then
        begin
          FIELDBYNAME('ITEM_COMPLEMENTO_ICMS').asfloat :=
            FIELDBYNAME('ITEM_COMPLEMENTO_BASE').asfloat *
            (FIELDBYNAME('ITEM_COMPLEMENTO_ALIQUOTA').asfloat / 100);
        end;
      end;
    end;

    if FIELDBYNAME('ITEM_SERVICO_VALOR').asfloat > 0 then
    begin
      if FIELDBYNAME('ITEM_SERVICO_BASE').asfloat = 0 then
        FIELDBYNAME('ITEM_SERVICO_BASE').asfloat :=
          FIELDBYNAME('ITEM_SERVICO_VALOR').asfloat;
      if FIELDBYNAME('ITEM_SERVICO_BASE').asfloat > 0 then
      begin
        if (FIELDBYNAME('ITEM_SERVICO_BASE').asfloat > 0) and
          (FIELDBYNAME('ITEM_SERVICO_ALIQUOTA').asfloat > 0) then
        begin
          FIELDBYNAME('ITEM_SERVICO_ICMS').asfloat :=
            FIELDBYNAME('ITEM_SERVICO_BASE').asfloat *
            (FIELDBYNAME('ITEM_SERVICO_ALIQUOTA').asfloat / 100);
        end;
      end;
    end;

    if FIELDBYNAME('ITEM_OUTRAS_VALOR').asfloat > 0 then
    begin
      if FIELDBYNAME('ITEM_OUTRAS_BASE').asfloat = 0 then
        FIELDBYNAME('ITEM_OUTRAS_BASE').asfloat :=
          FIELDBYNAME('ITEM_OUTRAS_VALOR').asfloat;
      if FIELDBYNAME('ITEM_OUTRAS_BASE').asfloat > 0 then
      begin
        if (FIELDBYNAME('ITEM_OUTRAS_BASE').asfloat > 0) and
          (FIELDBYNAME('ITEM_OUTRAS_ALIQUOTA').asfloat > 0) then
        begin
          FIELDBYNAME('ITEM_OUTRAS_ICMS').asfloat :=
            FIELDBYNAME('ITEM_OUTRAS_BASE').asfloat *
            (FIELDBYNAME('ITEM_OUTRAS_ALIQUOTA').asfloat / 100);
        end;
      end;
    end;

    FIELDBYNAME('ITEM_ESPECIAL_VALOR').asfloat :=
      FIELDBYNAME('ITEM_FRETE_VALOR').asfloat + FIELDBYNAME('ITEM_SEGURO_VALOR')
      .asfloat + FIELDBYNAME('ITEM_PIS_VALOR').asfloat +
      FIELDBYNAME('ITEM_COMPLEMENTO_VALOR').asfloat +
      FIELDBYNAME('ITEM_SERVICO_VALOR').asfloat +
      FIELDBYNAME('ITEM_OUTRAS_VALOR').asfloat;

    FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat := FIELDBYNAME('ITEM_FRETE_ICMS')
      .asfloat + FIELDBYNAME('ITEM_SEGURO_ICMS').asfloat +
      FIELDBYNAME('ITEM_PIS_ICMS').asfloat +
      FIELDBYNAME('ITEM_COMPLEMENTO_ICMS').asfloat +
      FIELDBYNAME('ITEM_SERVICO_ICMS').asfloat +
      FIELDBYNAME('ITEM_OUTRAS_ICMS').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_VALOR').asfloat :=
      FIELDBYNAME('ITEM_ESPECIAL_VALOR').asfloat;
    frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat :=
      FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat;

    frmcompra_menu.QRNOTA.FIELDBYNAME('total_nota').asfloat :=
      frmcompra_menu.QRNOTA.FIELDBYNAME('total_produtos').asfloat +
      frmcompra_menu.QRNOTA.FIELDBYNAME('frete').asfloat +
      frmcompra_menu.QRNOTA.FIELDBYNAME('seguro').asfloat +
      frmcompra_menu.QRNOTA.FIELDBYNAME('outras').asfloat +
      frmcompra_menu.QRNOTA.FIELDBYNAME('ipi').asfloat +
      frmcompra_menu.QRNOTA.FIELDBYNAME('valor_sub').asfloat +
      frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat;

    edtotal.Value := frmcompra_menu.QRNOTA.FIELDBYNAME('total_nota').asfloat;
    edespecial.Value := frmcompra_menu.QRNOTA.FIELDBYNAME
      ('ITEM_ESPECIAL_TOTAL').asfloat;

    vespecial := frmcompra_menu.QRNOTA.FIELDBYNAME
      ('ITEM_ESPECIAL_TOTAL').asfloat;

  end;

end;

procedure Tfrmcompra.RzDBNumericEdit37KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcompra.edvicmsExit(Sender: TObject);
begin
  edtotal.Value := (edprodutos.Value + edvst.Value + edfrete.Value +
    edseguro.Value + edoutras.Value + edipi.Value + edespecial.Value) -
    rdesconto.Value;
end;

procedure Tfrmcompra.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrmcompra.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcompra.balterarClick(Sender: TObject);
var
  vrecno: integer;
begin
  if Edit1.Text = '' then
  begin
    showmessage('Informação do Estado do Fornecedor Inválido...');
    ECODFORNECEDOR.setfocus;
    exit;
  end;
  frmcompra_menu.vopcao_item := 2;
  vrecno := qrnota_item_lista.RecNo;
  vbicms := 0;
  vvicms := 0;
  vipi := 0;
  vbst := 0;
  vvst := 0;
  vfrete := 0;
  // vespecial := 0;
  vseguro := 0;
  voutras := 0;
  vprodutos := 0;
  vtotal := 0;

  qrnota_item.close;
  qrnota_item.sql.clear;
  qrnota_item.sql.add('select * from c000088 where codigo = ''' +
    qrnota_item_lista.FIELDBYNAME('codigo').ASSTRING + ''' and codnota = ''' +
    qrnota_item_lista.FIELDBYNAME('codnota').ASSTRING + '''');
  qrnota_item.open;

  qrnota_item.EDIT;

  frmcompra_item := tfrmcompra_item.create(self);
  frmcompra_item.eproduto.Text := qrnota_item_lista.FIELDBYNAME
    ('produto').ASSTRING;
  frmcompra_item.showmodal;

  qrnota_item.Refresh;
  batualiza_itensClick(frmcompra);
  qrnota_item_lista.RecNo := vrecno;

  bgravar.setfocus;

end;

procedure Tfrmcompra.ecfopExit(Sender: TObject);
begin
  if (frmcompra.Edit1.Text = frmcompra.Edit2.Text) and
    (copy(ecfop.Text, 1, 1) = '2') then
  begin
    showmessage
      ('CFOP Invalido para essa Operação com Empresa de Dentro do Estado!');
    ecfop.setfocus;
    exit;
  end
  else if (frmcompra.Edit1.Text <> frmcompra.Edit2.Text) and
    (copy(ecfop.Text, 1, 1) = '1') then
  begin
    showmessage
      ('CFOP Invalido para essa Operação com Empresa de Dentro do Estado!');
    ecfop.setfocus;
    exit;
  end;

end;

procedure Tfrmcompra.ecodmodeloKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmcompra_menu.QRNOTA.State <> dsedit then
      if frmcompra_menu.QRNOTA.State <> dsinsert then
        exit;

    frmcompra_menu.QRNOTA.FIELDBYNAME('modelo').ASSTRING :=
      frmprincipal.zerarcodigo(TEdit(Sender).Text, 2);

    if TEdit(Sender).Text <> '00' then
    begin
      frmcompra_menu.qrmodelo.close;
      frmcompra_menu.qrmodelo.sql.clear;
      frmcompra_menu.qrmodelo.sql.add
        ('select * from c000082 where sintegra = ''' + ecodmodelo.Text + '''');
      frmcompra_menu.qrmodelo.open;

      if frmcompra_menu.qrmodelo.RecordCount > 0 then
      begin
        frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING :=
          frmcompra_menu.qrmodelo.FIELDBYNAME('sigla').ASSTRING;
        eserie.setfocus;
      end
      else
      begin
        Application.messagebox('Modelo não cadastrado!', 'Atenção',
          mb_ok + MB_ICONWARNING);
        ecodmodelo.SelectAll;
        ecodmodelo.setfocus;
        ecodmodeloButtonClick(frmcompra);
      end;
    end
    else
    begin
      ecodmodeloButtonClick(frmcompra);
      tab_principal.ActivePageIndex := 0;
      frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING :=
        frmcompra_menu.qrmodelo.FIELDBYNAME('sigla').ASSTRING;
    end;
    eserie.setfocus;
    if TEdit(Sender).Text = '55' then
    begin
      Label89.Enabled := true;
    end
    else
    begin
      Label89.Enabled := false;
    end;
  end;
end;

procedure Tfrmcompra.ecodmodeloButtonClick(Sender: TObject);
begin
  resultado_pesquisa4 := '';
  parametro_pesquisa := '';
  frmxloc_modelo := tfrmxloc_modelo.create(self);
  frmxloc_modelo.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmcompra_menu.qrmodelo.close;
    frmcompra_menu.qrmodelo.sql.clear;
    frmcompra_menu.qrmodelo.sql.add('select * from c000082 where sintegra = '''
      + resultado_pesquisa4 + '''');
    frmcompra_menu.qrmodelo.open;
    frmcompra_menu.QRNOTA.FIELDBYNAME('modelo').ASSTRING := resultado_pesquisa4;
    frmcompra_menu.QRNOTA.FIELDBYNAME('especie').ASSTRING :=
      frmcompra_menu.qrmodelo.FIELDBYNAME('sigla').ASSTRING;
    tab_principal.ActivePageIndex := 0;
    if (ecodmodelo.Text = '07') or (ecodmodelo.Text = '08') or
      (ecodmodelo.Text = '09') or (ecodmodelo.Text = '10') or
      (ecodmodelo.Text = '11') then
    begin
      combo_tipo.ItemIndex := 3;
      tab_principal.ActivePageIndex := 5
    end;
    eserie.setfocus;
  end;
end;

procedure Tfrmcompra.evalor_produtosExit(Sender: TObject);
begin

  if frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat = 0 then
  begin
    if Application.messagebox('Valor dos produtos não Informado! Continua?',
      'Aviso', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
    begin
      evalor_produtos.setfocus;
      exit;
    end;
  end;

  if frmcompra_menu.QRNOTA.State <> dsedit then
    if frmcompra_menu.QRNOTA.State <> dsinsert then
      exit;

  if frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat > 0 then
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_ICMSRETIDO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat;
  end
  else
  begin
    if XDESCONTO.checked then
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORSUB').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat -
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_DESCONTO').asfloat
    else
      frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALNOTA').asfloat :=
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_VALORSUB').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_TOTALPRODUTOS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_FRETE').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_SEGURO').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_OUTRAS').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('ITEM_ESPECIAL_TOTAL').asfloat +
        frmcompra_menu.QRNOTA.FIELDBYNAME('CONF_IPI').asfloat;
  end;

end;

procedure Tfrmcompra.ECODFORNECEDORExit(Sender: TObject);
begin
  (* ********************* verificar se existe a mesma nota para o mesmo forncedor ********************** *)
  if frmcompra_menu.QRNOTA.State = dsinsert then
  begin
    qrnf.close;
    qrnf.sql.clear;
    qrnf.sql.add('select * from c000087 where numero = ''' +
      enumero.Text + '''');
    qrnf.sql.add('and codfornecedor = ''' + resultado_pesquisa1 + '''');
    qrnf.sql.add('and modelo = ''' + ecodmodelo.Text + '''');
    qrnf.open;
    if qrnf.RecordCount > 0 then
    begin
      Application.messagebox
        ('Já existe uma nota fiscal cadastrada com este número para este fornecedor!',
        'Atenção', mb_ok + mb_iconerror);
      enumero.setfocus;
      exit;
    end;
  end;

end;

procedure Tfrmcompra.XDESCONTOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcompra.econtaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    econta.Text := frmprincipal.zerarcodigo(econta.Text, 6);
    if econta.Text <> '000000' then
      if not frmprincipal.Locregistro(frmmodulo.qrplano, econta.Text, 'codigo')
      then
        econtaButtonClick(frmcompra)
      else
        edit5.setfocus
    else
      econta.setfocus;

  end;
end;

procedure Tfrmcompra.econtaButtonClick(Sender: TObject);
begin
  frmloc_conta := tfrmloc_conta.create(self);
  frmloc_conta.showmodal;
  econta.Text := frmmodulo.qrplano.FIELDBYNAME('codigo').ASSTRING;
  edit5.setfocus;
end;

procedure Tfrmcompra.edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcompra.ecountKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgerar.setfocus;
end;

procedure Tfrmcompra.bgerarClick(Sender: TObject);
var
  i: integer;
  valor_fat: real;
begin
  if frmcompra_menu.QRNOTA.State = dsinsert then
  begin
    qrpagar.close;
    qrpagar.sql.clear;
    qrpagar.sql.add('DELETE FROM C000046 WHERE CODNOTA = ''' +
      frmcompra_menu.QRNOTA.FIELDBYNAME('NUMERO').ASSTRING + '''');
    qrpagar.ExecSQL;

    qrpagar.sql.clear;
    qrpagar.sql.add('SELECT * FROM C000046 WHERE CODNOTA = ''' +
      frmcompra_menu.QRNOTA.FIELDBYNAME('NUMERO').ASSTRING +
      ''' ORDER BY DATA_VENCIMENTO');
    qrpagar.open;
  end;
  aceita_inclusao := true;

  if edtotal.Value > 0 then
    valor_fat := edtotal.Value
  else if etotalnota.Value > 0 then
    valor_fat := etotalnota.Value
  else
  begin
    Application.messagebox('Esta nota fiscal não possue valor!', 'Erro',
      mb_ok + mb_iconerror);
    exit;
  end;

  for i := 1 to ecount.IntValue do
  begin
    qrpagar.Insert;
    qrpagar.FIELDBYNAME('codigo').ASSTRING := frmprincipal.codifica('000046');
    qrpagar.FIELDBYNAME('data_emissao').AsDateTime := eemissao.date;
    qrpagar.FIELDBYNAME('codfornecedor').ASSTRING := ECODFORNECEDOR.Text;
    qrpagar.FIELDBYNAME('codconta').ASSTRING := econta.Text;
    qrpagar.FIELDBYNAME('notafiscal').ASSTRING := enumero.Text;
    qrpagar.FIELDBYNAME('situacao').AsINTEGER := 1;
    qrpagar.FIELDBYNAME('filtro').AsINTEGER := 0;
    qrpagar.FIELDBYNAME('codnota').ASSTRING := frmcompra_menu.QRNOTA.FIELDBYNAME
      ('NUMERO').ASSTRING;
    qrpagar.FIELDBYNAME('valor').asfloat := valor_fat / ecount.IntValue;
    qrpagar.FIELDBYNAME('documento').ASSTRING := enumero.Text + '/' +
      inttostr(i);
    qrpagar.FIELDBYNAME('historico').ASSTRING := edit5.Text;
    qrpagar.FIELDBYNAME('especie').ASSTRING := 'DUPLICATA';
    qrpagar.FIELDBYNAME('C').ASSTRING := '';
    qrpagar.FIELDBYNAME('E').ASSTRING := '';
    qrpagar.FIELDBYNAME('data_vencimento').AsDateTime :=
      INCMONTH(eemissao.date, i);
    qrpagar.Post;
  end;
  frmmodulo.Conexao.Commit;
  Application.ProcessMessages;

  qrpagar.Refresh;

  aceita_inclusao := false;
end;

procedure Tfrmcompra.AdvGlowButton2Click(Sender: TObject);
begin
  if qrpagar.FIELDBYNAME('SITUACAO').AsINTEGER = 2 then
  begin
    Application.messagebox
      ('Este documento já foi pago! Impossível prosseguir com a exclusao!',
      'Atenção', mb_ok + mb_iconerror);
    exit;
  end;

  if Application.messagebox('Confirma e exclusão deste documento?', 'Atenção',
    mb_yesno + MB_ICONWARNING) = idyes then
  begin
    qrpagar.delete;
    frmmodulo.Conexao.Commit;
    Application.ProcessMessages;
    if qrpagar.RecordCount = 0 then
      pfatura.Enabled := true;
  end;
end;

procedure Tfrmcompra.qrpagarBeforePost(DataSet: TDataSet);
begin

  if qrpagar.FIELDBYNAME('SITUACAO').AsINTEGER = 2 then
  begin
    Application.messagebox
      ('Este documento já foi pago! Impossível prosseguir com a edição!',
      'Atenção', mb_ok + mb_iconerror);
    abort;
  end
  else
  begin
    if aceita_inclusao then
      qrpagar.FIELDBYNAME('liquido').asfloat :=
        qrpagar.FIELDBYNAME('valor').asfloat
    else
    begin
      if qrpagar.State = dsinsert then
        abort;
    end;
  end;
end;

procedure Tfrmcompra.DBEdit5Enter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;
end;

procedure Tfrmcompra.DBEdit5Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
end;

procedure Tfrmcompra.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcompra.ebase_icmsKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcompra.RzDBNumericEdit41KeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #8 then
    if Key = #13 then
      Perform(wm_nextdlgctl, 0, 0)
    else if (Key in ['0' .. '9']) then
      //
    else
      abort;
end;

procedure Tfrmcompra.DBEdit19Exit(Sender: TObject);
begin
  if dsnota.DataSet.State in [dsinsert, dsedit] then
    dsnota.DataSet.FIELDBYNAME('obs7').ASSTRING :=
      frmprincipal.zerarcodigo(dsnota.DataSet.FIELDBYNAME('obs7').ASSTRING, 6);
end;

procedure Tfrmcompra.ecountExit(Sender: TObject);
begin
  if dsnota.DataSet.State in [dsinsert, dsedit] then
    dsnota.DataSet.FIELDBYNAME('obs8').ASSTRING :=
      frmprincipal.zerarcodigo(dsnota.DataSet.FIELDBYNAME('obs8').ASSTRING, 3);

end;

procedure Tfrmcompra.eemissaoExit(Sender: TObject);
begin
  if copy(datetostr(eemissao.date), 7, 4) <> copy(datetostr(date), 7, 4) then
  begin
    if Application.messagebox('Data de Emissão fora do ano corrente, Continua?',
      'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
    begin
      eemissao.setfocus;
    end;
  end;
  TEdit(Sender).color := clwindow;
end;

procedure Tfrmcompra.eentradaExit(Sender: TObject);
begin
  if copy(datetostr(eentrada.date), 7, 4) <> copy(datetostr(date), 7, 4) then
  begin
    if Application.messagebox('Data de Entrada fora do ano corrente, Continua?',
      'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
    begin
      eentrada.setfocus;
    end;
  end;
  TEdit(Sender).color := clwindow;

end;

procedure Tfrmcompra.eaproveita_creditoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcompra.RzDBComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcompra.ecodmodeloExit(Sender: TObject);
begin
  if TEdit(Sender).Text = '' then
  begin
    ecodmodeloButtonClick(frmcompra);
  end;
end;

end.
