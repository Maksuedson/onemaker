unit produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, DB, AdvMenus,
  AdvMenuStylers, ExtDlgs, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Menus, RzButton, RzRadChk, RzDBChk, AdvToolBar, AdvGlowButton,
  RzEdit, RzBtnEdt, AdvShapeButton, wwdblook,
  Wwdbdlg, ComCtrls, Grids, Wwdbigrd, Wwdbgrid,
  RzDBEdit, RzDBBnEd, wwdbedit, Wwdotdot, Wwdbcomb,
  Mask, TFlatPanelUnit, PageView, // TeEngine //Series
  RzPanel, AdvReflectionImage, ACBrBarCode, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart,
  IdBaseComponent, IdComponent, IdCustomTransparentProxy, IdSocks, UCBase, W7Labels,
  dxGDIPlusClasses, cyBaseSpeedButton, cySpeedButton, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, JvToolEdit, JvDBControls, JvExMask,
  JvBaseEdits, AdvSmoothButton, acPNG;

type
  Tfrmproduto = class(TForm)
    pfichas: TFlatPanel;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsproduto2: TDataSource;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    dsproduto: TDataSource;
    dspreco: TDataSource;
    F31: TMenuItem;
    ClculodePreo1: TMenuItem;
    dsgrade_produto: TDataSource;
    dsserial_produto: TDataSource;
    dscomposicao_produto: TDataSource;
    qrcomposicao_produto: TZQuery;
    qrproduto_loc: TZQuery;
    qrcomposicao_produtoprod: TStringField;
    qrinfnutricional_produto: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    query: TZQuery;
    qradic: TZQuery;
    dsadic: TDataSource;
    qrcodbarra: TZQuery;
    dscodbarra: TDataSource;
    qrbarra: TZQuery;
    pop_barra: TPopupMenu;
    excluircodigodebarra1: TMenuItem;
    gravarcodigodebarra1: TMenuItem;
    bservicos: TBitBtn;
    Servicos1: TMenuItem;
    qrentrada: TZQuery;
    qrsaida: TZQuery;
    Label6: TLabel;
    Label10: TLabel;
    Panel1: TPanel;
    blocaliquota: TBitBtn;
    ealiquota: TDBEdit;
    qrmov_entrada: TZQuery;
    dsmov_entrada: TDataSource;
    qrmov_entradacliente: TStringField;
    qrproduto_mov: TZQuery;
    qrmov_saida: TZQuery;
    StringField14: TStringField;
    dsmov_saida: TDataSource;
    qrestoque: TZQuery;
    dsrentabilidade: TDataSource;
    QRRENTABILIDADE: TZQuery;
    popmenu1: TAdvPopupMenu;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    Inventrio1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    GrupoSubgrupo1: TMenuItem;
    Fornecedor1: TMenuItem;
    MarcaFabricanteLaboratrio1: TMenuItem;
    NaturezadeOperaoCFOP1: TMenuItem;
    N4: TMenuItem;
    otalizarestoque1: TMenuItem;
    N6: TMenuItem;
    AtualizaodePreos1: TMenuItem;
    qrproduto: TZQuery;
    qrprodutogrupo: TStringField;
    qrprodutosubgrupo: TStringField;
    qrprodutofornecedor: TStringField;
    qrprodutomarca: TStringField;
    qrprodutoreceitas: TStringField;
    qrpreco: TZQuery;
    MovimentarEstoque1: TMenuItem;
    qrduplo: TZQuery;
    batualiza_estoque: TBitBtn;
    bcalcula_precovenda: TBitBtn;
    bcalcula_precocusto: TBitBtn;
    bpreco_custo: TBitBtn;
    bpreco_venda: TBitBtn;
    bnovopreco_venda: TBitBtn;
    QUERY1: TZQuery;
    qrvenda_mes: TZQuery;
    ZQuery1: TZQuery;
    qrcondicional: TZQuery;
    dscondicional: TDataSource;
    bremarcacao: TBitBtn;
    PageView1: TPageView;
    PageSheet9: TPageSheet;
    PageView2: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    Bevel8: TBevel;
    wwDBGrid4: TwwDBGrid;
    PageSheet12: TPageSheet;
    Bevel9: TBevel;
    wwDBGrid5: TwwDBGrid;
    PageSheet7: TPageSheet;
    ppreco: TPanel;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    PageSheet4: TPageSheet;
    PageSheet5: TPageSheet;
    PageSheet8: TPageSheet;
    PageSheet1: TPageSheet;
    pficha3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label58: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label36: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    label7: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    combo_tipo: TwwDBComboBox;
    edata_cadastro: TJvDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    egrupo: TRzDBButtonEdit;
    DBEdit30: TDBEdit;
    esubgrupo: TRzDBButtonEdit;
    DBEdit8: TDBEdit;
    efornecedor: TRzDBButtonEdit;
    DBEdit9: TDBEdit;
    emarca: TRzDBButtonEdit;
    DBEdit63: TDBEdit;
    GroupBox7: TGroupBox;
    Label71: TLabel;
    Label72: TLabel;
    ecusto: TRzDBNumericEdit;
    evenda: TRzDBNumericEdit;
    AdvGlowButton1: TAdvGlowButton;
    GroupBox2: TGroupBox;
    Label30: TLabel;
    Label73: TLabel;
    Label93: TLabel;
    ealiq: TJvDBCalcEdit;
    dbedit13: TRzDBButtonEdit;
    wwDBComboBox2: TwwDBComboBox;
    GroupBox8: TGroupBox;
    Label74: TLabel;
    Label75: TLabel;
    ldata_compra: TLabel;
    lnf: TLabel;
    GroupBox9: TGroupBox;
    ldata_venda: TLabel;
    DBEdit11: TDBEdit;
    DBEdit16: TDBEdit;
    gestoque: TGroupBox;
    Label11: TLabel;
    eestoque: TRzDBNumericEdit;
    fdados_codbarra: TFlatPanel;
    Bevel5: TBevel;
    grid_barra: TwwDBGrid;
    bexclui_barra: TAdvGlowButton;
    bgrava_barra: TAdvGlowButton;
    RzDBCheckBox1: TRzDBCheckBox;
    pexporta: TFlatPanel;
    COMBOCODBARRA: TDBEdit;
    pbarra: TFlatPanel;
    INIMAGE: TImage;
    pficha2: TPanel;
    wwDBComboBox4: TwwDBComboBox;
    wwDBComboBox3: TwwDBComboBox;
    wwDBComboBox1: TwwDBComboBox;
    RxDBCalcEdit1: TJvDBCalcEdit;
    Label94: TLabel;
    Label92: TLabel;
    Label91: TLabel;
    Label89: TLabel;
    Label80: TLabel;
    Label60: TLabel;
    Label57: TLabel;
    Label56: TLabel;
    Label35: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    GroupBox16: TGroupBox;
    Label12: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    RzDBNumericEdit4: TRzDBNumericEdit;
    DBDateEdit1: TJvDBDateEdit;
    DBDateEdit2: TJvDBDateEdit;
    GroupBox12: TGroupBox;
    Label64: TLabel;
    DBEdit60: TDBEdit;
    GroupBox11: TGroupBox;
    Label17: TLabel;
    Label59: TLabel;
    DBEdit17: TDBEdit;
    DBEdit10: TDBEdit;
    FLAG_SIS: TDBEdit;
    FLAG_EST: TDBEdit;
    FLAG_ACEITO: TDBEdit;
    ecombo_piscofins: TwwDBComboBox;
    DBMemo1: TDBMemo;
    DBEdit62: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit15: TDBEdit;
    pficha1: TPanel;
    ptermometro: TFlatPanel;
    Label88: TLabel;
    batualizar_estoque: TBitBtn;
    bar: TProgressBar;
    ptampapreco: TFlatPanel;
    Label38: TLabel;
    bitbtn7: TAdvGlowButton;
    ppreco_automatico: TDBCheckBox;
    pdtaltera: TFlatPanel;
    GroupBox10: TGroupBox;
    DBText1: TDBText;
    Label87: TLabel;
    Label70: TLabel;
    GroupBox4: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Bevel16: TBevel;
    Label41: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label61: TLabel;
    Bevel17: TBevel;
    Label62: TLabel;
    Label63: TLabel;
    Bevel18: TBevel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit32: TDBEdit;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Bevel2: TBevel;
    Bevel15: TBevel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    FlatPanel12: TFlatPanel;
    Label86: TLabel;
    DBEdit69: TDBEdit;
    bnovo_preco_venda: TRzDBNumericEdit;
    bnovo_preco_custo: TRzDBNumericEdit;
    batu: TAdvGlowButton;
    pficha4: TPanel;
    pgrade: TPanel;
    wwDBGrid1: TwwDBGrid;
    DBCheckBox2: TDBCheckBox;
    bitbtn8: TAdvGlowButton;
    bitbtn11: TAdvGlowButton;
    pficha5: TPanel;
    wwDBGrid2: TwwDBGrid;
    Panel6: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    Bevel14: TBevel;
    Label67: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    button3: TAdvGlowButton;
    eserial: TRzEdit;
    DBCheckBox3: TDBCheckBox;
    Panel5: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    Bevel19: TBevel;
    pficha6: TPanel;
    pcomposicao: TPanel;
    Label34: TLabel;
    ereceita: TDBEdit;
    blocreceita: TBitBtn;
    DBEdit61: TDBEdit;
    GroupBox6: TGroupBox;
    wwDBGrid3: TwwDBGrid;
    comboproduto: TwwDBLookupComboDlg;
    button1: TAdvGlowButton;
    button2: TAdvGlowButton;
    pficha7: TPanel;
    pnutricional: TPanel;
    Label157: TLabel;
    Label29: TLabel;
    Label76: TLabel;
    GroupBox5: TGroupBox;
    DBEdit39: TDBEdit;
    FlatPanel3: TFlatPanel;
    FlatPanel4: TFlatPanel;
    FlatPanel5: TFlatPanel;
    FlatPanel6: TFlatPanel;
    Shape6: TShape;
    Shape5: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape1: TShape;
    Label145: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    FlatPanel7: TFlatPanel;
    Shape10: TShape;
    Shape9: TShape;
    Shape8: TShape;
    Shape7: TShape;
    Shape2: TShape;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label165: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    FlatPanel8: TFlatPanel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    pficha8: TPanel;
    PFOTO: TPanel;
    Label48: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Image2: TImage;
    pficha9: TPanel;
    Panel3: TPanel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Label37: TLabel;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    Panel4: TPanel;
    Label15: TLabel;
    elocproduto: TRzButtonEdit;
    eproduto: TRzEdit;
    erentabilidade: TRzNumericEdit;
    brent_gravar: TAdvGlowButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    rtotal_rent: TRzNumericEdit;
    wwDBGrid6: TwwDBGrid;
    Label55: TLabel;
    check_rentabilidade: TDBCheckBox;
    Bevel11: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    rComposicao: TRzGroupBox;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    eNCM: TRzDBButtonEdit;
    Label95: TLabel;
    RxDBCalcEdit2: TJvDBCalcEdit;
    Label106: TLabel;
    ecsosn: TRzDBButtonEdit;
    PageSheet13: TPageSheet;
    qrprodutocfopvendadentro: TStringField;
    qrprodutocfopvendafora: TStringField;
    qrprodutocfopdevdentro: TStringField;
    qrprodutocfopdevfora: TStringField;
    qrprodutocfopgarantiadentro: TStringField;
    qrprodutocfopgarantiafora: TStringField;
    ACBrBarCode1: TACBrBarCode;
    QRRENTABILIDADERENTABILIDADE: TWideStringField;
    QRRENTABILIDADECODPRODUTO: TWideStringField;
    QRRENTABILIDADEPRODUTO: TWideStringField;
    QRRENTABILIDADERENDIMENTO: TFloatField;
    QRRENTABILIDADEQUANTIDADE: TFloatField;
    QRRENTABILIDADEVALOR: TFloatField;
    QRRENTABILIDADECODIGO: TWideStringField;
    qrcomposicao_produtoCODIGO: TWideStringField;
    qrcomposicao_produtoCODPRODUTO: TWideStringField;
    qrcomposicao_produtoQTDE: TFloatField;
    qrcomposicao_produtoPRODUTO: TWideStringField;
    IdSocksInfo1: TIdSocksInfo;
    UCControls1: TUCControls;
    DBComboBox1: TDBComboBox;
    PageSheet14: TPageSheet;
    pficha10: TPanel;
    Label96: TLabel;
    FlatPanel9: TFlatPanel;
    Image5: TImage;
    FlatPanel17: TFlatPanel;
    Image7: TImage;
    FlatPanel20: TFlatPanel;
    Image8: TImage;
    FlatPanel22: TFlatPanel;
    Image9: TImage;
    FlatPanel24: TFlatPanel;
    Image10: TImage;
    FlatPanel30: TFlatPanel;
    Image15: TImage;
    FlatPanel29: TFlatPanel;
    Image14: TImage;
    FlatPanel28: TFlatPanel;
    Image13: TImage;
    FlatPanel27: TFlatPanel;
    Image12: TImage;
    FlatPanel26: TFlatPanel;
    Image11: TImage;
    FlatPanel10: TFlatPanel;
    RzDBNumericEdit2: TRzDBNumericEdit;
    FlatPanel19: TFlatPanel;
    RzDBNumericEdit3: TRzDBNumericEdit;
    FlatPanel21: TFlatPanel;
    RzDBNumericEdit5: TRzDBNumericEdit;
    FlatPanel23: TFlatPanel;
    RzDBNumericEdit6: TRzDBNumericEdit;
    FlatPanel25: TFlatPanel;
    RzDBNumericEdit7: TRzDBNumericEdit;
    FlatPanel31: TFlatPanel;
    RzDBNumericEdit12: TRzDBNumericEdit;
    FlatPanel32: TFlatPanel;
    RzDBNumericEdit11: TRzDBNumericEdit;
    FlatPanel33: TFlatPanel;
    RzDBNumericEdit10: TRzDBNumericEdit;
    FlatPanel34: TFlatPanel;
    RzDBNumericEdit9: TRzDBNumericEdit;
    FlatPanel35: TFlatPanel;
    RzDBNumericEdit8: TRzDBNumericEdit;
    Label103: TLabel;
    DBComboBox2: TDBComboBox;
    Label104: TLabel;
    GroupBox17: TGroupBox;
    Label90: TLabel;
    DBEdit29: TDBEdit;
    cySpeedButton14: TcySpeedButton;
    cySpeedButton15: TcySpeedButton;
    cySpeedButton16: TcySpeedButton;
    Label107: TLabel;
    eCEST: TRzDBButtonEdit;
    qrmov_entradaCODIGO: TWideStringField;
    qrmov_entradaCODNOTA: TWideStringField;
    qrmov_entradaCODPRODUTO: TWideStringField;
    qrmov_entradaUNITARIO: TFloatField;
    qrmov_entradaTOTAL: TFloatField;
    qrmov_entradaICMS: TFloatField;
    qrmov_entradaIPI: TFloatField;
    qrmov_entradaCFOP: TWideStringField;
    CDSos_entradaDATA: TDateField;
    qrmov_entradaNUMERONOTA: TWideStringField;
    qrmov_entradaCODCLIENTE: TWideStringField;
    qrmov_entradaDESCONTO: TFloatField;
    qrmov_entradaACRESCIMO: TFloatField;
    qrmov_entradaMOVIMENTO: TIntegerField;
    qrmov_entradaCODVENDEDOR: TWideStringField;
    qrmov_entradaCODGRADE: TWideStringField;
    qrmov_entradaSERIAL: TWideStringField;
    qrmov_entradaUNIDADE: TWideStringField;
    qrmov_entradaQTDE: TFloatField;
    qrmov_entradaVALOR_ICMS: TFloatField;
    qrmov_entradaICMS_REDUZIDO: TFloatField;
    qrmov_entradaBASE_CALCULO: TFloatField;
    qrmov_entradaVALOR_IPI: TFloatField;
    qrmov_entradaSITUACAO: TIntegerField;
    qrmov_entradaECF_SERIE: TWideStringField;
    qrmov_entradaECF_CAIXA: TWideStringField;
    qrmov_entradaCODALIQUOTA: TWideStringField;
    qrmov_entradaCUPOM_NUMERO: TWideStringField;
    qrmov_entradaCUPOM_MODELO: TWideStringField;
    qrmov_entradaCUPOM_ITEM: TWideStringField;
    qrmov_entradaALIQUOTA: TFloatField;
    qrmov_entradaCST: TWideStringField;
    qrmov_entradaLOTE_FABRICACAO: TWideStringField;
    qrmov_entradaMOVIMENTO_ESTOQUE: TFloatField;
    qrmov_entradaLANCADO: TIntegerField;
    CDSos_entradaVENCIMENTO: TDateField;
    qrmov_entradaCODBARRA: TWideStringField;
    qrmov_entradaMARGEM_DESCONTO: TFloatField;
    qrmov_entradaCREDITO_ICMS: TFloatField;
    qrmov_entradaPIS: TFloatField;
    qrmov_entradaCOFINS: TFloatField;
    qrmov_entradaLOJA: TWideStringField;
    qrmov_entradaCODSUBGRUPO: TWideStringField;
    qrmov_entradaTIPO: TWideStringField;
    qrmov_entradaCODUSUARIO: TWideStringField;
    qrmov_entradaORIGEM: TWideStringField;
    qrmov_entradaDESTINO: TWideStringField;
    qrmov_entradaPRODUTO: TWideStringField;
    qrmov_entradaCODFILIAL: TWideStringField;
    qrmov_saidaCODIGO: TWideStringField;
    qrmov_saidaCODNOTA: TWideStringField;
    qrmov_saidaCODPRODUTO: TWideStringField;
    qrmov_saidaUNITARIO: TFloatField;
    qrmov_saidaTOTAL: TFloatField;
    qrmov_saidaICMS: TFloatField;
    qrmov_saidaIPI: TFloatField;
    qrmov_saidaCFOP: TWideStringField;
    CDSos_saidaDATA: TDateField;
    qrmov_saidaNUMERONOTA: TWideStringField;
    qrmov_saidaCODCLIENTE: TWideStringField;
    qrmov_saidaDESCONTO: TFloatField;
    qrmov_saidaACRESCIMO: TFloatField;
    qrmov_saidaMOVIMENTO: TIntegerField;
    qrmov_saidaCODVENDEDOR: TWideStringField;
    qrmov_saidaCODGRADE: TWideStringField;
    qrmov_saidaSERIAL: TWideStringField;
    qrmov_saidaUNIDADE: TWideStringField;
    qrmov_saidaQTDE: TFloatField;
    qrmov_saidaVALOR_ICMS: TFloatField;
    qrmov_saidaICMS_REDUZIDO: TFloatField;
    qrmov_saidaBASE_CALCULO: TFloatField;
    qrmov_saidaVALOR_IPI: TFloatField;
    qrmov_saidaSITUACAO: TIntegerField;
    qrmov_saidaECF_SERIE: TWideStringField;
    qrmov_saidaECF_CAIXA: TWideStringField;
    qrmov_saidaCODALIQUOTA: TWideStringField;
    qrmov_saidaCUPOM_NUMERO: TWideStringField;
    qrmov_saidaCUPOM_MODELO: TWideStringField;
    qrmov_saidaCUPOM_ITEM: TWideStringField;
    qrmov_saidaALIQUOTA: TFloatField;
    qrmov_saidaCST: TWideStringField;
    qrmov_saidaLOTE_FABRICACAO: TWideStringField;
    qrmov_saidaMOVIMENTO_ESTOQUE: TFloatField;
    qrmov_saidaLANCADO: TIntegerField;
    CDSos_saidaVENCIMENTO: TDateField;
    qrmov_saidaCODBARRA: TWideStringField;
    qrmov_saidaMARGEM_DESCONTO: TFloatField;
    qrmov_saidaCREDITO_ICMS: TFloatField;
    qrmov_saidaPIS: TFloatField;
    qrmov_saidaCOFINS: TFloatField;
    qrmov_saidaLOJA: TWideStringField;
    qrmov_saidaCODSUBGRUPO: TWideStringField;
    qrmov_saidaTIPO: TWideStringField;
    qrmov_saidaCODUSUARIO: TWideStringField;
    qrmov_saidaORIGEM: TWideStringField;
    qrmov_saidaDESTINO: TWideStringField;
    qrmov_saidaPRODUTO: TWideStringField;
    qrmov_saidaCODFILIAL: TWideStringField;
    qrmov_saidaMOV: TStringField;
    ptampainfnutricional: TPanel;
    bitbtn6: TAdvGlowButton;
    Label44: TLabel;
    Panel7: TPanel;
    GroupBox28: TGroupBox;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    RzDBButtonEdit1: TRzDBButtonEdit;
    DBEdit73: TDBEdit;
    RzDBButtonEdit2: TRzDBButtonEdit;
    DBEdit74: TDBEdit;
    RzDBButtonEdit3: TRzDBButtonEdit;
    DBEdit75: TDBEdit;
    RzDBButtonEdit4: TRzDBButtonEdit;
    DBEdit76: TDBEdit;
    RzDBButtonEdit6: TRzDBButtonEdit;
    RzDBButtonEdit5: TRzDBButtonEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    Panel10: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    di_entrada: TJvDateEdit;
    df_entrada: TJvDateEdit;
    bfiltro_entrada: TAdvGlowButton;
    combo_entrada: TComboBox;
    GroupBox13: TGroupBox;
    eentrada: TLabel;
    Panel11: TPanel;
    GroupBox14: TGroupBox;
    Label9: TLabel;
    di_saida: TJvDateEdit;
    df_saida: TJvDateEdit;
    bfiltro_saida: TAdvGlowButton;
    combo_saida: TComboBox;
    GroupBox15: TGroupBox;
    esaida: TLabel;
    DBCheckBox1: TDBCheckBox;
    qrprecoCODIGO: TWideStringField;
    qrprecoCODPRODUTO: TWideStringField;
    qrprecoCODFILIAL: TWideStringField;
    qrprecoDATA_ALTERACAO: TDateField;
    qrprecoCP_VPRECOCOMPRA: TSingleField;
    qrprecoCP_PIPI: TSingleField;
    qrprecoCP_VIPI: TSingleField;
    qrprecoCP_PRETENCAO: TSingleField;
    qrprecoCP_VRETENCAO: TSingleField;
    qrprecoCP_PFRETE: TSingleField;
    qrprecoCP_VFRETE: TSingleField;
    qrprecoCP_PICMS: TSingleField;
    qrprecoCP_VICMS: TSingleField;
    qrprecoCP_PREDUCAO: TSingleField;
    qrprecoCP_VREDUCAO: TSingleField;
    qrprecoCP_PPIS: TSingleField;
    qrprecoCP_VPIS: TSingleField;
    qrprecoCP_PCOFINS: TSingleField;
    qrprecoCP_VCOFINS: TSingleField;
    qrprecoCP_PSEGURO: TSingleField;
    qrprecoCP_VSEGURO: TSingleField;
    qrprecoCP_POUTROS: TSingleField;
    qrprecoCP_VOUTROS: TSingleField;
    qrprecoVD_PICMS: TSingleField;
    qrprecoVD_VICMS: TSingleField;
    qrprecoVD_PREDUCAO: TSingleField;
    qrprecoVD_VREDUCAO: TSingleField;
    qrprecoVD_PSIMPLES: TSingleField;
    qrprecoVD_VSIMPLES: TSingleField;
    qrprecoVD_PPIS: TSingleField;
    qrprecoVD_VPIS: TSingleField;
    qrprecoVD_PCOFINS: TSingleField;
    qrprecoVD_VCOFINS: TSingleField;
    qrprecoVD_PIRPJ: TSingleField;
    qrprecoVD_VIRPJ: TSingleField;
    qrprecoVD_PCONTSOCIAL: TSingleField;
    qrprecoVD_VCONTSOCIAL: TSingleField;
    qrprecoVD_PDFIXA: TSingleField;
    qrprecoVD_VDFIXA: TSingleField;
    qrprecoVD_PCOMISSAO: TSingleField;
    qrprecoVD_VCOMISSAO: TSingleField;
    qrprecoVD_PDESCMAX: TSingleField;
    qrprecoVD_VDESCMAX: TSingleField;
    qrprecoPCUSTO_COMPRA: TSingleField;
    qrprecoVCUSTO_COMPRA: TSingleField;
    qrprecoPCUSTO_VENDA: TSingleField;
    qrprecoVCUSTO_VENDA: TSingleField;
    qrprecoPRECO_LIQUIDO: TSingleField;
    qrprecoPRECO_UNITARIO: TSingleField;
    qrprecoFRACAO: TSingleField;
    qrprecoPMARGEM1: TSingleField;
    qrprecoPMARGEM2: TSingleField;
    qrprecoPMARGEM3: TSingleField;
    qrprecoPMARGEM4: TSingleField;
    qrprecoPMARGEM5: TSingleField;
    qrprecoPRECOVAREJO1: TSingleField;
    qrprecoPRECOVAREJO2: TSingleField;
    qrprecoPRECOVAREJO3: TSingleField;
    qrprecoPRECOVAREJO4: TSingleField;
    qrprecoPRECOVAREJO5: TSingleField;
    qrprecoPMARGEMATACADO1: TSingleField;
    qrprecoPMARGEMATACADO2: TSingleField;
    qrprecoPMARGEMATACADO3: TSingleField;
    qrprecoPMARGEMATACADO4: TSingleField;
    qrprecoPMARGEMATACADO5: TSingleField;
    qrprecoPRECOATACADO1: TSingleField;
    qrprecoPRECOATACADO2: TSingleField;
    qrprecoPRECOATACADO3: TSingleField;
    qrprecoPRECOATACADO4: TSingleField;
    qrprecoPRECOATACADO5: TSingleField;
    qrprecoTIPO_REGIME: TIntegerField;
    qrprecoTIPO_CALCULO: TIntegerField;
    qrprecoVCUSTO_COMPRA_ANT: TSingleField;
    qrprecoPRECOVAREJO1_ANT: TSingleField;
    qrprecoCUSTO_COMPRA: TFloatField;
    qrprecoVALOR_ULTIMA_COMPRA: TFloatField;
    qrprecoFRETE_IPI_OUTRAS: TFloatField;
    qrprecoICMS_ENTRADA: TFloatField;
    qrprecoICMS_SAIDA: TFloatField;
    qrprecoCUSTO_OPERACIONAL: TFloatField;
    qrprecoOUTROS_IMPOSTOS: TFloatField;
    qrprecoCOMISSAO: TFloatField;
    qrprecoLUCRO: TFloatField;
    qrprecoPRECO_VENDA: TFloatField;
    qrprecoICMS_ENTRADA_P: TFloatField;
    qrprecoICMS_SAIDA_P: TFloatField;
    qrprecoCUSTO_OPERACIONAL_P: TFloatField;
    qrprecoOUTROS_IMPOSTOS_P: TFloatField;
    qrprecoCOMISSAO_P: TFloatField;
    qrprecoLUCRO_P: TFloatField;
    qrprecoTOTAL_CUSTO: TFloatField;
    qrprecoTOTAL_CUSTO_P: TFloatField;
    qrprecoPRECO_AUTOMATICO: TIntegerField;
    qrprecoALTERA_AUTOMATICO: TIntegerField;
    qrprecoNOVO_PRECO_VENDA: TFloatField;
    qrprecoNOVO_PRECO_CUSTO: TFloatField;
    qrprecoDESCONTO: TFloatField;
    qrprecoFRETE: TFloatField;
    qrprecoSEGURO: TFloatField;
    qrprecoOUTRAS_DESPESAS: TFloatField;
    qrprecoIPI_P: TFloatField;
    qrprecoIPI: TFloatField;
    qrprecoPIS_P: TFloatField;
    qrprecoPIS: TFloatField;
    qrprecoCOFINS_P: TFloatField;
    qrprecoCOFINS: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL_P: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL: TFloatField;
    qrprecoPIS_ENTRADA_P: TFloatField;
    qrprecoPIS_ENTRADA: TFloatField;
    qrprecoCOFINS_ENTRADA_P: TFloatField;
    qrprecoCOFINS_ENTRADA: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL_ENTRADA_P: TFloatField;
    qrprecoSUBSTITUICAO_TRIBUTARIA: TFloatField;
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
    qrvenda_mesSUM_0: TExtendedField;
    qrvenda_mesSUM: TExtendedField;
    qrvenda_mesSUM_1: TExtendedField;
    qrvenda_mesSUM_2: TExtendedField;
    qrvenda_mesSUM_3: TExtendedField;
    qrvenda_mesSUM_4: TExtendedField;
    qrvenda_mesSUM_5: TExtendedField;
    qrvenda_mesSUM_6: TExtendedField;
    qrvenda_mesSUM_7: TExtendedField;
    qrvenda_mesSUM_8: TExtendedField;
    qrvenda_mesSUM_9: TExtendedField;
    qrvenda_mesSUM_10: TExtendedField;
    qrvenda_mesCOLUMN_0: TStringField;
    qrvenda_mesCOLUMN_1: TStringField;
    qrvenda_mesCOLUMN_2: TStringField;
    qrvenda_mesCOLUMN_3: TStringField;
    qrvenda_mesCOLUMN_4: TStringField;
    qrvenda_mesCOLUMN_5: TStringField;
    qrvenda_mesCOLUMN_6: TStringField;
    qrvenda_mesCOLUMN_7: TStringField;
    qrvenda_mesCOLUMN_8: TStringField;
    qrvenda_mesCOLUMN_9: TStringField;
    qrvenda_mesCOLUMN_10: TStringField;
    qrvenda_mesColumn: TStringField;
    qrmov_entradaMOV: TStringField;
    Label105: TLabel;
    cb_Origem: TComboBox;
    qrprodutoORIGEM: TIntegerField;
    Label108: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Label109: TLabel;
    RzDBButtonEdit7: TRzDBButtonEdit;
    Label110: TLabel;
    RzDBButtonEdit8: TRzDBButtonEdit;
    Label111: TLabel;
    JvDBCalcEdit2: TJvDBCalcEdit;
    qrprodutoALIQUITA_CREDSN: TFloatField;
    qrprodutoCST_PIS: TWideStringField;
    qrprodutoCST_COFINS: TWideStringField;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    LMDButton1: TAdvGlowMenuButton;
    blocalizar: TAdvGlowButton;
    bfornecedor_codigo: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Panel8: TPanel;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    AdvSmoothButton3: TAdvSmoothButton;
    AdvSmoothButton4: TAdvSmoothButton;
    AdvSmoothButton5: TAdvSmoothButton;
    AdvSmoothButton6: TAdvSmoothButton;
    AdvSmoothButton7: TAdvSmoothButton;
    AdvSmoothButton8: TAdvSmoothButton;
    AdvSmoothButton9: TAdvSmoothButton;
    AdvSmoothButton10: TAdvSmoothButton;
    AdvSmoothButton11: TAdvSmoothButton;
    AdvSmoothButton12: TAdvSmoothButton;
    HeaderView1: THeaderView;
    Image1: TImage;
    RINICIAL: TJvCalcEdit;
    HeaderView2: THeaderView;
    Image3: TImage;
    rentrada: TJvCalcEdit;
    HeaderView3: THeaderView;
    Image4: TImage;
    rsaida: TJvCalcEdit;
    HeaderView4: THeaderView;
    Image6: TImage;
    restoque: TJvCalcEdit;
    Image16: TImage;
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
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure ealiquotaKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit62KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure esubgrupoEnter(Sender: TObject);
    procedure blocaliquotaClick(Sender: TObject);
    procedure ealiquotaExit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure wwDBGrid2DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure Receitas1Click(Sender: TObject);
    procedure Regies1Click(Sender: TObject);
    procedure blocreceitaClick(Sender: TObject);
    procedure ereceitaExit(Sender: TObject);
    procedure qrcomposicao_produtoBeforePost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit40Exit(Sender: TObject);
    procedure DBEdit42Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBEdit59KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure MarcaFabricanteLaboratrio1Click(Sender: TObject);
    procedure GrupoSubgrupo1Click(Sender: TObject);
    procedure Alquotas1Click(Sender: TObject);
    procedure NaturezadeOperaoCFOP1Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure Exportarparaarquivo1Click(Sender: TObject);
    procedure ImportardeArquivo1Click(Sender: TObject);
    procedure otalizarestoque1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure AtualizaodePreos1Click(Sender: TObject);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure ealiqExit(Sender: TObject);
    procedure ealiqKeyPress(Sender: TObject; var Key: Char);
    procedure combo_tipoEnter(Sender: TObject);
    procedure combo_tipoExit(Sender: TObject);
    procedure combo_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure Inventrio1Click(Sender: TObject);
    procedure combocodbarraEnter(Sender: TObject);
    procedure combocodbarraExit(Sender: TObject);
    procedure combocodbarraKeyPress(Sender: TObject; var Key: Char);
    procedure qrcodbarraBeforePost(DataSet: TDataSet);
    procedure bgrava_barraClick(Sender: TObject);
    procedure GravarCodigodeBarra1Click(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure bservicosClick(Sender: TObject);
    procedure Servicos1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure egrupoKeyPress(Sender: TObject; var Key: Char);
    procedure egrupoButtonClick(Sender: TObject);
    procedure efornecedorButtonClick(Sender: TObject);
    procedure emarcaButtonClick(Sender: TObject);
    procedure esubgrupoButtonClick(Sender: TObject);
    procedure esubgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure efornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure emarcaKeyPress(Sender: TObject; var Key: Char);
    procedure dbedit13ButtonClick(Sender: TObject);
    procedure bfiltro_entradaClick(Sender: TObject);
    procedure di_entradaKeyPress(Sender: TObject; var Key: Char);
    procedure df_entradaKeyPress(Sender: TObject; var Key: Char);
    procedure PageView2Change(Sender: TObject);
    procedure qrmov_entradaCalcFields(DataSet: TDataSet);
    procedure qrmov_saidaCalcFields(DataSet: TDataSet);
    procedure bfiltro_saidaClick(Sender: TObject);
    procedure df_saidaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit38KeyPress(Sender: TObject; var Key: Char);
    procedure qrproduto_movBeforePost(DataSet: TDataSet);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure QRRENTABILIDADEBeforeEdit(DataSet: TDataSet);
    procedure QRRENTABILIDADEBeforeInsert(DataSet: TDataSet);
    procedure qrcomposicao_produtoBeforeInsert(DataSet: TDataSet);
    procedure qrcomposicao_produtoBeforeEdit(DataSet: TDataSet);
    procedure check_rentabilidadeClick(Sender: TObject);
    procedure QRRENTABILIDADEBeforeDelete(DataSet: TDataSet);
    procedure brent_gravarClick(Sender: TObject);
    procedure elocprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure elocprodutoButtonClick(Sender: TObject);
    procedure erentabilidadeKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure qrprodutoAfterCancel(DataSet: TDataSet);
    procedure qrprodutoAfterEdit(DataSet: TDataSet);
    procedure qrprodutoAfterInsert(DataSet: TDataSet);
    procedure qrprodutoAfterPost(DataSet: TDataSet);
    procedure PageView1Change(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure qrprecoBeforeInsert(DataSet: TDataSet);
    procedure qrprecoBeforeEdit(DataSet: TDataSet);
    procedure batuClick(Sender: TObject);
    procedure eserialChange(Sender: TObject);
    procedure ConsultaSerial1Click(Sender: TObject);
    procedure MovimentarEstoque1Click(Sender: TObject);
    procedure qrprodutoBeforePost(DataSet: TDataSet);
    procedure qrprodutoBeforeEdit(DataSet: TDataSet);
    procedure bpreco_custoClick(Sender: TObject);
    procedure bpreco_vendaClick(Sender: TObject);
    procedure bnovopreco_vendaClick(Sender: TObject);
    procedure bcalcula_precocustoClick(Sender: TObject);
    procedure bcalcula_precovendaClick(Sender: TObject);
    procedure batualiza_estoqueClick(Sender: TObject);
    procedure batualizar_estoqueClick(Sender: TObject);
    procedure ppreco_automaticoExit(Sender: TObject);
    procedure bnovo_preco_custoEnter(Sender: TObject);
    procedure bnovo_preco_custoExit(Sender: TObject);
    procedure bnovo_preco_vendaEnter(Sender: TObject);
    procedure bnovo_preco_vendaExit(Sender: TObject);
    procedure AtualizarPreosdeVendasRemarcados1Click(Sender: TObject);
    procedure evendaEnter(Sender: TObject);
    procedure evendaExit(Sender: TObject);
    procedure ecustoEnter(Sender: TObject);
    procedure ecustoExit(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit68Exit(Sender: TObject);
    procedure DBEdit69Exit(Sender: TObject);
    procedure dsprecoDataChange(Sender: TObject; Field: TField);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure eestoqueKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit2Exit(Sender: TObject);
    procedure bremarcacaoClick(Sender: TObject);
    procedure NFeExportarProdutoSelecionado1Click(Sender: TObject);
    procedure NFeExportartodososPrdutos1Click(Sender: TObject);
    procedure DBEdit29KeyPress(Sender: TObject; var Key: Char);
    procedure qrprodutoBeforeInsert(DataSet: TDataSet);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure bfornecedor_codigoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure eNCMButtonClick(Sender: TObject);
    procedure eNCMKeyPress(Sender: TObject; var Key: Char);
    procedure ecsosnButtonClick(Sender: TObject);
    procedure ecsosnKeyPress(Sender: TObject; var Key: Char);
    procedure dbedit13Exit(Sender: TObject);
    procedure dsproduto2DataChange(Sender: TObject; Field: TField);
    procedure DBEdit66Exit(Sender: TObject);
    procedure RzDBNumericEdit2Enter(Sender: TObject);
    procedure RzDBNumericEdit2Exit(Sender: TObject);
    procedure RzDBNumericEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure W7ActiveLabel1Click(Sender: TObject);
    procedure W7ActiveLabel2Click(Sender: TObject);
    procedure W7ActiveLabel3Click(Sender: TObject);
    procedure W7ActiveLabel4Click(Sender: TObject);
    procedure W7ActiveLabel7Click(Sender: TObject);
    procedure W7ActiveLabel6Click(Sender: TObject);
    procedure W7ActiveLabel5Click(Sender: TObject);
    procedure W7ActiveLabel9Click(Sender: TObject);
    procedure W7ActiveLabel8Click(Sender: TObject);
    procedure W7ActiveLabel13Click(Sender: TObject);
    procedure W7ActiveLabel544Click(Sender: TObject);
    procedure W7ActiveLabel5001Click(Sender: TObject);
    procedure W7ActiveLabel5222Click(Sender: TObject);
    procedure cySpeedButton1Click(Sender: TObject);
    procedure cySpeedButton2Click(Sender: TObject);
    procedure cySpeedButton3Click(Sender: TObject);
    procedure cySpeedButton4Click(Sender: TObject);
    procedure cySpeedButton5Click(Sender: TObject);
    procedure cySpeedButton6Click(Sender: TObject);
    procedure cySpeedButton7Click(Sender: TObject);
    procedure cySpeedButton8Click(Sender: TObject);
    procedure cySpeedButton9Click(Sender: TObject);
    procedure cySpeedButton10Click(Sender: TObject);
    procedure cySpeedButton12Click(Sender: TObject);
    procedure cySpeedButton11Click(Sender: TObject);
    procedure cySpeedButton13Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure eCESTButtonClick(Sender: TObject);
    procedure eCESTKeyPress(Sender: TObject; var Key: Char);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dsprodutoDataChange(Sender: TObject; Field: TField);
    procedure RzDBButtonEdit7ButtonClick(Sender: TObject);
    procedure RzDBButtonEdit8ButtonClick(Sender: TObject);
    procedure JvDBCalcEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBButtonEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBButtonEdit8KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto: Tfrmproduto;
  comando: string;
  estoque_anterior: real;
  preco_custo_anterior: double;
  preco_venda_anterior: double;

  vlucro, vlucro_anterior: double;
  vlucroP, vlucroP_anterior: double;
  vvalor_anterior: double;
  vvalor: double;
  novo_preco_custo: double;
  novo_preco_venda: double;
  edicao_preco: boolean;

  PRECO_VENDA_ANTERIORX: real;
    const
   sc_DragMove = $f012;

implementation

uses modulo, principal, loc_grupo,
  loc_fornecedor, loc_subgrupo, loc_marca, receita,
  loc_receita, webcam, fornecedor, marca, grupo, aliquota, cfop,
  produto_exportar, produto_importar, produto_total, lista_produto2,
  xloc_produto, produto_atualizapreco, xloc_cst, inventario, baixa_estoque, servico, loc_aliquota, Produto_consultaserial,
  produto_movimentar, unNFe2, produto_serial_ficha, fornecedor_codigo, Ncm, CEST,
  xloc_csosn, xloc_cofins, xloc_pis;

{$R *.dfm}

procedure Tfrmproduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (BUSCA_PRODUTO = 1) or (BUSCA_PRODUTO = 2) then
  begin
    FRMMODULO.qrproduto.OPEN;
    FRMMODULO.qrproduto.REFRESH;
  end;

  BUSCA_PRODUTO := 0;
  qrproduto.close;
  Action := cafree;

end;

procedure Tfrmproduto.FormShow(Sender: TObject);
begin
  di_entrada.Text := '01/' + copy(datetostr(date), 4, 7);
  df_entrada.date := frmprincipal.UltimoDiaMes(date);

  di_saida.Text := '01/' + copy(datetostr(date), 4, 7);
  df_saida.date := frmprincipal.UltimoDiaMes(date);

  OpenPictureDialog1.InitialDir := caminho_fotos_produtos;

  ptampapreco.Align := alClient;
  ptampainfnutricional.Align := alClient;

  FRMMODULO.qrreceita.close;
  FRMMODULO.qrreceita.sql.clear;
  FRMMODULO.qrreceita.sql.add('select * from c000024 order by receita');
  FRMMODULO.qrreceita.OPEN;
  FRMMODULO.qrreceita.IndexFieldNames := 'receita';

  FRMMODULO.qrGRUPO.close;
  FRMMODULO.qrGRUPO.sql.clear;
  FRMMODULO.qrGRUPO.sql.add('select * from c000017 order by GRUPO');
  FRMMODULO.qrGRUPO.OPEN;
  FRMMODULO.qrGRUPO.IndexFieldNames := 'GRUPO';

  FRMMODULO.qrSUBGRUPO.close;
  FRMMODULO.qrSUBGRUPO.sql.clear;
  FRMMODULO.qrSUBGRUPO.sql.add('select * from c000018 order by SUBGRUPO');
  FRMMODULO.qrSUBGRUPO.OPEN;
  FRMMODULO.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';

  FRMMODULO.qrALIQUOTA.close;
  FRMMODULO.qrALIQUOTA.sql.clear;
  FRMMODULO.qrALIQUOTA.sql.add('select * from c000023 order by codigo');
  FRMMODULO.qrALIQUOTA.OPEN;
  FRMMODULO.qrALIQUOTA.IndexFieldNames := 'codigo';

  FRMMODULO.qrFORNECEDOR.close;
  FRMMODULO.qrFORNECEDOR.sql.clear;
  FRMMODULO.qrFORNECEDOR.sql.add('select * from c000009 order by nome');
  FRMMODULO.qrFORNECEDOR.OPEN;
  FRMMODULO.qrFORNECEDOR.IndexFieldNames := 'nome';

  FRMMODULO.qrMARCA.close;
  FRMMODULO.qrMARCA.sql.clear;
  FRMMODULO.qrMARCA.sql.add('select * from c000019 order by nome');
  FRMMODULO.qrMARCA.OPEN;
  FRMMODULO.qrMARCA.IndexFieldNames := 'nome';

  FRMMODULO.qrCSOSN.close;
  FRMMODULO.qrCSOSN.sql.clear;
  FRMMODULO.qrCSOSN.sql.add('select * from CSOSN order by codigo');
  FRMMODULO.qrCSOSN.OPEN;
  FRMMODULO.qrCSOSN.IndexFieldNames := 'codigo';

  qrcodbarra.close;
  qrcodbarra.sql.clear;
  qrcodbarra.sql.add('select * from c000055');
  qrcodbarra.OPEN;

frmmodulo.qrfornecedor.Open;

  pgravar.visible := false;
  pgravar.Align := alClient;
  fdados_codbarra.Top := 29;
  fdados_codbarra.left := 126;

  batualiza_estoqueClick(frmproduto);

  pficha1.enabled := false;
  pficha2.enabled := false;
  pficha3.enabled := false;
  pficha4.enabled := false;
  pficha5.enabled := false;
  pficha6.enabled := false;
  pficha7.enabled := false;
  pficha8.enabled := false;
  pficha9.enabled := false;
  pficha10.enabled := false;

  if BUSCA_PRODUTO = 1 then
  begin
    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select * from c000025 where codigo = ''' +
      busca_produto_codigo + '''');
    qrproduto.OPEN;
    balterarClick(frmproduto);
  end
  else
  begin
    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select * from c000025 order by produto');
    qrproduto.OPEN;
    qrproduto.first;

    COMBOCODBARRA.Text := qrprodutoCODBARRA.AsString;

  end;

  if FRMMODULO.qrconfig.FieldByName('IND_MOSTRA_COMPOSICAO').asinteger = 1 then
    // Industrialização
    rComposicao.visible := True;

  if FRMMODULO.qrconfig.FieldByName('ramo_atividade').asinteger = 2 then
    // supermercado
    label7.Caption := 'Cód.Remarc.:';

  if (FRMMODULO.qrfilial.FieldByName('crt').asinteger = 1) or
    (FRMMODULO.qrfilial.FieldByName('crt').asinteger = 2) then
  begin
    ecsosn.enabled := True;
    Label95.enabled := True;
  end
  else
  begin
    ecsosn.enabled := false;
    Label95.enabled := false;
  end;

  ecusto.DisplayFormat := mascara_valor;
  evenda.DisplayFormat := mascara_valor;

  RINICIAL.DisplayFormat := mascara_qtde;
  rentrada.DisplayFormat := mascara_qtde;
  rsaida.DisplayFormat := mascara_qtde;
  restoque.DisplayFormat := mascara_qtde;

  // eestoque.DisplayFormat := mascara_qtde;
  bnovo_preco_custo.DisplayFormat := mascara_valor;
  bnovo_preco_venda.DisplayFormat := mascara_valor;

  if qrprodutoPISCOFINS.AsString = 'S' then
    ecombo_piscofins.ItemIndex := 0
  else
    ecombo_piscofins.ItemIndex := 1;


end;

procedure Tfrmproduto.enomeEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto.enomeExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmproduto.bincluirClick(Sender: TObject);
begin
  cb_Origem.ItemIndex := 0;

  PFOTO.enabled := True;
  ppreco.enabled := True;
  pgrade.enabled := True;

  pcomposicao.enabled := True;
  pnutricional.enabled := True;

  qrproduto.insert;
  qrproduto.FieldByName('unidade').AsString := 'UN';
  qrproduto.FieldByName('estoque').asfloat := 0;
  qrproduto.FieldByName('cst').AsString := '000';
  qrproduto.FieldByName('aliquota').asinteger := 17;
  qrproduto.FieldByName('situacao').asinteger := 0;

  qrproduto.FieldByName('usa_balanca').asinteger := 2;
  qrproduto.FieldByName('usa_serial').asinteger := 0;
  qrproduto.FieldByName('usa_grade').asinteger := 0;
  qrproduto.FieldByName('tipo').AsString := '00 - Mercadoria para Revenda';
  qrproduto.FieldByName('iat').AsString := 'T';
  qrproduto.FieldByName('ippt').AsString := 'T';
  qrproduto.FieldByName('FLAG_SIS').AsString := 'S';
  wwDBComboBox2.Value := 'T';
  wwDBComboBox1.Value := 'NENHUMA';

  if (FRMMODULO.qrfilial.FieldByName('permite_credito').asinteger = 1) then
  begin
    ecsosn.Text := '101';
  end
  else
    ecsosn.Text := '102';

  qrproduto.FieldByName('data_inventario').AsDateTime :=
    strtodate('31/12/' + frmprincipal.zerarcodigo
    (inttostr(strtoint(copy(datetostr(date), 7, 4)) - 1), 4));
  qrproduto.FieldByName('custo_inventario').asfloat := 0;
  qrproduto.FieldByName('estoque_inventario').asfloat := 0;

  qrproduto.FieldByName('codigo').AsString := frmprincipal.codifica('000025');

  edata_cadastro.date := date;

  estoque_anterior := 0;

  pficha1.enabled := True;
  pficha2.enabled := True;
  pficha3.enabled := True;
  pficha4.enabled := True;
  pficha5.enabled := True;
  pficha6.enabled := True;
  pficha7.enabled := True;
  pficha8.enabled := True;
  pficha9.enabled := True;
  pficha10.enabled := True;

  COMBOCODBARRA.SetFocus;
  combo_tipo.Text := '00 - Mercadoria para Revenda';
  PageView1.ActivePageindex := 0;
  PageView2.ActivePageindex := 0;

end;

procedure Tfrmproduto.balterarClick(Sender: TObject);
begin

  pficha1.enabled := True;
  pficha2.enabled := True;
  pficha3.enabled := True;
  pficha4.enabled := True;
  pficha5.enabled := True;
  pficha6.enabled := True;
  pficha7.enabled := True;
  pficha8.enabled := True;
  pficha9.enabled := True;
  pficha10.enabled := True;

  if DBEdit1.Text <> '' then
  begin
    // pageview1.ActivePageindex := 0;
    // pobservacao.Enabled := true;
    ptampapreco.visible := false;
    PFOTO.enabled := True;
    ppreco.enabled := True;
    pgrade.enabled := True;
    // pserial.Enabled := true;
    pcomposicao.enabled := True;
    pnutricional.enabled := True;


    // eestoque.Top := 36;
    // baltera.Visible := true;
    // gestoque.Enabled := false;

    estoque_anterior := qrproduto.FieldByName('estoque').asfloat;
    preco_custo_anterior := qrproduto.FieldByName('precocusto').asfloat;
    preco_venda_anterior := qrproduto.FieldByName('precovenda').asfloat;

    qrproduto.Edit;
    COMBOCODBARRA.SetFocus;
    pgravar.visible := True;
    PopupMenu := Pop2;

    if PageView1.ActivePageindex = 1 then
    begin
      if (qrproduto.State = dsedit) or (qrproduto.State = dsinsert) then
        qrpreco.Edit;
    end;
  end
  else
  begin
    Showmessage('Nenhum registro foi selecionado!');
  end;
end;

procedure Tfrmproduto.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir PRODUTO', 4) then
  begin
    qrcodbarra.close;
    qrcodbarra.sql.clear;
    qrcodbarra.sql.add('SELECT * from c000055 where codproduto = ''' +
      qrproduto.FieldByName('codigo').AsString + '''');
    qrcodbarra.OPEN;
    while qrcodbarra.RECORDCOUNT <> 0 do
    begin
      qrcodbarra.DELETE;
    end;

    qrproduto_mov.close;
    qrproduto_mov.sql.clear;
    qrproduto_mov.sql.add('select * from c000032 where codproduto = ''' +
      qrproduto.FieldByName('codigo').AsString + '''');
    qrproduto_mov.OPEN;

    if qrproduto_mov.RECORDCOUNT > 1 then
    begin
      application.messagebox
        ('Este produto possue movimentações entradas/saídas! Impossível excluí-lo!',
        'Atenção', mb_ok + mb_iconwarning);

    end
    else
    begin
      frmprincipal.logUC('Excluiu Produto - ' + qrproduto.FieldByName('PRODUTO')
        .AsString, 3);
      qrproduto.DELETE;
      FRMMODULO.Conexao.commit;
    end;
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto.blocalizarClick(Sender: TObject);
begin
  frmxloc_PRODUTO := tfrmxloc_PRODUTO.create(self);
  frmxloc_PRODUTO.bitbtn1.enabled := false;
  frmxloc_PRODUTO.balterar.enabled := false;
  frmxloc_PRODUTO.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    qrproduto.Locate('codigo', resultado_pesquisa1, [loCaseInsensitive]);
    PageView1.ActivePageindex := 0;
  end;

end;

procedure Tfrmproduto.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin
  case cb_Origem.ItemIndex of

     0: qrproduto.fieldbyname('ORIGEM').AsInteger := 0;
     1: qrproduto.fieldbyname('ORIGEM').AsInteger := 1;
     2: qrproduto.fieldbyname('ORIGEM').AsInteger := 2;
     3: qrproduto.fieldbyname('ORIGEM').AsInteger := 3;
     4: qrproduto.fieldbyname('ORIGEM').AsInteger := 4;
     5: qrproduto.fieldbyname('ORIGEM').AsInteger := 5;
     6: qrproduto.fieldbyname('ORIGEM').AsInteger := 6;
     7: qrproduto.fieldbyname('ORIGEM').AsInteger := 7;
     8: qrproduto.fieldbyname('ORIGEM').AsInteger := 8;
  end;

  if qrproduto.FieldByName('PRECOVENDA').asfloat = 0 then
  begin
    Showmessage('Favor Informar O Preço de Venda!');
    evenda.SetFocus;
    exit;
  end;

  if qrproduto.FieldByName('ESTOQUE').Value = null then
    qrproduto.FieldByName('ESTOQUE').asfloat := 0;

  if DBEdit2.Text = '' then
  begin
    Showmessage('Favor Informar O Nome do Produto!');
    DBEdit2.SetFocus;
    exit;
  end;

  if qrpreco.State in [dsinsert, dsedit] then
  begin

    if qrpreco.RECORDCOUNT > 0 then
    begin

      if qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda
      then
        qrpreco.FieldByName('DATA_ALTERACAO').AsDateTime := date;

      qrpreco.Post;

      if label7.Caption = 'Cód.Remarc.:' then
        bremarcacaoClick(frmproduto);
    end;

  end;

  if (FRMMODULO.qrinfnutricional_produto.State = dsedit) or
    (FRMMODULO.qrinfnutricional_produto.State = dsinsert) then
    FRMMODULO.qrinfnutricional_produto.Post;

  if ecombo_piscofins.Text = '' then
  begin
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      qrproduto.FieldByName('PISCOFINS').AsString := 'N';
    end;
  end;

  if label7.Caption = 'Cód.Remarc.:' then
  begin

    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin

      if (qrproduto.FieldByName('precovenda').asfloat <> preco_venda_anterior)
        or (qrproduto.State = dsinsert) then
      begin
        qrproduto.FieldByName('DATA_REMARCACAO_VENDA').AsDateTime := date;
        qrproduto.FieldByName('PRECOVENDA_NOVO').asfloat :=
          qrproduto.FieldByName('PRECOVENDA').asfloat;

      end;
      if (qrproduto.State = dsinsert) then
        qrproduto.FieldByName('codigo').AsString :=
          frmprincipal.codifica('000025');

      qrproduto.Post;

    end;
  end
  else
  begin
    qrproduto.Post;

  end;

  FRMMODULO.Conexao.commit;

  qrestoque.REFRESH;

  ldata_compra.Caption := qrestoque.FieldByName('ultima_entrada').AsString;
  ldata_venda.Caption := qrestoque.FieldByName('ultima_saida').AsString;
  lnf.Caption := qrproduto.FieldByName('notafiscal').AsString;
  RINICIAL.Value := qrestoque.FieldByName('estoque_inicial').asfloat;
  rentrada.Value := qrestoque.FieldByName('entradas').asfloat;
  rsaida.Value := qrestoque.FieldByName('saidas').asfloat;
  restoque.Value := qrestoque.FieldByName('estoque_atual').asfloat;

  if PageView1.ActivePageindex <> 1 then
    PageView1.ActivePageindex := 0;
  PageView2.ActivePageindex := 0;

  batualiza_estoqueClick(frmproduto);

  preco_custo_anterior := qrproduto.FieldByName('precocusto').asfloat;
  preco_venda_anterior := qrproduto.FieldByName('precovenda').asfloat;

  if BUSCA_PRODUTO = 1 then
  begin
    BUSCA_PRODUTO := 0;
    close;
  end;

  pficha1.enabled := false;
  pficha2.enabled := false;
  pficha3.enabled := false;
  pficha4.enabled := false;
  pficha5.enabled := false;
  pficha6.enabled := false;
  pficha7.enabled := false;
  pficha8.enabled := false;
  pficha9.enabled := false;
  pficha10.enabled := false;

  edicao_preco := false;

  if FRMMODULO.qrproduto.State = dsinsert then
    frmprincipal.logUC('Incluiu Produto - ' + qrproduto.FieldByName('PRODUTO')
      .AsString, 1);

  if FRMMODULO.qrproduto.State = dsedit then
    frmprincipal.logUC('Alterou Produto - ' + qrproduto.FieldByName('PRODUTO')
      .AsString, 2);

end;

procedure Tfrmproduto.bcancelarClick(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    qrpreco.cancel;

  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
  begin
    PageView1.ActivePageindex := 0;
    PageView2.ActivePageindex := 0;
    if (qrproduto.State = dsinsert) then
    begin
      // frmprincipal.transMestre.active := true;
      frmprincipal.qrmestre.close;
      frmprincipal.qrmestre.sql.clear;
      frmprincipal.qrmestre.sql.add
        ('update c000000 set sequencia = sequencia - 1 where codigo = ''000025''');
      frmprincipal.qrmestre.execsql;
      // frmprincipal.transMestre.commit;
    end;
    qrproduto.cancel;
  end;

  FRMMODULO.Conexao.Rollback;

  PopupMenu := Pop1;
  comando := '';
  PageView1.ActivePageindex := 0;

  if BUSCA_PRODUTO = 1 then
  begin
    BUSCA_PRODUTO := 0;
    close;
  end;

  pficha1.enabled := false;
  pficha2.enabled := false;
  pficha3.enabled := false;
  pficha4.enabled := false;
  pficha5.enabled := false;
  pficha6.enabled := false;
  pficha7.enabled := false;
  pficha8.enabled := false;
  pficha9.enabled := false;

  edicao_preco := false;

end;

procedure Tfrmproduto.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto.etipoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmproduto.edata_cadastroEnter(Sender: TObject);
begin

  tedit(Sender).Color := $00A0FAF8;
  PageView1.ActivePageindex := 0;

  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
  begin
    if edata_cadastro.Text = '  /  /    ' then
      edata_cadastro.date := date;
  end;

end;

procedure Tfrmproduto.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmproduto.DBEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto.DBEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  DBMemo1.SetFocus;
end;

procedure Tfrmproduto.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto.RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
  if ecsosn.enabled = false then
  JvDBCalcEdit1.SetFocus;

end;

procedure Tfrmproduto.DateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmproduto.DBEdit4Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmproduto.Edit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if TJvDBDateEdit(Sender).Text <> '  /  /    ' then
  begin
    try
      TJvDBDateEdit(Sender).date := strtodate(TJvDBDateEdit(Sender).Text);
    except
      Showmessage('Data Inválida');
      TJvDBDateEdit(Sender).SetFocus;
    end;
  end;

end;

procedure Tfrmproduto.ealiquotaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PageView1.ActivePageindex := 0;
    DBMemo1.SetFocus;

  end;
end;

procedure Tfrmproduto.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  {
    With Memo1 do
    begin
    Line:= Perform(EM_LINEFROMCHAR,SelStart, 0);
    sum:= SelStart - Perform(EM_LINEINDEX, Line, 0);
    end;


    With Memo1 do
    SelStart := Perform(EM_LINEINDEX, Linha, 0);


  }
  if Key = #13 then
  begin
    if DBMemo1.Lines.Count >= 5 then
      PERFORM(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure Tfrmproduto.DBEdit62KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto.DBEdit66Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  qrpreco.Edit;

  qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat :=
    qrpreco.FieldByName('ICMS_ENTRADA').asfloat / qrpreco.FieldByName
    ('VALOR_ULTIMA_COMPRA').asfloat * 100;

  qrpreco.FieldByName('IPI_P').asfloat := qrpreco.FieldByName('IPI').asfloat /
    qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat * 100;

  application.ProcessMessages;

  // if frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
  bpreco_vendaClick(frmproduto);
  DBEdit6.SetFocus;
end;

procedure Tfrmproduto.DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    RzDBNumericEdit4.SetFocus;
end;

procedure Tfrmproduto.esubgrupoEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  try
    FRMMODULO.qrSUBGRUPO.close;
    FRMMODULO.qrSUBGRUPO.sql.clear;
    FRMMODULO.qrSUBGRUPO.sql.add('select * from c000018 where codgrupo = ''' +
      qrproduto.FieldByName('codgrupo').AsString + ''' order by SUBGRUPO');
    FRMMODULO.qrSUBGRUPO.OPEN;
    FRMMODULO.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';
  except
  end;

end;

procedure Tfrmproduto.blocaliquotaClick(Sender: TObject);
begin
  frmloc_ALIQUOTA := tfrmloc_ALIQUOTA.create(self);
  frmloc_ALIQUOTA.showmodal;
  qrproduto.FieldByName('codALIQUOTA').AsString :=
    FRMMODULO.qrALIQUOTA.FieldByName('codigo').AsString;
  PageView1.ActivePageindex := 0;
  DBMemo1.SetFocus;

end;

procedure Tfrmproduto.ealiquotaExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
  begin
    if ealiquota.Text <> '' then
    begin
      if not frmprincipal.Locregistro(FRMMODULO.qrALIQUOTA, ealiquota.Text,
        'codigo') then
        blocaliquotaClick(frmproduto)
      else
      begin
        PageView1.ActivePageindex := 0;
        DBMemo1.SetFocus;
      end;
    end
    else
      blocaliquota.SetFocus;
  end;
end;

procedure Tfrmproduto.BitBtn7Click(Sender: TObject);
begin

  qrpreco.close;
  qrpreco.sql.clear;
  qrpreco.sql.add('select * from c000026 where codproduto = ''' +
    qrproduto.FieldByName('codigo').AsString + '''');
  qrpreco.OPEN;

  qrpreco.insert;
  qrpreco.FieldByName('codigo').AsString := frmprincipal.codifica('000026');
  qrpreco.FieldByName('codproduto').AsString :=
    qrproduto.FieldByName('codigo').AsString;
  qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat :=
    qrproduto.FieldByName('PRECOCUSTO').asfloat;
  qrpreco.FieldByName('CUSTO_COMPRA').asfloat :=
    qrproduto.FieldByName('PRECOCUSTO').asfloat;
  qrpreco.FieldByName('PRECO_VENDA').asfloat :=
    qrproduto.FieldByName('PRECOVENDA').asfloat;
  qrpreco.FieldByName('DATA_ALTERACAO').AsDateTime := date;
  qrpreco.FieldByName('PRECO_AUTOMATICO').asinteger := 1;
  qrpreco.FieldByName('ALTERA_AUTOMATICO').asinteger := 2;
  qrpreco.Post;

  ptampapreco.visible := false;
  DBEdit19.SetFocus;

  edicao_preco := True;
end;

procedure Tfrmproduto.BitBtn8Click(Sender: TObject);
var
  barra_grade: string;
begin
  try
    FRMMODULO.qrgrade_subgrupo.close;
    FRMMODULO.qrgrade_subgrupo.sql.clear;
    FRMMODULO.qrgrade_subgrupo.sql.add
      ('SELECT * FROM C000020 WHERE CODSUBGRUPO = ''' + qrproduto.FieldByName
      ('CODSUBGRUPO').AsString + ''' ORDER BY CODIGO');
    FRMMODULO.qrgrade_subgrupo.OPEN;
    if FRMMODULO.qrgrade_subgrupo.RECORDCOUNT > 0 then
    begin
      FRMMODULO.qrgrade_subgrupo.first;
      while not FRMMODULO.qrgrade_subgrupo.Eof do
      begin
        FRMMODULO.qrgrade_produto.insert;
        FRMMODULO.qrgrade_produto.FieldByName('codigo').AsString :=
          frmprincipal.codifica('000021');
        FRMMODULO.qrgrade_produto.FieldByName('codproduto').AsString :=
          qrproduto.FieldByName('codigo').AsString;
        FRMMODULO.qrgrade_produto.FieldByName('numeracao').AsString :=
          FRMMODULO.qrgrade_subgrupo.FieldByName('numeracao').AsString;

        // gerar barras para grade

        if COMBOCODBARRA.Text <> '' then
        begin
          // se for numeracao
          barra_grade := '978' + frmprincipal.zerarcodigo
            (inttostr(strtoint(qrprodutoCODIGO.AsString)), 6) +
            frmprincipal.zerarcodigo(FRMMODULO.qrgrade_subgrupo.FieldByName
            ('ordem').AsString, 3);
          barra_grade := barra_grade + frmprincipal.CalculaDigEAN13
            (frmprincipal.somenteNumero(barra_grade));
        end;

        FRMMODULO.qrgrade_produto.FieldByName('codbarra').AsString :=
          barra_grade;

        FRMMODULO.qrgrade_produto.Post;
        FRMMODULO.qrgrade_subgrupo.next;
      end;
      FRMMODULO.qrgrade_produto.REFRESH;
    end
    else
    begin
      Showmessage
        ('O subgrupo a qual este produto pertence não possue grade! Favor verificar!');
    end;
  except
  end;
end;

procedure Tfrmproduto.BitBtn11Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir GRADE', 4) then
  begin
    FRMMODULO.qrgrade_produto.close;
    FRMMODULO.qrgrade_produto.sql.clear;
    FRMMODULO.qrgrade_produto.sql.add
      ('DELETE from c000021 where codproduto = ''' + qrproduto.FieldByName
      ('codigo').AsString + '''');
    FRMMODULO.qrgrade_produto.execsql;

    FRMMODULO.qrgrade_produto.close;
    FRMMODULO.qrgrade_produto.sql.clear;
    FRMMODULO.qrgrade_produto.sql.add
      ('select * from c000021 where codproduto = ''' + qrproduto.FieldByName
      ('codigo').AsString + ''' order by codigo');
    FRMMODULO.qrgrade_produto.OPEN;

  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto.wwDBGrid2DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin

  if FRMMODULO.qrserial_produto.FieldByName('situacao').asinteger = 2 then
  begin
    wwDBGrid2.canvas.Brush.Color := clred;
    wwDBGrid2.canvas.Pen.Color := clWhite;
  end;
  if FRMMODULO.qrserial_produto.FieldByName('situacao').asinteger = 3 then
  begin
    wwDBGrid2.canvas.Brush.Color := $00A0FAF8;
    wwDBGrid2.canvas.Pen.Color := clblack;
  end;
  wwDBGrid2.DefaultDrawDataCell(Rect, Field, State);
end;

procedure Tfrmproduto.Button3Click(Sender: TObject);
begin
  if FRMMODULO.qrserial_produto.RECORDCOUNT = 0 then
    exit;

  if frmprincipal.autentica('Baixar Serial', 4) then
  begin
    case FRMMODULO.qrserial_produto.FieldByName('situacao').asinteger of
      1:
        begin
          if application.messagebox
            ('Tem certeza que deseja BAIXAR este serial do Estoque?', 'Atenção',
            mb_yesno + mb_iconwarning) = idyes then
          begin
            FRMMODULO.qrserial_produto.Edit;
            FRMMODULO.qrserial_produto.FieldByName('situacao').asinteger := 3;
            FRMMODULO.qrserial_produto.FieldByName('cliente').AsString :=
              'BAIXADO - ' + codigo_usuario;
            FRMMODULO.qrserial_produto.FieldByName('DATAVENDA')
              .AsDateTime := date;
            FRMMODULO.qrserial_produto.Post;

            (* ************************************** *)

            qrproduto_mov.OPEN;
            qrproduto_mov.insert;
            qrproduto_mov.FieldByName('codigo').AsString :=
              frmprincipal.codifica('000032');
            qrproduto_mov.FieldByName('codproduto').AsString :=
              qrproduto.FieldByName('codigo').AsString;
            qrproduto_mov.FieldByName('data').AsDateTime := date;
            qrproduto_mov.FieldByName('movimento').asinteger := 5;
            qrproduto_mov.FieldByName('codvendedor').AsString := codigo_usuario;
            qrproduto_mov.FieldByName('qtde').asfloat := 1;
            qrproduto_mov.FieldByName('unitario').asfloat :=
              qrproduto.FieldByName('precocusto').asfloat;
            qrproduto_mov.FieldByName('total').asfloat :=
              qrproduto.FieldByName('precocusto').asfloat;
            qrproduto_mov.Post;

            (* ************************************** *)
          end;
        end;
      2:
        begin
          Showmessage
            ('Este serial já foi vendido! Impossível BAIXAR/RETORNAR o mesmo!');
        end;
      3:
        begin
          if application.messagebox
            ('Tem certeza que deseja RETORNAR este serial para o Estoque?',
            'Atenção', mb_yesno + mb_iconwarning) = idyes then
          begin
            FRMMODULO.qrserial_produto.Edit;
            FRMMODULO.qrserial_produto.FieldByName('situacao').asinteger := 1;
            FRMMODULO.qrserial_produto.FieldByName('cliente').AsString := '';
            FRMMODULO.qrserial_produto.FieldByName('DATAVENDA').AsString := '';
            FRMMODULO.qrserial_produto.Post;
            (* ************************************** *)
            qrproduto_mov.OPEN;
            qrproduto_mov.insert;
            qrproduto_mov.FieldByName('codigo').AsString :=
              frmprincipal.codifica('000032');
            qrproduto_mov.FieldByName('codproduto').AsString :=
              qrproduto.FieldByName('codigo').AsString;
            qrproduto_mov.FieldByName('data').AsDateTime := date;
            qrproduto_mov.FieldByName('movimento').asinteger := 8;
            qrproduto_mov.FieldByName('codvendedor').AsString := codigo_usuario;
            qrproduto_mov.FieldByName('qtde').asfloat := 1;
            qrproduto_mov.FieldByName('unitario').asfloat :=
              qrproduto.FieldByName('precocusto').asfloat;
            qrproduto_mov.FieldByName('total').asfloat :=
              qrproduto.FieldByName('precocusto').asfloat;
            qrproduto_mov.Post;
            (* ************************************** *)
          end;
        end;

    end; // case

    // frmmodulo.qrserial_produto.Refresh;

  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto.DBCheckBox3Click(Sender: TObject);
begin
  if DBCheckBox3.checked then
  begin
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      if qrproduto.FieldByName('usa_grade').asinteger = 1 then
      begin
        application.messagebox
          ('Este produto utiliza grade de preços, impossível usar controle de seriais!',
          'Atenção', mb_ok + mb_iconwarning);
        DBCheckBox3.checked := false;
      end;

    end;
  end;
end;

procedure Tfrmproduto.DBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto.Receitas1Click(Sender: TObject);
begin
  frmreceita := tfrmreceita.create(self);
  frmreceita.showmodal;
end;

procedure Tfrmproduto.Regies1Click(Sender: TObject);
begin
  LMDButton1.Click;
end;

procedure Tfrmproduto.blocreceitaClick(Sender: TObject);
begin
  frmloc_receita := tfrmloc_receita.create(self);
  frmloc_receita.showmodal;
  if qrproduto.State <> dsedit then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  qrproduto.FieldByName('codreceita').AsString :=
    FRMMODULO.qrreceita.FieldByName('codigo').AsString;
  wwDBGrid3.SetFocus;
end;

procedure Tfrmproduto.ereceitaExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
  begin
    qrproduto.FieldByName('codreceita').AsString :=
      frmprincipal.zerarcodigo(ereceita.Text, 6);
    if ereceita.Text <> '000000' then
      if not frmprincipal.Locregistro(FRMMODULO.qrreceita, ereceita.Text,
        'codigo') then
        blocreceitaClick(frmproduto)
      else
        wwDBGrid3.SetFocus
    else
      blocreceita.SetFocus;
  end;
end;

procedure Tfrmproduto.qrcomposicao_produtoBeforePost(DataSet: TDataSet);
begin
  qrcomposicao_produto.FieldByName('codigo').AsString :=
    frmprincipal.codifica('000027');
  qrcomposicao_produto.FieldByName('produto').AsString :=
    qrproduto.FieldByName('CODIGO').AsString;

end;

procedure Tfrmproduto.Button1Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir COMPOSIÇÃO', 4) then
  begin
    while qrcomposicao_produto.RECORDCOUNT <> 0 do
      qrcomposicao_produto.DELETE;
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto.Button2Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir COMPOSIÇÃO', 4) then
  begin
    qrcomposicao_produto.DELETE;
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto.DBEdit40Exit(Sender: TObject);
begin
  TDBEdit(Sender).Color := $00F9F7E6;
end;

procedure Tfrmproduto.DBEdit42Exit(Sender: TObject);
begin
  tedit(Sender).Color := clbtnface;
end;

procedure Tfrmproduto.BitBtn6Click(Sender: TObject);
begin
  FRMMODULO.qrinfnutricional_produto.insert;
  FRMMODULO.qrinfnutricional_produto.FieldByName('codigo').AsString :=
    frmprincipal.codifica('000028');
  FRMMODULO.qrinfnutricional_produto.FieldByName('codproduto').AsString :=
    qrproduto.FieldByName('codigo').AsString;

  ptampainfnutricional.visible := false;
  DBEdit39.SetFocus;
end;

procedure Tfrmproduto.DBEdit59KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if qrproduto.State <> dsinsert then
      if qrproduto.State <> dsedit then
        qrproduto.Edit;
    bgravar.SetFocus;

  end;
end;

procedure Tfrmproduto.SpeedButton1Click(Sender: TObject);
var
  sProd_barra:string;
  Arq_Original :string;
  Arq_Destino  :string;
begin
  if OpenPictureDialog1.Execute then
  begin
    Image2.Picture.LoadFromFile(OpenPictureDialog1.Filename);
    sProd_barra :=COMBOCODBARRA.Text;
    if qrproduto.State <> dsedit then
      if qrproduto.State <> dsinsert then
        qrproduto.Edit;
    qrproduto.FieldByName('FOTO').AsString := OpenPictureDialog1.Filename;
    Arq_Original :=OpenPictureDialog1.Filename;

    Arq_Destino := ExtractFilePath(Application.ExeName) + 'img\produtos\' + sProd_barra + '.jpg';
    if FileExists(Arq_Destino) then
    DeleteFile(Arq_Destino);
     CopyFile(PChar(Arq_Original),PChar( Arq_Destino), False);
    qrproduto.FieldByName('FOTO').AsString := Arq_Destino;
  end;
end;

procedure Tfrmproduto.SpeedButton2Click(Sender: TObject);
begin
  if qrproduto.State <> dsedit then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  frmwebcam := tfrmwebcam.create(self);
  frmwebcam.showmodal;
end;

procedure Tfrmproduto.SpeedButton3Click(Sender: TObject);
begin
  if qrproduto.State <> dsedit then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;
  Image2.Picture := nil;
  qrproduto.FieldByName('FOTO').AsString := '';
end;

procedure Tfrmproduto.W7ActiveLabel13Click(Sender: TObject);
begin
   PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 3;
end;

procedure Tfrmproduto.W7ActiveLabel1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 0;
  end;

procedure Tfrmproduto.W7ActiveLabel2Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmproduto.W7ActiveLabel3Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmproduto.W7ActiveLabel4Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 3;
end;

procedure Tfrmproduto.W7ActiveLabel5001Click(Sender: TObject);
begin
 PageView1.ActivePageIndex := 7;
end;

procedure Tfrmproduto.W7ActiveLabel5222Click(Sender: TObject);
begin
   PageView1.ActivePageIndex := 8;
end;

procedure Tfrmproduto.W7ActiveLabel544Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 6;
end;

procedure Tfrmproduto.W7ActiveLabel5Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 0;
end;

procedure Tfrmproduto.W7ActiveLabel6Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 5;
end;

procedure Tfrmproduto.W7ActiveLabel7Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 4;
end;

procedure Tfrmproduto.W7ActiveLabel8Click(Sender: TObject);
begin
   PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 2;
end;

procedure Tfrmproduto.W7ActiveLabel9Click(Sender: TObject);
begin
   PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 1;
end;

procedure Tfrmproduto.Fornecedor1Click(Sender: TObject);
begin
  frmfornecedor := tfrmfornecedor.create(self);
  frmfornecedor.showmodal;
end;

procedure Tfrmproduto.MarcaFabricanteLaboratrio1Click(Sender: TObject);
begin
  frmmarca := tfrmmarca.create(self);
  frmmarca.showmodal;
end;

procedure Tfrmproduto.GrupoSubgrupo1Click(Sender: TObject);
begin
  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
end;

procedure Tfrmproduto.Alquotas1Click(Sender: TObject);
begin
  frmaliquota := tfrmaliquota.create(self);
  frmaliquota.showmodal;
end;

procedure Tfrmproduto.NaturezadeOperaoCFOP1Click(Sender: TObject);
begin
  frmcfop := tfrmcfop.create(self);
  frmcfop.showmodal;
end;

procedure Tfrmproduto.BitBtn14Click(Sender: TObject);
begin
  // VERIFICAR
end;

procedure Tfrmproduto.Exportarparaarquivo1Click(Sender: TObject);
begin
  frmproduto_exportar := tfrmproduto_exportar.create(self);
  frmproduto_exportar.showmodal;
end;

procedure Tfrmproduto.ImportardeArquivo1Click(Sender: TObject);
begin
  if frmprincipal.autentica('Atualizar Produtos', 4) then
  begin
    frmproduto_importar := tfrmproduto_importar.create(self);
    frmproduto_importar.showmodal;
    qrproduto.REFRESH;
  end;
end;

procedure Tfrmproduto.otalizarestoque1Click(Sender: TObject);
begin
  query.close;
  query.sql.clear;
  query.sql.add
    ('select sum(estq.estoque_atual * prod.precocusto) custo, sum(estq.estoque_atual * precovenda) venda from c000025 prod, c000100 estq');
  query.sql.add('where prod.codigo = estq.codproduto');
  query.OPEN;

  frmproduto_total := tfrmproduto_total.create(self);
  frmproduto_total.Label1.Caption := formatfloat('###,###,##0.00',
    query.FieldByName('custo').asfloat);
  frmproduto_total.Label2.Caption := formatfloat('###,###,##0.00',
    query.FieldByName('venda').asfloat);
  frmproduto_total.showmodal;
end;

procedure Tfrmproduto.BitBtn5Click(Sender: TObject);
begin
  Frmlista_produto2 := tfrmlista_produto2.create(self);
  Frmlista_produto2.showmodal;
end;

procedure Tfrmproduto.AtualizaodePreos1Click(Sender: TObject);
begin
  frmproduto_atualizapreco := tfrmproduto_atualizapreco.create(self);
  frmproduto_atualizapreco.showmodal;

  qrproduto.REFRESH;
end;

procedure Tfrmproduto.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
  begin
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      if dbedit13.Text <> '' then
      begin
        FRMMODULO.qrfiscal_cst.close;
        FRMMODULO.qrfiscal_cst.sql.clear;
        FRMMODULO.qrfiscal_cst.sql.add('SELECT * FROM C000083 WHERE CODIGO = '''
          + dbedit13.Text + '''');
        FRMMODULO.qrfiscal_cst.OPEN;
        if FRMMODULO.qrfiscal_cst.RECORDCOUNT > 0 then
        begin
          qrproduto.FieldByName('CST').AsString :=
            FRMMODULO.qrfiscal_cst.FieldByName('codigo').AsString;
          ealiq.SetFocus;
        end
        else
        begin
          FRMXLOC_CST := TFRMXLOC_CST.create(self);
          FRMXLOC_CST.showmodal;
          qrproduto.FieldByName('CST').AsString := resultado_pesquisa1;
          ealiq.SetFocus;
        end;
      end
      else
        dbedit13ButtonClick(frmproduto);
    end;

  end
  else
  begin
    if (Key in (['0' .. '9'])) or (Key = #8) then
      //
    else
      abort;
  end;

end;

procedure Tfrmproduto.ealiqExit(Sender: TObject);
begin
  if (ealiq.Value <> 0.00) and (ealiq.Value <> 7.00) and (ealiq.Value <> 12.00)
    and (ealiq.Value <> 17.00) and (ealiq.Value <> 18.00) and
    (ealiq.Value <> 25.00) and (ealiq.Value <> 27.00) then
  begin
    application.messagebox('Aliquota fora da faixa!', 'Atenção',
      mb_ok + mb_iconwarning);
    ealiq.Value := 0;
    ealiq.SetFocus;
    exit;
  end;
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmproduto.ealiqKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PageView1.ActivePageindex := 0;
    PageView2.ActivePageindex := 0;
    if gestoque.visible then
    begin
      RxDBCalcEdit2.SetFocus;
    end
    else
    begin
      // PageView1.ActivePageIndex := 0;
      RxDBCalcEdit2.SetFocus;
    end;
  end;
end;

procedure Tfrmproduto.combo_tipoEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  PageView1.ActivePageindex := 0;
end;

procedure Tfrmproduto.combo_tipoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  DBEdit2.SetFocus;
end;

procedure Tfrmproduto.combo_tipoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edata_cadastro.SetFocus;
end;

procedure Tfrmproduto.DBEdit2Exit(Sender: TObject);
var
  texto: PWideChar;
  prod: string;
begin

  tedit(Sender).Color := clwindow;
  if qrproduto.State = dsinsert then
  begin
    prod := DBEdit2.Text;
    qrduplo.close;
    qrduplo.sql.clear;
    qrduplo.sql.add('select * from c000025');
    qrduplo.sql.add('where upper(produto) = ''' + prod + '''');
    qrduplo.OPEN;
    if qrduplo.RECORDCOUNT > 0 then
    begin
      texto := PWideChar('Existe um produto cadastrado com este nome!' + #13 +
        qrduplo.FieldByName('codigo').AsString + ' - ' +
        qrduplo.FieldByName('produto').AsString + #13 + 'Preço de Venda: ' +
        formatfloat('###,###,##0.00', qrduplo.FieldByName('precovenda').asfloat)
        + '!' + #13 + 'Deseja prosseguir?');
      if application.messagebox(texto, 'Atenção', mb_yesno + mb_iconwarning +
        MB_DEFBUTTON2) = idNO then
      begin
        qrproduto.cancel;
        qrproduto.Locate('produto', prod, [loCaseInsensitive]);
        exit;
      end;
    end;
  end;

  if qrproduto.State in [dsinsert, dsedit] then
  begin
    qrproduto.FieldByName('produto').AsString :=
      TrimLeft(qrproduto.FieldByName('produto').AsString);

  end;

end;

procedure Tfrmproduto.DBEdit7Exit(Sender: TObject);
begin
  if DBEdit7.Text = '' then
  begin
    Showmessage('Favor Informar a Unidade do Produto...');
    DBEdit7.SetFocus;
    exit;
  end;

  tedit(Sender).Color := clwindow;

end;

procedure Tfrmproduto.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if DBEdit2.Text = '' then
    begin
      Showmessage('Favor Informar o Nome do Produto...');
      DBEdit2.SetFocus;
      exit;
    end
    else
      PERFORM(WM_NEXTDLGCTL, 0, 0);

  end;

end;

procedure Tfrmproduto.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);

end;

procedure Tfrmproduto.Inventrio1Click(Sender: TObject);
begin

  frminventario := tfrminventario.create(application);
  try
    frminventario.showmodal;
  finally
    frminventario.Release;
    frminventario := nil;
  end;

end;

procedure Tfrmproduto.JvDBCalcEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto.combocodbarraEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;

end;

procedure Tfrmproduto.combocodbarraExit(Sender: TObject);
var
  cd, x: string;
  DataHora: TDateTime;
  str: string;
begin

  // testes cod barras novo
  tedit(Sender).Color := clwindow;

  if COMBOCODBARRA.Text = '' then
  begin
    // inicio
    COMBOCODBARRA.Text := '978100' + frmprincipal.zerarcodigo
      (inttostr(strtoint(qrprodutoCODIGO.AsString)), 6);
    COMBOCODBARRA.Text := COMBOCODBARRA.Text + frmprincipal.CalculaDigEAN13
      (frmprincipal.somenteNumero(COMBOCODBARRA.Text));

    query.close;
    query.sql.clear;
    query.sql.add('SELECT CODBARRA FROM C000025 WHERE CODBARRA = ''' +
      COMBOCODBARRA.Text + '''');
    query.OPEN;

    if query.RECORDCOUNT > 0 then
    begin

      COMBOCODBARRA.Text := '999100' + frmprincipal.zerarcodigo
        (inttostr(strtoint(qrprodutoCODIGO.AsString)), 6);
      COMBOCODBARRA.Text := COMBOCODBARRA.Text + frmprincipal.CalculaDigEAN13
        (frmprincipal.somenteNumero(COMBOCODBARRA.Text));
      COMBOCODBARRA.SetFocus;
    end;

  end;

  if Length(Trim(frmprincipal.somenteNumero(COMBOCODBARRA.Text))) >= 13 then
  begin

    try
      cd := copy(COMBOCODBARRA.Text, 1, 12);
      x := copy(frmprincipal.somenteNumero(COMBOCODBARRA.Text), 13, 1);
      if x <> '' then
      begin
        if frmprincipal.CalculaDigEAN13
          (frmprincipal.somenteNumero(COMBOCODBARRA.Text)) = x then
          pbarra.visible := false
        else
        begin
          // if application.messagebox('Caminho do arquivo para Atualização não encontrado, Deseja Cria-lo?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
          Showmessage('Código de Barra Inválido!');
          COMBOCODBARRA.SetFocus;
          pbarra.visible := True;
          exit;
        end;
      end
      else
        fdados_codbarra.visible := false;

    except
      pbarra.visible := false;
    end;
  end
  else
  begin
    pbarra.visible := false;
  end;

  if COMBOCODBARRA.Text <> '' then
  begin
    if qrproduto.State = dsinsert then
    begin
      query.close;
      query.sql.clear;
      query.sql.add('SELECT CODBARRA FROM C000025 WHERE CODBARRA = ''' +
        COMBOCODBARRA.Text + '''');
      query.OPEN;
      if query.RECORDCOUNT > 0 then
      begin
        if application.messagebox
          ('Existe um produto cadastrado com este código de barras! Deseja visualiza-lo?',
          'Atenção', mb_yesno + mb_iconwarning) = idyes then
        begin
          qrproduto.cancel;
          qrproduto.Locate('codbarra', query.FieldByName('codbarra').AsString,
            [loCaseInsensitive]);
        end
        else
          COMBOCODBARRA.SetFocus;
      end;
    end;
  end
  else
  begin
    COMBOCODBARRA.Text :=
      inttostr(strtoint(qrproduto.FieldByName('codigo').AsString));
  end;

  ACBrBarCode1.Text := COMBOCODBARRA.Text;

end;

procedure Tfrmproduto.combocodbarraKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);

end;

procedure Tfrmproduto.qrcodbarraBeforePost(DataSet: TDataSet);
begin

  if qrcodbarra.State = dsinsert then
  begin

    qrcodbarra.FieldByName('CODIGO').AsString :=
      frmprincipal.codifica('000055');

    qrbarra.close;
    qrbarra.sql.clear;
    qrbarra.sql.add('select * from c000055 where codbarra = ''' +
      qrcodbarra.FieldByName('codbarra').AsString + '''');
    qrbarra.OPEN;
    if qrbarra.RECORDCOUNT > 0 then
    begin
      application.messagebox('Existe um produto cadastrado com este Código',
        'Atenção', mb_ok + mb_iconwarning);
      abort;
    end;

  end;
  qrcodbarra.FieldByName('codproduto').AsString :=
    qrproduto.FieldByName('codigo').AsString;

end;

procedure Tfrmproduto.bgrava_barraClick(Sender: TObject);
begin
  if (qrcodbarra.State = dsinsert) or (qrcodbarra.State = dsedit) then
    qrcodbarra.Post;

  fdados_codbarra.visible := false;
  PopupMenu := Pop2;

  DBEdit2.SetFocus;
end;

procedure Tfrmproduto.GravarCodigodeBarra1Click(Sender: TObject);
begin
  bgrava_barraClick(frmproduto);
end;

procedure Tfrmproduto.Servios1Click(Sender: TObject);
begin
  bservicosClick(frmproduto);
end;

procedure Tfrmproduto.bservicosClick(Sender: TObject);
begin
  frmservico := tfrmservico.create(self);
  frmservico.showmodal;
end;

procedure Tfrmproduto.Servicos1Click(Sender: TObject);
begin
  bservicosClick(frmproduto);
end;

procedure Tfrmproduto.AdvGlowButton1Click(Sender: TObject);
begin
  PageView1.ActivePageindex := 1;
end;

procedure Tfrmproduto.egrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      qrproduto.FieldByName('codGRUPO').AsString :=
        frmprincipal.zerarcodigo(egrupo.Text, 6);
      if egrupo.Text <> '000000' then
        if not frmprincipal.Locregistro(FRMMODULO.qrGRUPO, egrupo.Text, 'codigo')
        then
        begin
          application.messagebox('Grupo não cadastrado!', 'Atenção',
            mb_ok + mb_iconerror);
          egrupo.SetFocus;
          exit;
        end
        else
          esubgrupo.SetFocus
      else
        egrupoButtonClick(frmproduto);
    end;
  end;
end;

procedure Tfrmproduto.egrupoButtonClick(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  frmloc_grupo := tfrmloc_grupo.create(self);
  frmloc_grupo.showmodal;
  qrproduto.FieldByName('codgrupo').AsString := FRMMODULO.qrGRUPO.FieldByName
    ('codigo').AsString;
  esubgrupo.SetFocus;
end;

procedure Tfrmproduto.efornecedorButtonClick(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.showmodal;
  qrproduto.FieldByName('codfornecedor').AsString :=
    FRMMODULO.qrFORNECEDOR.FieldByName('codigo').AsString;
  emarca.SetFocus;
end;

procedure Tfrmproduto.emarcaButtonClick(Sender: TObject);
begin

  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  frmloc_marca := tfrmloc_marca.create(self);
  frmloc_marca.showmodal;
  qrproduto.FieldByName('codmarca').AsString := FRMMODULO.qrMARCA.FieldByName
    ('codigo').AsString;
  DBEdit11.SetFocus;
end;

procedure Tfrmproduto.esubgrupoButtonClick(Sender: TObject);
begin

  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  try
    FRMMODULO.qrSUBGRUPO.close;
    FRMMODULO.qrSUBGRUPO.sql.clear;
    FRMMODULO.qrSUBGRUPO.sql.add('select * from c000018 where codgrupo = ''' +
      qrproduto.FieldByName('codgrupo').AsString + ''' order by SUBGRUPO');
    FRMMODULO.qrSUBGRUPO.OPEN;
    FRMMODULO.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';
  except
  end;

  frmloc_subgrupo := tfrmloc_subgrupo.create(self);
  frmloc_subgrupo.showmodal;
  qrproduto.FieldByName('codsubgrupo').AsString :=
    FRMMODULO.qrSUBGRUPO.FieldByName('codigo').AsString;
  efornecedor.SetFocus;
end;

procedure Tfrmproduto.esubgrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    tedit(Sender).Color := clwindow;
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      qrproduto.FieldByName('codsubgrupo').AsString :=
        frmprincipal.zerarcodigo(esubgrupo.Text, 6);
      if esubgrupo.Text <> '000000' then
        if not frmprincipal.Locregistro(FRMMODULO.qrSUBGRUPO, esubgrupo.Text,
          'codigo') then
        begin
          application.messagebox('Subgrupo não cadastrado!', 'Atenção',
            mb_ok + mb_iconerror);
          esubgrupo.SetFocus;
          exit;
        end
        else
          efornecedor.SetFocus
      else
        esubgrupoButtonClick(frmproduto);;
    end;

  end;
end;

procedure Tfrmproduto.efornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    tedit(Sender).Color := clwindow;
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      qrproduto.FieldByName('codfornecedor').AsString :=
        frmprincipal.zerarcodigo(efornecedor.Text, 6);
      if efornecedor.Text <> '000000' then
        if not frmprincipal.Locregistro(FRMMODULO.qrFORNECEDOR,
          efornecedor.Text, 'codigo') then
        begin
          application.messagebox('Fornecedor não cadastrado!', 'Atenção',
            mb_ok + mb_iconerror);
          efornecedor.SetFocus;
          exit;
        end
        else
          emarca.SetFocus
      else
        efornecedorButtonClick(frmproduto);
    end;

  end;
end;

procedure Tfrmproduto.emarcaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    tedit(Sender).Color := clwindow;
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      qrproduto.FieldByName('codmarca').AsString :=
        frmprincipal.zerarcodigo(emarca.Text, 6);
      if emarca.Text <> '000000' then
        if not frmprincipal.Locregistro(FRMMODULO.qrMARCA, emarca.Text, 'codigo')
        then
        begin
          application.messagebox('Marca não cadastrada!', 'Atenção',
            mb_ok + mb_iconerror);
          emarca.SetFocus;
          exit;
        end
        else
          DBEdit11.SetFocus
      else
        emarcaButtonClick(frmproduto);
    end;

  end;
end;

procedure Tfrmproduto.dbedit13ButtonClick(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  FRMXLOC_CST := TFRMXLOC_CST.create(self);
  FRMXLOC_CST.showmodal;
  qrproduto.FieldByName('CST').AsString := resultado_pesquisa1;
  ealiq.SetFocus;
end;

procedure Tfrmproduto.bfiltro_entradaClick(Sender: TObject);
var
  ve: real;
begin
  if combo_entrada.ItemIndex = 0 then
  begin
    qrmov_entrada.close;
    qrmov_entrada.sql.clear;
    qrmov_entrada.sql.add('select * from c000032 where codproduto = ''' +
      qrproduto.FieldByName('codigo').AsString + '''');
    qrmov_entrada.sql.add('and data >= :datai and data <= :dataf');
    qrmov_entrada.sql.add('and movimento in (0,1,7,8,10,13,16)');
    qrmov_entrada.Params.ParamByName('datai').AsDateTime := di_entrada.date;
    qrmov_entrada.Params.ParamByName('dataf').AsDateTime := df_entrada.date;
    qrmov_entrada.OPEN;
    qrmov_entrada.first;
  end
  else
  begin
    qrmov_entrada.close;
    qrmov_entrada.sql.clear;
    qrmov_entrada.sql.add('select * from c000032 where codproduto = ''' +
      qrproduto.FieldByName('codigo').AsString + '''');
    qrmov_entrada.sql.add('and data >= :datai and data <= :dataf');
    qrmov_entrada.sql.add('and movimento =' + copy(combo_entrada.Text, 1, 2));
    qrmov_entrada.Params.ParamByName('datai').AsDateTime := di_entrada.date;
    qrmov_entrada.Params.ParamByName('dataf').AsDateTime := df_entrada.date;
    qrmov_entrada.OPEN;
    qrmov_entrada.first;
  end;

  ve := 0;
  while not qrmov_entrada.Eof do
  begin
    ve := ve + qrmov_entrada.FieldByName('qtde').asfloat;
    qrmov_entrada.next;
  end;
  eentrada.Caption := formatfloat('###,###,##0.000', ve);
end;

procedure Tfrmproduto.di_entradaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto.df_entradaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bfiltro_entrada.SetFocus;
end;

procedure Tfrmproduto.PageView2Change(Sender: TObject);
begin
  if PageView1.ActivePageindex = 0 then
  begin

    if PageView2.ActivePageindex = 0 then
    begin
      qrestoque.Connection := FRMMODULO.Conexao;
      qrestoque.close;
      qrestoque.sql.clear;
      qrestoque.sql.add('select * from c000100 where codproduto = ''' +
        qrproduto.FieldByName('codigo').AsString + '''');
      qrestoque.OPEN;
      if qrestoque.RECORDCOUNT > 0 then
      begin
        ldata_compra.Caption := qrestoque.FieldByName('ultima_entrada')
          .AsString;
        ldata_venda.Caption := qrestoque.FieldByName('ultima_saida').AsString;
        lnf.Caption := qrestoque.FieldByName('nota_fiscal').AsString;
        RINICIAL.Value := qrestoque.FieldByName('estoque_inicial').asfloat;
        rentrada.Value := qrestoque.FieldByName('entradas').asfloat;
        rsaida.Value := qrestoque.FieldByName('saidas').asfloat;
        restoque.Value := qrestoque.FieldByName('estoque_atual').asfloat;
      end
      else
      begin
        ldata_compra.Caption := '?';
        ldata_venda.Caption := '?';
        lnf.Caption := '?';
        RINICIAL.Value := 0;
        rentrada.Value := 0;
        rsaida.Value := 0;
        restoque.Value := 0;

      end;
    end;

    if PageView2.ActivePageindex = 1 then
    begin
      bfiltro_entradaClick(frmproduto);
    end;
    if PageView2.ActivePageindex = 2 then
    begin
      bfiltro_saidaClick(frmproduto);
    end;
  end;
end;

procedure Tfrmproduto.qrmov_entradaCalcFields(DataSet: TDataSet);
begin

  case qrmov_entrada.FieldByName('MOVIMENTO').asinteger of
    0:
      qrmov_entrada.FieldByName('MOV').AsString := 'IMPLANTAÇÃO DE SALDO';
    1:
      qrmov_entrada.FieldByName('MOV').AsString := 'COMPRA';
    2:
      qrmov_entrada.FieldByName('MOV').AsString := 'VENDA';
    3:
      qrmov_entrada.FieldByName('MOV').AsString := 'DEVOLUÇÃO DE COMPRA';
    4:
      qrmov_entrada.FieldByName('MOV').AsString := 'OUTRAS SAÍDAS';
    5:
      qrmov_entrada.FieldByName('MOV').AsString := 'BAIXA DE SERIAL';
    6:
      qrmov_entrada.FieldByName('MOV').AsString := 'EXCLUSÃO SERIAL';
    7:
      qrmov_entrada.FieldByName('MOV').AsString := 'DEVOLUÇÃO DE VENDA';
    8:
      qrmov_entrada.FieldByName('MOV').AsString := 'RETORNO SERIAL';
    9:
      qrmov_entrada.FieldByName('MOV').AsString := 'VENDA EM O.S';
    10:
      qrmov_entrada.FieldByName('MOV').AsString := 'ACERTO ESTOQUE';
    11:
      qrmov_entrada.FieldByName('MOV').AsString := 'BAIXA MATÉRIA-PRIMA';
    12:
      qrmov_entrada.FieldByName('MOV').AsString := 'ESTORNA MATÉRIA-PRIMA';
    13:
      qrmov_entrada.FieldByName('MOV').AsString := 'ENTRADA PRODUTO ACABADO';
    14:
      qrmov_entrada.FieldByName('MOV').AsString := 'ESTORNA PRODUTO ACABADO';
    15:
      qrmov_entrada.FieldByName('MOV').AsString := 'BAIXA PARA RENTABILIDADE';
    16:
      qrmov_entrada.FieldByName('MOV').AsString := 'ENTRADA DA RENTABILIDADE';

    17:
      qrmov_entrada.FieldByName('MOV').AsString := 'INSTALAÇÃO/TRANSFÊNCIA';
    18:
      qrmov_entrada.FieldByName('MOV').AsString := 'GARANTIA DE SERVIÇO';
    19:
      qrmov_entrada.FieldByName('MOV').AsString := 'SAIDA PARA OFICINA';
    20:
      qrmov_entrada.FieldByName('MOV').AsString := 'DOAÇÃO';
    22:
      qrmov_entrada.FieldByName('MOV').AsString := 'DEVOLUCAO P/ FORNECEDOR';
    24:
      qrmov_entrada.FieldByName('MOV').AsString := 'GARANTIA P/ FORNECEDOR';
    99:
      qrmov_entrada.FieldByName('MOV').AsString := 'SAÍDA SEM BAIXAR ESTOQUE';

  end;

end;

procedure Tfrmproduto.qrmov_saidaCalcFields(DataSet: TDataSet);
begin

  case qrmov_saida.FieldByName('MOVIMENTO').asinteger of
    0:
      qrmov_saida.FieldByName('MOV').AsString := 'IMPLANTAÇÃO DE SALDO';
    // ENTRADA
    1:
      qrmov_saida.FieldByName('MOV').AsString := 'COMPRA'; // ENTRADA
    2:
      qrmov_saida.FieldByName('MOV').AsString := 'VENDA'; // SAIDA
    3:
      qrmov_saida.FieldByName('MOV').AsString := 'DEVOLUÇÃO DE COMPRA';
    // ENTRADA
    4:
      qrmov_saida.FieldByName('MOV').AsString := 'OUTRAS SAÍDAS'; // SAIDA
    5:
      qrmov_saida.FieldByName('MOV').AsString := 'BAIXA DE SERIAL'; // SAIDA
    6:
      qrmov_saida.FieldByName('MOV').AsString := 'EXCLUSÃO SERIAL'; // SAIDA
    7:
      qrmov_saida.FieldByName('MOV').AsString := 'DEVOLUÇÃO DE VENDA';
    // ENTRADA
    8:
      qrmov_saida.FieldByName('MOV').AsString := 'RETORNO SERIAL'; // ENTRADA
    9:
      qrmov_saida.FieldByName('MOV').AsString := 'VENDA EM O.S'; // SAIDA
    10:
      qrmov_saida.FieldByName('MOV').AsString := 'ACERTO ESTOQUE'; // ENTRADA
    11:
      qrmov_saida.FieldByName('MOV').AsString := 'BAIXA MATÉRIA-PRIMA'; // SAIDA
    12:
      qrmov_saida.FieldByName('MOV').AsString := 'ESTORNA MATÉRIA-PRIMA';
    // ENTRADA
    13:
      qrmov_saida.FieldByName('MOV').AsString := 'ENTRADA PRODUTO ACABADO';
    // ENTRADA
    14:
      qrmov_saida.FieldByName('MOV').AsString := 'ESTORNA PRODUTO ACABADO';
    // SAIDA
    15:
      qrmov_saida.FieldByName('MOV').AsString := 'BAIXA PARA RENTABILIDADE';
    // SAIDA
    16:
      qrmov_saida.FieldByName('MOV').AsString := 'ENTRADA DA RENTABILIDADE';
    // ENTRADA

    17:
      qrmov_saida.FieldByName('MOV').AsString := 'INSTALAÇÃO/TRANSFÊNCIA';
    // saida
    18:
      qrmov_saida.FieldByName('MOV').AsString := 'GARANTIA DE SERVIÇO'; // saida
    19:
      qrmov_saida.FieldByName('MOV').AsString := 'SAIDA PARA OFICINA'; // saida
    20:
      qrmov_saida.FieldByName('MOV').AsString := 'DOAÇÃO'; // saida
    99:
      qrmov_saida.FieldByName('MOV').AsString := 'SEM BAIXA DE ESTOQUE';
    // saida

  end;
end;

procedure Tfrmproduto.bfiltro_saidaClick(Sender: TObject);

var
  ve: real;
begin
  if combo_saida.ItemIndex = 0 then
  begin
    qrmov_saida.close;
    qrmov_saida.sql.clear;
    qrmov_saida.sql.add('select * from c000032 where codproduto = ''' +
      qrproduto.FieldByName('codigo').AsString + '''');
    qrmov_saida.sql.add('and data >= :datai and data <= :dataf');
    qrmov_saida.sql.add
      ('and movimento in (2,3,4,5,6,9,11,12,14,15,17,18,19,20,99)');
    qrmov_saida.Params.ParamByName('datai').AsDateTime := di_saida.date;
    qrmov_saida.Params.ParamByName('dataf').AsDateTime := df_saida.date;
    qrmov_saida.OPEN;
    qrmov_saida.first;
  end
  else
  begin
    qrmov_saida.close;
    qrmov_saida.sql.clear;
    qrmov_saida.sql.add('select * from c000032 where codproduto = ''' +
      qrproduto.FieldByName('codigo').AsString + '''');
    qrmov_saida.sql.add('and data >= :datai and data <= :dataf');
    qrmov_saida.sql.add('and movimento =' + copy(combo_saida.Text, 1, 2));
    qrmov_saida.Params.ParamByName('datai').AsDateTime := di_saida.date;
    qrmov_saida.Params.ParamByName('dataf').AsDateTime := df_saida.date;
    qrmov_saida.OPEN;
    qrmov_saida.first;
  end;
  ve := 0;
  while not qrmov_saida.Eof do
  begin
    ve := ve + qrmov_saida.FieldByName('qtde').asfloat;
    qrmov_saida.next;
  end;
  esaida.Caption := formatfloat('###,###,##0.000', ve);
end;

procedure Tfrmproduto.df_saidaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bfiltro_saida.SetFocus;
end;

procedure Tfrmproduto.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmproduto.DBEdit38KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    batu.SetFocus;
end;

procedure Tfrmproduto.qrproduto_movBeforePost(DataSet: TDataSet);
begin
  case qrproduto_mov.FieldByName('movimento').asinteger of
    0, 10:
      qrproduto_mov.FieldByName('movimento_estoque').asfloat :=
        qrproduto_mov.FieldByName('qtde').asfloat;
    1, 3, 7, 8, 12, 13, 16:
      qrproduto_mov.FieldByName('movimento_estoque').asfloat :=
        qrproduto_mov.FieldByName('qtde').asfloat;
    2, 4, 5, 6, 9, 11, 14, 15, 17, 18, 19, 20:
      qrproduto_mov.FieldByName('movimento_estoque').asfloat :=
        qrproduto_mov.FieldByName('qtde').asfloat * (-1);
  end;
end;

procedure Tfrmproduto.AdvGlowButton4Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir RENTABILIDADE', 4) then
  begin
    rtotal_rent.Value := rtotal_rent.Value - QRRENTABILIDADE.FieldByName
      ('rendimento').asfloat;
    QRRENTABILIDADE.DELETE;
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto.AdvGlowButton3Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir RENTABILIDADE', 4) then
  begin
    while QRRENTABILIDADE.RECORDCOUNT <> 0 do
      QRRENTABILIDADE.DELETE;
    rtotal_rent.Value := 0;
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto.QRRENTABILIDADEBeforeEdit(DataSet: TDataSet);
begin
  if (qrproduto.State <> dsinsert) then
    if (qrproduto.State <> dsedit) then
      if qrproduto.RECORDCOUNT > 0 then
        qrproduto.Edit
      else
        abort;
end;

procedure Tfrmproduto.QRRENTABILIDADEBeforeInsert(DataSet: TDataSet);
begin
  if (qrproduto.State <> dsinsert) then
    if (qrproduto.State <> dsedit) then
      if qrproduto.RECORDCOUNT > 0 then
        qrproduto.Edit
      else
        abort;
end;

procedure Tfrmproduto.qrcomposicao_produtoBeforeInsert(DataSet: TDataSet);
begin
  if (qrproduto.State <> dsinsert) then
    if (qrproduto.State <> dsedit) then
      if qrproduto.RECORDCOUNT > 0 then
        qrproduto.Edit
      else
        abort;
end;

procedure Tfrmproduto.qrcomposicao_produtoBeforeEdit(DataSet: TDataSet);
begin
  if (qrproduto.State <> dsinsert) then
    if (qrproduto.State <> dsedit) then
      if qrproduto.RECORDCOUNT > 0 then
        qrproduto.Edit
      else
        abort;
end;

procedure Tfrmproduto.check_rentabilidadeClick(Sender: TObject);
begin
  if check_rentabilidade.checked then
  begin
    QRRENTABILIDADE.close;
    QRRENTABILIDADE.sql.clear;
    QRRENTABILIDADE.sql.add('select * from c000078 where codproduto = ''' +
      qrproduto.FieldByName('codigo').AsString + '''');
    QRRENTABILIDADE.OPEN;
  end
  else
  begin
    QRRENTABILIDADE.close;
  end;
end;

procedure Tfrmproduto.QRRENTABILIDADEBeforeDelete(DataSet: TDataSet);
begin
  if (qrproduto.State <> dsinsert) then
    if (qrproduto.State <> dsedit) then
      if qrproduto.RECORDCOUNT > 0 then
        qrproduto.Edit
      else
        abort;
end;

procedure Tfrmproduto.brent_gravarClick(Sender: TObject);
begin
  if check_rentabilidade.checked then
  begin

    if RadioButton1.checked then
    begin
      QRRENTABILIDADE.insert;
      QRRENTABILIDADE.FieldByName('codproduto').AsString := elocproduto.Text;
      QRRENTABILIDADE.FieldByName('produto').AsString := eproduto.Text;
      QRRENTABILIDADE.FieldByName('rendimento').asfloat := erentabilidade.Value;
      QRRENTABILIDADE.FieldByName('codigo').AsString :=
        frmprincipal.codifica('000078');
      QRRENTABILIDADE.FieldByName('rentabilidade').AsString :=
        qrproduto.FieldByName('CODIGO').AsString;
      QRRENTABILIDADE.Post;
    end
    else
    begin
      QRRENTABILIDADE.insert;
      QRRENTABILIDADE.FieldByName('codproduto').AsString := '000000';
      QRRENTABILIDADE.FieldByName('produto').AsString := 'P E R D A';
      QRRENTABILIDADE.FieldByName('rendimento').asfloat := erentabilidade.Value;
      QRRENTABILIDADE.FieldByName('codigo').AsString :=
        frmprincipal.codifica('000078');
      QRRENTABILIDADE.FieldByName('rentabilidade').AsString :=
        qrproduto.FieldByName('CODIGO').AsString;
      QRRENTABILIDADE.Post;
    end;

    rtotal_rent.Value := rtotal_rent.Value + QRRENTABILIDADE.FieldByName
      ('rendimento').asfloat;

    RadioButton1.checked := True;
    elocproduto.SetFocus;
    elocproduto.Text := '';
    eproduto.Text := '';
    erentabilidade.Value := 0;

  end
  else
  begin
    application.messagebox
      ('Este produto não utiliza rentabilidade! Favor verificar!', 'Atenção',
      mb_ok + mb_iconerror);
    exit;
  end;

end;

procedure Tfrmproduto.elocprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    elocproduto.Text := frmprincipal.zerarcodigo(elocproduto.Text, 6);
    if elocproduto.Text <> '000000' then
    begin
      qrproduto_loc.close;
      qrproduto_loc.sql.clear;
      qrproduto_loc.sql.add('select * from c000025 where codigo = ''' +
        elocproduto.Text + '''');
      qrproduto_loc.OPEN;
      if qrproduto_loc.RECORDCOUNT > 0 then
      begin
        eproduto.Text := qrproduto_loc.FieldByName('produto').AsString;
        elocproduto.Text := qrproduto_loc.FieldByName('codigo').AsString;
        erentabilidade.SetFocus;
      end
      else
      begin
        application.messagebox('Produto não cadastrado!', 'Atenção',
          mb_ok + mb_iconerror);
        elocproduto.SetFocus;
        exit;
      end;
    end
    else
      elocprodutoButtonClick(frmproduto);

  end;
end;

procedure Tfrmproduto.elocprodutoButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  resultado_pesquisa2 := '';
  frmxloc_PRODUTO := tfrmxloc_PRODUTO.create(self);
  frmxloc_PRODUTO.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    elocproduto.Text := resultado_pesquisa1;
    eproduto.Text := resultado_pesquisa2;
    erentabilidade.SetFocus;
  end;

end;

procedure Tfrmproduto.erentabilidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    brent_gravar.SetFocus;
end;

procedure Tfrmproduto.RadioButton1Click(Sender: TObject);
begin
  elocproduto.Text := '';
  eproduto.Text := '';
  elocproduto.enabled := True;
  elocproduto.SetFocus;

end;

procedure Tfrmproduto.RadioButton2Click(Sender: TObject);
begin
  elocproduto.Text := '000000';
  eproduto.Text := 'P E R D A';
  elocproduto.enabled := false;
  erentabilidade.SetFocus;
end;

procedure Tfrmproduto.qrprodutoAfterCancel(DataSet: TDataSet);
begin
  pgravar.visible := false;
  PopupMenu := Pop1;
  gestoque.visible := false;
end;

procedure Tfrmproduto.qrprodutoAfterEdit(DataSet: TDataSet);
begin
  edicao_preco := false;

  pgravar.visible := True;
  gestoque.visible := false;
  PopupMenu := Pop2;

end;

procedure Tfrmproduto.qrprodutoAfterInsert(DataSet: TDataSet);
begin
  edicao_preco := false;

  pgravar.visible := True;
  gestoque.visible := True;
  PopupMenu := Pop2;
end;

procedure Tfrmproduto.qrprodutoAfterPost(DataSet: TDataSet);
begin

  pgravar.visible := false;
  PopupMenu := Pop1;
  gestoque.visible := false;
end;

procedure Tfrmproduto.PageView1Change(Sender: TObject);
begin
  DBEdit1Change(frmproduto);
  if FRMMODULO.qrconfig.FieldByName('USA_RENTABILIDADE').asinteger = 0 then
    // Rentabilidade
    if PageView1.ActivePageindex = 7 then
      PageView1.ActivePageindex := 0;
end;

procedure Tfrmproduto.DBEdit1Change(Sender: TObject);
var
  mes01, mes02, mes03, mes04, mes05, mes06, mes07, mes08, mes09, mes10, mes11,
    mes12: string;
begin
  try

    if PageView1.ActivePageindex = 8 then
    begin

      mes01 := copy(datetostr(date), 4, 7);
      mes02 := copy(datetostr(IncMonth(date, -1)), 4, 7);
      mes03 := copy(datetostr(IncMonth(date, -2)), 4, 7);
      mes04 := copy(datetostr(IncMonth(date, -3)), 4, 7);
      mes05 := copy(datetostr(IncMonth(date, -4)), 4, 7);
      mes06 := copy(datetostr(IncMonth(date, -5)), 4, 7);
      mes07 := copy(datetostr(IncMonth(date, -6)), 4, 7);
      mes08 := copy(datetostr(IncMonth(date, -7)), 4, 7);
      mes09 := copy(datetostr(IncMonth(date, -8)), 4, 7);
      mes10 := copy(datetostr(IncMonth(date, -9)), 4, 7);
      mes11 := copy(datetostr(IncMonth(date, -10)), 4, 7);
      mes12 := copy(datetostr(IncMonth(date, -11)), 4, 7);

      qrvenda_mes.close;
      qrvenda_mes.sql.clear;
      qrvenda_mes.sql.add('select sum(qtde) sum_0, ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data11 and data < :data10 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data10 and data < :data09 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data09 and data < :data08 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data08 and data < :data07 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data07 and data < :data06 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data06 and data < :data05 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data05 and data < :data04 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data04 and data < :data03 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data03 and data < :data02 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data02 and data < :data01 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data01 and data < :data00 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + ''') ' +
        'from c000032 where movimento in (2,9) and data >= :data12 and data < :data11 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''');

      qrvenda_mes.Params.ParamByName('data00').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, 1)), 4, 7));
      qrvenda_mes.Params.ParamByName('data01').AsDateTime :=
        strtodate('01/' + copy(datetostr(date), 4, 7));
      qrvenda_mes.Params.ParamByName('data02').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -1)), 4, 7));
      qrvenda_mes.Params.ParamByName('data03').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -2)), 4, 7));
      qrvenda_mes.Params.ParamByName('data04').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -3)), 4, 7));
      qrvenda_mes.Params.ParamByName('data05').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -4)), 4, 7));
      qrvenda_mes.Params.ParamByName('data06').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -5)), 4, 7));
      qrvenda_mes.Params.ParamByName('data07').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -6)), 4, 7));
      qrvenda_mes.Params.ParamByName('data08').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -7)), 4, 7));
      qrvenda_mes.Params.ParamByName('data09').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -8)), 4, 7));
      qrvenda_mes.Params.ParamByName('data10').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -9)), 4, 7));
      qrvenda_mes.Params.ParamByName('data11').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -10)), 4, 7));
      qrvenda_mes.Params.ParamByName('data12').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -11)), 4, 7));

      qrvenda_mes.OPEN;

      qrvenda_mesCOLUMN_0.DisplayLabel := mes12;
      qrvenda_mesColumn.DisplayLabel := mes11;
      qrvenda_mesColumn_1.DisplayLabel := mes10;
      qrvenda_mesColumn_2.DisplayLabel := mes09;
      qrvenda_mesColumn_3.DisplayLabel := mes08;
      qrvenda_mesColumn_4.DisplayLabel := mes07;
      qrvenda_mesColumn_5.DisplayLabel := mes06;
      qrvenda_mesColumn_6.DisplayLabel := mes05;
      qrvenda_mesColumn_7.DisplayLabel := mes04;
      qrvenda_mesColumn_8.DisplayLabel := mes03;
      qrvenda_mesColumn_9.DisplayLabel := mes02;
      qrvenda_mesColumn_10.DisplayLabel := mes01;

     { Series1.clear;
      Series1.AddY(qrvenda_mesCOLUMN_0.asfloat,
        qrvenda_mesCOLUMN_0.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn.asfloat,
        qrvenda_mesColumn.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_1.asfloat,
        qrvenda_mesColumn_1.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_2.asfloat,
        qrvenda_mesColumn_2.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_3.asfloat,
        qrvenda_mesColumn_3.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_4.asfloat,
        qrvenda_mesColumn_4.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_5.asfloat,
        qrvenda_mesColumn_5.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_6.asfloat,
        qrvenda_mesColumn_6.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_7.asfloat,
        qrvenda_mesColumn_7.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_8.asfloat,
        qrvenda_mesColumn_8.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_9.asfloat,
        qrvenda_mesColumn_9.DisplayLabel, clred);
      Series1.AddY(qrvenda_mesColumn_10.asfloat,
        qrvenda_mesColumn_10.DisplayLabel, clred);}

      qrvenda_mes.close;
      qrvenda_mes.sql.clear;
      qrvenda_mes.sql.add('select sum(qtde) sum_0, ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data11 and data < :data10 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data10 and data < :data09 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data09 and data < :data08 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data08 and data < :data07 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data07 and data < :data06 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data06 and data < :data05 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data05 and data < :data04 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data04 and data < :data03 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data03 and data < :data02 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data02 and data < :data01 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''), ' +
        '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data01 and data < :data00 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + ''') ' +
        'from c000032 where MOVIMENTO = 1 and data >= :data12 and data < :data11 and codproduto = '''
        + qrproduto.FieldByName('codigo').AsString + '''');

      qrvenda_mes.Params.ParamByName('data00').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, 1)), 4, 7));
      qrvenda_mes.Params.ParamByName('data01').AsDateTime :=
        strtodate('01/' + copy(datetostr(date), 4, 7));
      qrvenda_mes.Params.ParamByName('data02').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -1)), 4, 7));
      qrvenda_mes.Params.ParamByName('data03').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -2)), 4, 7));
      qrvenda_mes.Params.ParamByName('data04').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -3)), 4, 7));
      qrvenda_mes.Params.ParamByName('data05').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -4)), 4, 7));
      qrvenda_mes.Params.ParamByName('data06').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -5)), 4, 7));
      qrvenda_mes.Params.ParamByName('data07').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -6)), 4, 7));
      qrvenda_mes.Params.ParamByName('data08').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -7)), 4, 7));
      qrvenda_mes.Params.ParamByName('data09').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -8)), 4, 7));
      qrvenda_mes.Params.ParamByName('data10').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -9)), 4, 7));
      qrvenda_mes.Params.ParamByName('data11').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -10)), 4, 7));
      qrvenda_mes.Params.ParamByName('data12').AsDateTime :=
        strtodate('01/' + copy(datetostr(IncMonth(date, -11)), 4, 7));

      qrvenda_mes.OPEN;

      qrvenda_mesCOLUMN_0.DisplayLabel := mes12;
      qrvenda_mesColumn.DisplayLabel := mes11;
      qrvenda_mesColumn_1.DisplayLabel := mes10;
      qrvenda_mesColumn_2.DisplayLabel := mes09;
      qrvenda_mesColumn_3.DisplayLabel := mes08;
      qrvenda_mesColumn_4.DisplayLabel := mes07;
      qrvenda_mesColumn_5.DisplayLabel := mes06;
      qrvenda_mesColumn_6.DisplayLabel := mes05;
      qrvenda_mesColumn_7.DisplayLabel := mes04;
      qrvenda_mesColumn_8.DisplayLabel := mes03;
      qrvenda_mesColumn_9.DisplayLabel := mes02;
      qrvenda_mesColumn_10.DisplayLabel := mes01;

      {BarSeries1.clear;
      BarSeries1.AddY(qrvenda_mesCOLUMN_0.asfloat,
        qrvenda_mesCOLUMN_0.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn.asfloat,
        qrvenda_mesColumn.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_1.asfloat,
        qrvenda_mesColumn_1.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_2.asfloat,
        qrvenda_mesColumn_2.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_3.asfloat,
        qrvenda_mesColumn_3.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_4.asfloat,
        qrvenda_mesColumn_4.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_5.asfloat,
        qrvenda_mesColumn_5.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_6.asfloat,
        qrvenda_mesColumn_6.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_7.asfloat,
        qrvenda_mesColumn_7.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_8.asfloat,
        qrvenda_mesColumn_8.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_9.asfloat,
        qrvenda_mesColumn_9.DisplayLabel, CLBLUE);
      BarSeries1.AddY(qrvenda_mesColumn_10.asfloat,
        qrvenda_mesColumn_10.DisplayLabel, CLBLUE);}

    end;

    if PageView1.ActivePageindex = 0 then
    begin
      if PageView2.ActivePageindex = 0 then
      begin
        qrestoque.Connection := FRMMODULO.Conexao;
        qrestoque.close;
        qrestoque.sql.clear;
        qrestoque.sql.add('select * from c000100 where codproduto = ''' +
          qrproduto.FieldByName('codigo').AsString + '''');
        qrestoque.OPEN;
        if qrestoque.RECORDCOUNT > 0 then
        begin
          ldata_compra.Caption := qrestoque.FieldByName
            ('ultima_entrada').AsString;
          ldata_venda.Caption := qrestoque.FieldByName('ultima_saida').AsString;
          lnf.Caption := qrestoque.FieldByName('nota_fiscal').AsString;
          RINICIAL.Value := qrestoque.FieldByName('estoque_inicial').asfloat;
          rentrada.Value := qrestoque.FieldByName('entradas').asfloat;
          rsaida.Value := qrestoque.FieldByName('saidas').asfloat;
          restoque.Value := qrestoque.FieldByName('estoque_atual').asfloat;
        end
        else
        begin
          ldata_compra.Caption := '?';
          ldata_venda.Caption := '?';
          lnf.Caption := '?';
          RINICIAL.Value := 0;
          rentrada.Value := 0;
          rsaida.Value := 0;
          restoque.Value := 0;

        end;

      end;

      if PageView2.ActivePageindex = 1 then
      begin
        bfiltro_entradaClick(frmproduto);
      end;
      if PageView2.ActivePageindex = 2 then
      begin
        bfiltro_saidaClick(frmproduto);
      end;
    end;

    if PageView1.ActivePageindex = 1 then // preco
    begin
      if edicao_preco = false then
      begin

        ptampapreco.visible := True;

        { if nivel_usuario < 4 then
          begin
          application.messagebox('Seu nível não permite este acesso!',
          'Atenção', mb_ok + mb_iconwarning);
          PageView1.ActivePageindex := 0;
          exit;
          end; }

        qrpreco.close;
        qrpreco.sql.clear;
        qrpreco.sql.add('select * from c000026 where codproduto = ''' +
          qrproduto.FieldByName('codigo').AsString + '''');
        qrpreco.OPEN;

        if qrpreco.RECORDCOUNT = 0 then
        begin
          ptampapreco.visible := True;
          if (qrproduto.State = dsedit) or (qrproduto.State = dsinsert) then
            qrpreco.Edit;
        end
        else
        begin
          novo_preco_venda := qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat;
          ptampapreco.visible := false;
        end;

      end;
    end;

    if PageView1.ActivePageindex = 2 then // grade
    begin
      FRMMODULO.qrgrade_produto.close;
      FRMMODULO.qrgrade_produto.sql.clear;
      FRMMODULO.qrgrade_produto.sql.add
        ('select * from c000021 where codproduto = ''' +
        qrproduto.FieldByName('codigo').AsString + ''' order by codigo');
      FRMMODULO.qrgrade_produto.OPEN;
    end;

    if PageView1.ActivePageindex = 3 then // seriais
    begin
      FRMMODULO.qrserial_produto.close;
      FRMMODULO.qrserial_produto.sql.clear;
      FRMMODULO.qrserial_produto.sql.add
        ('select * from c000022 where codproduto = ''' +
        qrproduto.FieldByName('codigo').AsString +
        ''' and situacao <> 4 order by codigo');
      FRMMODULO.qrserial_produto.OPEN;
    end;

    if PageView1.ActivePageindex = 4 then // composicao
    begin
      qrcomposicao_produto.close;
      qrcomposicao_produto.sql.clear;
      qrcomposicao_produto.sql.add('select * from c000027 where produto = ''' +
        qrproduto.FieldByName('codigo').AsString + ''' order by codigo');
      qrcomposicao_produto.OPEN;

      qrproduto_loc.OPEN;

    end;
    if PageView1.ActivePageindex = 5 then // informacao nutricional
    begin
      FRMMODULO.qrinfnutricional_produto.close;
      FRMMODULO.qrinfnutricional_produto.sql.clear;
      FRMMODULO.qrinfnutricional_produto.sql.add
        ('select * from c000028 where codproduto = ''' +
        qrproduto.FieldByName('codigo').AsString + ''' order by codigo');
      FRMMODULO.qrinfnutricional_produto.OPEN;

      if FRMMODULO.qrinfnutricional_produto.RECORDCOUNT = 0 then
      begin
        ptampainfnutricional.visible := True;
      end
      else
      begin
        ptampainfnutricional.visible := false;
      end;
    end;

    if PageView1.ActivePageindex = 6 then // FOTO
    begin
      if qrproduto.FieldByName('FOTO').AsString <> '' then
      begin
        Image2.Picture.LoadFromFile(qrproduto.FieldByName('FOTO').AsString);
      end
      else
      begin
        Image2.Picture := nil;
      end;
    end;

    if PageView1.ActivePageindex = 7 then // rentabilidade
    begin
      rtotal_rent.Value := 0;
      if qrproduto.FieldByName('usa_rentabilidade').asinteger = 1 then
      begin
        QRRENTABILIDADE.close;
        QRRENTABILIDADE.sql.clear;
        QRRENTABILIDADE.sql.add('select * from c000078 where RENTABILIDADE = '''
          + qrproduto.FieldByName('codigo').AsString + '''');
        QRRENTABILIDADE.OPEN;

        QRRENTABILIDADE.first;
        while not QRRENTABILIDADE.Eof do
        begin
          rtotal_rent.Value := rtotal_rent.Value + QRRENTABILIDADE.FieldByName
            ('rendimento').asfloat;
          QRRENTABILIDADE.next;
        end;
      end
      else
        QRRENTABILIDADE.close;
    end;

  except

  end;

end;

procedure Tfrmproduto.qrprecoBeforeInsert(DataSet: TDataSet);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsedit then
      qrproduto.Edit;
end;

procedure Tfrmproduto.qrprecoBeforeEdit(DataSet: TDataSet);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsedit then
      qrproduto.Edit;
end;

procedure Tfrmproduto.batuClick(Sender: TObject);
begin

  if (qrproduto.State = dsedit) or (qrproduto.State = dsinsert) then
  begin

    qrproduto.FieldByName('precovenda').asfloat :=
      qrpreco.FieldByName('novo_preco_venda').asfloat;
    qrproduto.FieldByName('precovenda_novo').asfloat :=
      qrpreco.FieldByName('novo_preco_venda').asfloat;

    if qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat <> novo_preco_custo then
    begin
      qrproduto.FieldByName('precocusto').asfloat :=
        qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat;
      qrproduto.FieldByName('precovenda_novo').asfloat :=
        qrpreco.FieldByName('novo_preco_venda').asfloat;
    end;

  end
  else
    application.messagebox
      ('Produto Não Esta em Edição, Verifique! Impossível alterar preços!',
      'Atenção', mb_ok + mb_iconwarning);

end;

procedure Tfrmproduto.eserialChange(Sender: TObject);
begin
  FRMMODULO.qrserial_produto.Locate('serial', eserial.Text,
    [loCaseInsensitive]);
end;

procedure Tfrmproduto.ConsultaSerial1Click(Sender: TObject);
begin
  frmproduto_consultaserial := tfrmproduto_consultaserial.create(self);
  frmproduto_consultaserial.showmodal;
end;

procedure Tfrmproduto.cySpeedButton10Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 0;
end;

procedure Tfrmproduto.cySpeedButton11Click(Sender: TObject);
begin
   PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 2;
end;

procedure Tfrmproduto.cySpeedButton12Click(Sender: TObject);
begin
   PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 1;
end;

procedure Tfrmproduto.cySpeedButton13Click(Sender: TObject);
begin
   PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 3;
end;

procedure Tfrmproduto.cySpeedButton1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  PageView2.ActivePageIndex := 0;
end;

procedure Tfrmproduto.cySpeedButton2Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmproduto.cySpeedButton3Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmproduto.cySpeedButton4Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 3;
end;

procedure Tfrmproduto.cySpeedButton5Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 4;
end;

procedure Tfrmproduto.cySpeedButton6Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 5;
end;

procedure Tfrmproduto.cySpeedButton7Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 6;
end;

procedure Tfrmproduto.cySpeedButton8Click(Sender: TObject);
begin
 PageView1.ActivePageIndex := 7;
end;

procedure Tfrmproduto.cySpeedButton9Click(Sender: TObject);
begin
   PageView1.ActivePageIndex := 8;
end;

procedure Tfrmproduto.MovimentarEstoque1Click(Sender: TObject);
var
  recor: string;
begin
  if frmprincipal.autentica('Movimentar Estoque', 4) then
  begin
    recor := qrproduto.FieldByName('codigo').AsString;
    frmproduto_movimentar := tfrmproduto_movimentar.create(self);
    frmproduto_movimentar.LCODIGO.Caption :=
      qrproduto.FieldByName('codigo').AsString;
    frmproduto_movimentar.Lproduto.Caption :=
      qrproduto.FieldByName('produto').AsString;
    frmproduto_movimentar.Lestoque.Caption := formatfloat('###,###,##0.000',
      restoque.Value);
    frmproduto_movimentar.rqtde.Value := 1;
    frmproduto_movimentar.runitario.Value :=
      qrproduto.FieldByName('precovenda').asfloat;
    frmproduto_movimentar.rtotal.Value :=
      qrproduto.FieldByName('precovenda').asfloat;
    frmproduto_movimentar.lunidade.Caption :=
      qrproduto.FieldByName('UNIDADE').AsString;
    frmproduto_movimentar.showmodal;
    frmproduto.DBEdit1Change(frmproduto);
  end;

end;

procedure Tfrmproduto.qrprodutoBeforePost(DataSet: TDataSet);
var
  estoque: real;
begin
  if qrproduto.FieldByName('codigo').AsString = '' then
    abort;

  qrproduto.FieldByName('codigo').AsString :=
    frmprincipal.zerarcodigo(qrproduto.FieldByName('codigo').AsString, 6);

  if PRECO_VENDA_ANTERIORX <> qrproduto.FieldByName('PRECOVENDA').asfloat then
    qrproduto.FieldByName('DATA_REMARCACAO_VENDA').AsDateTime := date;

  if qrproduto.FieldByName('usa_grade').asinteger = 1 then
  begin

    estoque := 0;

    FRMMODULO.qrgrade_produto.close;
    FRMMODULO.qrgrade_produto.sql.clear;
    FRMMODULO.qrgrade_produto.sql.add
      ('select * from c000021 where codproduto = ''' + qrproduto.FieldByName
      ('codigo').AsString + ''' order by codigo');
    FRMMODULO.qrgrade_produto.OPEN;

    FRMMODULO.qrgrade_produto.first;
    while not FRMMODULO.qrgrade_produto.Eof do
    begin
      estoque := estoque + FRMMODULO.qrgrade_produto.FieldByName
        ('estoque').asfloat;
      FRMMODULO.qrgrade_produto.next;
    end;

    if estoque <> restoque.Value then
    begin
      if estoque < restoque.Value then
      begin
        if application.messagebox
          ('A somatório do Estoque da Grade está MENOR que o Estoque atual do Produto! Deseja corrigir?',
          'Atenção!', mb_yesno + mb_iconwarning) = idyes then
        begin
          abort;
        end;
      end;

      if estoque > restoque.Value then
      begin
        if application.messagebox
          ('A somatório do Estoque da Grade está MAIOR que o Estoque atual do Produto! Deseja corrigir?',
          'Atenção!', mb_yesno + mb_iconwarning) = idyes then
        begin
          abort;
        end;
      end;

    end;

  end;

  // complus
  if (qrproduto.State = dsinsert) and (cd_pro = '1') then
  begin

    pexporta.visible := True;
    application.ProcessMessages;

    FRMMODULO.qradic.close;
    FRMMODULO.qradic.sql.clear;
    FRMMODULO.qradic.sql.add('insert into c000025');
    FRMMODULO.qradic.sql.add('(codigo,produto,codbarra,data_cadastro,unidade,');
    FRMMODULO.qradic.sql.add('codgrupo,codsubgrupo,codfornecedor,codmarca,');
    FRMMODULO.qradic.sql.add
      ('precocusto,precovenda,estoque,LOCALICAZAO,comissao,cst,aliquota,tipo,situacao)');
    FRMMODULO.qradic.sql.add('values');
    FRMMODULO.qradic.sql.add
      ('(:xcodigo,:xproduto,:xcodbarra,:xdata_cadastro,:xunidade,');
    FRMMODULO.qradic.sql.add
      (':xcodgrupo,:xcodsubgrupo,:xcodfornecedor,:xcodmarca,');
    FRMMODULO.qradic.sql.add
      (':xprecocusto,:xprecovenda,:xestoque,:xLOCALICAZAO,:xcomissao,:xcst,:xaliquota,:xtipo,:xsituacao)');
    FRMMODULO.qradic.Params.ParamByName('xcodigo').AsString :=
      qrproduto.FieldByName('codigo').AsString;
    FRMMODULO.qradic.Params.ParamByName('xproduto').AsString :=
      qrproduto.FieldByName('produto').AsString;
    FRMMODULO.qradic.Params.ParamByName('xCODBARRA').AsString :=
      qrproduto.FieldByName('CODBARRA').AsString;
    FRMMODULO.qradic.Params.ParamByName('xDATA_CADASTRO').AsDateTime :=
      qrproduto.FieldByName('DATA_CADASTRO').AsDateTime;
    FRMMODULO.qradic.Params.ParamByName('xUNIDADE').AsString :=
      qrproduto.FieldByName('UNIDADE').AsString;
    FRMMODULO.qradic.Params.ParamByName('xCODGRUPO').AsString :=
      qrproduto.FieldByName('CODGRUPO').AsString;
    FRMMODULO.qradic.Params.ParamByName('xCODSUBGRUPO').AsString :=
      qrproduto.FieldByName('CODSUBGRUPO').AsString;
    FRMMODULO.qradic.Params.ParamByName('xCODFORNECEDOR').AsString :=
      qrproduto.FieldByName('CODFORNECEDOR').AsString;
    FRMMODULO.qradic.Params.ParamByName('xCODMARCA').AsString :=
      qrproduto.FieldByName('CODMARCA').AsString;
    FRMMODULO.qradic.Params.ParamByName('xPRECOCUSTO').asfloat :=
      qrproduto.FieldByName('PRECOCUSTO').asfloat;
    FRMMODULO.qradic.Params.ParamByName('xPRECOVENDA').asfloat :=
      qrproduto.FieldByName('PRECOVENDA').asfloat;
    FRMMODULO.qradic.Params.ParamByName('xESTOQUE').asfloat := 0;
    FRMMODULO.qradic.Params.ParamByName('xLOCALICAZAO').AsString :=
      qrproduto.FieldByName('LOCALICAZAO').AsString;
    FRMMODULO.qradic.Params.ParamByName('xCOMISSAO').asfloat :=
      qrproduto.FieldByName('COMISSAO').asfloat;
    FRMMODULO.qradic.Params.ParamByName('xCST').AsString :=
      qrproduto.FieldByName('CST').AsString;
    FRMMODULO.qradic.Params.ParamByName('xALIQUOTA').asfloat :=
      qrproduto.FieldByName('ALIQUOTA').asfloat;
    FRMMODULO.qradic.Params.ParamByName('xTIPO').AsString := 'VENDAS';
    FRMMODULO.qradic.Params.ParamByName('xsituacao').asinteger :=
      qrproduto.FieldByName('situacao').asinteger;
    FRMMODULO.qradic.execsql;

    FRMMODULO.conexao_adic.commit;

    FRMMODULO.qradic.close;
    FRMMODULO.qradic.sql.clear;
    FRMMODULO.qradic.sql.add('insert into c000032');
    FRMMODULO.qradic.sql.add('(codigo,codnota,serial,numeronota,');
    FRMMODULO.qradic.sql.add('codproduto,qtde,unitario,movimento_estoque,');
    FRMMODULO.qradic.sql.add('total,unidade,aliquota,');
    FRMMODULO.qradic.sql.add('cupom_item,cupom_numero,cupom_modelo,');
    FRMMODULO.qradic.sql.add
      ('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst)');
    FRMMODULO.qradic.sql.add('values');
    FRMMODULO.qradic.sql.add('(''' + frmprincipal.codifica('000032') +
      ''',''000000'',''000000'',''000000'',');
    FRMMODULO.qradic.sql.add('''' + qrproduto.FieldByName('codigo').AsString +
      ''',:QTDE,:UNITARIO,:movimento_estoque,');
    FRMMODULO.qradic.sql.add(':TOTAL,''' + qrproduto.FieldByName('unidade')
      .AsString + ''',:ALIQUOTA,');
    FRMMODULO.qradic.sql.add('''001'',''000000'','''',');
    FRMMODULO.qradic.sql.add
      ('''000000'',''000000'',''000000'',''S/VEND'',0,:datax,''000'')');
    FRMMODULO.qradic.Params.ParamByName('datax').AsDateTime :=
      qrproduto.FieldByName('DATA_CADASTRO').AsDateTime;
    FRMMODULO.qradic.Params.ParamByName('UNITARIO').asfloat :=
      qrproduto.FieldByName('precocusto').asfloat;
    FRMMODULO.qradic.Params.ParamByName('QTDE').asfloat := 0;
    FRMMODULO.qradic.Params.ParamByName('TOTAL').asfloat := 0;
    FRMMODULO.qradic.Params.ParamByName('movimento_estoque').asfloat := 0;
    FRMMODULO.qradic.Params.ParamByName('ALIQUOTA').asfloat := 0;
    FRMMODULO.qradic.execsql;

    FRMMODULO.conexao_adic.commit;

    sleep(1000);
    pexporta.visible := false;
  end;
  if (qrproduto.State = dsedit) and (cd_pro = '1') then
  begin
    FRMMODULO.qradic.close;
    FRMMODULO.qradic.sql.clear;
    FRMMODULO.qradic.sql.add('update c000025 set');
    FRMMODULO.qradic.sql.add('produto       = :xproduto,');
    FRMMODULO.qradic.sql.add('codbarra      = :xcodbarra,');
    FRMMODULO.qradic.sql.add('data_cadastro = :xdata_cadastro,');
    FRMMODULO.qradic.sql.add('unidade       = :xunidade,');
    FRMMODULO.qradic.sql.add('codgrupo      = :xcodgrupo,');
    FRMMODULO.qradic.sql.add('codsubgrupo      = :xcodsubgrupo,');
    FRMMODULO.qradic.sql.add('codfornecedor = :xcodfornecedor,');
    FRMMODULO.qradic.sql.add('codmarca      = :xcodmarca,');
    FRMMODULO.qradic.sql.add('precocusto    = :xprecocusto,');
    FRMMODULO.qradic.sql.add('precovenda    = :xprecovenda,');
    FRMMODULO.qradic.sql.add('LOCALICAZAO   = :xLOCALICAZAO,');
    FRMMODULO.qradic.sql.add('comissao      = :xcomissao,');
    FRMMODULO.qradic.sql.add('cst           = :xcst,');
    FRMMODULO.qradic.sql.add('aliquota      = :xaliquota');
    FRMMODULO.qradic.sql.add('where codigo = ''' + qrproduto.FieldByName
      ('codigo').AsString + '''');

    FRMMODULO.qradic.Params.ParamByName('xproduto').AsString :=
      qrproduto.FieldByName('produto').AsString;
    FRMMODULO.qradic.Params.ParamByName('xCODBARRA').AsString :=
      qrproduto.FieldByName('CODBARRA').AsString;
    FRMMODULO.qradic.Params.ParamByName('xDATA_CADASTRO').AsDateTime :=
      qrproduto.FieldByName('DATA_CADASTRO').AsDateTime;
    FRMMODULO.qradic.Params.ParamByName('xUNIDADE').AsString :=
      qrproduto.FieldByName('UNIDADE').AsString;
    FRMMODULO.qradic.Params.ParamByName('xCODGRUPO').AsString :=
      qrproduto.FieldByName('CODGRUPO').AsString;
    FRMMODULO.qradic.Params.ParamByName('xCODSUBGRUPO').AsString :=
      qrproduto.FieldByName('CODSUBGRUPO').AsString;
    FRMMODULO.qradic.Params.ParamByName('xCODFORNECEDOR').AsString :=
      qrproduto.FieldByName('CODFORNECEDOR').AsString;
    FRMMODULO.qradic.Params.ParamByName('xCODMARCA').AsString :=
      qrproduto.FieldByName('CODMARCA').AsString;
    FRMMODULO.qradic.Params.ParamByName('xPRECOCUSTO').asfloat :=
      qrproduto.FieldByName('PRECOCUSTO').asfloat;
    FRMMODULO.qradic.Params.ParamByName('xPRECOVENDA').asfloat :=
      qrproduto.FieldByName('PRECOVENDA').asfloat;
    FRMMODULO.qradic.Params.ParamByName('xLOCALICAZAO').AsString :=
      qrproduto.FieldByName('LOCALICAZAO').AsString;
    FRMMODULO.qradic.Params.ParamByName('xCOMISSAO').asfloat :=
      qrproduto.FieldByName('COMISSAO').asfloat;
    FRMMODULO.qradic.Params.ParamByName('xCST').AsString :=
      qrproduto.FieldByName('CST').AsString;
    FRMMODULO.qradic.Params.ParamByName('xALIQUOTA').asfloat :=
      qrproduto.FieldByName('ALIQUOTA').asfloat;

    FRMMODULO.qradic.execsql;
    FRMMODULO.conexao_adic.commit;
  end;

end;

procedure Tfrmproduto.qrprodutoBeforeEdit(DataSet: TDataSet);
begin
  PRECO_VENDA_ANTERIORX := qrproduto.FieldByName('PRECOVENDA').asfloat;
  if qrproduto.FieldByName('codigo').AsString = '' then
    abort;
end;

procedure Tfrmproduto.bpreco_custoClick(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
  begin
    // total dos custos
    qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat :=
      qrpreco.FieldByName('ICMS_SAIDA_P').asfloat + qrpreco.FieldByName('PIS_P')
      .asfloat + qrpreco.FieldByName('COFINS_P').asfloat +
      qrpreco.FieldByName('CONTRIBUICAO_SOCIAL_P').asfloat +
      qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat +
      qrpreco.FieldByName('COMISSAO_P').asfloat;

    // preco de venda
    qrpreco.FieldByName('PRECO_VENDA').asfloat :=
      qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat /
      ((100 - (qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat +
      qrpreco.FieldByName('LUCRO_P').asfloat)) / 100);

    qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat :=
      qrpreco.FieldByName('PRECO_VENDA').asfloat;

    qrpreco.FieldByName('ICMS_SAIDA').asfloat :=
      qrpreco.FieldByName('PRECO_VENDA').asfloat * qrpreco.FieldByName
      ('ICMS_SAIDA_P').asfloat / 100;

    qrpreco.FieldByName('PIS').asfloat := qrpreco.FieldByName('PRECO_VENDA')
      .asfloat * qrpreco.FieldByName('PIS_P').asfloat / 100;

    qrpreco.FieldByName('COFINS').asfloat := qrpreco.FieldByName('PRECO_VENDA')
      .asfloat * qrpreco.FieldByName('COFINS_P').asfloat / 100;

    qrpreco.FieldByName('CONTRIBUICAO_SOCIAL').asfloat :=
      qrpreco.FieldByName('PRECO_VENDA').asfloat * qrpreco.FieldByName
      ('CONTRIBUICAO_SOCIAL_P').asfloat / 100;

    qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat :=
      qrpreco.FieldByName('PRECO_VENDA').asfloat * qrpreco.FieldByName
      ('CUSTO_OPERACIONAL_P').asfloat / 100;

    qrpreco.FieldByName('COMISSAO').asfloat :=
      qrpreco.FieldByName('PRECO_VENDA').asfloat * qrpreco.FieldByName
      ('COMISSAO_P').asfloat / 100;

    qrpreco.FieldByName('TOTAL_CUSTO').asfloat :=
      qrpreco.FieldByName('PRECO_VENDA').asfloat * qrpreco.FieldByName
      ('TOTAL_CUSTO_P').asfloat / 100;

    qrpreco.FieldByName('LUCRO').asfloat := qrpreco.FieldByName('PRECO_VENDA')
      .asfloat * qrpreco.FieldByName('LUCRO_P').asfloat / 100;
  end;

end;

procedure Tfrmproduto.bpreco_vendaClick(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
  begin
    // custo da compra
    qrpreco.FieldByName('CUSTO_COMPRA').asfloat :=
      (qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat +
      qrpreco.FieldByName('FRETE').asfloat + qrpreco.FieldByName('SEGURO')
      .asfloat + qrpreco.FieldByName('OUTRAS_DESPESAS').asfloat +
      qrpreco.FieldByName('IPI').asfloat) -
      (qrpreco.FieldByName('ICMS_ENTRADA').asfloat +
      qrpreco.FieldByName('DESCONTO').asfloat);

    qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat :=
      qrpreco.FieldByName('CUSTO_COMPRA').asfloat;

    // total dos custos  em %
    qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat :=
      qrpreco.FieldByName('ICMS_SAIDA_P').asfloat + qrpreco.FieldByName('PIS_P')
      .asfloat + qrpreco.FieldByName('COFINS_P').asfloat +
      qrpreco.FieldByName('CONTRIBUICAO_SOCIAL_P').asfloat +
      qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat +
      qrpreco.FieldByName('COMISSAO_P').asfloat;

    // total dos custos  em R$
    qrpreco.FieldByName('TOTAL_CUSTO').asfloat :=
      qrpreco.FieldByName('ICMS_SAIDA').asfloat + qrpreco.FieldByName('PIS')
      .asfloat + qrpreco.FieldByName('COFINS').asfloat +
      qrpreco.FieldByName('CONTRIBUICAO_SOCIAL').asfloat +
      qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat +
      qrpreco.FieldByName('COMISSAO').asfloat;

    if ((100 - (qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat +
      qrpreco.FieldByName('LUCRO_P').asfloat)) / 100) > 0 then
    begin
      qrpreco.FieldByName('PRECO_VENDA').asfloat :=
        qrpreco.FieldByName('CUSTO_COMPRA').asfloat +
        qrpreco.FieldByName('LUCRO').asfloat + qrpreco.FieldByName
        ('TOTAL_CUSTO').asfloat;

    end;

    qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat :=
      qrpreco.FieldByName('PRECO_VENDA').asfloat;

  end;
end;

procedure Tfrmproduto.bnovopreco_vendaClick(Sender: TObject);
var
  vindice: double;

begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
  begin
    // preco de venda
    if qrpreco.FieldByName('CUSTO_COMPRA').Value = null then
      qrpreco.FieldByName('CUSTO_COMPRA').asfloat := 0;
    if qrpreco.FieldByName('NOVO_PRECO_VENDA').Value = null then
      qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat := 0;

    if qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat > 0 then
      vindice := qrpreco.FieldByName('CUSTO_COMPRA').asfloat /
        qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat
    else
      vindice := 0;

    qrpreco.FieldByName('LUCRO_P').asfloat :=
      100 - ((vindice * 100) + qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat);
    bpreco_vendaClick(frmproduto);
  end;

end;

procedure Tfrmproduto.bcalcula_precocustoClick(Sender: TObject);
begin

  qrpreco.Edit;

  if (qrpreco.State = dsinsert) or (qrpreco.State = dsedit) then
  begin

    (* **************************** ICMS DE ENTRADA *************************** *)

    qrpreco.FieldByName('total_custo_p').asfloat :=
      qrpreco.FieldByName('icms_saida_p').asfloat +
      qrpreco.FieldByName('custo_operacional_p').asfloat +
      qrpreco.FieldByName('OUTROS_IMPOSTOS_p').asfloat +
      qrpreco.FieldByName('comissao_p').asfloat + qrpreco.FieldByName('lucro_p')
      .asfloat - qrpreco.FieldByName('icms_entrada_p').asfloat;

    if qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat <> 0 then
      if 1 - (qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat / 100) <> 0 then
      begin
        qrpreco.FieldByName('preco_venda').asfloat :=
          qrpreco.FieldByName('CUSTO_COMPRA').asfloat /
          (1 - (qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat / 100));
      end;

    if qrpreco.FieldByName('icms_entrada_p').asfloat <> 0 then
    begin

      qrpreco.FieldByName('icms_entrada').asfloat :=
        qrpreco.FieldByName('CUSTO_COMPRA').asfloat *
        qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat / 100;

    end;
    if qrpreco.FieldByName('icms_saida_p').asfloat <> 0 then
    begin
      qrpreco.FieldByName('icms_saida').asfloat :=
        qrpreco.FieldByName('preco_venda').asfloat *
        qrpreco.FieldByName('ICMS_saida_P').asfloat / 100;
    end;
    if qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat <> 0 then
    begin
      qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat :=
        qrpreco.FieldByName('preco_venda').asfloat *
        qrpreco.FieldByName('CUSTO_OPERACIONAL_p').asfloat / 100;
    end;
    if qrpreco.FieldByName('OUTROS_IMPOSTOS_P').asfloat <> 0 then
    begin
      qrpreco.FieldByName('outros_impostos').asfloat :=
        qrpreco.FieldByName('preco_venda').asfloat *
        qrpreco.FieldByName('outros_impostos_p').asfloat / 100;
    end;

    if qrpreco.FieldByName('comissao_P').asfloat <> 0 then
    begin
      qrpreco.FieldByName('comissao').asfloat :=
        qrpreco.FieldByName('preco_venda').asfloat *
        qrpreco.FieldByName('comissao_p').asfloat / 100;
    end;
    if qrpreco.FieldByName('lucro_P').asfloat <> 0 then
    begin
      qrpreco.FieldByName('lucro').asfloat := qrpreco.FieldByName('preco_venda')
        .asfloat * qrpreco.FieldByName('lucro_p').asfloat / 100;
    end;

    qrpreco.FieldByName('total_custo').asfloat :=
      qrpreco.FieldByName('icms_saida').asfloat + qrpreco.FieldByName
      ('custo_operacional').asfloat + qrpreco.FieldByName('OUTROS_IMPOSTOS')
      .asfloat + qrpreco.FieldByName('comissao').asfloat +
      qrpreco.FieldByName('lucro').asfloat - qrpreco.FieldByName
      ('icms_entrada').asfloat;

    qrpreco.FieldByName('novo_preco_venda').asfloat :=
      qrpreco.FieldByName('preco_venda').asfloat;

    qrproduto.FieldByName('precovenda').asfloat :=
      qrpreco.FieldByName('preco_venda').asfloat;

    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      qrproduto.FieldByName('precovenda_novo').asfloat :=
        qrpreco.FieldByName('preco_venda').asfloat;

      qrproduto.FieldByName('precocusto').asfloat :=
        qrpreco.FieldByName('custo_compra').asfloat;
    end;

  end;
  preco_custo_anterior := qrproduto.FieldByName('precocusto').asfloat;

end;

procedure Tfrmproduto.bcalcula_precovendaClick(Sender: TObject);
begin
  if (qrpreco.State = dsinsert) or (qrpreco.State = dsedit) then
  begin

    if qrpreco.FieldByName('lucro_P').asfloat <> 0 then
    begin
      qrpreco.FieldByName('lucro').asfloat :=
        qrpreco.FieldByName('novo_preco_venda').asfloat *
        qrpreco.FieldByName('lucro_p').asfloat / 100;
    end;

    qrpreco.FieldByName('total_custo').asfloat :=
      qrpreco.FieldByName('icms_saida').asfloat + qrpreco.FieldByName
      ('custo_operacional').asfloat + qrpreco.FieldByName('OUTROS_IMPOSTOS')
      .asfloat + qrpreco.FieldByName('comissao').asfloat +
      qrpreco.FieldByName('lucro').asfloat - qrpreco.FieldByName
      ('icms_entrada').asfloat;

    qrpreco.FieldByName('total_custo_p').asfloat :=
      qrpreco.FieldByName('icms_saida_p').asfloat +
      qrpreco.FieldByName('custo_operacional_p').asfloat +
      qrpreco.FieldByName('OUTROS_IMPOSTOS_p').asfloat +
      qrpreco.FieldByName('comissao_p').asfloat + qrpreco.FieldByName('lucro_p')
      .asfloat - qrpreco.FieldByName('icms_entrada_p').asfloat;

    (* **************************** ICMS DE ENTRADA *************************** *)

    qrpreco.FieldByName('total_custo_p').asfloat :=
      qrpreco.FieldByName('icms_saida_p').asfloat +
      qrpreco.FieldByName('custo_operacional_p').asfloat +
      qrpreco.FieldByName('OUTROS_IMPOSTOS_p').asfloat +
      qrpreco.FieldByName('comissao_p').asfloat + qrpreco.FieldByName('lucro_p')
      .asfloat - qrpreco.FieldByName('icms_entrada_p').asfloat;

    if qrpreco.FieldByName('icms_entrada_p').asfloat <> 0 then
    begin
      qrpreco.FieldByName('icms_entrada').asfloat :=
        qrpreco.FieldByName('CUSTO_COMPRA').asfloat *
        qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat / 100;
    end;
    if qrpreco.FieldByName('icms_saida_p').asfloat <> 0 then
    begin
      qrpreco.FieldByName('icms_saida').asfloat :=
        qrpreco.FieldByName('novo_preco_venda').asfloat *
        qrpreco.FieldByName('ICMS_saida_P').asfloat / 100;
    end;
    if qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat <> 0 then
    begin
      qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat :=
        qrpreco.FieldByName('novo_preco_venda').asfloat *
        qrpreco.FieldByName('CUSTO_OPERACIONAL_p').asfloat / 100;
    end;
    if qrpreco.FieldByName('OUTROS_IMPOSTOS_P').asfloat <> 0 then
    begin
      qrpreco.FieldByName('outros_impostos').asfloat :=
        qrpreco.FieldByName('novo_preco_venda').asfloat *
        qrpreco.FieldByName('outros_impostos_p').asfloat / 100;
    end;

    if qrpreco.FieldByName('comissao_P').asfloat <> 0 then
    begin
      qrpreco.FieldByName('comissao').asfloat :=
        qrpreco.FieldByName('novo_preco_venda').asfloat *
        qrpreco.FieldByName('comissao_p').asfloat / 100;
    end;

    qrpreco.FieldByName('total_custo').asfloat :=
      qrpreco.FieldByName('icms_saida').asfloat + qrpreco.FieldByName
      ('custo_operacional').asfloat + qrpreco.FieldByName('OUTROS_IMPOSTOS')
      .asfloat + qrpreco.FieldByName('comissao').asfloat +
      qrpreco.FieldByName('lucro').asfloat - qrpreco.FieldByName
      ('icms_entrada').asfloat;

    qrpreco.FieldByName('preco_venda').asfloat :=
      qrpreco.FieldByName('novo_preco_venda').asfloat;

  end;

  qrproduto.FieldByName('precovenda').asfloat :=
    qrpreco.FieldByName('novo_preco_venda').asfloat;

  qrproduto.FieldByName('precovenda_novo').asfloat :=
    qrpreco.FieldByName('novo_preco_venda').asfloat;
  qrproduto.FieldByName('precocusto').asfloat :=
    qrpreco.FieldByName('custo_compra').asfloat;

end;

procedure Tfrmproduto.batualiza_estoqueClick(Sender: TObject);
var
  vrecno: integer;
  vestoque, vestoque_anterior: double;
begin

  {

    vrecno := frmmodulo.qrproduto.RecNo;
    vestoque_anterior := frmmodulo.qrprodutoESTOQUE.AsFloat;
    vestoque := 0;


    qrPRODUTO.close;
    qrproduto.sql.clear;
    qrproduto.sql.Add('select * from c000025 where codigo = '''+resultado_pesquisa1+'''');
    qrproduto.open;

    QRENTRADA.close;
    QRENTRADA.sql.clear;
    QRENTRADA.sql.add('select sum(qtde) ENTRADA FROM C000032 WHERE CODPRODUTO = '''+FRMMODULO.QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING+'''');
    QRENTRADA.SQL.ADD('AND movimento in (0,1,7,8,10,13,16)');
    QRENTRADA.open;

    QRSAIDA.close;
    QRSAIDA.sql.clear;
    QRSAIDA.sql.add('select sum(qtde) SAIDA FROM C000032 WHERE CODPRODUTO = '''+FRMMODULO.QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING+'''');
    QRSAIDA.SQL.ADD('AND movimento in (2,3,4,5,6,9,11,12,14,15,17,18,19,20)');
    QRSAIDA.open;

    RSAIDA.VALUE := QRSAIDA.FIELDBYNAME('SAIDA').ASFLOAT;
    RENTRADA.VALUE := QRENTRADA.FIELDBYNAME('ENTRADA').ASFLOAT;
    RESTOQUE.VALUE := RENTRADA.VALUE - RSAIDA.VALUE;
  }

end;

procedure Tfrmproduto.batualizar_estoqueClick(Sender: TObject);
var
  vrecno: integer;
begin

  vrecno := qrproduto.RecNo;

  QUERY1.close;
  QUERY1.sql.clear;
  QUERY1.sql.add
    ('select * from c000026 where DATA_ALTERACAO = :datai order by codproduto');
  QUERY1.Params.ParamByName('datai').AsDateTime := date;
  QUERY1.OPEN;

  bar.position := 0;
  bar.Max := QUERY1.RECORDCOUNT;

  QUERY1.first;
  if QUERY1.RECORDCOUNT > 0 then
  begin
    ptermometro.visible := True;

    while not QUERY1.Eof do
    begin
      FRMMODULO.qrproduto.close;
      FRMMODULO.qrproduto.sql.clear;
      FRMMODULO.qrproduto.sql.add('select * from c000025 where codigo = ''' +
        QUERY1.FieldByName('codproduto').AsString + '''');
      FRMMODULO.qrproduto.OPEN;
      if FRMMODULO.qrproduto.RECORDCOUNT > 0 then
      begin
        FRMMODULO.qrproduto.Edit;
        FRMMODULO.qrproduto.FieldByName('PRECOCUSTO_ANTERIOR').asfloat :=
          qrproduto.FieldByName('PRECOCUSTO').asfloat;
        FRMMODULO.qrproduto.FieldByName('PRECOVENDA_ANTERIOR').asfloat :=
          qrproduto.FieldByName('PRECOVENDA').asfloat;
        FRMMODULO.qrproduto.FieldByName('PRECOVENDA').asfloat :=
          QUERY1.FieldByName('NOVO_PRECO_VENDA').asfloat;
        FRMMODULO.qrproduto.FieldByName('DATA_REMARCACAO_VENDA').AsDateTime :=
          QUERY1.FieldByName('DATA_ALTERACAO').AsDateTime;
        FRMMODULO.qrproduto.Post;
      end;
      qrpreco.close;
      qrpreco.sql.clear;
      qrpreco.sql.add('select * from c000026 where codproduto = ''' +
        QUERY1.FieldByName('codproduto').AsString + '''');
      qrpreco.OPEN;
      if qrpreco.RECORDCOUNT > 0 then
      begin
        qrpreco.Edit;
        qrpreco.FieldByName('PRECO_VENDA').asfloat :=
          qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat;
        // qrpreco.FieldByName('ALTERA_AUTOMATICO').AsInteger := 1;
        qrpreco.Post;
      end;
      QUERY1.next;
      bar.position := bar.position + 1;
    end;

    bar.position := 0;
    ptermometro.visible := false;

    FRMMODULO.Conexao.commit;
    qrproduto.REFRESH;
    FRMMODULO.qrproduto.REFRESH;

  end
  else
    application.messagebox('Não Há Alteração de Preços para Hoje, verifique!',
      'Atenção', mb_ok + mb_iconwarning);

  qrproduto.RecNo := vrecno;
  DBEdit1Change(frmproduto);

end;

procedure Tfrmproduto.ppreco_automaticoExit(Sender: TObject);
begin

  {
    if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    begin
    qrpreco.FieldByName('PRECO_AUTOMATICO').AsInteger := 1;
    qrpreco.Post;
    end;
  }

end;

procedure Tfrmproduto.bnovo_preco_custoEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  novo_preco_custo := qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat;

end;

procedure Tfrmproduto.bnovo_preco_custoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat <> novo_preco_custo then
    bpreco_custoClick(frmproduto);

end;

procedure Tfrmproduto.bnovo_preco_vendaEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  novo_preco_venda := qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat;

end;

procedure Tfrmproduto.bnovo_preco_vendaExit(Sender: TObject);
begin

  tedit(Sender).Color := clwindow;

  if qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
  begin
    if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    begin
      if qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat > 0 then
        bnovopreco_vendaClick(frmproduto);
    end;
  end;

end;

procedure Tfrmproduto.AtualizarPreosdeVendasRemarcados1Click(Sender: TObject);
begin
  if frmprincipal.autentica('Atualiza Preços Remarcados', 4) then
  begin
    if application.messagebox
      ('Deseja Atualiza os preços de venda remarcados hoje?', 'Atenção',
      mb_yesno + mb_iconwarning) = idyes then
      batualizar_estoqueClick(frmproduto);
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto.evendaEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  PageView1.ActivePageindex := 1;

end;

procedure Tfrmproduto.evendaExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if qrpreco.RECORDCOUNT > 0 then
  begin
    qrpreco.Edit;
    qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat :=
      qrproduto.FieldByName('PRECOVENDA').asfloat;
    bnovopreco_vendaClick(frmproduto);
  end;

end;

procedure Tfrmproduto.ecustoEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  PageView1.ActivePageindex := 1;
  ptampapreco.visible := True;
end;

procedure Tfrmproduto.ecustoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if qrproduto.FieldByName('PRECOCUSTO').asfloat <> preco_custo_anterior then
  begin
    if qrpreco.RECORDCOUNT > 0 then
    begin
      qrpreco.Edit;
      qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat :=
        qrproduto.FieldByName('PRECOCUSTO').asfloat;
      bpreco_custoClick(frmproduto);
      preco_custo_anterior := qrproduto.FieldByName('PRECOCUSTO').asfloat;
    end;
  end;

end;

procedure Tfrmproduto.DBEdit19Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  qrpreco.Edit;
  qrpreco.FieldByName('ICMS_ENTRADA').asfloat :=
    qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat *
    qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat / 100;

  qrpreco.FieldByName('IPI').asfloat :=
    qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat *
    qrpreco.FieldByName('IPI_P').asfloat / 100;

  application.ProcessMessages;

  // if frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
  bpreco_vendaClick(frmproduto);
end;

procedure Tfrmproduto.DBEdit68Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
  begin
    qrpreco.FieldByName('ICMS_ENTRADA').asfloat :=
      qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat *
      qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat / 100;

    bpreco_vendaClick(frmproduto);
  end;

end;

procedure Tfrmproduto.DBEdit69Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
  begin
    qrpreco.FieldByName('IPI').asfloat :=
      qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat *
      qrpreco.FieldByName('IPI_P').asfloat / 100;
    if qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
      bpreco_vendaClick(frmproduto);
  end;

end;

procedure Tfrmproduto.dsprecoDataChange(Sender: TObject; Field: TField);
begin
  if qrpreco.FieldByName('ALTERA_AUTOMATICO').asinteger = 2 then
    pdtaltera.visible := True
  else
    pdtaltera.visible := false;
end;

procedure Tfrmproduto.DBCheckBox2Click(Sender: TObject);
begin
  if DBCheckBox2.checked then
  begin
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      if qrproduto.FieldByName('usa_serial').asinteger = 1 then
      begin
        application.messagebox
          ('Este produto utiliza controle de seriais! Impossível usar grade!',
          'Atenção', mb_ok + mb_iconwarning);
        DBCheckBox2.checked := false;
      end;

    end;
  end;
end;

procedure Tfrmproduto.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    batu.SetFocus;
end;

procedure Tfrmproduto.eCESTButtonClick(Sender: TObject);
begin
 if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  frmCEST := tfrmCEST.create(self);
  frmCEST.showmodal;
  qrproduto.FieldByName('CEST').AsString :=
    FRMMODULO.qrCEST.FieldByName('CEST').AsString;
  eCEST.SetFocus;
end;

procedure Tfrmproduto.eCESTKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      qrproduto.FieldByName('CEST').AsString :=
        frmprincipal.zerarcodigo(eCEST.Text, 6);
      if eCEST.Text <> '000000' then
        if not frmprincipal.Locregistro(FRMMODULO.qrCest, eCEST.Text, 'CEST') then
        begin
          application.messagebox('CEST não encontrado!', 'Atenção',
            mb_ok + mb_iconerror);
          eCEST.SetFocus;
          exit;
        end
        else
          RxDBCalcEdit1.SetFocus
      else
        eCESTButtonClick(frmproduto);
    end;
  end;
end;

procedure Tfrmproduto.RzDBButtonEdit7ButtonClick(Sender: TObject);
begin
      if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  parametro_pesquisa := '';
  frmxloc_cofins := tfrmxloc_cofins.create(self);
  frmxloc_cofins.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    ZQuery1.close;
    ZQuery1.sql.clear;
    ZQuery1.sql.add('select codigo_cst_cofins as codigo,  descricao from cst_cofins where codigo_cst_cofins = ''' +
      resultado_pesquisa1 + '''');
    ZQuery1.OPEN;
    RzDBButtonEdit7.Text := ZQuery1.FieldByName('codigo').AsString;
    RzDBButtonEdit7.SetFocus;
  end;
end;

procedure Tfrmproduto.RzDBButtonEdit7KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
   begin
        if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  parametro_pesquisa := '';
  frmxloc_cofins := tfrmxloc_cofins.create(self);
  frmxloc_cofins.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    ZQuery1.close;
    ZQuery1.sql.clear;
    ZQuery1.sql.add('select codigo_cst_cofins as codigo,  descricao from cst_cofins where codigo_cst_cofins = ''' +
      resultado_pesquisa1 + '''');
    ZQuery1.OPEN;
    RzDBButtonEdit7.Text := ZQuery1.FieldByName('codigo').AsString;
    RzDBButtonEdit7.SetFocus;
  end;
   end;

end;

procedure Tfrmproduto.RzDBButtonEdit8ButtonClick(Sender: TObject);
begin
 if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
            qrproduto.Edit;

  parametro_pesquisa := '';
  frmxloc_pis := tfrmxloc_pis.create(self);
  frmxloc_pis.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    ZQuery1.close;
    ZQuery1.sql.clear;
    ZQuery1.sql.add('select codigo_cst_pis as codigo,  descricao from cst_pis where codigo_cst_pis = ''' +
      resultado_pesquisa1 + '''');
    ZQuery1.OPEN;
    RzDBButtonEdit8.Text := ZQuery1.FieldByName('codigo').AsString;
    RzDBButtonEdit8.SetFocus;
  end;
end;

procedure Tfrmproduto.RzDBButtonEdit8KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
   begin
      if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
            qrproduto.Edit;

  parametro_pesquisa := '';
  frmxloc_pis := tfrmxloc_pis.create(self);
  frmxloc_pis.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    ZQuery1.close;
    ZQuery1.sql.clear;
    ZQuery1.sql.add('select codigo_cst_pis as codigo,  descricao from cst_pis where codigo_cst_pis = ''' +
      resultado_pesquisa1 + '''');
    ZQuery1.OPEN;
    RzDBButtonEdit8.Text := ZQuery1.FieldByName('codigo').AsString;
    RzDBButtonEdit8.SetFocus;
  end;
   end;
end;

procedure Tfrmproduto.RzDBNumericEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    RzDBNumericEdit11.SetFocus
end;

procedure Tfrmproduto.RzDBNumericEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    RzDBNumericEdit12.SetFocus
end;

procedure Tfrmproduto.RzDBNumericEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    RzDBNumericEdit2.SetFocus
end;

procedure Tfrmproduto.RzDBNumericEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto.RzDBNumericEdit2Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto.RzDBNumericEdit2Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmproduto.RzDBNumericEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    RzDBNumericEdit3.SetFocus
end;

procedure Tfrmproduto.RzDBNumericEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    RzDBNumericEdit5.SetFocus
end;

procedure Tfrmproduto.RzDBNumericEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    RzDBNumericEdit6.SetFocus
end;

procedure Tfrmproduto.RzDBNumericEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    RzDBNumericEdit7.SetFocus
end;

procedure Tfrmproduto.RzDBNumericEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    RzDBNumericEdit8.SetFocus
end;

procedure Tfrmproduto.RzDBNumericEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    RzDBNumericEdit9.SetFocus
end;

procedure Tfrmproduto.RzDBNumericEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    RzDBNumericEdit10.SetFocus
end;

procedure Tfrmproduto.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto.eestoqueKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PageView1.ActivePageindex := 0;
    dbedit13.SetFocus;
  end;
end;

procedure Tfrmproduto.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #8 then
    if Key = #13 then
      PERFORM(WM_NEXTDLGCTL, 0, 0)
    else if (Key in ['0' .. '9']) then
      //
    else
      abort;

end;

procedure Tfrmproduto.DBDateEdit2Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if DBDateEdit2.date < DBDateEdit1.date then
  begin

    application.messagebox('Data final não pode ser menor que a data inicial!',
      'Erro', mb_ok + mb_iconerror);
    DBDateEdit2.SetFocus;
    exit;
  end;

end;

procedure Tfrmproduto.bremarcacaoClick(Sender: TObject);
var
  vcod_remarcacao: string;
begin
  vcod_remarcacao := emarca.Text;

  if vcod_remarcacao <> '000001' then

  begin

    if application.messagebox
      (pchar('Deseja Atualizar os Produtos do Grupo Remarcação ' +
      vcod_remarcacao + ' ?'), 'Atenção', mb_yesno + mb_iconwarning) = idyes
    then
    begin
      ptermometro.visible := True;

      QUERY1.close;
      QUERY1.sql.clear;
      QUERY1.sql.add('select * from c000026');
      QUERY1.OPEN;

      query.close;
      query.sql.clear;
      query.sql.add('select * from c000025 where codmarca = ''' +
        vcod_remarcacao + '''');
      query.OPEN;

      bar.position := 0;
      bar.Max := query.RECORDCOUNT;

      query.first;
      while not query.Eof do
      begin
        if QUERY1.Locate('codproduto', query.FieldByName('codigo').AsString,
          [loCaseInsensitive]) then
        begin
          QUERY1.Edit;
          QUERY1.FieldByName('VALOR_ULTIMA_COMPRA').asfloat :=
            qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat;
          QUERY1.FieldByName('ICMS_ENTRADA_P').asfloat :=
            qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat;
          QUERY1.FieldByName('ICMS_ENTRADA').asfloat :=
            qrpreco.FieldByName('ICMS_ENTRADA').asfloat;
          QUERY1.FieldByName('DESCONTO').asfloat :=
            qrpreco.FieldByName('DESCONTO').asfloat;
          QUERY1.FieldByName('FRETE').asfloat :=
            qrpreco.FieldByName('FRETE').asfloat;
          QUERY1.FieldByName('SEGURO').asfloat :=
            qrpreco.FieldByName('SEGURO').asfloat;
          QUERY1.FieldByName('OUTRAS_DESPESAS').asfloat :=
            qrpreco.FieldByName('OUTRAS_DESPESAS').asfloat;
          QUERY1.FieldByName('IPI_P').asfloat :=
            qrpreco.FieldByName('IPI_P').asfloat;
          QUERY1.FieldByName('IPI').asfloat :=
            qrpreco.FieldByName('IPI').asfloat;
          QUERY1.FieldByName('CUSTO_COMPRA').asfloat :=
            qrpreco.FieldByName('CUSTO_COMPRA').asfloat;
          QUERY1.FieldByName('ICMS_SAIDA_P').asfloat :=
            qrpreco.FieldByName('ICMS_SAIDA_P').asfloat;
          QUERY1.FieldByName('ICMS_SAIDA').asfloat :=
            qrpreco.FieldByName('ICMS_SAIDA').asfloat;
          QUERY1.FieldByName('PIS_P').asfloat :=
            qrpreco.FieldByName('PIS_P').asfloat;
          QUERY1.FieldByName('PIS').asfloat :=
            qrpreco.FieldByName('PIS').asfloat;
          QUERY1.FieldByName('COFINS_P').asfloat :=
            qrpreco.FieldByName('COFINS_P').asfloat;
          QUERY1.FieldByName('COFINS').asfloat :=
            qrpreco.FieldByName('COFINS').asfloat;
          QUERY1.FieldByName('CONTRIBUICAO_SOCIAL_P').asfloat :=
            qrpreco.FieldByName('CONTRIBUICAO_SOCIAL_P').asfloat;
          QUERY1.FieldByName('CONTRIBUICAO_SOCIAL').asfloat :=
            qrpreco.FieldByName('CONTRIBUICAO_SOCIAL').asfloat;
          QUERY1.FieldByName('CUSTO_OPERACIONAL_P').asfloat :=
            qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat;
          QUERY1.FieldByName('CUSTO_OPERACIONAL').asfloat :=
            qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat;
          QUERY1.FieldByName('COMISSAO_P').asfloat :=
            qrpreco.FieldByName('COMISSAO_P').asfloat;
          QUERY1.FieldByName('COMISSAO').asfloat :=
            qrpreco.FieldByName('COMISSAO').asfloat;
          QUERY1.FieldByName('TOTAL_CUSTO_P').asfloat :=
            qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat;
          QUERY1.FieldByName('TOTAL_CUSTO').asfloat :=
            qrpreco.FieldByName('TOTAL_CUSTO').asfloat;
          QUERY1.FieldByName('LUCRO_P').asfloat :=
            qrpreco.FieldByName('LUCRO_P').asfloat;
          QUERY1.FieldByName('LUCRO').asfloat :=
            qrpreco.FieldByName('LUCRO').asfloat;
          QUERY1.FieldByName('PRECO_VENDA').asfloat :=
            qrpreco.FieldByName('PRECO_VENDA').asfloat;
          QUERY1.FieldByName('NOVO_PRECO_VENDA').asfloat :=
            qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat;
          QUERY1.FieldByName('DATA_ALTERACAO').AsDateTime :=
            qrpreco.FieldByName('DATA_ALTERACAO').AsDateTime;
          QUERY1.FieldByName('NOVO_PRECO_CUSTO').asfloat :=
            qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat;
          QUERY1.FieldByName('PRECO_AUTOMATICO').asinteger :=
            qrpreco.FieldByName('PRECO_AUTOMATICO').asinteger;
          QUERY1.FieldByName('ALTERA_AUTOMATICO').asinteger :=
            qrpreco.FieldByName('ALTERA_AUTOMATICO').asinteger;
        end
        else
        begin
          QUERY1.insert;
          QUERY1.FieldByName('codigo').AsString :=
            frmprincipal.codifica('000026');
          QUERY1.FieldByName('codproduto').AsString :=
            query.FieldByName('codigo').AsString;
          QUERY1.FieldByName('VALOR_ULTIMA_COMPRA').asfloat :=
            qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat;
          QUERY1.FieldByName('ICMS_ENTRADA_P').asfloat :=
            qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat;
          QUERY1.FieldByName('ICMS_ENTRADA').asfloat :=
            qrpreco.FieldByName('ICMS_ENTRADA').asfloat;
          QUERY1.FieldByName('DESCONTO').asfloat :=
            qrpreco.FieldByName('DESCONTO').asfloat;
          QUERY1.FieldByName('FRETE').asfloat :=
            qrpreco.FieldByName('FRETE').asfloat;
          QUERY1.FieldByName('SEGURO').asfloat :=
            qrpreco.FieldByName('SEGURO').asfloat;
          QUERY1.FieldByName('OUTRAS_DESPESAS').asfloat :=
            qrpreco.FieldByName('OUTRAS_DESPESAS').asfloat;
          QUERY1.FieldByName('IPI_P').asfloat :=
            qrpreco.FieldByName('IPI_P').asfloat;
          QUERY1.FieldByName('IPI').asfloat :=
            qrpreco.FieldByName('IPI').asfloat;
          QUERY1.FieldByName('CUSTO_COMPRA').asfloat :=
            qrpreco.FieldByName('CUSTO_COMPRA').asfloat;
          QUERY1.FieldByName('ICMS_SAIDA_P').asfloat :=
            qrpreco.FieldByName('ICMS_SAIDA_P').asfloat;
          QUERY1.FieldByName('ICMS_SAIDA').asfloat :=
            qrpreco.FieldByName('ICMS_SAIDA').asfloat;
          QUERY1.FieldByName('PIS_P').asfloat :=
            qrpreco.FieldByName('PIS_P').asfloat;
          QUERY1.FieldByName('PIS').asfloat :=
            qrpreco.FieldByName('PIS').asfloat;
          QUERY1.FieldByName('COFINS_P').asfloat :=
            qrpreco.FieldByName('COFINS_P').asfloat;
          QUERY1.FieldByName('COFINS').asfloat :=
            qrpreco.FieldByName('COFINS').asfloat;
          QUERY1.FieldByName('CONTRIBUICAO_SOCIAL_P').asfloat :=
            qrpreco.FieldByName('CONTRIBUICAO_SOCIAL_P').asfloat;
          QUERY1.FieldByName('CONTRIBUICAO_SOCIAL').asfloat :=
            qrpreco.FieldByName('CONTRIBUICAO_SOCIAL').asfloat;
          QUERY1.FieldByName('CUSTO_OPERACIONAL_P').asfloat :=
            qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat;
          QUERY1.FieldByName('CUSTO_OPERACIONAL').asfloat :=
            qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat;
          QUERY1.FieldByName('COMISSAO_P').asfloat :=
            qrpreco.FieldByName('COMISSAO_P').asfloat;
          QUERY1.FieldByName('COMISSAO').asfloat :=
            qrpreco.FieldByName('COMISSAO').asfloat;
          QUERY1.FieldByName('TOTAL_CUSTO_P').asfloat :=
            qrpreco.FieldByName('TOTAL_CUSTO_P').asfloat;
          QUERY1.FieldByName('TOTAL_CUSTO').asfloat :=
            qrpreco.FieldByName('TOTAL_CUSTO').asfloat;
          QUERY1.FieldByName('LUCRO_P').asfloat :=
            qrpreco.FieldByName('LUCRO_P').asfloat;
          QUERY1.FieldByName('LUCRO').asfloat :=
            qrpreco.FieldByName('LUCRO').asfloat;
          QUERY1.FieldByName('PRECO_VENDA').asfloat :=
            qrpreco.FieldByName('PRECO_VENDA').asfloat;
          QUERY1.FieldByName('NOVO_PRECO_VENDA').asfloat :=
            qrpreco.FieldByName('NOVO_PRECO_VENDA').asfloat;
          QUERY1.FieldByName('DATA_ALTERACAO').AsDateTime :=
            qrpreco.FieldByName('DATA_ALTERACAO').AsDateTime;
          QUERY1.FieldByName('NOVO_PRECO_CUSTO').asfloat :=
            qrpreco.FieldByName('NOVO_PRECO_CUSTO').asfloat;
          QUERY1.FieldByName('PRECO_AUTOMATICO').asinteger :=
            qrpreco.FieldByName('PRECO_AUTOMATICO').asinteger;
          QUERY1.FieldByName('ALTERA_AUTOMATICO').asinteger :=
            qrpreco.FieldByName('ALTERA_AUTOMATICO').asinteger;
        end;

        QUERY1.Post;

        query.Edit;
        query.FieldByName('precocusto').asfloat :=
          qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat;
        query.FieldByName('precovenda').asfloat :=
          qrpreco.FieldByName('novo_preco_venda').asfloat;
        query.Post;

        query.next;

        bar.position := bar.position + 1;

      end;
    end;
  end;

  bar.position := 0;
  ptermometro.visible := false;

end;

procedure Tfrmproduto.NFeExportarProdutoSelecionado1Click(Sender: TObject);
begin
  if Exp_Abre_PRODUTO('PRODUTO.txt') then
  begin
    Exp_Inclui_PRODUTO(qrproduto.FieldByName('codigo').AsString,
      qrproduto.FieldByName('produto').AsString,
      qrproduto.FieldByName('codbarra').AsString, '', '', '',
      qrproduto.FieldByName('unidade').AsString,
      qrproduto.FieldByName('precovenda').asfloat, '', '', 0, 0, 0, '', '', '',
      qrproduto.FieldByName('cst').AsString, 0, 1,
      qrproduto.FieldByName('aliquota').asfloat, 0, '', 0, 0);

    if Exp_Fecha_PRODUTO then
    begin
      Showmessage('Arquivo de PRODUTO criado com sucesso!');
    end
    else
    begin
      Showmessage('Houve falha na criação do arquivo de PRODUTO!');
    end;
  end;

end;

procedure Tfrmproduto.NFeExportartodososPrdutos1Click(Sender: TObject);
begin
  query.close;
  query.sql.clear;
  query.sql.add('select * from c000025 where SITUACAO = 0');
  query.sql.add('and cst is not null');
  query.sql.add('order by codigo');
  query.OPEN;
  query.first;
  if Exp_Abre_PRODUTO('PRODUTO.txt') then
  begin
    while not query.Eof do
    begin

      Exp_Inclui_PRODUTO(query.FieldByName('codigo').AsString,
        query.FieldByName('produto').AsString, query.FieldByName('codbarra')
        .AsString, '', '', '', query.FieldByName('unidade').AsString,
        query.FieldByName('precovenda').asfloat, '', '', 0, 0, 0, '', '', '',
        query.FieldByName('cst').AsString, 0, 1, query.FieldByName('aliquota')
        .asfloat, 0, '', 0, 0);
      query.next;
    end;
    if Exp_Fecha_PRODUTO then
    begin
      Showmessage('Arquivo de PRODUTO criado com sucesso!');
    end
    else
    begin
      Showmessage('Houve falha na criação do arquivo de PRODUTO!');
    end;
  end;
end;

procedure Tfrmproduto.DBEdit29KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if pgravar.visible then
      bgravar.SetFocus;
end;

procedure Tfrmproduto.qrprodutoBeforeInsert(DataSet: TDataSet);
begin
  PRECO_VENDA_ANTERIORX := 0;
end;

procedure Tfrmproduto.AdvGlowButton2Click(Sender: TObject);
begin
  frmproduto_serial_ficha := tfrmproduto_serial_ficha.create(self);
  frmproduto_serial_ficha.showmodal;

  FRMMODULO.qrserial_produto.REFRESH;

end;

procedure Tfrmproduto.AdvGlowButton5Click(Sender: TObject);
begin

  if frmprincipal.autentica('Excluir PRODUTO', 4) then
  begin

    if application.messagebox('Confirma a exclusão do serial?', 'Excluir',
      mb_yesno + mb_iconwarning) = idyes then
    begin
      if FRMMODULO.qrserial_produto.FieldByName('codnota').AsString <> 'AVULSO'
      then
      begin
        application.messagebox('Este serial não pode ser excluído!', 'Atenção',
          mb_ok + mb_iconerror);
        exit;
      end;
      FRMMODULO.qrserial_produto.DELETE;
    end;

  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;

end;

procedure Tfrmproduto.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmproduto.bfornecedor_codigoClick(Sender: TObject);
begin
  frmfornecedor_codigo := tfrmfornecedor_codigo.create(self);
  frmfornecedor_codigo.Lproduto.Caption := qrprodutoCODIGO.AsString + '-' +
    qrprodutoPRODUTO.AsString;
  frmfornecedor_codigo.showmodal;
end;

procedure Tfrmproduto.FormCreate(Sender: TObject);
begin
  PageView1.ActivePageindex := 0;
end;

procedure Tfrmproduto.DBEdit22Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
  begin
    qrpreco.FieldByName('LUCRO').asfloat :=
      qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat *
      qrpreco.FieldByName('LUCRO_P').asfloat / 100;
    bpreco_vendaClick(frmproduto);
  end;
end;

procedure Tfrmproduto.DBEdit23Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
  begin
    qrpreco.FieldByName('PIS').asfloat :=
      qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat *
      qrpreco.FieldByName('PIS_P').asfloat / 100;
    // bpreco_vendaClick(frmproduto);
  end;
end;

procedure Tfrmproduto.DBEdit6Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
  begin
    qrpreco.FieldByName('ICMS_SAIDA').asfloat :=
      qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat *
      qrpreco.FieldByName('ICMS_SAIDA_P').asfloat / 100;
    // bpreco_vendaClick(frmproduto);
  end;
end;

procedure Tfrmproduto.DBEdit24Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
  begin
    qrpreco.FieldByName('COFINS').asfloat :=
      qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat *
      qrpreco.FieldByName('COFINS_P').asfloat / 100;
    // bpreco_vendaClick(frmproduto);
  end;
end;

procedure Tfrmproduto.DBEdit25Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
  begin
    qrpreco.FieldByName('CONTRIBUICAO_SOCIAL').asfloat :=
      qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat *
      qrpreco.FieldByName('CONTRIBUICAO_SOCIAL_P').asfloat / 100;
    // bpreco_vendaClick(frmproduto);
  end;
end;

procedure Tfrmproduto.DBEdit26Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
  begin
    qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat :=
      qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat *
      qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat / 100;
    // bpreco_vendaClick(frmproduto);
  end;
end;

procedure Tfrmproduto.DBEdit27Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
  begin
    qrpreco.FieldByName('COMISSAO').asfloat :=
      qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat *
      qrpreco.FieldByName('COMISSAO_P').asfloat / 100;
    bpreco_vendaClick(frmproduto);
  end;
end;

procedure Tfrmproduto.eNCMButtonClick(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  frmNCM := tfrmNCM.create(self);
  frmNCM.showmodal;
  qrproduto.FieldByName('CLASSIFICACAO_FISCAL').AsString :=
    FRMMODULO.qrNCM.FieldByName('NCM').AsString;
  eNCM.SetFocus;
end;

procedure Tfrmproduto.eNCMKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      qrproduto.FieldByName('CLASSIFICACAO_FISCAL').AsString :=
        frmprincipal.zerarcodigo(eNCM.Text, 6);
      if eNCM.Text <> '000000' then
        if not frmprincipal.Locregistro(FRMMODULO.qrNCM, eNCM.Text, 'NCM') then
        begin
          application.messagebox('NCM não encontrado!', 'Atenção',
            mb_ok + mb_iconerror);
          eNCM.SetFocus;
          exit;
        end
        else
          RxDBCalcEdit1.SetFocus
      else
        eNCMButtonClick(frmproduto);
    end;
  end;
end;

procedure Tfrmproduto.ecsosnButtonClick(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
    if qrproduto.State <> dsinsert then
      qrproduto.Edit;

  parametro_pesquisa := '';
  frmxloc_csosn := tfrmxloc_csosn.create(self);
  frmxloc_csosn.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    ZQuery1.close;
    ZQuery1.sql.clear;
    ZQuery1.sql.add('select * from csosn where CODIGO = ''' +
      resultado_pesquisa1 + '''');
    ZQuery1.OPEN;
    ecsosn.Text := ZQuery1.FieldByName('codigo').AsString;
    ecsosn.SetFocus;
  end;
end;

procedure Tfrmproduto.ecsosnKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    tedit(Sender).Color := clwindow;
    if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      qrproduto.FieldByName('CSOSN').AsString :=
        frmprincipal.zerarcodigo(ecsosn.Text, 3);
      if ecsosn.Text <> '000' then
        if not frmprincipal.Locregistro(FRMMODULO.qrCSOSN, ecsosn.Text, 'codigo')
        then
        begin
          application.messagebox('CSOSN não cadastrada!', 'Atenção',
            mb_ok + mb_iconerror);
          ecsosn.SetFocus;
          exit;
        end
        else
          DBMemo1.SetFocus
      else
        ecsosnButtonClick(frmproduto);
    end;

  end;
end;

procedure Tfrmproduto.dbedit13Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (dbedit13.Text = '060') or (dbedit13.Text = '010') or
    (dbedit13.Text = '070') then
    wwDBComboBox2.Text := 'F'
  else if (dbedit13.Text = '040') or (dbedit13.Text = '030') then
    wwDBComboBox2.Text := 'I'
  else if (dbedit13.Text = '041') or (dbedit13.Text = '050') or
    (dbedit13.Text = '051') or (dbedit13.Text = '090') then
    wwDBComboBox2.Text := 'N'
  else
    wwDBComboBox2.Text := 'T';
end;

procedure Tfrmproduto.dsproduto2DataChange(Sender: TObject; Field: TField);
begin
  ACBrBarCode1.Text := COMBOCODBARRA.Text
end;
 procedure Tfrmproduto.dsprodutoDataChange(Sender: TObject; Field: TField);
begin
  cb_Origem.ItemIndex:= qrproduto.fieldbyname('origem').AsInteger;
end;

{  wwDBGrid4.DefaultDrawDataCell
(Rect, Field, State);  }

{
  ////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);

  CASE QRPRODUTO_MOV.FieldByName('movimento').asinteger OF
  0 : WWDBGRID4.Canvas.FONT.Color := clFuchsia;
  1 : WWDBGRID4.Canvas.FONT.Color := clBLUE;
  2,9 :BEGIN
  WWDBGRID4.Canvas.FONT.Color:= clGREEN;
  WWDBGRID4.Canvas.FONT.Style := [FSBOLD];




  END;
  3 : WWDBGRID4.Canvas.FONT.Color:= clRED;
  4 : WWDBGRID4.Canvas.FONT.Color:= clRED;
  5 : WWDBGRID4.Canvas.FONT.Color:= clRED;
  6 : WWDBGRID4.Canvas.FONT.Color:= clRED;
  7 : WWDBGRID4.Canvas.FONT.Color:= clBLUE;
  8 : WWDBGRID4.Canvas.FONT.Color:= clBLUE;

  11 : WWDBGRID4.Canvas.FONT.Color:= clGREEN;
  12 : WWDBGRID4.Canvas.FONT.Color:= clRED;
  13 : WWDBGRID4.Canvas.FONT.Color:= clGREEN;
  14 : WWDBGRID4.Canvas.FONT.Color:= clRED;
  15 : WWDBGRID4.Canvas.FONT.Color:= clGREEN;
  16 : WWDBGRID4.Canvas.FONT.Color:= clRED;





  END;

  {
  0:                                             'IMPLANTAÇÃO DE SALDO';
  1:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'COMPRA';
  2:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'VENDA';
  3:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'DEVOL.DE COMPRA';
  4:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'SAÍDA';
  5:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'BAIXA DE SERIAL';
  6:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'EXCLUSÃO SERIAL';
  7:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'DEVOL.DE VENDA';
  8:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'RETORNO SERIAL';
  9:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'VENDA EM O.S.';


}


// NULO = 0,10
// ENTRADA = 1,3,7,8,12,13,16
// SAIDA   = 2,4,5,6,9,11,14,15,17,18,19,20
 end.
