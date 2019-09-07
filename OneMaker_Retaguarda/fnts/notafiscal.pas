unit notafiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, PageView, Wwdbigrd,
  Wwdbgrid, wwdbedit, wwdblook, ScrollView, CustomGridViewControl,
  CustomGridView, GridView, ComCtrls, frxClass, frxDBSet, frxDesgn,
  Wwdotdot, Wwdbcomb, RzEdit, RzDBEdit, RzDBBnEd, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, RzCmboBx, RzDBCmbo, AdvToolBar,
  AdvToolBarStylers, RzPanel, ImgList, AdvGlowButton, RzDBSpin, DBAccess, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, JvMemoryDataset, JvBaseEdits, JvExMask, JvToolEdit,
  JvDBControls, AdvReflectionImage;

type
  Tfrmnotafiscal = class(TForm)
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsnota: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    dsnotafiscal_item: TDataSource;
    N1: TMenuItem;
    Incluiritem1: TMenuItem;
    Excluiritem1: TMenuItem;
    AlterarItem1: TMenuItem;
    pgravar: TFlatPanel;
    bimprimir: TBitBtn;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label36: TLabel;
    DBEdit21: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit24: TDBEdit;
    GroupBox2: TGroupBox;
    ENUMERO: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit42: TDBEdit;
    ecodmodelo: TRzDBButtonEdit;
    GroupBox4: TGroupBox;
    eserie: TDBEdit;
    COMBOMOVIMENTO: TwwDBComboBox;
    efilial: TRzDBButtonEdit;
    ecfop: TRzDBButtonEdit;
    ecliente: TRzDBButtonEdit;
    DBEdit23: TDBEdit;
    Label38: TLabel;
    edata_cadastro: TJvDBDateEdit;
    EDATA_SAIDA: TJvDBDateEdit;
    Label39: TLabel;
    Label40: TLabel;
    Panel1: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    bincluir_item: TAdvGlowButton;
    bitbtn9: TAdvGlowButton;
    bexcluir_item: TAdvGlowButton;
    Bevel8: TBevel;
    GroupBox6: TGroupBox;
    DBText1: TDBText;
    tab_principal: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    PageSheet12: TPageSheet;
    PageSheet1: TPageSheet;
    grid1: TwwDBGrid;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    ETRANSPORTADOR: TDBEdit;
    bloctransportador: TBitBtn;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    brateio: TButton;
    GroupBox5: TGroupBox;
    check_estoque: TDBCheckBox;
    check_desconto: TDBCheckBox;
    GroupBox7: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox8: TGroupBox;
    Label5: TLabel;
    ecpf: TDBEdit;
    Label3: TLabel;
    erg: TDBEdit;
    Label2: TLabel;
    eendereco: TDBEdit;
    lsit: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    pveiculo: TFlatPanel;
    Label9: TLabel;
    FlatPanel2: TFlatPanel;
    Memo1: TMemo;
    Edit1: TEdit;
    PageSheet2: TPageSheet;
    ed_serv1: TRzDBButtonEdit;
    RzDBEdit1: TRzDBEdit;
    OS_QTDE1: TRzDBNumericEdit;
    RzDBNumericEdit2: TRzDBNumericEdit;
    RzDBNumericEdit3: TRzDBNumericEdit;
    RzDBEdit2: TRzDBEdit;
    ed_serv2: TRzDBButtonEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBNumericEdit4: TRzDBNumericEdit;
    RzDBNumericEdit5: TRzDBNumericEdit;
    RzDBNumericEdit6: TRzDBNumericEdit;
    RzDBEdit4: TRzDBEdit;
    ed_serv3: TRzDBButtonEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBNumericEdit7: TRzDBNumericEdit;
    RzDBNumericEdit8: TRzDBNumericEdit;
    RzDBNumericEdit9: TRzDBNumericEdit;
    RzDBEdit6: TRzDBEdit;
    ed_serv4: TRzDBButtonEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBNumericEdit10: TRzDBNumericEdit;
    RzDBNumericEdit11: TRzDBNumericEdit;
    RzDBNumericEdit12: TRzDBNumericEdit;
    RzDBEdit8: TRzDBEdit;
    ed_serv5: TRzDBButtonEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBNumericEdit13: TRzDBNumericEdit;
    RzDBNumericEdit14: TRzDBNumericEdit;
    RzDBNumericEdit15: TRzDBNumericEdit;
    RzDBEdit10: TRzDBEdit;
    ed_serv6: TRzDBButtonEdit;
    RzDBEdit11: TRzDBEdit;
    RzDBNumericEdit16: TRzDBNumericEdit;
    RzDBNumericEdit17: TRzDBNumericEdit;
    RzDBNumericEdit18: TRzDBNumericEdit;
    RzDBEdit12: TRzDBEdit;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    RzDBNumericEdit19: TRzDBNumericEdit;
    Label35: TLabel;
    Label37: TLabel;
    RzDBNumericEdit20: TRzDBNumericEdit;
    RzDBNumericEdit21: TRzDBNumericEdit;
    Label49: TLabel;
    RzDBEdit13: TRzDBEdit;
    Edit2: TEdit;
    check_prestacao: TDBCheckBox;
    Label20: TLabel;
    combocondpgto: TwwDBLookupCombo;
    Label21: TLabel;
    rqtde: TRzDBSpinEdit;
    wwDBGrid1: TwwDBGrid;
    Bevel3: TBevel;
    dsreceber: TDataSource;
    Label22: TLabel;
    Label50: TLabel;
    rsoma: TJvCalcEdit;
    rdiferenca: TJvCalcEdit;
    check_gerar: TDBCheckBox;
    BDUPLICATA: TButton;
    qrduplicata: TJvMemoryData;
    qrduplicataemitente_fantasia: TStringField;
    qrduplicataemitente_razao: TStringField;
    qrduplicataemitente_slogan: TStringField;
    qrduplicataemitente_telefone: TStringField;
    qrduplicataemitente_endereco: TStringField;
    qrduplicataemitente_cnpj: TStringField;
    qrduplicataemitente_ie: TStringField;
    qrduplicatadata_emissao: TStringField;
    qrduplicatafatura_numero: TStringField;
    qrduplicatafatura_valor: TStringField;
    qrduplicataduplicata_numero: TStringField;
    qrduplicataduplicata_valor: TStringField;
    qrduplicatadata_vencimento: TStringField;
    qrduplicatadesconto: TStringField;
    qrduplicatadesconto_ate: TStringField;
    qrduplicatacondicoes_especiais: TStringField;
    qrduplicatasacado_nome: TStringField;
    qrduplicatasacado_endereco: TStringField;
    qrduplicatasacado_municipio: TStringField;
    qrduplicatasacado_uf: TStringField;
    qrduplicatasacado_cep: TStringField;
    qrduplicatasacado_praca: TStringField;
    qrduplicatasacado_cnpj: TStringField;
    qrduplicatasacado_ie: TStringField;
    qrduplicatanotas_ficais: TStringField;
    qrduplicataextenso: TStringField;
    fsduplicata: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    fxduplicata: TfrxReport;
    Panel2: TPanel;
    DBText2: TDBText;
    MainMenu1: TMainMenu;
    menu1: TMenuItem;
    N2: TMenuItem;
    Bevel10: TBevel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label51: TLabel;
    Label52: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBEdit16: TDBEdit;
    RichEdit1: TRichEdit;
    bimporta_cupom: TAdvGlowButton;
    ImportaCupomFiscal1: TMenuItem;
    Edit3: TEdit;
    Edit4: TEdit;
    check_custovenda: TDBCheckBox;
    Label86: TLabel;
    rtipo: TRzDBComboBox;
    rintegracao: TRzDBNumericEdit;
    Label87: TLabel;
    DBEdit17: TDBEdit;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBNumericEdit22: TRzDBNumericEdit;
    RVALOR: TRzNumericEdit;
    DBEdit11: TDBEdit;
    ehora: TDBEdit;
    qrreceber: TZQuery;
    query: TZQuery;
    qrservico: TZQuery;
    query2: TZQuery;
    qrapoio: TZQuery;
    qrnf: TZQuery;
    qrmodelo: TZQuery;
    qrsoma: TZQuery;
    qrgrade_entrada: TZQuery;
    qrcliente: TZQuery;
    qrapoio2: TZQuery;
    qrnotafiscal: TZQuery;
    qrreceberCODIGO: TWideStringField;
    qrreceberCOD_NOTA: TWideStringField;
    qrreceberDOCUMENTO: TWideStringField;
    qrreceberVALOR: TFloatField;
    qrreceberNUMERO: TWideStringField;
    qrreceberTIPO: TWideStringField;
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
    qrmodeloCODIGO: TWideStringField;
    qrmodeloMODELO: TWideStringField;
    qrmodeloSIGLA: TWideStringField;
    qrmodeloSINTEGRA: TWideStringField;
    qrmodeloTIPO_REGISTRO: TWideStringField;
    qrmodeloSEQUENCIANF: TIntegerField;
    lbl1: TLabel;
    cb_Finalidade: TComboBox;
    PageSheet3: TPageSheet;
    dbgrd2: TDBGrid;
    dbnvgr1: TDBNavigator;
    ds1: TDataSource;
    qry: TZQuery;
    qryCODIGO: TWideStringField;
    qryCODNOTA: TWideStringField;
    qryNUMNOTA: TWideStringField;
    qryNUMNOTAREF: TWideStringField;
    qryCHAVE: TWideStringField;
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
    dtfldDATA_CADASTRO: TDateField;
    dtfldDATA_ULTIMACOMPRA: TDateField;
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
    dtfldRG_EMISSAO: TDateField;
    qrclienteSEXO: TWideStringField;
    qrclienteHISTORICO: TBlobField;
    dtfldPREVISAO: TDateField;
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
    dtfldVENCIMENTO: TDateField;
    dtfldDATA: TDateField;
    PageSheet4: TPageSheet;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    DBEdit13: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    qrnotafiscal_item: TZQuery;
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
    qrnotafiscal_itemCEST: TWideStringField;
    qrnotafiscal_itemORIGEM: TIntegerField;
    qrnotafiscal_itemPRODUTO: TWideStringField;
    qrnotafiscal_itemUNIDADE: TWideStringField;
    qrnotafiscal_itemcst_descricao: TStringField;
    qrnotafiscal_itemnatureza: TStringField;
    qrnotafiscal_itemFRETE: TFloatField;
    qrnotafiscal_itemSEGURO: TFloatField;
    qrnotafiscal_itemOUTRAS_DESPESAS: TFloatField;
    GroupBox11: TGroupBox;
    Label53: TLabel;
    Label66: TLabel;
    CBForma: TComboBox;
    cbPress: TComboBox;
    AdvReflectionImage1: TAdvReflectionImage;
    AdvReflectionImage2: TAdvReflectionImage;
    AdvReflectionImage3: TAdvReflectionImage;
    AdvReflectionImage4: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure efilialEnter(Sender: TObject);
    procedure efilialExit(Sender: TObject);
    procedure efilialKeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure edata_cadastroExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure bexcluir_itemClick(Sender: TObject);
    procedure ENUMEROExit(Sender: TObject);
    procedure ecfopExit(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure bincluir_itemClick(Sender: TObject);
    procedure grid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure Panel1Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edata_cadastroKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit41KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure DBEdit19Enter(Sender: TObject);
    procedure DBEdit22Enter(Sender: TObject);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure bloctransportadorClick(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure DBEdit34KeyPress(Sender: TObject; var Key: Char);
    procedure ETRANSPORTADORExit(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit24Change(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure EDATA_SAIDAEnter(Sender: TObject);
    procedure EDATA_SAIDAKeyPress(Sender: TObject; var Key: Char);
    procedure COMBOMOVIMENTOKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Change(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure eserieEnter(Sender: TObject);
    procedure eserieExit(Sender: TObject);
    procedure brateioClick(Sender: TObject);
    procedure qrnotafiscal_itemNewRecord(DataSet: TDataSet);
    procedure ecodmodeloButtonClick(Sender: TObject);
    procedure ecodmodeloKeyPress(Sender: TObject; var Key: Char);
    procedure efilialButtonClick(Sender: TObject);
    procedure ecfopButtonClick(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure ecfopKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure check_estoqueKeyPress(Sender: TObject; var Key: Char);
    procedure check_descontoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure RzDBNumericEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure OS_QTDE1Exit(Sender: TObject);
    procedure ed_serv1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_serv1ButtonClick(Sender: TObject);
    procedure ed_serv2KeyPress(Sender: TObject; var Key: Char);
    procedure ed_serv3KeyPress(Sender: TObject; var Key: Char);
    procedure ed_serv4KeyPress(Sender: TObject; var Key: Char);
    procedure ed_serv5KeyPress(Sender: TObject; var Key: Char);
    procedure ed_serv6KeyPress(Sender: TObject; var Key: Char);
    procedure ed_serv2ButtonClick(Sender: TObject);
    procedure ed_serv3ButtonClick(Sender: TObject);
    procedure ed_serv4ButtonClick(Sender: TObject);
    procedure ed_serv5ButtonClick(Sender: TObject);
    procedure ed_serv6ButtonClick(Sender: TObject);
    procedure RzDBNumericEdit20Exit(Sender: TObject);
    procedure ENUMEROEnter(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure combocondpgtoExit(Sender: TObject);
    procedure combocondpgtoKeyPress(Sender: TObject; var Key: Char);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure rqtdeExit(Sender: TObject);
    procedure qrreceberBeforePost(DataSet: TDataSet);
    procedure tab_principalChange(Sender: TObject);
    procedure BDUPLICATAClick(Sender: TObject);
    procedure bimporta_cupomClick(Sender: TObject);
    procedure ImportaCupomFiscal1Click(Sender: TObject);
    procedure ecodmodeloExit(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
  public
    vopcao: integer;
    vinclui_item: integer;
    qtde_total_item: Double;
    { Public declarations }
  end;

var
  frmnotafiscal: Tfrmnotafiscal;
  comando: string;

  PIS_ANTERIOR, COFINS_ANTERIOR, desconto_anterior, qtde_anterior,
    valor_anterior, ipi_anterior, icms_anterior, base_anterior,
    icms_sub_anterior, base_sub_anterior: real;
  vdesconto_anterior, vdesconto_atual: Double;
  vdesc_item, vfrete_item: Double;
  seguro_item, despesas_item: Double;
  dif_desc_atual : Double;
  dif_desc, dif_fret, dif_seg, dif_out : Double;
  vfrete_atual, vseguro_atual, vdespesas_atual : Double;

  mostra: boolean;
  ITENS: integer;
  altera_item: integer;
  vtotal_desconto: Double;

  nf_item: integer;

  vtot_val_prod, vtotal_produtos, vtotal_nota: Double;
     const
   sc_DragMove = $f012;
implementation

uses modulo, principal, loc_cfop, Math, loc_cliente, notafiscal_item,
  loc_filial, loc_transportador, notafiscal_impressao,
  xloc_notafiscal, xloc_cliente, lista_notasaida, xloc_modelo, compra_menu,
  compra, contasreceber_boleto, boleto_avulso, notafiscal_menu,
  xloc_servico, notafiscal_item2, xloc_cfop, extenso1,
  notafiscal_importacupom, sintegra_gerar, OpNatureza;

{$R *.dfm}

procedure Tfrmnotafiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mostra := false;
  Action := cafree;
end;

procedure Tfrmnotafiscal.enomeEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmnotafiscal.enomeExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmnotafiscal.bgravarClick(Sender: TObject);
var
  situacao, vitem, ITEM, tipo: integer;
  vdesconto: Double;
  vpeso_bruto, vpeso_liquido: Double;
  DATA: string;
  nPesoItem: boolean;
  valor_Credito: Double;
  mensag : Integer;
begin
  case cbpress.ItemIndex of
    0:  frmnotafiscal_menu.qrnota.fieldbyname('ind_press').AsInteger := 0;
    1:  frmnotafiscal_menu.qrnota.fieldbyname('ind_press').AsInteger := 1;
  end;

  case CBForma.ItemIndex of
    0:
      frmnotafiscal_menu.qrnota.fieldbyname('ind_pag').AsInteger := 0;
    1:
      frmnotafiscal_menu.qrnota.fieldbyname('ind_pag').AsInteger := 1;
    2:
      frmnotafiscal_menu.qrnota.fieldbyname('ind_pag').AsInteger := 2;
    3:
      frmnotafiscal_menu.qrnota.fieldbyname('ind_pag').AsInteger := 3;
    4:
      frmnotafiscal_menu.qrnota.fieldbyname('ind_pag').AsInteger := 4;
    5:
      frmnotafiscal_menu.qrnota.fieldbyname('ind_pag').AsInteger := 5;
    6:
      frmnotafiscal_menu.qrnota.fieldbyname('ind_pag').AsInteger := 6;
  end;

  case cb_Finalidade.ItemIndex of
    0:
      frmnotafiscal_menu.qrnota.fieldbyname('TIPO_FINALIDADE').AsInteger := 0;
    1:
      frmnotafiscal_menu.qrnota.fieldbyname('TIPO_FINALIDADE').AsInteger := 1;
    2:
      frmnotafiscal_menu.qrnota.fieldbyname('TIPO_FINALIDADE').AsInteger := 2;
    3:
      frmnotafiscal_menu.qrnota.fieldbyname('TIPO_FINALIDADE').AsInteger := 3;
  end;

  vtot_val_prod := 0;

  if (ecliente.text = '') or (ecliente.text = '000000') then
  begin
    application.messagebox('Favor informar o cliente!', 'Erro',
      mb_ok + mb_iconerror);
    ecliente.setfocus;
    exit;
  end;
//  if (ecfop.text = '') then
//  begin
//    application.messagebox('Favor informar o CFOP!', 'Erro',
//      mb_ok + mb_iconerror);
//    ecfop.setfocus;
//    exit;
//  end;
  if (ENUMERO.text = '') or (ENUMERO.text = '000000') then
  begin
    application.messagebox('Favor informar o numero!', 'Erro',
      mb_ok + mb_iconerror);
    ENUMERO.setfocus;
    exit;
  end;

  if (ecodmodelo.text = '') then
  begin
    application.messagebox('Favor informar o modelo!', 'Erro',
      mb_ok + mb_iconerror);
    ecodmodelo.setfocus;
    exit;
  end;

  if (edata_cadastro.text = '  /  /    ') then
  begin
    application.messagebox('Favor informar a data de Emissão!', 'Erro',
      mb_ok + mb_iconerror);
    edata_cadastro.setfocus;
    exit;
  end;

  if (efilial.text = '') or (efilial.text = '000000') then
  begin
    application.messagebox('Favor informar a filial!', 'Erro',
      mb_ok + mb_iconerror);
    efilial.setfocus;
    exit;
  end;

  frmnotafiscal_menu.qrnota.fieldbyname('DESCONTO_ITEM').AsFloat := 0;
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').AsFloat := 0;
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO1').asstring := '';
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA1').asstring := '';
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').AsFloat := 0;
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO2').asstring := '';
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA2').asstring := '';
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR3').AsFloat := 0;
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO3').asstring := '';
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA3').asstring := '';
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR4').AsFloat := 0;
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO4').asstring := '';
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA4').asstring := '';
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR5').AsFloat := 0;
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO5').asstring := '';
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA5').asstring := '';
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR6').AsFloat := 0;
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO6').asstring := '';
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA6').asstring := '';

  if rtipo.ItemIndex = 0 then
   frmnotafiscal_menu.qrnota.fieldbyname('fat_tipo').AsInteger := 1
  else
   frmnotafiscal_menu.qrnota.fieldbyname('fat_tipo').AsInteger := 2;

  ITEM := 1;
  qrreceber.first;
  while not qrreceber.eof do
  begin
    case ITEM of
      1:
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').AsFloat :=
            qrreceber.fieldbyname('VALOR').AsFloat;
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO1').asstring
            := qrreceber.fieldbyname('DOCUMENTO').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA1').asDATETIME
            := qrreceber.fieldbyname('VENCIMENTO').asDATETIME;
        end;
      2:
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').AsFloat :=
            qrreceber.fieldbyname('VALOR').AsFloat;
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO2').asstring
            := qrreceber.fieldbyname('DOCUMENTO').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA2').asDATETIME
            := qrreceber.fieldbyname('VENCIMENTO').asDATETIME;
        end;
      3:
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR3').AsFloat :=
            qrreceber.fieldbyname('VALOR').AsFloat;
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO3').asstring
            := qrreceber.fieldbyname('DOCUMENTO').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA3').asDATETIME
            := qrreceber.fieldbyname('VENCIMENTO').asDATETIME;
        end;
      4:
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR4').AsFloat :=
            qrreceber.fieldbyname('VALOR').AsFloat;
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO4').asstring
            := qrreceber.fieldbyname('DOCUMENTO').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA4').asDATETIME
            := qrreceber.fieldbyname('VENCIMENTO').asDATETIME;
        end;

      5:
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR5').AsFloat :=
            qrreceber.fieldbyname('VALOR').AsFloat;
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO5').asstring
            := qrreceber.fieldbyname('DOCUMENTO').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA5').asDATETIME
            := qrreceber.fieldbyname('VENCIMENTO').asDATETIME;
        end;

      6:
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR6').AsFloat :=
            qrreceber.fieldbyname('VALOR').AsFloat;
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO6').asstring
            := qrreceber.fieldbyname('DOCUMENTO').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA6').asDATETIME
            := qrreceber.fieldbyname('VENCIMENTO').asDATETIME;
        end;

    end;
    ITEM := ITEM + 1;

    qrreceber.Next;
  end;

  (* *****************     CONTAS A RECEBER    ******************** *)

  if check_prestacao.Checked then
  begin
    query2.close;
    query2.sql.clear;
    query2.sql.add('select * from c000049 where codvenda = ''NF' +
      frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
    query2.sql.add('and valor_pago > 0');
    query2.Open;
    if query2.RecordCount > 0 then
    begin
      application.messagebox
        ('Esta nota fiscal possue prestações que já foram feito pagamentos! Não será possível recriar as prestações!',
        'Aviso', mb_ok + mb_iconwarning);

    end
    else
    begin
      query2.close;
      query2.sql.clear;
      query2.sql.add('delete from c000049 where codvenda = ''NF' +
        frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
      query2.execsql;

      if qrreceber.RecordCount > 0 then
      begin
        qrreceber.first;
        while not qrreceber.eof do
        begin
          query2.close;
          query2.sql.clear;
          query2.sql.add('insert into c000049');
          query2.sql.add
            ('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
          query2.sql.add
            (' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
          query2.sql.add(' documento, tipo, situacao, filtro)');
          query2.sql.add('values');
          query2.sql.add
            ('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
          query2.sql.add
            (' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
          query2.sql.add(' :documento, :tipo, :situacao, :filtro)');

          query2.parambyname('codigo').asstring :=
            frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring + '/' +
            frmprincipal.zerarcodigo(qrreceber.fieldbyname('numero')
            .asstring, 2);
          query2.parambyname('codvenda').asstring :=
            'NF' + frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring;
          query2.parambyname('codcliente').asstring :=
            frmnotafiscal_menu.qrnota.fieldbyname('codcliente').asstring;
          query2.parambyname('codregiao').asstring := '000000';
          if frmnotafiscal_menu.qrnota.fieldbyname('CODVENDEDOR').asstring = 'S/VEND'
          then
            query2.parambyname('codvendedor').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('CODVENDEDOR').asstring
          else
            query2.parambyname('codvendedor').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('CODVENDEDOR').asstring;
          query2.parambyname('codcaixa').asstring := '000099';
          query2.parambyname('data_emissao').asDATETIME :=
            frmnotafiscal_menu.qrnota.fieldbyname('data').asDATETIME;
          query2.parambyname('data_vencimento').asDATETIME :=
            qrreceber.fieldbyname('vencimento').asDATETIME;
          query2.parambyname('valor_original').AsFloat :=
            qrreceber.fieldbyname('valor').AsFloat;
          query2.parambyname('valor_atual').AsFloat :=
            qrreceber.fieldbyname('valor').AsFloat;
          query2.parambyname('documento').asstring :=
            qrreceber.fieldbyname('documento').asstring;
          query2.parambyname('tipo').asstring :=
            qrreceber.fieldbyname('tipo').asstring;
          query2.parambyname('situacao').asinteger := 1;
          query2.parambyname('filtro').asinteger := 0;
          query2.execsql;

          qrreceber.Next;
        end;
      end;
    end;
  end;

  (* ************************************************************* *)

  vitem := qrnotafiscal_item.RecordCount;

  vdesconto_atual := 0;
  vtotal_desconto := 0;
  mensag := 0;

  if qrnotafiscal_item.RecordCount <> 0 then
  begin
    if (frmnotafiscal_menu.qrnota.State = dsinsert) or
       (frmnotafiscal_menu.qrnota.State = dsedit) then
    begin
      if frmnotafiscal_menu.qrnota.fieldbyname('nfe_situacao').asstring = ''
      then
        frmnotafiscal_menu.qrnota.fieldbyname('nfe_situacao').asinteger := 3;

     brateioClick(frmnotafiscal);

      if frmnotafiscal_menu.qrnota.State = dsinsert then
      begin
        ITEM := 1;

        vpeso_bruto := frmnotafiscal_menu.qrnota.fieldbyname
          ('peso_bruto').AsFloat;
        vpeso_liquido := frmnotafiscal_menu.qrnota.fieldbyname
          ('peso_liquido').AsFloat;
        frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').AsFloat := 0;
        frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').AsFloat := 0;
        frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').AsFloat := 0;
        frmnotafiscal_menu.qrnota.fieldbyname('valor_ICMS').AsFloat := 0;
        frmnotafiscal_menu.qrnota.fieldbyname('BASE_sub').AsFloat := 0;
        frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').AsFloat := 0;
        frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').AsFloat := 0;
        frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').AsFloat := 0;
        frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').AsFloat := 0;
        if frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').AsFloat = 0 then
          frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').AsFloat :=
            vpeso_bruto;
        if frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').AsFloat = 0
        then
          frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').AsFloat :=
            vpeso_liquido;

        qrnotafiscal_item.first;
        while not qrnotafiscal_item.eof do
        begin
         dif_fret := dif_fret +  qrnotafiscal_item.fieldbyname('frete').AsFloat;
         dif_seg  := dif_seg  +  qrnotafiscal_item.fieldbyname('seguro').AsFloat;
         dif_out  := dif_out  +  qrnotafiscal_item.fieldbyname('outras_despesas').AsFloat;
         qrnotafiscal_item.Next;
        end;
        vfrete_atual    :=  dif_fret -  vfrete_item;
        vseguro_atual   :=  dif_seg  -  seguro_item;
        vdespesas_atual :=  dif_out  -  despesas_item;
        valor_Credito := 0;

        qrnotafiscal_item.first;
        while not qrnotafiscal_item.eof do
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').AsFloat :=
            frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').AsFloat +
            (qrnotafiscal_item.fieldbyname('PESO_BRUTO').AsFloat *
            qrnotafiscal_item.fieldbyname('qtde').AsFloat);
          frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').AsFloat :=
            frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').AsFloat +
            (qrnotafiscal_item.fieldbyname('PESO_LIQUIDO').AsFloat *
            qrnotafiscal_item.fieldbyname('qtde').AsFloat);
          // end;
          frmnotafiscal_menu.qrnota.fieldbyname('valor_isento_icms').AsFloat :=
            frmnotafiscal_menu.qrnota.fieldbyname('valor_isento_icms').AsFloat +
            qrnotafiscal_item.fieldbyname('ISENTO').AsFloat;

          vdesconto := vdesconto + qrnotafiscal_item.fieldbyname('DESCONTO').AsFloat;

           if (qrnotafiscal_item.fieldbyname('ITEM').asstring = '1') and (
               (vfrete_atual > 0) or (vseguro_atual > 0) or (vdespesas_atual > 0)) then
           begin
              query.close;
              query.sql.clear;
              query.sql.add('update c000062 set ');
              query.sql.add('frete = :fretex, ');
              query.sql.add('seguro = :segurox, outras_despesas = :despesasx');
              query.sql.add(' where codigo = ''' + qrnotafiscal_item.fieldbyname
              ('codigo').asstring + '''');

              query.params.parambyname('fretex').AsFloat :=
                   qrnotafiscal_item.FieldByName('frete').AsFloat - vfrete_atual;
              query.params.parambyname('segurox').AsFloat :=
                   qrnotafiscal_item.FieldByName('seguro').AsFloat - vseguro_atual;
              query.params.parambyname('despesasx').AsFloat :=
                   qrnotafiscal_item.FieldByName('outras_despesas').AsFloat - vdespesas_atual;

              query.execsql;
           end;


           if frmmodulo.qrFilial.FieldByName('SUBSTITUTO_TRIBUTARIO').AsString = 'N' then
          begin
            frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').AsFloat := 0;
            frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').AsFloat := 0;
            frmnotafiscal_menu.qrnota.FieldByName('BASE_SUB').asfloat := 0;
            frmnotafiscal_menu.qrnota.FieldByName('ICMS_SUB').asfloat := 0;
          end
          else
          begin
            if qrnotafiscal_item.fieldbyname('BASE_CALCULO').AsFloat > 0 then
            frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').AsFloat :=
              frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').AsFloat +
              qrnotafiscal_item.fieldbyname('BASE_CALCULO').AsFloat;

            if qrnotafiscal_item.fieldbyname('VALOR_ICMS').AsFloat > 0 then
              frmnotafiscal_menu.qrnota.fieldbyname('valor_ICMS').AsFloat :=
                frmnotafiscal_menu.qrnota.fieldbyname('valor_ICMS').AsFloat +
                  qrnotafiscal_item.fieldbyname('valor_ICMS').AsFloat ;
          end;

           if (mensag = 0) or (mensag <> 2)  then
           begin
                if (qrnotafiscal_item.FieldByName('CSOSN').AsString = '101') and
                   (frmmodulo.qrFilial.FieldByName('ISS').AsFloat <> 0.00) then
                begin
                  mensag := 2;
                end
                else
                begin
                 if qrnotafiscal_item.FieldByName('CSOSN').AsString = '201' then
                 mensag := 1;
                end;
           end;

            if qrnotafiscal_item.FieldByName('CSOSN').AsString = '101' then
            begin
              valor_Credito := valor_Credito + (qrnotafiscal_item.FieldByName('TOTAL').AsFloat
                                      - qrnotafiscal_item.FieldByName('ICMS_SUB').asfloat) *
                                      (frmmodulo.qrFilial.FieldByName('ISS').AsFloat / 100);
            end;


          frmnotafiscal_menu.qrnota.fieldbyname('base_sub').AsFloat :=
            frmnotafiscal_menu.qrnota.fieldbyname('base_sub').AsFloat +
            qrnotafiscal_item.fieldbyname('base_sub').AsFloat;

          frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').AsFloat :=
            frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').AsFloat +
            qrnotafiscal_item.fieldbyname('icms_sub').AsFloat;

          frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').AsFloat :=
            frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').AsFloat +
            qrnotafiscal_item.fieldbyname('valor_ipi').AsFloat;

          vtot_val_prod := vtot_val_prod + qrnotafiscal_item.fieldbyname
            ('SUBTOTAL').AsFloat;

          frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat :=
           vtot_val_prod;

          if frmnotafiscal_menu.qrnota.fieldbyname('desconto').AsFloat > 0 then
            frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat :=
              frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').AsFloat +
              (vtot_val_prod + frmnotafiscal_menu.qrnota.fieldbyname('frete')
              .AsFloat + frmnotafiscal_menu.qrnota.fieldbyname('seguro').AsFloat
              + frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').AsFloat
              + frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').AsFloat
              + frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').AsFloat) -
              frmnotafiscal_menu.qrnota.fieldbyname('desconto').AsFloat
          else
            frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat :=
              frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').AsFloat +
              (vtot_val_prod + frmnotafiscal_menu.qrnota.fieldbyname('frete')
              .AsFloat + frmnotafiscal_menu.qrnota.fieldbyname('seguro').AsFloat
              + frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').AsFloat
              + frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').AsFloat
              + frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').AsFloat) -
              frmnotafiscal_menu.qrnota.fieldbyname('desconto').AsFloat;
          // ,2 ) ;

          frmnotafiscal_menu.qrnota.fieldbyname('itens').asinteger := vitem;

          frmmodulo.QRPRODUTO_MOV.close;
          frmmodulo.QRPRODUTO_MOV.sql.clear;
          frmmodulo.QRPRODUTO_MOV.sql.add
            ('SELECT * FROM C000032 WHERE CODIGO = ''' +
            qrnotafiscal_item.fieldbyname('CODLANCAMENTO').asstring + '''');
          frmmodulo.QRPRODUTO_MOV.Open;

          if frmmodulo.QRPRODUTO_MOV.RecordCount > 0 then
          begin

            frmmodulo.QRPRODUTO_MOV.edit;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('numeronota').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('NUMERO').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codproduto').asstring :=
              qrnotafiscal_item.fieldbyname('codproduto').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codbarra').asstring :=
              qrnotafiscal_item.fieldbyname('codbarra').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('qtde').AsFloat :=
              qrnotafiscal_item.fieldbyname('qtde').AsFloat;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('unitario').AsFloat :=
              qrnotafiscal_item.fieldbyname('unitario').AsFloat;

            frmmodulo.QRPRODUTO_MOV.fieldbyname('total').AsFloat :=
              qrnotafiscal_item.fieldbyname('total').AsFloat;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('desconto').AsFloat :=
              qrnotafiscal_item.fieldbyname('desconto').AsFloat;

            frmmodulo.QRPRODUTO_MOV.fieldbyname('unidade').asstring :=
              qrnotafiscal_item.fieldbyname('unidade').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('aliquota').AsFloat :=
              qrnotafiscal_item.fieldbyname('ICMS').AsFloat;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('cfop').asstring :=
              qrnotafiscal_item.fieldbyname('CFOP').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('cupom_modelo').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('MODELO_NF').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codcliente').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('codCLIENTE').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codvendedor').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('codvendedor').asstring;
            // 'S/VEND';

            if check_estoque.Checked then
            begin
              if frmnotafiscal_menu.qrnota.fieldbyname('MOVIMENTO').asstring = 'E'
              then
                frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').asinteger := 1
              else
                frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').asinteger := 2;
              // VENDA

            end
            else
            begin
              frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').asinteger := 99;
              // nada
            end;

            frmmodulo.QRPRODUTO_MOV.fieldbyname('data').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('DATA').asstring;
            frmmodulo.QRPRODUTO_MOV.post;


          end
          else
          begin

            frmmodulo.QRPRODUTO_MOV.Insert;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codigo').asstring :=
              qrnotafiscal_item.fieldbyname('CODLANCAMENTO').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codnota').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('codIGO').asstring + 'NF';
            frmmodulo.QRPRODUTO_MOV.fieldbyname('SERIAL').asstring :=
              qrnotafiscal_item.fieldbyname('SERIAL').asstring;
            // FRMPRINCIPAL.zerarcodigo(INTTOSTR(ITEM),3);
            frmmodulo.QRPRODUTO_MOV.fieldbyname('numeronota').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('NUMERO').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codproduto').asstring :=
              qrnotafiscal_item.fieldbyname('codproduto').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codbarra').asstring :=
              qrnotafiscal_item.fieldbyname('codbarra').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('qtde').AsFloat :=
              qrnotafiscal_item.fieldbyname('qtde').AsFloat;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('unitario').AsFloat :=
              qrnotafiscal_item.fieldbyname('unitario').AsFloat;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('total').AsFloat :=
              qrnotafiscal_item.fieldbyname('total').AsFloat;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('desconto').AsFloat :=
              qrnotafiscal_item.fieldbyname('desconto').AsFloat;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('unidade').asstring :=
              qrnotafiscal_item.fieldbyname('unidade').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('aliquota').AsFloat :=
              qrnotafiscal_item.fieldbyname('ICMS').AsFloat;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('cfop').asstring :=
              qrnotafiscal_item.fieldbyname('CFOP').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('cupom_modelo').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('MODELO_NF').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codcliente').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('codCLIENTE').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codvendedor').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('codvendedor').asstring;
            // 'S/VEND';
            if check_estoque.Checked then
            begin
              if frmnotafiscal_menu.qrnota.fieldbyname('MOVIMENTO').asstring = 'E'
              then
                frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').asinteger := 1
              else
                frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').asinteger := 2;
              // VENDA
            end
            else
            begin
              frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').asinteger := 99;
              // nada
            end;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('data').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('DATA').asstring;
            frmmodulo.QRPRODUTO_MOV.post;

          end;
          ITEM := ITEM + 1;
          qrnotafiscal_item.Next;
          application.ProcessMessages;

        end; // looping do item

        if check_desconto.Checked = True then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').AsFloat :=
            (vtotal_produtos);
          frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').AsFloat :=
           (frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').AsFloat +
            frmnotafiscal_menu.qrnota.fieldbyname('frete').AsFloat +
            frmnotafiscal_menu.qrnota.fieldbyname('seguro').AsFloat +
            frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').AsFloat +
            frmnotafiscal_menu.qrnota.fieldbyname('VALOR_TOTAL_IPI').AsFloat +
            frmnotafiscal_menu.qrnota.fieldbyname('ICMS_SUB').AsFloat);
            frmnotafiscal_menu.qrnota.fieldbyname('DESCONTO').AsFloat := vdesconto_atual;

        end;

          // se a nota estah em edicao
      end
      else
      begin (* *********  editar a tabela de movimento  *********** *)
        ITEM := 1;

        vpeso_bruto := frmnotafiscal_menu.qrnota.fieldbyname
          ('peso_bruto').AsFloat;
        vpeso_liquido := frmnotafiscal_menu.qrnota.fieldbyname
          ('peso_liquido').AsFloat;
        frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').AsFloat := 0;
        frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').AsFloat := 0;
        frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').AsFloat := 0;
        frmnotafiscal_menu.qrnota.fieldbyname('valor_ICMS').AsFloat := 0;
        frmnotafiscal_menu.qrnota.fieldbyname('BASE_sub').AsFloat := 0;
        frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').AsFloat := 0;
        frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').AsFloat := 0;
        frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').AsFloat := 0;
        frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').AsFloat := 0;
        if frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').AsFloat = 0 then
          frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').AsFloat :=
            vpeso_bruto;
        if frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').AsFloat = 0
        then
          frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').AsFloat :=
            vpeso_liquido;

        qrnotafiscal_item.first;
        while not qrnotafiscal_item.eof do
        begin
         dif_fret := dif_fret +  qrnotafiscal_item.fieldbyname('frete').AsFloat;
         dif_seg  := dif_seg  +  qrnotafiscal_item.fieldbyname('seguro').AsFloat;
         dif_out  := dif_out  +  qrnotafiscal_item.fieldbyname('outras_despesas').AsFloat;
         qrnotafiscal_item.Next;
        end;
        vfrete_atual    :=  dif_fret -  vfrete_item;
        vseguro_atual   :=  dif_seg  -  seguro_item;
        vdespesas_atual :=  dif_out  -  despesas_item;
        valor_Credito := 0;

        qrnotafiscal_item.first;
        while not qrnotafiscal_item.eof do
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').AsFloat :=
            frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').AsFloat +
            (qrnotafiscal_item.fieldbyname('PESO_BRUTO').AsFloat *
            qrnotafiscal_item.fieldbyname('qtde').AsFloat);
          frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').AsFloat :=
            frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').AsFloat +
            (qrnotafiscal_item.fieldbyname('PESO_LIQUIDO').AsFloat *
            qrnotafiscal_item.fieldbyname('qtde').AsFloat);
          // end;
          frmnotafiscal_menu.qrnota.fieldbyname('valor_isento_icms').AsFloat :=
            frmnotafiscal_menu.qrnota.fieldbyname('valor_isento_icms').AsFloat +
            qrnotafiscal_item.fieldbyname('ISENTO').AsFloat;

          vdesconto := vdesconto + qrnotafiscal_item.fieldbyname('DESCONTO').AsFloat;

           if (qrnotafiscal_item.fieldbyname('ITEM').asstring = '1') and (
               (vfrete_atual > 0) or (vseguro_atual > 0) or (vdespesas_atual > 0)) then
           begin
              query.close;
              query.sql.clear;
              query.sql.add('update c000062 set ');
              query.sql.add('frete = :fretex, ');
              query.sql.add('seguro = :segurox, outras_despesas = :despesasx');
              query.sql.add(' where codigo = ''' + qrnotafiscal_item.fieldbyname
              ('codigo').asstring + '''');

              query.params.parambyname('fretex').AsFloat :=
                   qrnotafiscal_item.FieldByName('frete').AsFloat - vfrete_atual;
              query.params.parambyname('segurox').AsFloat :=
                   qrnotafiscal_item.FieldByName('seguro').AsFloat - vseguro_atual;
              query.params.parambyname('despesasx').AsFloat :=
                   qrnotafiscal_item.FieldByName('outras_despesas').AsFloat - vdespesas_atual;

              query.execsql;
           end;


           if frmmodulo.qrFilial.FieldByName('SUBSTITUTO_TRIBUTARIO').AsString = 'N' then
          begin
            frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').AsFloat := 0;
            frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').AsFloat := 0;
            frmnotafiscal_menu.qrnota.FieldByName('BASE_SUB').asfloat := 0;
            frmnotafiscal_menu.qrnota.FieldByName('ICMS_SUB').asfloat := 0;
          end
          else
          begin
            if qrnotafiscal_item.fieldbyname('BASE_CALCULO').AsFloat > 0 then
            frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').AsFloat :=
              frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').AsFloat +
              qrnotafiscal_item.fieldbyname('BASE_CALCULO').AsFloat;

            if qrnotafiscal_item.fieldbyname('VALOR_ICMS').AsFloat > 0 then
              frmnotafiscal_menu.qrnota.fieldbyname('valor_ICMS').AsFloat :=
                frmnotafiscal_menu.qrnota.fieldbyname('valor_ICMS').AsFloat +
                  qrnotafiscal_item.fieldbyname('valor_ICMS').AsFloat ;
          end;

           if (mensag = 0) or (mensag <> 2)  then
           begin
                if (qrnotafiscal_item.FieldByName('CSOSN').AsString = '101') and
                   (frmmodulo.qrFilial.FieldByName('ISS').AsFloat <> 0.00) then
                begin
                  mensag := 2;
                end
                else
                begin
                 if qrnotafiscal_item.FieldByName('CSOSN').AsString = '201' then
                 mensag := 1;
                end;
           end;

            if qrnotafiscal_item.FieldByName('CSOSN').AsString = '101' then
            begin
              valor_Credito := valor_Credito + (qrnotafiscal_item.FieldByName('TOTAL').AsFloat
                                      - qrnotafiscal_item.FieldByName('ICMS_SUB').asfloat) *
                                      (frmmodulo.qrFilial.FieldByName('ISS').AsFloat / 100);
            end;


          frmnotafiscal_menu.qrnota.fieldbyname('base_sub').AsFloat :=
            frmnotafiscal_menu.qrnota.fieldbyname('base_sub').AsFloat +
            qrnotafiscal_item.fieldbyname('base_sub').AsFloat;

          frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').AsFloat :=
            frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').AsFloat +
            qrnotafiscal_item.fieldbyname('icms_sub').AsFloat;

          frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').AsFloat :=
            frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').AsFloat +
            qrnotafiscal_item.fieldbyname('valor_ipi').AsFloat;

          vtot_val_prod := vtot_val_prod + qrnotafiscal_item.fieldbyname
            ('SUBTOTAL').AsFloat;

          frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat :=
           vtot_val_prod;

          if frmnotafiscal_menu.qrnota.fieldbyname('desconto').AsFloat > 0 then
            frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat :=
              frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').AsFloat +
              (vtot_val_prod + frmnotafiscal_menu.qrnota.fieldbyname('frete')
              .AsFloat + frmnotafiscal_menu.qrnota.fieldbyname('seguro').AsFloat
              + frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').AsFloat
              + frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').AsFloat
              + frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').AsFloat) -
              frmnotafiscal_menu.qrnota.fieldbyname('desconto').AsFloat
          else
            frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat :=
              frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').AsFloat +
              (vtot_val_prod + frmnotafiscal_menu.qrnota.fieldbyname('frete')
              .AsFloat + frmnotafiscal_menu.qrnota.fieldbyname('seguro').AsFloat
              + frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').AsFloat
              + frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').AsFloat
              + frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').AsFloat) -
              frmnotafiscal_menu.qrnota.fieldbyname('desconto').AsFloat;
          // ,2 ) ;

          frmnotafiscal_menu.qrnota.fieldbyname('itens').asinteger := vitem;

          frmmodulo.QRPRODUTO_MOV.close;
          frmmodulo.QRPRODUTO_MOV.sql.clear;
          frmmodulo.QRPRODUTO_MOV.sql.add
            ('SELECT * FROM C000032 WHERE CODIGO = ''' +
            qrnotafiscal_item.fieldbyname('CODLANCAMENTO').asstring + '''');
          frmmodulo.QRPRODUTO_MOV.Open;

          if frmmodulo.QRPRODUTO_MOV.RecordCount > 0 then
          begin

            frmmodulo.QRPRODUTO_MOV.edit;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('numeronota').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('NUMERO').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codproduto').asstring :=
              qrnotafiscal_item.fieldbyname('codproduto').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codbarra').asstring :=
              qrnotafiscal_item.fieldbyname('codbarra').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('qtde').AsFloat :=
              qrnotafiscal_item.fieldbyname('qtde').AsFloat;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('unitario').AsFloat :=
              qrnotafiscal_item.fieldbyname('unitario').AsFloat;

            frmmodulo.QRPRODUTO_MOV.fieldbyname('total').AsFloat :=
              qrnotafiscal_item.fieldbyname('total').AsFloat;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('desconto').AsFloat :=
              qrnotafiscal_item.fieldbyname('desconto').AsFloat;

            frmmodulo.QRPRODUTO_MOV.fieldbyname('unidade').asstring :=
              qrnotafiscal_item.fieldbyname('unidade').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('aliquota').AsFloat :=
              qrnotafiscal_item.fieldbyname('ICMS').AsFloat;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('cfop').asstring :=
              qrnotafiscal_item.fieldbyname('CFOP').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('cupom_modelo').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('MODELO_NF').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codcliente').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('codCLIENTE').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codvendedor').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('codvendedor').asstring;
            // 'S/VEND';

            if check_estoque.Checked then
            begin
              if frmnotafiscal_menu.qrnota.fieldbyname('MOVIMENTO').asstring = 'E'
              then
                frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').asinteger := 1
              else
                frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').asinteger := 2;
              // VENDA

            end
            else
            begin
              frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').asinteger := 99;
              // nada
            end;

            frmmodulo.QRPRODUTO_MOV.fieldbyname('data').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('DATA').asstring;
            frmmodulo.QRPRODUTO_MOV.post;


          end
          else
          begin

            frmmodulo.QRPRODUTO_MOV.Insert;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codigo').asstring :=
              qrnotafiscal_item.fieldbyname('CODLANCAMENTO').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codnota').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('codIGO').asstring + 'NF';
            frmmodulo.QRPRODUTO_MOV.fieldbyname('SERIAL').asstring :=
              qrnotafiscal_item.fieldbyname('SERIAL').asstring;
            // FRMPRINCIPAL.zerarcodigo(INTTOSTR(ITEM),3);
            frmmodulo.QRPRODUTO_MOV.fieldbyname('numeronota').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('NUMERO').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codproduto').asstring :=
              qrnotafiscal_item.fieldbyname('codproduto').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codbarra').asstring :=
              qrnotafiscal_item.fieldbyname('codbarra').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('qtde').AsFloat :=
              qrnotafiscal_item.fieldbyname('qtde').AsFloat;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('unitario').AsFloat :=
              qrnotafiscal_item.fieldbyname('unitario').AsFloat;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('total').AsFloat :=
              qrnotafiscal_item.fieldbyname('total').AsFloat;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('desconto').AsFloat :=
              qrnotafiscal_item.fieldbyname('desconto').AsFloat;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('unidade').asstring :=
              qrnotafiscal_item.fieldbyname('unidade').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('aliquota').AsFloat :=
              qrnotafiscal_item.fieldbyname('ICMS').AsFloat;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('cfop').asstring :=
              qrnotafiscal_item.fieldbyname('CFOP').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('cupom_modelo').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('MODELO_NF').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codcliente').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('codCLIENTE').asstring;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('codvendedor').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('codvendedor').asstring;
            // 'S/VEND';
            if check_estoque.Checked then
            begin
              if frmnotafiscal_menu.qrnota.fieldbyname('MOVIMENTO').asstring = 'E'
              then
                frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').asinteger := 1
              else
                frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').asinteger := 2;
              // VENDA
            end
            else
            begin
              frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').asinteger := 99;
              // nada
            end;
            frmmodulo.QRPRODUTO_MOV.fieldbyname('data').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('DATA').asstring;
            frmmodulo.QRPRODUTO_MOV.post;

          end;
          ITEM := ITEM + 1;
          qrnotafiscal_item.Next;
          application.ProcessMessages;

        end; // looping do item

        if check_desconto.Checked = True then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').AsFloat :=
            (vtotal_produtos);
          frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').AsFloat :=
           (frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').AsFloat +
            frmnotafiscal_menu.qrnota.fieldbyname('frete').AsFloat +
            frmnotafiscal_menu.qrnota.fieldbyname('seguro').AsFloat +
            frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').AsFloat +
            frmnotafiscal_menu.qrnota.fieldbyname('VALOR_TOTAL_IPI').AsFloat +
            frmnotafiscal_menu.qrnota.fieldbyname('ICMS_SUB').AsFloat);
            frmnotafiscal_menu.qrnota.fieldbyname('DESCONTO').AsFloat := vdesconto_atual;

        end;

      end; // se a nota estah em edicao
    end; // se a nota fiscal --> state in dsinsert e dsedit

    if frmnotafiscal_menu.qrnota.State = dsinsert then
    begin
      if check_estoque.Checked = false then
      begin
        if frmmodulo.qrconfig.fieldbyname('BAIXAR_ESTOQUE_NOTA_SAIDA')
          .asinteger = 1 then
          frmnotafiscal_menu.qrnotaBAIXA_ESTOQUE.asstring := 'S'
        else
          frmnotafiscal_menu.qrnotaBAIXA_ESTOQUE.asstring := 'N';
      end;
      // lancar venda
      // lancamento da venda

    end;

    frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat :=
      frmprincipal.Arredondar(frmnotafiscal_menu.qrnota.fieldbyname
      ('valor_produtos').AsFloat, 2);
    frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat :=
      frmprincipal.Arredondar(frmnotafiscal_menu.qrnota.fieldbyname
      ('total_nota').AsFloat, 2);

    if frmnotafiscal_menu.qrnota.fieldbyname('TRANSPORTADOR').asstring = 'DESTINATARIO'
    then // quando for o próprio destinatário
      frmnotafiscal_menu.qrnota.fieldbyname('FRETE_CONTA').asinteger := 2;


    if frmmodulo.qrfilial.fieldbyname('OPTANTE_SIMPLES').asstring = 'S' then
    begin
      if mensag = 1 then
      begin
       frmnotafiscal_menu.qrnota.FieldByName('INF1').asstring :=
        'DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL';
       frmnotafiscal_menu.qrnota.FieldByName('INF2').asstring :=
        'NÃO GERA DIREITO A CRÉDITO FISCAL DE ISS E DE IPI';
       frmnotafiscal_menu.qrnota.FieldByName('INF3').asstring :=
       'PERMITE O APROVEITAMENTO DO CRÉDITO DE ICMS,NOS TERMOS DO ART.23 DA LC 123/2006';
       // St cobrada antecipadamnente no total da nota
      end
      else
      begin
        if mensag = 2 then
        begin
         frmnotafiscal_menu.qrnota.FieldByName('INF1').asstring :=
          'DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL';
         frmnotafiscal_menu.qrnota.FieldByName('INF2').asstring :=
          'NÃO GERA DIREITO A CRÉDITO FISCAL DE ISS E DE IPI';
         frmnotafiscal_menu.qrnota.FieldByName('INF3').asstring :=
         'PERMITE O APROVEITAMENTO DO CRÉDITO DE ICMS NO VALOR DE ' + formatfloat('R$ 0.00', valor_Credito);
         frmnotafiscal_menu.qrnota.FieldByName('INF4').asstring :=
          'CORRESPONDENTE A '+ FormatFloat('0.00',frmmodulo.qrFilial.FieldByName('ISS').AsFloat)+ '%, NOS TERMOS DO ART. 23 DA LC 123/2006';
         // valor total da nota X o % da categoria da empresa.
        end;
      end ;

       if mensag = 0 then
        begin
          frmnotafiscal_menu.qrnota.FieldByName('INF1').asstring :=
          'DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL';
          frmnotafiscal_menu.qrnota.FieldByName('INF2').asstring :=
          'NÃO GERA DIREITO A CRÉDITO FISCAL DE ICMS, DE ISS E DE IPI';
        end;
      end;

      if frmnotafiscal_menu.qrnota.State = dsinsert then
      begin
        frmmodulo.qrfilial.edit;
        frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger :=
          StrToInt(ENUMERO.text) + 1;
        // frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
        frmmodulo.qrfilial.post;
      end;

    frmnotafiscal_menu.qrnota.post;

    qrapoio.close;
    qrapoio.sql.clear;
    qrapoio.sql.add
      ('update c000061 set natureza = :natureza where numero = :numero');
    qrapoio.parambyname('numero').asstring := ENUMERO.text;
    qrapoio.parambyname('natureza').asstring := frmmodulo.natoperacao;
    qrapoio.execsql;

    application.ProcessMessages;

    frmmodulo.Conexao.Commit;

    frmnotafiscal_menu.qrnota.Refresh;

    tab_principal.ActivePageIndex := 0;


  if check_gerar.Checked then
    begin
      if qrreceber.RecordCount > 0 then
        BDUPLICATAClick(frmnotafiscal);
    end;

    frmmodulo.qrcfop.close;
    frmmodulo.qrcfop.sql.clear;
    frmmodulo.qrcfop.sql.add('select * from c000030 ');
    frmmodulo.qrcfop.Open;
    frmmodulo.qrcfop.IndexFieldNames := 'NATUREZA';
    close;



  end
  else
  begin
    if application.messagebox
      ('Não há nenhum Produto lançado para esta Nota ou a Nota é de Correção! Continua?',
      'Atenção', mb_yesno + mb_iconquestion) = idyes then
    begin

        if frmnotafiscal_menu.qrnota.State = dsinsert then
      begin
        frmmodulo.qrfilial.edit;
        frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger :=
          StrToInt(ENUMERO.text) + 1;
        // frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
        frmmodulo.qrfilial.post;
      end;


      frmnotafiscal_menu.qrnota.post;

      qrapoio.close;
      qrapoio.sql.clear;
      qrapoio.sql.add
        ('update c000061 set natureza = :natureza where numero = :numero');
      qrapoio.parambyname('numero').asstring := ENUMERO.text;
      qrapoio.parambyname('natureza').asstring := frmmodulo.natoperacao;
      qrapoio.execsql;

      frmmodulo.Conexao.Commit;

      tab_principal.ActivePageIndex := 0;
      frmmodulo.qrcfop.close;
      frmmodulo.qrcfop.sql.clear;
      frmmodulo.qrcfop.sql.add('select * from c000030 ');
      frmmodulo.qrcfop.Open;
      frmmodulo.qrcfop.IndexFieldNames := 'NATUREZA';
      close;
    end
    else
      grid1.setfocus;
  end;
  bimporta_cupom.Visible := false;

end;

procedure Tfrmnotafiscal.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmnotafiscal.bcancelarClick(Sender: TObject);
begin

  if frmnotafiscal_menu.qrnota.State = dsinsert then
  begin
    query2.close;
    query2.sql.clear;
    query2.sql.add('delete from c000117 where cod_nota = ''' +
      frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
    query2.execsql;

    qrnotafiscal_item.first;
    while not qrnotafiscal_item.eof do
    begin
      if qrnotafiscal_item.fieldbyname('CODLANCAMENTO').asstring <> 'XXXXXX'
      then
      begin
        frmmodulo.QRPRODUTO_MOV.close;
        frmmodulo.QRPRODUTO_MOV.sql.clear;
        frmmodulo.QRPRODUTO_MOV.sql.add('DELETE FROM C000032 WHERE CODIGO = '''
          + qrnotafiscal_item.fieldbyname('CODLANCAMENTO').asstring + '''');
        frmmodulo.QRPRODUTO_MOV.execsql;
      end;
      if qrnotafiscal_item.fieldbyname('codgrade').asstring <> '' then
      begin
        if frmnotafiscal_menu.qrnota.fieldbyname('BAIXA_ESTOQUE').asstring = 'S'
        then
        begin
          frmmodulo.qrgrade_produto.close;
          frmmodulo.qrgrade_produto.sql.clear;
          frmmodulo.qrgrade_produto.sql.add
            ('select * from c000021 where codproduto = ''' +
            qrnotafiscal_item.fieldbyname('CODPRODUTO').asstring + '''');
          frmmodulo.qrgrade_produto.sql.add('and codigo = ''' +
            qrnotafiscal_item.fieldbyname('codgrade').asstring + '''');
          frmmodulo.qrgrade_produto.Open;
          if frmmodulo.qrgrade_produto.RecordCount > 0 then
          begin
            frmmodulo.qrgrade_produto.edit;

            if frmnotafiscal_menu.qrnota.fieldbyname('MOVIMENTO').asstring = 'S'
            then
              frmmodulo.qrgrade_produto.fieldbyname('estoque').AsFloat :=
                frmmodulo.qrgrade_produto.fieldbyname('estoque').AsFloat +
                qrnotafiscal_item.fieldbyname('qtde').AsFloat
            else
              frmmodulo.qrgrade_produto.fieldbyname('estoque').AsFloat :=
                frmmodulo.qrgrade_produto.fieldbyname('estoque').AsFloat -
                qrnotafiscal_item.fieldbyname('qtde').AsFloat;

            frmmodulo.qrgrade_produto.post;
          end;
        end;
      end;
      if qrnotafiscal_item.fieldbyname('serial').asstring <> '' then
      begin
        query.close;
        query.sql.clear;
        query.sql.add
          ('update c000022 set situacao = :situacao, cliente = :cliente, codcliente = :codcliente, datavenda= :datavenda,');
        query.sql.add('codvenda = :codvenda, precovenda = :precovenda');
        query.sql.add('where serial = ''' + qrnotafiscal_item.fieldbyname
          ('serial').asstring + '''');
        query.sql.add('and codproduto = ''' + qrnotafiscal_item.fieldbyname
          ('codigo').asstring + '''');
        query.params.parambyname('situacao').asinteger := 1;
        query.params.parambyname('cliente').asstring := '';
        query.params.parambyname('codcliente').asstring := '';
        query.params.parambyname('DATAVENDA').asDATETIME := date;
        query.params.parambyname('codvenda').asstring := '';
        query.params.parambyname('precovenda').AsFloat := 0;
        query.execsql;
      end;

      qrnotafiscal_item.Next;
      application.ProcessMessages;
    end;

    query.close;
    query.sql.clear;
    query.sql.add('delete from c000062');
    query.sql.add('Where codnota = ''' + frmnotafiscal_menu.qrnota.fieldbyname
      ('codigo').asstring + '''');
    query.execsql;
  end;
  if (frmnotafiscal_menu.qrnota.State = dsinsert) or
    (frmnotafiscal_menu.qrnota.State = dsedit) then
    frmnotafiscal_menu.qrnota.cancel;
  frmmodulo.Conexao.Commit;

  frmnotafiscal_menu.qrnota.Refresh;
  comando := '';
  tab_principal.ActivePageIndex := 0;
  bimporta_cupom.Visible := false;
  close;
end;

procedure Tfrmnotafiscal.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmnotafiscal.etipoExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmnotafiscal.edata_cadastroEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
  if frmnotafiscal_menu.qrnota.State = dsinsert then
    edata_cadastro.date := date;
end;

procedure Tfrmnotafiscal.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmnotafiscal.efilialEnter(Sender: TObject);
begin

  TEdit(Sender).Color := $00A0FAF8;

end;

procedure Tfrmnotafiscal.efilialExit(Sender: TObject);
var
  Key: Char;
begin
  TEdit(Sender).Color := clwindow;
  if (frmnotafiscal_menu.qrnota.State = dsinsert) or
    (frmnotafiscal_menu.qrnota.State = dsedit) then
  begin
    if efilial.text <> '' then
    begin
      efilial.text := frmprincipal.zerarcodigo(efilial.text, 6);

      if not frmprincipal.Locregistro(frmmodulo.qrfilial, efilial.text, 'codigo')
      then
      begin
        efilialButtonClick(frmnotafiscal);
      end
      else
      begin
        if frmnotafiscal_menu.qrnota.State = dsinsert then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring :=
            frmprincipal.zerarcodigo
            (frmmodulo.qrfilial.fieldbyname('notafiscal').asstring, 6);
          frmnotafiscal_menu.qrnota.fieldbyname('filial').asstring :=
            frmmodulo.qrfilial.fieldbyname('filial').asstring;
        end;
        if Key = #13 then
          ecliente.setfocus;

      end;
    end
    else
      efilialButtonClick(frmnotafiscal);
  end;

end;

procedure Tfrmnotafiscal.efilialKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmnotafiscal.RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmnotafiscal.edata_cadastroExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;

  if TJvDBDateEdit(Sender).text <> '  /  /    ' then
  begin
    try
      TJvDBDateEdit(Sender).date := strtodate(TJvDBDateEdit(Sender).text);
    except
      showmessage('Data Inválida');
      TJvDBDateEdit(Sender).setfocus;
    end;
  end;

end;

procedure Tfrmnotafiscal.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmnotafiscal.bexcluir_itemClick(Sender: TObject);
begin

  if frmprincipal.autentica('Excluir produto NF', 4) then
  begin

    frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').AsFloat -
      dsnotafiscal_item.DataSet.fieldbyname('BASE_CALCULO').AsFloat;

    frmnotafiscal_menu.qrnota.fieldbyname('PIS').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('PIS').AsFloat -
      dsnotafiscal_item.DataSet.fieldbyname('PIS_VALOR').AsFloat;

    frmnotafiscal_menu.qrnota.fieldbyname('cofins').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('cofins').AsFloat -
      dsnotafiscal_item.DataSet.fieldbyname('cofins_VALOR').AsFloat;

    frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').AsFloat -
      dsnotafiscal_item.DataSet.fieldbyname('VALOR_ICMS').AsFloat;

    frmnotafiscal_menu.qrnota.fieldbyname('BASE_sub').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('BASE_sub').AsFloat -
      dsnotafiscal_item.DataSet.fieldbyname('BASE_sub').AsFloat;

    frmnotafiscal_menu.qrnota.fieldbyname('ICMS_sub').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').AsFloat -
      dsnotafiscal_item.DataSet.fieldbyname('icms_sub').AsFloat;

    { PESO_NOVO }
    frmnotafiscal_menu.qrnota.fieldbyname('PESO_BRUTO').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('PESO_BRUTO').AsFloat -
      (dsnotafiscal_item.DataSet.fieldbyname('PESO_BRUTO').AsFloat *
      dsnotafiscal_item.DataSet.fieldbyname('QTDE').AsFloat);

    frmnotafiscal_menu.qrnota.fieldbyname('PESO_LIQUIDO').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('PESO_LIQUIDO').AsFloat -
      (dsnotafiscal_item.DataSet.fieldbyname('PESO_LIQUIDO').AsFloat *
      dsnotafiscal_item.DataSet.fieldbyname('QTDE').AsFloat);

    frmnotafiscal_menu.qrnota.fieldbyname('VALOR_TOTAL_IPI').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('VALOR_TOTAL_IPI').AsFloat -
      dsnotafiscal_item.DataSet.fieldbyname('valor_ipi').AsFloat;

    frmnotafiscal_menu.qrnota.fieldbyname('DESCONTO').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('DESCONTO').AsFloat -
      dsnotafiscal_item.DataSet.fieldbyname('DESCONTO').AsFloat;

    frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').AsFloat -
      dsnotafiscal_item.DataSet.fieldbyname('subTOTAL').AsFloat;

    frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').AsFloat :=
    // frmprincipal.Arredondar(

      frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('frete').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('seguro').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').AsFloat -
      frmnotafiscal_menu.qrnota.fieldbyname('desconto').AsFloat; // , 2);

    if qrnotafiscal_item.fieldbyname('CODLANCAMENTO').asstring <> 'XXXXXX' then
    begin
      frmmodulo.QRPRODUTO_MOV.close;
      frmmodulo.QRPRODUTO_MOV.sql.clear;
      frmmodulo.QRPRODUTO_MOV.sql.add('DELETE FROM C000032 WHERE CODIGO = ''' +
        qrnotafiscal_item.fieldbyname('CODLANCAMENTO').asstring + '''');
      frmmodulo.QRPRODUTO_MOV.execsql;
    end;

    if qrnotafiscal_item.fieldbyname('codgrade').asstring <> '' then
    begin
      if frmnotafiscal_menu.qrnota.fieldbyname('BAIXA_ESTOQUE').asstring = 'S'
      then
      begin
        frmmodulo.qrgrade_produto.close;
        frmmodulo.qrgrade_produto.sql.clear;
        frmmodulo.qrgrade_produto.sql.add
          ('select * from c000021 where codproduto = ''' +
          qrnotafiscal_item.fieldbyname('CODPRODUTO').asstring + '''');
        frmmodulo.qrgrade_produto.sql.add('and codigo = ''' +
          qrnotafiscal_item.fieldbyname('codgrade').asstring + '''');
        frmmodulo.qrgrade_produto.Open;
        if frmmodulo.qrgrade_produto.RecordCount > 0 then
        begin
          frmmodulo.qrgrade_produto.edit;
          frmmodulo.qrgrade_produto.fieldbyname('estoque').AsFloat :=
            frmmodulo.qrgrade_produto.fieldbyname('estoque').AsFloat +
            qrnotafiscal_item.fieldbyname('qtde').AsFloat;
          frmmodulo.qrgrade_produto.post;
        end;
      end;
    end;

    if qrnotafiscal_item.fieldbyname('serial').asstring <> '' then
    begin
      query.close;
      query.sql.clear;
      query.sql.add
        ('update c000022 set situacao = :situacao, cliente = :cliente, codcliente = :codcliente, datavenda= :datavenda,');
      query.sql.add('codvenda = :codvenda, precovenda = :precovenda');
      query.sql.add('where serial = ''' + qrnotafiscal_item.fieldbyname
        ('serial').asstring + '''');
      query.sql.add('and codproduto = ''' + qrnotafiscal_item.fieldbyname
        ('codigo').asstring + '''');
      query.params.parambyname('situacao').asinteger := 1;
      query.params.parambyname('cliente').asstring := '';
      query.params.parambyname('codcliente').asstring := '';
      query.params.parambyname('DATAVENDA').asstring := '';
      query.params.parambyname('codvenda').asstring := '';
      query.params.parambyname('precovenda').AsFloat := 0;
      query.execsql;

    end;

    query.close;
    query.sql.clear;
    query.sql.add('delete from c000062 ');
    if qrnotafiscal_item.fieldbyname('codigo').asstring = '' then
    begin
      query.sql.add
        ('where total = :totalz and codproduto = :codproduto and codnota = :codnota and codlancamento = :codlancamento');
      query.params.parambyname('totalz').AsFloat :=
        qrnotafiscal_item.fieldbyname('total').AsFloat;
      query.params.parambyname('codproduto').asstring :=
        qrnotafiscal_item.fieldbyname('codproduto').asstring;
      query.params.parambyname('codnota').asstring :=
        qrnotafiscal_item.fieldbyname('codnota').asstring;
      query.params.parambyname('codlancamento').asstring :=
        qrnotafiscal_item.fieldbyname('codlancamento').asstring;
    end
    else
    begin
      query.sql.add('where codigo = ''' + qrnotafiscal_item.fieldbyname
        ('codigo').asstring + ''' and codnota = :codnota');
      query.params.parambyname('codnota').asstring :=
        qrnotafiscal_item.fieldbyname('codnota').asstring;
    end;
    query.execsql;

    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
    qrnotafiscal_item.sql.add('from c000062 item, c000025 pro');
    qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
    qrnotafiscal_item.sql.add('item.codnota = ''' +
      frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring +
      ''' order by item');
    qrnotafiscal_item.Open;

    nf_item := 1;
    qrnotafiscal_item.first;
    while not qrnotafiscal_item.eof do
    begin
      query.close;
      query.sql.clear;
      query.sql.add('update c000062 set item = ' + inttostr(nf_item) +
        ' where codigo = ''' + qrnotafiscal_item.fieldbyname('codigo')
        .asstring + '''');
      query.execsql;
      nf_item := nf_item + 1;
      qrnotafiscal_item.Next;
      application.ProcessMessages;
    end;
    frmmodulo.Conexao.Commit;

    frmnotafiscal_menu.qrnota.fieldbyname('ITENS').asinteger := nf_item - 1;

    qrnotafiscal_item.Refresh;

    grid1.setfocus;

    frmmodulo.qrconfig.Open;
    if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'PECAS'
    then
    begin
      if qrnotafiscal_item.RecordCount = 0 then
      begin
        venda_veiculo := false;
        pveiculo.Visible := false;
      end;
    end;

  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;

end;

procedure Tfrmnotafiscal.ENUMEROExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;

  if (frmnotafiscal_menu.qrnota.State = dsinsert) or
    (frmnotafiscal_menu.qrnota.State = dsedit) then
    frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring :=
      frmprincipal.zerarcodigo(ENUMERO.text, 6);

  if frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring = '000000' then
  begin
    application.messagebox('Favor informar um número válido!', 'Atenção',
      mb_ok + mb_iconerror);
    ENUMERO.setfocus;
  end
  else
  begin
    query.close;
    query.sql.clear;
    query.sql.add('SELECT * FROM C000061');
    query.sql.add('WHERE NUMERO = ''' + frmnotafiscal_menu.qrnota.fieldbyname
      ('numero').asstring + '''');
    query.Open;

    if query.RecordCount > 0 then
    begin
      if (frmnotafiscal_menu.qrnota.State = dsinsert) then
      begin
        if application.messagebox
          ('Existe uma nota fiscal já emitida com este número! Deseja prosseguir?',
          'Atenção', mb_yesno + mb_iconwarning + MB_DEFBUTTON2) = idno then
          bcancelarClick(frmnotafiscal);
      end;
    end;

  end;
end;

procedure Tfrmnotafiscal.ecfopExit(Sender: TObject);
begin

  if (Edit3.text = Edit4.text) and (copy(ecfop.text, 1, 1) = '6') then
  begin
    showmessage
      ('CFOP Invalido para essa Operação com Clientes de Dentro do Estado!');
    ecfop.setfocus;
    exit;
  end
  else if (Edit3.text <> Edit4.text) and (copy(ecfop.text, 1, 1) = '5') then
  begin
    showmessage
      ('CFOP Invalido para essa Operação com Clientes de Fora do Estado!');
    ecfop.setfocus;
    exit;
  end;

  if (frmnotafiscal_menu.qrnota.State = dsinsert) or
    (frmnotafiscal_menu.qrnota.State = dsedit) then
  begin

    if ecfop.text <> '' then
    begin
      frmmodulo.qrcfop.close;
      frmmodulo.qrcfop.sql.clear;
      frmmodulo.qrcfop.sql.add('select * from c000030');
      frmmodulo.qrcfop.sql.add('where cfop = ''' + ecfop.text + '''');
      if COMBOMOVIMENTO.text = 'S' then
        frmmodulo.qrcfop.sql.add('and tipo = ''2''')
      else
        frmmodulo.qrcfop.sql.add('and tipo = ''1''');
      frmmodulo.qrcfop.Open;

      if frmmodulo.qrcfop.RecordCount > 0 then
      begin
        frmnotafiscal_menu.qrnota.fieldbyname('INF1').asstring :=
          frmmodulo.qrcfop.fieldbyname('OBS1').asstring;
        frmnotafiscal_menu.qrnota.fieldbyname('INF2').asstring :=
          frmmodulo.qrcfop.fieldbyname('OBS2').asstring;
        frmnotafiscal_menu.qrnota.fieldbyname('INF3').asstring :=
          frmmodulo.qrcfop.fieldbyname('OBS3').asstring;
        frmnotafiscal_menu.qrnota.fieldbyname('INF4').asstring :=
          frmmodulo.qrcfop.fieldbyname('OBS4').asstring;
        frmnotafiscal_menu.qrnota.fieldbyname('cfop').asstring :=
          frmmodulo.qrcfop.fieldbyname('cfop').asstring;
        ENUMERO.setfocus;
        // ecliente.setfocus;
      end
      else
      begin
        application.messagebox('CFOP não encontrado!', 'Erro',
          mb_ok + mb_iconerror);
        ecfop.setfocus;
        exit;
      end;
    end
    else
      ecfopButtonClick(frmnotafiscal);

  end;

end;

procedure Tfrmnotafiscal.eclienteExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if ecliente.text = '' then
  begin
    application.messagebox('Favor Informar o Cliente!', 'Atenção',
      mb_ok + mb_iconwarning);
    ecliente.setfocus;
    exit;
  end;
end;

procedure Tfrmnotafiscal.bincluir_itemClick(Sender: TObject);
var
  MAXITM,VRECNO:integer;
begin

  frmmodulo.qrconfig.Open;
  if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'PECAS' then
  begin
    if venda_veiculo then
    begin
      application.messagebox('NF de veículo não pode conter outros produtos!',
        'Atenção', mb_ok + mb_iconerror);
      exit;
    end;
  end;

  qtde_anterior := 0;
  MAXITM:=0;
  VRECNO:= qrnotafiscal_item.RecNo;

  qrnotafiscal_item.First;
  qrnotafiscal_item.DisableControls;
  while not  qrnotafiscal_item.Eof  do
  begin
    if  qrnotafiscal_itemITEM.AsInteger > maxitm then
    MAXITM := qrnotafiscal_itemITEM.AsInteger;
    qrnotafiscal_item.Next;
  end;
  qrnotafiscal_item.EnableControls;
  frmnotafiscal_item2  := Tfrmnotafiscal_item2.Create(nil);
  with frmnotafiscal_item2 do
  begin
    inc(MAXITM);
    frmnotafiscal_item2.ITM :=MAXITM ;
    ed_cfop.text := ecfop.text;
    ed_nome_cfop.text := DBEdit21.text;
    ed_produto.text := '';
    ed_serial.text := '';
    ed_codigo.text := '';
    ed_estoque.value := 0;
    ed_grade.text := '';
    ed_classific.text := '';
    ed_cest.text := '';
    ed_qtde.value := 0;
    ed_unitario.value := 0;
    ed_subtotal.value := 0;
    ed_descontop.value := 0;
    ed_desconto.value := 0;
    ed_total.value := 0;
    ed_cst.text := '';
    ed_nome_cst.text := '';
    ed_icms_aliquota.value := 0;
    ed_icms_reducao.value := 0;
    ed_icms_base.value := 0;
    ed_icms_valor.value := 0;
    ed_sub_base.value := 0;
    ed_sub_valor.value := 0;
    ed_isenta.value := 0;
    ed_outras.value := 0;
    ed_ipi_aliquota.value := 0;
    ed_ipi_valor.value := 0;
    pstate.Caption := 'Inclusão';
    pstate.Color := clblue;
    pcodigo.Caption := '------';
  end;
  frmnotafiscal_item2.showmodal;





  qrnotafiscal_item.close;
  qrnotafiscal_item.sql.clear;
  qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
  qrnotafiscal_item.sql.add('from c000062 item, c000025 pro');
  qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
  qrnotafiscal_item.sql.add('item.codnota = ''' +
    frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring +
    ''' order by item');
  qrnotafiscal_item.Open;
  qrnotafiscal_item.Last;
  frmnotafiscal_menu.qrnota.fieldbyname('ITENS').asinteger := qrnotafiscal_item.RecordCount;
  if confirmado then
  begin
    application.ProcessMessages;

    bincluir_itemClick(frmnotafiscal);
  end;
end;

procedure Tfrmnotafiscal.grid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmnotafiscal.DBEdit7Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if (frmnotafiscal_menu.qrnota.State = dsinsert) or
    (frmnotafiscal_menu.qrnota.State = dsedit) then
  begin
    frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').AsFloat -
      frmnotafiscal_menu.qrnota.fieldbyname('DESCONTO').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('FRETE').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('seguro').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('OUTRAS_DESPESAS').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('VALOR_TOTAL_IPI').AsFloat;
  end;
end;

procedure Tfrmnotafiscal.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    // PageView1.ActivePageIndex := 1;
    tab_principal.ActivePageIndex := 1;

    if combocondpgto.text = '' then
      combocondpgto.setfocus
    else
      wwDBGrid1.setfocus;
  end;
end;

procedure Tfrmnotafiscal.Panel1Click(Sender: TObject);
begin
  // VERIFICAR
end;

procedure Tfrmnotafiscal.DBEdit12Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if (frmnotafiscal_menu.qrnota.State = dsinsert) or
    (frmnotafiscal_menu.qrnota.State = dsedit) then
  begin

    vdesconto_anterior := frmnotafiscal_menu.qrnota.fieldbyname
      ('desconto').AsFloat;

    frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').AsFloat -
      frmnotafiscal_menu.qrnota.fieldbyname('DESCONTO').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('FRETE').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('seguro').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('OUTRAS_DESPESAS').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('VALOR_TOTAL_IPI').AsFloat;

    { IF CHECK_DESCONTO.CHECKED = FALSE THEN
      BEGIN
      IF FRMNOTAFISCAL_MENU.QRNOTA.FIELDBYNAME('DESCONTO').ASFLOAT > 0 THEN
      BEGIN
      IF qrnotafiscal_item.FIELDBYNAME('ICMS').ASFLOAT > 0 THEN
      BEGIN
      FRMNOTAFISCAL_MENU.QRNOTA.FIELDBYNAME('BASE_CALCULO').ASFLOAT :=  frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat;
      FRMNOTAFISCAL_MENU.QRNOTA.FIELDBYNAME('VALOR_ICMS').ASFLOAT   :=  frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat;

      END;
      END;
      END;

    }
  end;

end;

procedure Tfrmnotafiscal.FormCreate(Sender: TObject);
begin
  mostra := false;
end;

procedure Tfrmnotafiscal.edata_cadastroKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmnotafiscal.DBEdit1Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmnotafiscal.DBEdit41KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    // PageView1.ActivePageIndex := 0;
    tab_principal.ActivePageIndex := 0;

    bgravar.setfocus;
  end;
end;

procedure Tfrmnotafiscal.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmnotafiscal.DBDateEdit1Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmnotafiscal.DBDateEdit1Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmnotafiscal.DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if TEdit(Sender).text = '  /  /    ' then
    begin
      // PageView1.ActivePageINDEX := 2;
      tab_principal.ActivePageIndex := 2;

      ETRANSPORTADOR.setfocus;
    end
    else
      PERFORM(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure Tfrmnotafiscal.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmnotafiscal.DBEdit15Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').AsFloat :=
    frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').AsFloat -
    (frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').AsFloat +
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').AsFloat +
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR3').AsFloat +
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR4').AsFloat);

end;

procedure Tfrmnotafiscal.DBEdit17Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').AsFloat :=
    frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').AsFloat -
    (frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').AsFloat +
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').AsFloat +
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR3').AsFloat +
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR4').AsFloat);

end;

procedure Tfrmnotafiscal.DBEdit19Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR3').AsFloat :=
    frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').AsFloat -
    (frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').AsFloat +
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').AsFloat +
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR3').AsFloat +
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR4').AsFloat);

end;

procedure Tfrmnotafiscal.DBEdit22Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
  frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR4').AsFloat :=
    frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').AsFloat -
    (frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').AsFloat +
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').AsFloat +
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR3').AsFloat +
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR4').AsFloat);

end;

procedure Tfrmnotafiscal.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    // PageView1.ActivePageIndex := 2;
    tab_principal.ActivePageIndex := 2;

    ETRANSPORTADOR.setfocus;
  end;
end;

procedure Tfrmnotafiscal.bloctransportadorClick(Sender: TObject);
begin
  frmloc_transportador := tfrmloc_transportador.create(self);
  frmloc_transportador.showmodal;
  frmnotafiscal_menu.qrnota.fieldbyname('codtransportador').asstring :=
    frmmodulo.qrtransportador.fieldbyname('codigo').asstring;

  frmnotafiscal_menu.qrnota.fieldbyname('placa').asstring :=
    frmmodulo.qrtransportador.fieldbyname('placa').asstring;
  frmnotafiscal_menu.qrnota.fieldbyname('placa_uf').asstring :=
    frmmodulo.qrtransportador.fieldbyname('ufplaca').asstring;
  DBEdit26.setfocus;
end;

procedure Tfrmnotafiscal.DBEdit26Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmnotafiscal.DBEdit34KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    // PageView1.ActivePageIndex := 3;
    tab_principal.ActivePageIndex := 3;

    DBEdit1.setfocus;
  end;
end;

procedure Tfrmnotafiscal.ETRANSPORTADORExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if (frmnotafiscal_menu.qrnota.State = dsinsert) or
    (frmnotafiscal_menu.qrnota.State = dsedit) then
  begin
    frmnotafiscal_menu.qrnota.fieldbyname('codtransportador').asstring :=
      frmprincipal.zerarcodigo(ETRANSPORTADOR.text, 6);
    if ETRANSPORTADOR.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrtransportador,
        ETRANSPORTADOR.text, 'codigo') then
        bloctransportadorClick(frmnotafiscal)
      else
      begin
        frmnotafiscal_menu.qrnota.fieldbyname('placa').asstring :=
          frmmodulo.qrtransportador.fieldbyname('placa').asstring;
        frmnotafiscal_menu.qrnota.fieldbyname('placa_uf').asstring :=
          frmmodulo.qrtransportador.fieldbyname('ufplaca').asstring;
        DBEdit26.setfocus;
      end;
    end
    else
      bloctransportador.setfocus;

  end;
end;

procedure Tfrmnotafiscal.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmnotafiscal.DBEdit3Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmnotafiscal.DBEdit24Change(Sender: TObject);
begin
  if mostra then
  begin
    try
      if frmnotafiscal_menu.qrnota.RecordCount > 0 then
      begin
        qrnotafiscal_item.close;
        qrnotafiscal_item.sql.clear;
        qrnotafiscal_item.sql.add('select * from c000062 where codnota = ''' +
          frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
        qrnotafiscal_item.Open;
      end;

      //
    except
    end;
  end;
end;

procedure Tfrmnotafiscal.bimprimirClick(Sender: TObject);
var
  f: textfile;
  TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7: string;
  i: integer;
  NNOTA, cfops: integer;
  V: real;
  y, a: integer;
  vvalor_cfop1, vvalor_cfop2: Double;
  vcfop1, vcfop2: string;
  cfop: string;
  vtot_cfop, vtot_soma_cfop, vtotal_cfop, vdesconto_nota, vsoma_total_produtos,
    vsoma_total_nota: Double;
  vtotal_despesas: Double;
  v1, v2: Double;
begin

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = ''' +
    frmnotafiscal_menu.qrnota.fieldbyname('codcliente').asstring + '''');
  frmmodulo.qrcliente.Open;

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.sql.add('select * from c000010 where codigo = ''' +
    frmnotafiscal_menu.qrnota.fieldbyname('codtransportador').asstring + '''');
  frmmodulo.qrtransportador.Open;

  qrapoio.close;
  qrapoio.sql.clear;
  qrapoio.sql.add('delete from cl00004');
  qrapoio.execsql;
  qrapoio.close;
  qrapoio.sql.clear;
  qrapoio.sql.add('select * from cl00004');
  qrapoio.Open;

  frmmodulo.qrconfig.Open;

  NNOTA := 0;
  vvalor_cfop1 := 0;
  vvalor_cfop2 := 0;

  i := 1;

  qrnotafiscal_item.close;
  qrnotafiscal_item.sql.clear;
  qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
  qrnotafiscal_item.sql.add('from c000062 item, c000025 pro');
  qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
  qrnotafiscal_item.sql.add('item.codnota = ''' +
    frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring +
    ''' order by item');
  qrnotafiscal_item.Open;

  qrnotafiscal_item.first;
  vsoma_total_produtos := 0;
  vsoma_total_nota := 0;
  vtotal_despesas := 0;

  while not qrnotafiscal_item.eof do
  begin
    vsoma_total_produtos := vsoma_total_produtos +
      qrnotafiscal_itemSUBTOTAL.AsFloat;
    vsoma_total_nota := vsoma_total_nota + qrnotafiscal_itemTOTAL.AsFloat;
    qrnotafiscal_item.Next;
    application.ProcessMessages;
  end;

  vsoma_total_nota := vsoma_total_nota + frmnotafiscal_menu.qrnotaOS_TOTAL1.
    AsFloat + frmnotafiscal_menu.qrnotaOS_TOTAL2.AsFloat +
    frmnotafiscal_menu.qrnotaOS_TOTAL3.AsFloat +
    frmnotafiscal_menu.qrnotaOS_TOTAL4.AsFloat +
    frmnotafiscal_menu.qrnotaOS_TOTAL5.AsFloat +
    frmnotafiscal_menu.qrnotaOS_TOTAL6.AsFloat +
    frmnotafiscal_menu.qrnotaFRETE.AsFloat + frmnotafiscal_menu.qrnotaSEGURO.
    AsFloat + frmnotafiscal_menu.qrnotaOUTRAS_DESPESAS.AsFloat +
    frmnotafiscal_menu.qrnotaICMS_SUB.AsFloat +
    frmnotafiscal_menu.qrnotaVALOR_TOTAL_IPI.AsFloat;

  vtotal_despesas := vtotal_despesas + frmnotafiscal_menu.qrnotaOS_TOTAL1.
    AsFloat + frmnotafiscal_menu.qrnotaOS_TOTAL2.AsFloat +
    frmnotafiscal_menu.qrnotaOS_TOTAL3.AsFloat +
    frmnotafiscal_menu.qrnotaOS_TOTAL4.AsFloat +
    frmnotafiscal_menu.qrnotaOS_TOTAL5.AsFloat +
    frmnotafiscal_menu.qrnotaOS_TOTAL6.AsFloat +
    frmnotafiscal_menu.qrnotaFRETE.AsFloat + frmnotafiscal_menu.qrnotaSEGURO.
    AsFloat + frmnotafiscal_menu.qrnotaOUTRAS_DESPESAS.AsFloat +
    frmnotafiscal_menu.qrnotaICMS_SUB.AsFloat +
    frmnotafiscal_menu.qrnotaVALOR_TOTAL_IPI.AsFloat;

  { if FRMSINTEGRA_GERAR.RoundNum(vsoma_total_nota,2) <> FRMSINTEGRA_GERAR.RoundNum(frmnotafiscal_menu.qrnotaTOTAL_NOTA.AsFloat,2) then
    begin
    Application.messagebox('Soma Total da Nota Fiscal está ERRADA, Verifique...!','Atenção!',mb_ok+mb_iconerror);
    bcancelarClick(frmnotafiscal);
    exit;
    end;
  }

  qrnotafiscal_item.first;

  qrsoma.close;
  qrsoma.sql.clear;
  qrsoma.sql.add('select SUM(TOTAL) TOTAL_GERAL from c000062 where codnota = '''
    + frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
  qrsoma.sql.add('and cfop = ''' + qrnotafiscal_item.fieldbyname('cfop')
    .asstring + '''');
  qrsoma.Open;

  {
    query.Close;
    query.SQL.Clear;
    query.sql.add('select * from c000062 where codnota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
    query.sql.add('and cfop = '''+qrnotafiscal_item.fieldbyname('cfop').asstring+'''');
    query.Open;
    if query.RecordCount > 0 then
    begin
    vtot_soma_cfop := 0;
    while not query.Eof do begin
    vtot_soma_cfop := vtot_soma_cfop + query.fieldbyname('total').AsFloat;
    query.Next;
    end;
    ShowMessage(FloatToStr(vtot_soma_cfop));
    end;

  }

  try

    // vvalor_cfop1 := frmprincipal.Arredondar(qrsoma.fieldbyname('total_geral').asfloat,2);
    vvalor_cfop1 := qrsoma.fieldbyname('total_geral').AsFloat;

    {
      if check_desconto.Checked = true then
      begin
      vvalor_cfop1 := qrsoma.fieldbyname('total_geral').asfloat;
      end
      else
      begin
      if (frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat*qrsoma.fieldbyname('total_geral').asfloat) > 0 then
      if frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat > 0 then
      vvalor_cfop1 := (frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat*qrsoma.fieldbyname('total_geral').asfloat)/
      frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat;
      end;
    }

  except
  end;

  // vvalor_cfop1 := qrsoma.fieldbyname('total_geral').asfloat;
  vcfop1 := qrnotafiscal_item.fieldbyname('cfop').asstring;

  cfop := qrnotafiscal_item.fieldbyname('cfop').asstring;
  cfops := 1;
  qrnotafiscal_item.first;
  while not qrnotafiscal_item.eof do
  begin
    if i = frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger then
    begin
      while i <> frmmodulo.qrconfig.fieldbyname('NF_SALTO_PAGINA').asinteger do
      begin
        i := i + 1;
        if i = frmmodulo.qrconfig.fieldbyname('NF_LINHA_TRANSPORTE').asinteger
        then
        begin
          qrapoio.Insert;
          qrapoio.fieldbyname('TOTAL').asstring := 'TRANSPORTAR';
          qrapoio.fieldbyname('TEXTO1').asstring := 'XXXXXXXXXX';
          qrapoio.fieldbyname('TEXTO2').asstring := 'XXXXXXXXXX';
          qrapoio.fieldbyname('TEXTO3').asstring := 'XXXXXXXXXX';
          qrapoio.fieldbyname('TEXTO4').asstring := 'XXXXXXXXXX';

          qrapoio.post;
        end
        else
        begin
          qrapoio.Insert;
          if i = frmmodulo.qrconfig.fieldbyname('NF_LINHA_SUBTOTAL').asinteger
          then
          begin
            qrapoio.fieldbyname('TEXTO1').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO2').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO3').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO4').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO6').asstring := 'XXXXXXXXXX';
          end;
          qrapoio.post;
        end;
      end;
      qrapoio.Insert;
      qrapoio.fieldbyname('PRODUTO').asstring :=
        '*** T R A N S P O R T A D O ***';
      qrapoio.post;
      qrapoio.Insert;
      qrapoio.fieldbyname('codproduto').asstring :=
        qrnotafiscal_item.fieldbyname('codproduto').asstring;
      qrapoio.fieldbyname('produto').asstring := qrnotafiscal_item.fieldbyname
        ('produto').asstring + ' ' + qrnotafiscal_item.fieldbyname('serial')
        .asstring + ' ' + qrnotafiscal_item.fieldbyname('grade').asstring;

      // verifica se a empresa vai codificar a qtde e o valor
      // pela quantidade de casas decimais descritas em configurações
      if codifica_nota_fiscal = 1 then
      begin
        if qrnotafiscal_item.fieldbyname('qtde').AsFloat > 0 then
          qrapoio.fieldbyname('qtde').asstring :=
            formatfloat(mascara_qtde,
            qrnotafiscal_item.fieldbyname('qtde').AsFloat);
        if qrnotafiscal_item.fieldbyname('unitario').AsFloat > 0 then
          qrapoio.fieldbyname('unitario').asstring :=
            formatfloat(mascara_valor,
            qrnotafiscal_item.fieldbyname('unitario').AsFloat);
        if qrnotafiscal_item.fieldbyname('total').AsFloat > 0 then
          qrapoio.fieldbyname('total').asstring :=
            formatfloat(mascara_valor,
            qrnotafiscal_item.fieldbyname('total').AsFloat);
      end
      else
      begin
        if qrnotafiscal_item.fieldbyname('qtde').AsFloat > 0 then
          qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000',
            qrnotafiscal_item.fieldbyname('qtde').AsFloat);
        if qrnotafiscal_item.fieldbyname('unitario').AsFloat > 0 then
          qrapoio.fieldbyname('unitario').asstring :=
            formatfloat('###,###,##0.0000',
            qrnotafiscal_item.fieldbyname('unitario').AsFloat);
        if qrnotafiscal_item.fieldbyname('total').AsFloat > 0 then
          qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00',
            qrnotafiscal_item.fieldbyname('total').AsFloat);
      end;

      qrapoio.fieldbyname('cf').asstring := qrnotafiscal_item.fieldbyname
        ('classificacao_fiscal').asstring;
      qrapoio.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname
        ('cst').asstring;
      qrapoio.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname
        ('unidade').asstring;
      qrapoio.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname
        ('icms').asstring;
      qrapoio.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname
        ('ipi').asstring;
      qrapoio.fieldbyname('texto8').asstring := qrnotafiscal_item.fieldbyname
        ('cfop').asstring;
      qrapoio.fieldbyname('texto7').asstring := qrnotafiscal_item.fieldbyname
        ('codgrade').asstring;

      qrapoio.post;
      NNOTA := NNOTA + 1;
      i := 2;
    end
    else
    begin
      qrapoio.Insert;
      qrapoio.fieldbyname('codproduto').asstring :=
        qrnotafiscal_item.fieldbyname('codproduto').asstring;
      qrapoio.fieldbyname('produto').asstring := qrnotafiscal_item.fieldbyname
        ('produto').asstring + ' ' + qrnotafiscal_item.fieldbyname('serial')
        .asstring + ' ' + qrnotafiscal_item.fieldbyname('grade').asstring;

      // verifica se a empresa vai codificar a qtde e o valor
      // pela quantidade de casas decimais descritas em configurações
      if codifica_nota_fiscal = 1 then
      begin
        if qrnotafiscal_item.fieldbyname('qtde').AsFloat > 0 then
          qrapoio.fieldbyname('qtde').asstring :=
            formatfloat(mascara_qtde,
            qrnotafiscal_item.fieldbyname('qtde').AsFloat);
        if qrnotafiscal_item.fieldbyname('unitario').AsFloat > 0 then
          qrapoio.fieldbyname('unitario').asstring :=
            formatfloat(mascara_valor,
            qrnotafiscal_item.fieldbyname('unitario').AsFloat);
        if qrnotafiscal_item.fieldbyname('total').AsFloat > 0 then
          qrapoio.fieldbyname('total').asstring :=
            formatfloat(mascara_valor,
            qrnotafiscal_item.fieldbyname('total').AsFloat);
      end
      else
      begin
        if qrnotafiscal_item.fieldbyname('qtde').AsFloat > 0 then
          qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000',
            qrnotafiscal_item.fieldbyname('qtde').AsFloat);
        if qrnotafiscal_item.fieldbyname('unitario').AsFloat > 0 then
          qrapoio.fieldbyname('unitario').asstring :=
            formatfloat('###,###,##0.0000',
            qrnotafiscal_item.fieldbyname('unitario').AsFloat);
        if qrnotafiscal_item.fieldbyname('total').AsFloat > 0 then
          qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00',
            qrnotafiscal_item.fieldbyname('total').AsFloat);
      end;

      qrapoio.fieldbyname('cf').asstring := qrnotafiscal_item.fieldbyname
        ('classificacao_fiscal').asstring;
      qrapoio.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname
        ('cst').asstring;
      qrapoio.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname
        ('unidade').asstring;
      qrapoio.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname
        ('icms').asstring;
      qrapoio.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname
        ('ipi').asstring;
      qrapoio.fieldbyname('texto8').asstring := qrnotafiscal_item.fieldbyname
        ('cfop').asstring;
      qrapoio.fieldbyname('texto7').asstring := qrnotafiscal_item.fieldbyname
        ('codgrade').asstring;
      qrapoio.post;

      if qrnotafiscal_item.fieldbyname('complemento').asstring <> '' then
      begin
        RichEdit1.text := qrnotafiscal_item.fieldbyname('Complemento').asstring;

        y := RichEdit1.Lines.Count;

        for a := 1 to y do
        begin
          if RichEdit1.Lines.Strings[a - 1] <> '' then
          begin
            qrapoio.Insert;
            qrapoio.fieldbyname('codproduto').asstring := '      ';
            qrapoio.fieldbyname('produto').asstring :=
              RichEdit1.Lines.Strings[a - 1];
            qrapoio.post;
            i := i + 1;
          end;
        end;
      end;

    end;

    if cfops = 1 then
    begin
      if qrnotafiscal_item.fieldbyname('cfop').asstring <> '' then
      begin
        if cfop <> qrnotafiscal_item.fieldbyname('cfop').asstring then
        begin
          cfop := cfop + '/' + qrnotafiscal_item.fieldbyname('cfop').asstring;

          qrsoma.close;
          qrsoma.sql.clear;
          qrsoma.sql.add
            ('select SUM(TOTAL+DESCONTO) TOTAL_GERAL from c000062 where codnota = '''
            + frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
          qrsoma.sql.add('and cfop = ''' + qrnotafiscal_item.fieldbyname('cfop')
            .asstring + '''');
          qrsoma.Open;

          if (frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat *
            qrsoma.fieldbyname('total_geral').AsFloat) > 0 then

            if frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat > 0
            then
              vvalor_cfop2 :=
                (frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat *
                qrsoma.fieldbyname('total_geral').AsFloat) /
                frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat;
          // vvalor_cfop2 := frmprincipal.Arredondar((frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat*qrsoma.fieldbyname('total_geral').asfloat)/
          // frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat,2);

          vcfop2 := qrnotafiscal_item.fieldbyname('cfop').asstring;

          cfops := 2;
        end;
      end;

    end;

    qrnotafiscal_item.Next;
    application.ProcessMessages;
    i := i + 1;
  end;

  while i < frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger do
  begin
    qrapoio.Insert;
    qrapoio.post;
    i := i + 1;
  end;

  frmmodulo.qrrelatorio.Open;
  frmmodulo.qrrelatorio.edit;

  if frmnotafiscal_menu.qrnotaDESCONTO.AsFloat > 0 then
    vdesconto_nota := frmnotafiscal_menu.qrnotaDESCONTO.AsFloat
  else
    vdesconto_nota := frmnotafiscal_menu.qrnotaDESCONTO_ITEM.AsFloat;

  if vdesconto_nota > 0 then
    // frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := 'DESCONTO INCONDICIONAL : R$ ' + FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnotaDESCONTO.AsFloat)
    frmmodulo.qrrelatorio.fieldbyname('linha4').asstring :=
      'DESCONTO INCONDICIONAL : R$ ' + formatfloat('###,###,##0.00',
      vdesconto_nota)
  else
    frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := '';

  frmmodulo.qrrelatorio.fieldbyname('linha5').asstring := '';
  frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := '';

  query.close;
  query.sql.clear;
  // query.sql.add('select cfop, sum(unitario*qtde) total from c000062');
  query.sql.add
    ('select cfop, sum(total) total , sum(desconto) desconto from c000062');
  query.sql.add('where codnota = ''' + frmnotafiscal_menu.qrnota.fieldbyname
    ('codigo').asstring + ''' group by cfop order by cfop');
  query.Open;
  query.first;
  texto := '';

  RVALOR.value := frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').AsFloat;
  vtot_cfop := query.RecordCount;

  while not query.eof do
  begin

    {
      IF (check_desconto.Checked = FALSE) then
      vtotal_cfop := QUERY.FIELDBYNAME('TOTAL').ASFLOAT
      else
      vtotal_cfop := QUERY.FIELDBYNAME('TOTAL').ASFLOAT-QUERY.FIELDBYNAME('DESCONTO').ASFLOAT;
    }

    RVALOR.value := frmprincipal.Arredondar(query.fieldbyname('total')
      .AsFloat, 2);

    // vtotal_cfop := RVALOR.Value;

    if vtot_cfop > 1 then
      vtotal_cfop := query.fieldbyname('TOTAL').AsFloat
    else
      vtotal_cfop := RVALOR.value;

    // showmessage(' a ' + floattostr(vtotal_cfop));

    v1 := vtotal_cfop;
    v2 := vtotal_despesas / query.RecordCount;

    vtotal_cfop := (vtotal_cfop + v2);

    application.ProcessMessages;

    // showmessage(floattostr(vtotal_cfop));

    RVALOR.value := RVALOR.value - vtotal_cfop;

    // ShowMessage(floattostr(RVALOR.Value)+ '   '+FloatToStr(vtotal_cfop)+ '  ' + FloatToStr(QUERY.FIELDBYNAME('TOTAL').ASFLOAT));

    // verifica se só tem um registro e tem diferença
    // no arredondamento se tiver acrescenta no valor do cfop
    // if ( vtot_cfop = 1 ) and ( RVALOR.Value > 0 )then vtotal_cfop := vtotal_cfop + RVALOR.Value;

    // ShowMessage('Total CFOP Novo : '+FloatToStr(frmPrincipal.Arredondar(vtotal_cfop,2)));

    texto := texto + ' CFOP ' + query.fieldbyname('CFOP').asstring + '  = R$ ' +
      formatfloat('###,###,##0.00', vtotal_cfop) + ' / ';

    {

      IF (check_desconto.Checked = FALSE) then

      //OR
      //       ((frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat) <> 0) then
      //       ((vdesconto_nota) <> 0) then
      begin
      //      percentual de desconto
      //V := ((frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat) * 100)/
      //      frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').asfloat;
      V := ((vdesconto_nota) * 100)/
      (frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').asfloat+vdesconto_nota);


      // V := (QUERY.FIELDBYNAME('total').ASFLOAT * 100)/frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').asfloat;

      texto := texto + ' CFOP '+QUERY.FIELDBYNAME('CFOP').ASSTRING +
      '  = R$ '+FORMATFLOAT('###,###,##0.00',vtotal_cfop -
      ((vtotal_cfop*v)/100))+' / ';

      ShowMessage(FORMATFLOAT('###,###,##0.00',vtotal_cfop -
      ((vtotal_cfop*v)/100)));


      end
      else
      begin
      texto := texto + ' CFOP '+QUERY.FIELDBYNAME('CFOP').ASSTRING +'  = R$ '+FORMATFLOAT('###,###,##0.00',vtotal_cfop)+' / ';
      end;

      ShowMessage(FloatToStr(vtotal_cfop));

    }

    query.Next;
    vtot_cfop := vtot_cfop - 1;
    application.ProcessMessages;
  end;

  frmmodulo.qrrelatorio.fieldbyname('linha5').asstring := texto;
  frmmodulo.qrrelatorio.fieldbyname('linha8').asstring := cfop;

  query.close;
  query.sql.clear;
  query.sql.add('select sum(qtde) qtde from c000062');
  query.sql.add('where codnota = ''' + frmnotafiscal_menu.qrnota.fieldbyname
    ('codigo').asstring + '''');
  query.Open;

  qtde_total_item := query.fieldbyname('qtde').AsFloat;

  frmmodulo.qrrelatorio.post;

  frmmodulo.conexaolocal.Commit;
  // frmmodulo.econexao2.Commit;

  qrapoio.close;
  qrapoio.Open;

  application.ProcessMessages;

  frmnotafiscal_impressao := tfrmnotafiscal_impressao.create(self);
  frmnotafiscal_impressao.showmodal;

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.sql.add('select * from c000010 order by nome');
  frmmodulo.qrtransportador.Open;
  frmmodulo.qrtransportador.IndexFieldNames := 'nome';

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.Open;
  frmmodulo.qrcliente.IndexFieldNames := 'nome';

end;

procedure Tfrmnotafiscal.EDATA_SAIDAEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
  if frmnotafiscal_menu.qrnota.State = dsinsert then
    EDATA_SAIDA.date := date;
  ehora.text := (FormatDateTime('hh:nn', now));
end;

procedure Tfrmnotafiscal.EDATA_SAIDAKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
  bimporta_cupom.Visible := True;
end;

procedure Tfrmnotafiscal.COMBOMOVIMENTOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmnotafiscal.DBEdit2Change(Sender: TObject);
begin
  if DBEdit2.text = 'C' then
  begin
    lsit.Caption := 'CANCELADA';
    lsit.font.Color := clred;
  end
  else
  begin
    lsit.Caption := 'ATIVA';
    lsit.font.Color := clblue;
  end;
end;

procedure Tfrmnotafiscal.BitBtn9Click(Sender: TObject);
var
  vrecno: integer;
  icodproduto, icodnota, icodlancamento: string;
  itotal: real;
begin
  if Edit4.text = '' then
  begin
    showmessage('Informação do Estado do Cliente Inválido...');
    ecliente.setfocus;
    exit;
  end;

  altera_item := 1;
  vrecno := qrnotafiscal_item.RecNo;
  qtde_anterior := qrnotafiscal_item.fieldbyname('qtde').AsFloat;

 { if qrnotafiscal_item.fieldbyname('codigo').asstring = '' then
  begin
    itotal := qrnotafiscal_item.fieldbyname('total').AsFloat;
    icodproduto := qrnotafiscal_item.fieldbyname('codproduto').asstring;
    icodnota := qrnotafiscal_item.fieldbyname('codnota').asstring;
   { icodlancamento := qrnotafiscal_item.fieldbyname('codlancamento').asstring;

    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.sql.add('update c000062 set');
    qrnotafiscal_item.sql.add('codigo = ''' + frmprincipal.codifica
      ('000062') + '''');
    qrnotafiscal_item.sql.add
      ('where total = :total and codproduto = :codproduto and codnota = :codnota and codlancamento = :codlancamento');
    qrnotafiscal_item.params.parambyname('total').AsFloat := itotal;
    qrnotafiscal_item.params.parambyname('codproduto').asstring := icodproduto;
    qrnotafiscal_item.params.parambyname('codnota').asstring := icodnota;
    qrnotafiscal_item.params.parambyname('codlancamento').asstring :=
      icodlancamento;
    qrnotafiscal_item.execsql;
    frmmodulo.Conexao.Commit;

    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
    qrnotafiscal_item.sql.add('from c000062 item, c000025 pro');
    qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
    qrnotafiscal_item.sql.add('item.codnota = ''' +     frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring +
      ''' AND ITEM=:ITEM order by item');
    qrnotafiscal_item.Open;
    qrnotafiscal_item.RecNo := vrecno;
  end; }

  frmnotafiscal_item2 := tfrmnotafiscal_item2.create(self);
  with frmnotafiscal_item2 do
  begin
    ed_codigo.text := qrnotafiscal_item.fieldbyname('CODPRODUTO').asstring;
    ed_produto.text := qrnotafiscal_item.fieldbyname('produto').asstring;
    ed_unidade.text := qrnotafiscal_item.fieldbyname('unidade').asstring;
    ed_qtde.value := qrnotafiscal_item.fieldbyname('QTDE').AsFloat;
    ed_unitario.value := qrnotafiscal_item.fieldbyname('UNITARIO').AsFloat;
    ed_total.value := qrnotafiscal_item.fieldbyname('TOTAL').AsFloat;
    ed_ipi_aliquota.value := qrnotafiscal_item.fieldbyname('IPI').AsFloat;
    ed_icms_aliquota.value := qrnotafiscal_item.fieldbyname('ICMS').AsFloat;
    ed_cfop.text := qrnotafiscal_item.fieldbyname('CFOP').asstring;
    ed_csosn.text := qrnotafiscal_item.fieldbyname('CSOSN').asstring;
    ed_grade_codigo.text := qrnotafiscal_item.fieldbyname('CODGRADE').asstring;
    ed_serial.text := qrnotafiscal_item.fieldbyname('SERIAL').asstring;
    ed_ipi_valor.value := qrnotafiscal_item.fieldbyname('VALOR_IPI').AsFloat;
    ed_classific.text := qrnotafiscal_item.fieldbyname
      ('CLASSIFICACAO_FISCAL').asstring;
    ed_cest.text := qrnotafiscal_item.fieldbyname
      ('CEST').asstring;
    ed_cst.text := qrnotafiscal_item.fieldbyname('CST').asstring;
    ed_icms_valor.value := qrnotafiscal_item.fieldbyname('VALOR_ICMS').AsFloat;
    ed_icms_reducao.value := qrnotafiscal_item.fieldbyname
      ('ICMS_REDUZIDO').AsFloat;
    ed_icms_base.value := qrnotafiscal_item.fieldbyname('BASE_CALCULO').AsFloat;
    margem_agregada := qrnotafiscal_item.fieldbyname('MARGEM_AGREGADA').AsFloat;
    ed_sub_base.value := qrnotafiscal_item.fieldbyname('BASE_SUB').AsFloat;
    ed_sub_valor.value := qrnotafiscal_item.fieldbyname('ICMS_SUB').AsFloat;
    ed_isenta.value := qrnotafiscal_item.fieldbyname('ISENTO').AsFloat;
    ed_outras.value := qrnotafiscal_item.fieldbyname('OUTRAS').AsFloat;
    ed_desconto.value := qrnotafiscal_item.fieldbyname('DESCONTO').AsFloat;
    ed_subtotal.value := qrnotafiscal_item.fieldbyname('SUBTOTAL').AsFloat;

    ed_PIS_base.value := qrnotafiscal_item.fieldbyname('pis_base').AsFloat;
    ed_PIS_valor.value := qrnotafiscal_item.fieldbyname('pis_valor').AsFloat;
    ed_PIS_aliquota.value := qrnotafiscal_item.fieldbyname
      ('pis_aliquota').AsFloat;

    ed_cofins_base.value := qrnotafiscal_item.fieldbyname
      ('cofins_base').AsFloat;
    ed_cofins_valor.value := qrnotafiscal_item.fieldbyname
      ('cofins_valor').AsFloat;
    ed_cofins_aliquota.value := qrnotafiscal_item.fieldbyname
      ('cofins_aliquota').AsFloat;

    ed_grade.text := qrnotafiscal_item.fieldbyname('GRADE').asstring;

    { PESO_NOVO }
    ed_PESO_BRUTO.value := qrnotafiscal_item.fieldbyname('PESO_BRUTO').AsFloat;
    ed_PESO_LIQUIDO.value := qrnotafiscal_item.fieldbyname
      ('PESO_LIQUIDO').AsFloat;

    pstate.Caption := 'Edição';
    pstate.Color := clred;
    pcodigo.Caption := qrnotafiscal_item.fieldbyname('CODIGO').asstring;
    ed_produto.enabled := false;
    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add
      ('select prod.*, est.* from c000025 prod, c000100 est where prod.codigo = est.codproduto and codigo = '''
      + qrnotafiscal_item.fieldbyname('codproduto').asstring + '''');
    qrproduto.Open;
    ed_estoque.value := qrproduto.fieldbyname('estoque_atual').AsFloat;
    ITM :=   qrnotafiscal_item.fieldbyname('ITEM').AsInteger;
  end;

  frmnotafiscal_item2.showmodal;

  qrnotafiscal_item.close;
  qrnotafiscal_item.sql.clear;
  qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
  qrnotafiscal_item.sql.add('from c000062 item, c000025 pro');
  qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
  qrnotafiscal_item.sql.add('item.codnota = ''' +
    frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring +
    ''' order by item');
  qrnotafiscal_item.Open;

  qrnotafiscal_item.RecNo := vrecno;
  grid1.setfocus;
end;

procedure Tfrmnotafiscal.eserieEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;

end;

procedure Tfrmnotafiscal.eserieExit(Sender: TObject);
begin
  if trim(eserie.text) = '0' then
  begin
    showmessage('Série Inválida, Verifique...');
    eserie.setfocus;
    exit;
  end;
  TEdit(Sender).Color := clwindow;
  edata_cadastro.setfocus;
end;

procedure Tfrmnotafiscal.brateioClick(Sender: TObject);
var
  vdesc_item: Double;
begin
   vtotal_produtos := 0;
  vtotal_nota := 0;

      vfrete_item     := 0;
      seguro_item     := 0;
      despesas_item   := 0;
      dif_fret        := 0;
      dif_seg         := 0;
      dif_out         := 0;
      vfrete_atual    := 0;
      vseguro_atual   := 0;
      vdespesas_atual := 0;

    qrnotafiscal_item.first;
    while not qrnotafiscal_item.eof do
    begin
      vfrete_item   := frmnotafiscal_menu.qrnotaFRETE.AsFloat;
      seguro_item   := frmnotafiscal_menu.qrnotaSEGURO.AsFloat;
      despesas_item := frmnotafiscal_menu.qrnotaOUTRAS_DESPESAS.AsFloat;

      if  (frmnotafiscal_menu.qrnota.fieldbyname('FRETE').AsFloat > 0 ) or
            (frmnotafiscal_menu.qrnota.fieldbyname('SEGURO').AsFloat > 0) or
              (frmnotafiscal_menu.qrnota.fieldbyname('OUTRAS_DESPESAS').AsFloat > 0)  then
       begin

        query.close;
        query.sql.clear;
        query.sql.add('update c000062 set');
        query.sql.add('frete = :fretex, ');
        query.sql.add('seguro = :segurox, outras_despesas = :despesasx');
        if qrnotafiscal_item.fieldbyname('codigo').asstring = '' then
        begin
          query.sql.add(',codigo = ''' + frmprincipal.codifica
            ('000062') + '''');
          query.sql.add
            (' where codproduto = :codproduto and codnota = :codnota and total = :total and codlancamento = :codlancamento');
          query.params.parambyname('total').AsFloat :=
            qrnotafiscal_item.fieldbyname('total').AsFloat;
          query.params.parambyname('codproduto').asstring :=
            qrnotafiscal_item.fieldbyname('codproduto').asstring;
          query.params.parambyname('codnota').asstring :=
            qrnotafiscal_item.fieldbyname('codnota').asstring;
          query.params.parambyname('codlancamento').asstring :=
            qrnotafiscal_item.fieldbyname('codlancamento').asstring;
        end
        else
        begin
          query.sql.add(' where codigo = ''' + qrnotafiscal_item.fieldbyname
            ('codigo').asstring + '''');
        end;

         if frmnotafiscal_menu.qrnotaFRETE.AsFloat > 0 then
            query.params.parambyname('fretex').AsFloat :=
              qrnotafiscal_item.fieldbyname('subtotal').AsFloat * vfrete_item /
              frmnotafiscal_menu.qrnotaVALOR_PRODUTOS.AsFloat
          else
            query.params.parambyname('fretex').AsFloat := 0;

         if frmnotafiscal_menu.qrnotaSEGURO.AsFloat > 0 then
            query.params.parambyname('segurox').AsFloat :=
              qrnotafiscal_item.fieldbyname('subtotal').AsFloat * seguro_item /
              frmnotafiscal_menu.qrnotaVALOR_PRODUTOS.AsFloat
         else
          query.params.parambyname('segurox').AsFloat := 0;

         if frmnotafiscal_menu.qrnotaOUTRAS_DESPESAS.AsFloat > 0 then
            query.params.parambyname('despesasx').AsFloat :=
              qrnotafiscal_item.fieldbyname('subtotal').AsFloat * despesas_item /
              frmnotafiscal_menu.qrnotaVALOR_PRODUTOS.AsFloat
          else
            query.params.parambyname('despesasx').AsFloat := 0;

        query.execsql;
//         vdesconto_atual := vdesconto_atual +
//         (qrnotafiscal_item.fieldbyname('subtotal').AsFloat * vdesc_item /
//            frmnotafiscal_menu.qrnotaVALOR_PRODUTOS.AsFloat);
       end
      else
      begin
        vdesconto_atual := vdesconto_atual + qrnotafiscal_item.fieldbyname
          ('desconto').AsFloat;
      end;

      vtotal_produtos := vtotal_produtos + qrnotafiscal_item.fieldbyname
        ('subtotal').AsFloat;
      vtotal_nota := vtotal_nota + qrnotafiscal_item.fieldbyname
        ('total').AsFloat;

      qrnotafiscal_item.Next;
      application.ProcessMessages;
    end;

    frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat :=
      vtotal_produtos;
    frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat := vtotal_nota;


    frmmodulo.Conexao.Commit;

    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
    qrnotafiscal_item.sql.add('from c000062 item, c000025 pro');
    qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
    qrnotafiscal_item.sql.add('item.codnota = ''' +
      frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring +
      ''' order by item');
    qrnotafiscal_item.Open;
{var
  vdesc_item: Double;
begin

  vtotal_produtos := 0;
  vtotal_nota := 0;

  if check_desconto.Checked = True then
  begin
    qrnotafiscal_item.first;
    while not qrnotafiscal_item.eof do
    begin
      if (frmnotafiscal_menu.qrnota.fieldbyname('desconto').AsFloat +
        frmnotafiscal_menu.qrnota.fieldbyname('desconto_item').AsFloat) > 0 then
      begin
        query.close;
        query.sql.clear;
        query.sql.add('update c000062 set');
        query.sql.add('desconto = :descontox, total = :totalx');
        if qrnotafiscal_item.fieldbyname('codigo').asstring = '' then
        begin
          query.sql.add(',codigo = ''' + frmprincipal.codifica
            ('000062') + '''');
          query.sql.add
            (' where codproduto = :codproduto and codnota = :codnota and total = :total and codlancamento = :codlancamento');
          query.params.parambyname('total').AsFloat :=
            qrnotafiscal_item.fieldbyname('total').AsFloat;
          query.params.parambyname('codproduto').asstring :=
            qrnotafiscal_item.fieldbyname('codproduto').asstring;
          query.params.parambyname('codnota').asstring :=
            qrnotafiscal_item.fieldbyname('codnota').asstring;
          query.params.parambyname('codlancamento').asstring :=
            qrnotafiscal_item.fieldbyname('codlancamento').asstring;
        end
        else
        begin
          query.sql.add(' where codigo = ''' + qrnotafiscal_item.fieldbyname
            ('codigo').asstring + '''');
        end;

        if frmnotafiscal_menu.qrnotaDESCONTO.AsFloat > 0 then
          vdesc_item := frmnotafiscal_menu.qrnotaDESCONTO.AsFloat
        else
          vdesc_item := frmnotafiscal_menu.qrnotaDESCONTO_ITEM.AsFloat;

        if frmnotafiscal_menu.qrnotaVALOR_PRODUTOS.AsFloat > 0 then
          query.params.parambyname('descontox').AsFloat :=
            qrnotafiscal_item.fieldbyname('subtotal').AsFloat * vdesc_item /
            frmnotafiscal_menu.qrnotaVALOR_PRODUTOS.AsFloat
        else
          query.params.parambyname('descontox').AsFloat := 0;

        query.params.parambyname('totalx').AsFloat :=
          (qrnotafiscal_item.fieldbyname('unitario').AsFloat *
          qrnotafiscal_item.fieldbyname('qtde').AsFloat) -
          query.params.parambyname('descontox').AsFloat;

        // ShowMessage(FLOATTOSTR(qrnotafiscal_item.FieldByName('subtotal').AsFloat)+' ' +
        // FLOATTOSTR(qrnotafiscal_item.FieldByName('QTDE').AsFloat)+' ' +
        // FLOATTOSTR(query.params.ParamByName('descontox').asfloat)+' ' +
        // FLOATTOSTR(query.params.ParamByName('totalx').asfloat));

        query.execsql;

        vdesconto_atual := vdesconto_atual +
          (qrnotafiscal_item.fieldbyname('subtotal').AsFloat * vdesc_item /
          frmnotafiscal_menu.qrnotaVALOR_PRODUTOS.AsFloat);
      end
      else
      begin
        vdesconto_atual := vdesconto_atual + qrnotafiscal_item.fieldbyname
          ('desconto').AsFloat;
      end;

      vtotal_produtos := vtotal_produtos + qrnotafiscal_item.fieldbyname
        ('subtotal').AsFloat;
      vtotal_nota := vtotal_nota + qrnotafiscal_item.fieldbyname
        ('total').AsFloat;

      qrnotafiscal_item.Next;
      application.ProcessMessages;
    end;

    frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat :=
      vtotal_produtos;
    frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat := vtotal_nota;

    if check_desconto.Checked = True then
    begin
      frmnotafiscal_menu.qrnota.fieldbyname('desconto_item').AsFloat :=
        vdesconto_atual;
      frmnotafiscal_menu.qrnota.fieldbyname('desconto').AsFloat := 0;
    end
    else
    begin
      frmnotafiscal_menu.qrnota.fieldbyname('desconto').AsFloat :=
        vdesconto_atual;
      frmnotafiscal_menu.qrnota.fieldbyname('desconto_item').AsFloat := 0;
    end;

    frmmodulo.Conexao.Commit;

    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
    qrnotafiscal_item.sql.add('from c000062 item, c000025 pro');
    qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
    qrnotafiscal_item.sql.add('item.codnota = ''' +
      frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring +
      ''' order by item');
    qrnotafiscal_item.Open;
  end
  else
  begin

    vdesconto_atual := 0;
    qrnotafiscal_item.first;
    while not qrnotafiscal_item.eof do
    begin
      vdesconto_atual := vdesconto_atual + qrnotafiscal_item.fieldbyname
        ('desconto').AsFloat;
      qrnotafiscal_item.Next;
    end;

    application.ProcessMessages;

    if vdesconto_atual > 0 then
      frmnotafiscal_menu.qrnota.fieldbyname('desconto').AsFloat :=
        vdesconto_atual
    else
    begin
      qrnotafiscal_item.first;
      while not qrnotafiscal_item.eof do
      begin
        query.close;
        query.sql.clear;
        query.sql.add('update c000062 set');
        query.sql.add('desconto = :descontox, total = :totalx');
        if qrnotafiscal_item.fieldbyname('codigo').asstring = '' then
        begin
          query.sql.add(',codigo = ''' + frmprincipal.codifica
            ('000062') + '''');
          query.sql.add
            (' where codproduto = :codproduto and codnota = :codnota and total = :total and codlancamento = :codlancamento');
          query.params.parambyname('total').AsFloat :=
            qrnotafiscal_item.fieldbyname('total').AsFloat;
          query.params.parambyname('codproduto').asstring :=
            qrnotafiscal_item.fieldbyname('codproduto').asstring;
          query.params.parambyname('codnota').asstring :=
            qrnotafiscal_item.fieldbyname('codnota').asstring;
          query.params.parambyname('codlancamento').asstring :=
            qrnotafiscal_item.fieldbyname('codlancamento').asstring;
        end
        else
        begin
          query.sql.add(' where codigo = ''' + qrnotafiscal_item.fieldbyname
            ('codigo').asstring + '''');
        end;

        if frmnotafiscal_menu.qrnotaDESCONTO.AsFloat > 0 then
          vdesc_item := frmnotafiscal_menu.qrnotaDESCONTO.AsFloat
        else
          vdesc_item := frmnotafiscal_menu.qrnotaDESCONTO_ITEM.AsFloat;

        if frmnotafiscal_menu.qrnotaVALOR_PRODUTOS.AsFloat > 0 then
          query.params.parambyname('descontox').AsFloat :=
            qrnotafiscal_item.fieldbyname('subtotal').AsFloat * vdesc_item /
            frmnotafiscal_menu.qrnotaVALOR_PRODUTOS.AsFloat
        else
          query.params.parambyname('descontox').AsFloat := 0;

        query.params.parambyname('totalx').AsFloat :=
          (qrnotafiscal_item.fieldbyname('unitario').AsFloat *
          qrnotafiscal_item.fieldbyname('qtde').AsFloat) -
          query.params.parambyname('descontox').AsFloat;

        // ShowMessage(FLOATTOSTR(query.params.ParamByName('totalx').asfloat));
        query.execsql;

        vdesconto_atual := vdesconto_atual +
          (qrnotafiscal_item.fieldbyname('subtotal').AsFloat * vdesc_item /
          frmnotafiscal_menu.qrnotaVALOR_PRODUTOS.AsFloat);

        qrnotafiscal_item.Next;
        vtotal_produtos := vtotal_produtos + qrnotafiscal_item.fieldbyname
          ('subtotal').AsFloat;
        vtotal_nota := vtotal_nota + qrnotafiscal_item.fieldbyname
          ('total').AsFloat;
        application.ProcessMessages;
      end;

    end;

    frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat :=
      vtotal_produtos;
    frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat := vtotal_nota;

    if check_desconto.Checked = True then
    begin
      frmnotafiscal_menu.qrnota.fieldbyname('desconto_item').AsFloat :=
        vdesconto_atual;
      frmnotafiscal_menu.qrnota.fieldbyname('desconto').AsFloat := 0;
    end
    else
    begin
      frmnotafiscal_menu.qrnota.fieldbyname('desconto').AsFloat :=
        vdesconto_atual;
      frmnotafiscal_menu.qrnota.fieldbyname('desconto_item').AsFloat := 0;
    end;

    frmmodulo.Conexao.Commit;

    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
    qrnotafiscal_item.sql.add('from c000062 item, c000025 pro');
    qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
    qrnotafiscal_item.sql.add('item.codnota = ''' +
      frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring +
      ''' order by item');
    qrnotafiscal_item.Open;

  end;           }
end;

procedure Tfrmnotafiscal.qrnotafiscal_itemNewRecord(DataSet: TDataSet);
begin
  qrnotafiscal_itemICMS.value := 0;
  qrnotafiscal_itemIPI.value := 0;
  qrnotafiscal_itemVALOR_IPI.value := 0;
  qrnotafiscal_itemVALOR_ICMS.value := 0;
  qrnotafiscal_itemBASE_CALCULO.value := 0;
  qrnotafiscal_itemDESCONTO.value := 0;
  qrnotafiscal_itemBASE_SUB.value := 0;
  qrnotafiscal_itemICMS_SUB.value := 0;
  qrnotafiscal_itemQTDE.value := 0;
  qrnotafiscal_itemUNITARIO.value := 0;
  qrnotafiscal_itemQTDE.value := 0;
end;

procedure Tfrmnotafiscal.ecodmodeloButtonClick(Sender: TObject);
begin
  resultado_pesquisa3 := '';
  resultado_pesquisa4 := '';
  parametro_pesquisa := '';
  frmxloc_modelo := tfrmxloc_modelo.create(self);
  frmxloc_modelo.showmodal;
  if resultado_pesquisa4 <> '' then
  begin

    qrmodelo.close;
    qrmodelo.sql.clear;
    qrmodelo.sql.add('select * from c000082 where sintegra = ''' +
      resultado_pesquisa4 + '''');
    qrmodelo.Open;
    frmnotafiscal_menu.qrnota.fieldbyname('modelo_nf').asstring :=
      resultado_pesquisa4;
    frmnotafiscal_menu.qrnota.fieldbyname('especie').asstring :=
      qrmodelo.fieldbyname('sigla').asstring;
    eserie.setfocus;
  end;

end;

procedure Tfrmnotafiscal.ecodmodeloKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmnotafiscal_menu.qrnota.State <> dsedit then
      if frmnotafiscal_menu.qrnota.State <> dsinsert then
        exit;

    frmnotafiscal_menu.qrnota.fieldbyname('modelo_nf').asstring :=
      frmprincipal.zerarcodigo(TEdit(Sender).text, 2);
    if TEdit(Sender).text <> '00' then
    begin
      qrmodelo.close;
      qrmodelo.sql.clear;
      qrmodelo.sql.add('select * from c000082 where sintegra = ''' +
        ecodmodelo.text + '''');
      qrmodelo.Open;

      if qrmodelo.RecordCount > 0 then
      begin
        frmnotafiscal_menu.qrnota.fieldbyname('especie').asstring :=
          qrmodelo.fieldbyname('sigla').asstring;
        PERFORM(WM_NEXTDLGCTL, 0, 0);
      end
      else
      begin
        application.messagebox('Modelo não cadastrado!', 'Aviso',
          mb_ok + mb_iconwarning);
        ecodmodelo.SelectAll;
        ecodmodelo.setfocus;
        ecodmodeloButtonClick(frmnotafiscal);
      end;
    end
    else
    begin
      ecodmodeloButtonClick(frmcompra);
    end;
  end;

end;

procedure Tfrmnotafiscal.efilialButtonClick(Sender: TObject);
begin
  frmloc_filial := tfrmloc_filial.create(self);
  frmloc_filial.showmodal;

  frmnotafiscal_menu.qrnota.fieldbyname('codfilial').asstring :=
    frmmodulo.qrfilial.fieldbyname('codigo').asstring;
  if frmnotafiscal_menu.qrnota.State = dsinsert then
  begin
    frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring :=
      frmprincipal.zerarcodigo(frmmodulo.qrfilial.fieldbyname('notafiscal')
      .asstring, 6);
  end;
  ecliente.setfocus;
end;

procedure Tfrmnotafiscal.ecfopButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  if COMBOMOVIMENTO.text = 'S' then
    parametro_pesquisa := ' = 2'
  else
    parametro_pesquisa := ' = 1';
  frmxloc_cfop := tfrmxloc_cfop.create(self);
  frmxloc_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrcfop.close;
    frmmodulo.qrcfop.sql.clear;
    frmmodulo.qrcfop.sql.add('select * from c000030');
    frmmodulo.qrcfop.sql.add('where cfop = ''' + resultado_pesquisa1 + '''');
    if COMBOMOVIMENTO.text = 'S' then
      frmmodulo.qrcfop.sql.add('and tipo = ''2''')
    else
      frmmodulo.qrcfop.sql.add('and tipo = ''1''');
    frmmodulo.qrcfop.Open;

    if frmmodulo.qrcfop.RecordCount > 0 then
    begin
      frmnotafiscal_menu.qrnota.fieldbyname('cfop').asstring :=
        frmmodulo.qrcfop.fieldbyname('cfop').asstring;
      frmnotafiscal_menu.qrnota.fieldbyname('INF1').asstring :=
        frmmodulo.qrcfop.fieldbyname('OBS1').asstring;
      frmnotafiscal_menu.qrnota.fieldbyname('INF2').asstring :=
        frmmodulo.qrcfop.fieldbyname('OBS2').asstring;
      frmnotafiscal_menu.qrnota.fieldbyname('INF3').asstring :=
        frmmodulo.qrcfop.fieldbyname('OBS3').asstring;
      frmnotafiscal_menu.qrnota.fieldbyname('INF4').asstring :=
        frmmodulo.qrcfop.fieldbyname('OBS4').asstring;
      ENUMERO.setfocus;
      // ecliente.setfocus;
    end;
  end
  else
  begin
    application.messagebox('CFOP Não Informado!', 'Erro', mb_ok + mb_iconerror);
    ecfop.setfocus;
    exit;
  end;
end;

procedure Tfrmnotafiscal.eclienteButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;

  frmnotafiscal_menu.qrcliente.Refresh;

  if resultado_pesquisa1 <> '' then
  begin
    frmnotafiscal_menu.qrnota.fieldbyname('CODcliente').asstring :=
      resultado_pesquisa1;
    Edit4.text := resultado_pesquisa5;
  end;
  COMBOMOVIMENTO.setfocus;
end;

procedure Tfrmnotafiscal.ecfopKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmnotafiscal.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmnotafiscal_menu.qrnota.State <> dsedit then
      if frmnotafiscal_menu.qrnota.State <> dsinsert then
        exit;

    frmnotafiscal_menu.qrnota.fieldbyname('codcliente').asstring :=
      frmprincipal.zerarcodigo(ecliente.text, 6);

    if ecliente.text <> '000000' then
    begin
      frmmodulo.qrcliente.close;
      frmmodulo.qrcliente.sql.clear;
      frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = ''' +
        ecliente.text + '''');
      frmmodulo.qrcliente.Open;
      if frmmodulo.qrcliente.RecordCount = 0 then
      begin
        application.messagebox('Cliente não cadastrado!', 'Aviso',
          mb_ok + mb_iconwarning);
        ecliente.text := '';
        ecliente.setfocus;
        exit;
      end
      else
      begin
        Edit4.text := frmmodulo.qrclienteUF.asstring;
        if (frmmodulo.qrclienteCPF.value = '') or
          (frmmodulo.qrclienteUF.value = '') or
          (frmmodulo.qrclienteRG.value = '') then
        begin
          if Edit4.text = '' then
          begin
            application.messagebox
              ('Não Informado o Estado do Cliente, Verifique!', 'Erro',
              mb_ok + mb_iconerror);
            ecliente.setfocus;
            exit;
          end;
          if application.messagebox
            ('Dados de Cliente Inconsistente, Deseja Continuar?', 'Aviso',
            mb_yesno + mb_iconwarning) = idno then
          begin
            exit;
          end;
        end;
      end;
      PERFORM(WM_NEXTDLGCTL, 0, 0);
    end
    else
    begin
      eclienteButtonClick(frmnotafiscal);
    end;
  end;
end;

procedure Tfrmnotafiscal.check_estoqueKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    check_desconto.setfocus;
end;

procedure Tfrmnotafiscal.check_descontoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bincluir_item.setfocus;
end;

procedure Tfrmnotafiscal.FormShow(Sender: TObject);
begin
  // 22/10/2015
  cb_Finalidade.ItemIndex := frmnotafiscal_menu.qrnota.fieldbyname
  ('TIPO_FINALIDADE').AsInteger;

  cbPress.ItemIndex := frmnotafiscal_menu.qrnota.fieldbyname
     ('ind_press').AsInteger;

  CBForma.ItemIndex :=frmnotafiscal_menu.qrnota.fieldbyname
  ('ind_pag').AsInteger;


  tab_principal.ActivePageIndex := 0;
  venda_veiculo := false;
  if frmnotafiscal_menu.qrnota.State = dsedit then
  begin
    check_estoque.enabled := false;
  end
  else
  begin
    check_estoque.enabled := True;
  end;

  if frmnotafiscal_menu.qrnota.State = dsinsert then
  begin

    if frmmodulo.qrfilial.fieldbyname('optante_simples').asstring = 'S' then
    begin
      frmnotafiscal_menu.qrnota.fieldbyname('OBS1').asstring :=
        'DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL';
      frmnotafiscal_menu.qrnota.fieldbyname('OBS2').asstring :=
        'NÃO GERA DIREITO A CRÉDITO FISCAL DE ICMS, DE ISS E DE IPI';
    end
    else
    begin
      frmnotafiscal_menu.qrnota.fieldbyname('OBS1').asstring := '';
      frmnotafiscal_menu.qrnota.fieldbyname('OBS2').asstring := '';
    end;

    if frmmodulo.qrconfig.fieldbyname('BAIXAR_ESTOQUE_NOTA_SAIDA').asinteger = 1
    then
      check_estoque.Checked := True
    else
      check_estoque.Checked := false;

    frmnotafiscal_menu.qrempresa.close;
    frmnotafiscal_menu.qrempresa.sql.clear;
    frmnotafiscal_menu.qrempresa.sql.add('select * from c000004');
    frmnotafiscal_menu.qrempresa.Open;

    Edit3.text := frmnotafiscal_menu.qrempresa.fieldbyname('uf').asstring;
    frmnotafiscal_menu.qrnota.fieldbyname('CODFILIAL').asstring :=
      frmnotafiscal_menu.qrempresa.fieldbyname('codigo').asstring;

    frmnotafiscal_menu.qrempresa.close;
    frmnotafiscal_menu.qrempresa.sql.clear;
    frmnotafiscal_menu.qrempresa.sql.add
      ('select * from c000004 where codigo = ''' +
      frmnotafiscal_menu.qrnotaCODFILIAL.value + '''');
    frmnotafiscal_menu.qrempresa.Open;

  end
  else
  begin
    frmnotafiscal_menu.qrempresa.close;
    frmnotafiscal_menu.qrempresa.sql.clear;
    frmnotafiscal_menu.qrempresa.sql.add
      ('select * from c000004 where codigo = ''' +
      frmnotafiscal_menu.qrnotaCODFILIAL.value + '''');
    frmnotafiscal_menu.qrempresa.Open;
    Edit3.text := frmnotafiscal_menu.qrempresa.fieldbyname('uf').asstring;
  end;

  frmmodulo.qrformapgto.Open;
  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.sql.clear;
  frmmodulo.qrcondpgto.sql.add('select * from c000015 order by condpgto');
  frmmodulo.qrcondpgto.Open;
  frmmodulo.qrcondpgto.IndexFieldNames := 'condpgto';

  qrnotafiscal_item.close;
  qrnotafiscal_item.sql.clear;
  qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
  qrnotafiscal_item.sql.add('from c000062 item, c000025 pro');
  qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
  qrnotafiscal_item.sql.add('item.codnota = ''' +
    frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring +
    ''' order by item');
  qrnotafiscal_item.Open;

  if qrnotafiscal_item.fieldbyname('item').asstring = '' then
  begin
    nf_item := 1;
    qrnotafiscal_item.first;
    while not qrnotafiscal_item.eof do
    begin
      query.close;
      query.sql.clear;
      query.sql.add('update c000062 set item = ' + inttostr(nf_item) +
        ' where codigo = ''' + qrnotafiscal_item.fieldbyname('codigo')
        .asstring + '''');
      query.execsql;
      nf_item := nf_item + 1;
      qrnotafiscal_item.Next;
    end;
  end
  else
    nf_item := qrnotafiscal_item.RecordCount + 1;

  qrnotafiscal_item.Refresh;

  if frmnotafiscal_menu.qrnota.fieldbyname('codcliente').asstring <> '' then
  begin
    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from c000007 where codigo = ''' +
      frmnotafiscal_menu.qrnota.fieldbyname('codcliente').asstring + '''');
    qrcliente.Open;
    Edit4.text := qrcliente.fieldbyname('uf').asstring;
  end;

  qrreceber.close;
  qrreceber.sql.clear;
  qrreceber.sql.add('select * from c000117');
  qrreceber.sql.add('where cod_nota = ''' +
    frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
  qrreceber.sql.add('order by numero');
  qrreceber.Open;

  if frmnotafiscal_menu.vopcao_nfs = 3 then
  begin
    bgravar.enabled := false;
    bimprimirClick(frmnotafiscal);
  end;
  efilial.setfocus;

end;

procedure Tfrmnotafiscal.RzDBNumericEdit18KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmnotafiscal.RzDBNumericEdit20KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmnotafiscal.OS_QTDE1Exit(Sender: TObject);
begin
  if frmnotafiscal_menu.qrnota.State in [dsinsert, dsedit] then
  begin
    frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL1').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('OS_QTDE1').AsFloat *
      frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT1').AsFloat;
    frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL2').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('OS_QTDE2').AsFloat *
      frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT2').AsFloat;
    frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL3').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('OS_QTDE3').AsFloat *
      frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT3').AsFloat;
    frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL4').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('OS_QTDE4').AsFloat *
      frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT4').AsFloat;
    frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL5').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('OS_QTDE5').AsFloat *
      frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT5').AsFloat;
    frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL6').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('OS_QTDE6').AsFloat *
      frmnotafiscal_menu.qrnota.fieldbyname('OS_UNIT6').AsFloat;

    frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL_GERAL').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL1').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL2').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL3').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL4').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL5').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL6').AsFloat;

    if frmnotafiscal_menu.qrnota.fieldbyname('OS_ISS').AsFloat > 0 then
    begin
      frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL_ISS').AsFloat :=
        frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL_GERAL').AsFloat *
        (frmnotafiscal_menu.qrnota.fieldbyname('OS_ISS').AsFloat / 100);
    end;

    frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').AsFloat +
      (frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('frete').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('seguro').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').AsFloat +
      frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').AsFloat) -
      frmnotafiscal_menu.qrnota.fieldbyname('desconto').AsFloat;
  end;
end;

procedure Tfrmnotafiscal.ed_serv1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmnotafiscal_menu.qrnota.State in [dsinsert, dsedit] then
    begin
      if TEdit(Sender).text <> '' then
      begin
        frmnotafiscal_menu.qrnota.fieldbyname('os_cod1').asstring :=
          frmprincipal.zerarcodigo(TEdit(Sender).text, 6);

        qrservico.close;
        qrservico.sql.clear;
        qrservico.sql.add('select * from c000011 where codigo = ''' +
          frmnotafiscal_menu.qrnota.fieldbyname('os_cod1').asstring + '''');
        qrservico.Open;
        if qrservico.RecordCount > 0 then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('os_serv1').asstring :=
            qrservico.fieldbyname('servico').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('os_comp1').asstring := '';
          frmnotafiscal_menu.qrnota.fieldbyname('os_unit1').AsFloat :=
            qrservico.fieldbyname('valor').AsFloat;
          frmnotafiscal_menu.qrnota.fieldbyname('os_qtde1').AsFloat := 1;
          frmnotafiscal_menu.qrnota.fieldbyname('os_total1').AsFloat :=
            qrservico.fieldbyname('valor').AsFloat;
          OS_QTDE1Exit(frmnotafiscal);
          PERFORM(WM_NEXTDLGCTL, 0, 0);
        end
        else
        begin
          application.messagebox('Serviço não encontrado!', 'Erro',
            mb_yesno + mb_iconquestion);
          TEdit(Sender).setfocus;
        end;
      end
      else
      begin
        ed_serv1ButtonClick(frmnotafiscal);
      end;
    end;
  end;

end;

procedure Tfrmnotafiscal.ed_serv1ButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_servico := Tfrmxloc_servico.create(self);
  frmxloc_servico.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    frmnotafiscal_menu.qrnota.fieldbyname('os_cod1').asstring :=
      resultado_pesquisa1;
    TEdit(Sender).setfocus;
  end;
end;

procedure Tfrmnotafiscal.ed_serv2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmnotafiscal_menu.qrnota.State in [dsinsert, dsedit] then
    begin
      if TEdit(Sender).text <> '' then
      begin
        frmnotafiscal_menu.qrnota.fieldbyname('os_cod2').asstring :=
          frmprincipal.zerarcodigo(TEdit(Sender).text, 6);

        qrservico.close;
        qrservico.sql.clear;
        qrservico.sql.add('select * from c000011 where codigo = ''' +
          frmnotafiscal_menu.qrnota.fieldbyname('os_cod2').asstring + '''');
        qrservico.Open;
        if qrservico.RecordCount > 0 then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('os_serv2').asstring :=
            qrservico.fieldbyname('servico').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('os_comp2').asstring := '';
          frmnotafiscal_menu.qrnota.fieldbyname('os_unit2').AsFloat :=
            qrservico.fieldbyname('valor').AsFloat;
          frmnotafiscal_menu.qrnota.fieldbyname('os_qtde2').AsFloat := 1;
          frmnotafiscal_menu.qrnota.fieldbyname('os_total2').AsFloat :=
            qrservico.fieldbyname('valor').AsFloat;
          OS_QTDE1Exit(frmnotafiscal);
          PERFORM(WM_NEXTDLGCTL, 0, 0);
        end
        else
        begin
          application.messagebox('Serviço não encontrado!', 'Erro',
            mb_yesno + mb_iconquestion);
          TEdit(Sender).setfocus;
        end;
      end
      else
      begin
        ed_serv2ButtonClick(frmnotafiscal);
      end;
    end;
  end;
end;

procedure Tfrmnotafiscal.ed_serv3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmnotafiscal_menu.qrnota.State in [dsinsert, dsedit] then
    begin
      if TEdit(Sender).text <> '' then
      begin
        frmnotafiscal_menu.qrnota.fieldbyname('os_cod3').asstring :=
          frmprincipal.zerarcodigo(TEdit(Sender).text, 6);

        qrservico.close;
        qrservico.sql.clear;
        qrservico.sql.add('select * from c000011 where codigo = ''' +
          frmnotafiscal_menu.qrnota.fieldbyname('os_cod3').asstring + '''');
        qrservico.Open;
        if qrservico.RecordCount > 0 then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('os_serv3').asstring :=
            qrservico.fieldbyname('servico').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('os_comp3').asstring := '';
          frmnotafiscal_menu.qrnota.fieldbyname('os_unit3').AsFloat :=
            qrservico.fieldbyname('valor').AsFloat;
          frmnotafiscal_menu.qrnota.fieldbyname('os_qtde3').AsFloat := 1;
          frmnotafiscal_menu.qrnota.fieldbyname('os_total3').AsFloat :=
            qrservico.fieldbyname('valor').AsFloat;
          OS_QTDE1Exit(frmnotafiscal);
          PERFORM(WM_NEXTDLGCTL, 0, 0);
        end
        else
        begin
          application.messagebox('Serviço não encontrado!', 'Erro',
            mb_yesno + mb_iconquestion);
          TEdit(Sender).setfocus;
        end;
      end
      else
      begin
        ed_serv3ButtonClick(frmnotafiscal);
      end;
    end;
  end;
end;

procedure Tfrmnotafiscal.ed_serv4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmnotafiscal_menu.qrnota.State in [dsinsert, dsedit] then
    begin
      if TEdit(Sender).text <> '' then
      begin
        frmnotafiscal_menu.qrnota.fieldbyname('os_cod4').asstring :=
          frmprincipal.zerarcodigo(TEdit(Sender).text, 6);

        qrservico.close;
        qrservico.sql.clear;
        qrservico.sql.add('select * from c000011 where codigo = ''' +
          frmnotafiscal_menu.qrnota.fieldbyname('os_cod4').asstring + '''');
        qrservico.Open;
        if qrservico.RecordCount > 0 then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('os_serv4').asstring :=
            qrservico.fieldbyname('servico').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('os_comp4').asstring := '';
          frmnotafiscal_menu.qrnota.fieldbyname('os_unit4').AsFloat :=
            qrservico.fieldbyname('valor').AsFloat;
          frmnotafiscal_menu.qrnota.fieldbyname('os_qtde4').AsFloat := 1;
          frmnotafiscal_menu.qrnota.fieldbyname('os_total4').AsFloat :=
            qrservico.fieldbyname('valor').AsFloat;
          OS_QTDE1Exit(frmnotafiscal);
          PERFORM(WM_NEXTDLGCTL, 0, 0);
        end
        else
        begin
          application.messagebox('Serviço não encontrado!', 'Erro',
            mb_yesno + mb_iconquestion);
          TEdit(Sender).setfocus;
        end;
      end
      else
      begin
        ed_serv4ButtonClick(frmnotafiscal);
      end;
    end;
  end;
end;

procedure Tfrmnotafiscal.ed_serv5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmnotafiscal_menu.qrnota.State in [dsinsert, dsedit] then
    begin
      if TEdit(Sender).text <> '' then
      begin
        frmnotafiscal_menu.qrnota.fieldbyname('os_cod5').asstring :=
          frmprincipal.zerarcodigo(TEdit(Sender).text, 6);

        qrservico.close;
        qrservico.sql.clear;
        qrservico.sql.add('select * from c000011 where codigo = ''' +
          frmnotafiscal_menu.qrnota.fieldbyname('os_cod5').asstring + '''');
        qrservico.Open;
        if qrservico.RecordCount > 0 then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('os_serv5').asstring :=
            qrservico.fieldbyname('servico').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('os_comp5').asstring := '';
          frmnotafiscal_menu.qrnota.fieldbyname('os_unit5').AsFloat :=
            qrservico.fieldbyname('valor').AsFloat;
          frmnotafiscal_menu.qrnota.fieldbyname('os_qtde5').AsFloat := 1;
          frmnotafiscal_menu.qrnota.fieldbyname('os_total5').AsFloat :=
            qrservico.fieldbyname('valor').AsFloat;
          OS_QTDE1Exit(frmnotafiscal);
          PERFORM(WM_NEXTDLGCTL, 0, 0);
        end
        else
        begin
          application.messagebox('Serviço não encontrado!', 'Erro',
            mb_yesno + mb_iconquestion);
          TEdit(Sender).setfocus;
        end;
      end
      else
      begin
        ed_serv5ButtonClick(frmnotafiscal);
      end;
    end;
  end;
end;

procedure Tfrmnotafiscal.ed_serv6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if frmnotafiscal_menu.qrnota.State in [dsinsert, dsedit] then
    begin
      if TEdit(Sender).text <> '' then
      begin
        frmnotafiscal_menu.qrnota.fieldbyname('os_cod6').asstring :=
          frmprincipal.zerarcodigo(TEdit(Sender).text, 6);

        qrservico.close;
        qrservico.sql.clear;
        qrservico.sql.add('select * from c000011 where codigo = ''' +
          frmnotafiscal_menu.qrnota.fieldbyname('os_cod6').asstring + '''');
        qrservico.Open;
        if qrservico.RecordCount > 0 then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('os_serv6').asstring :=
            qrservico.fieldbyname('servico').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('os_comp6').asstring := '';
          frmnotafiscal_menu.qrnota.fieldbyname('os_unit6').AsFloat :=
            qrservico.fieldbyname('valor').AsFloat;
          frmnotafiscal_menu.qrnota.fieldbyname('os_qtde6').AsFloat := 1;
          frmnotafiscal_menu.qrnota.fieldbyname('os_total6').AsFloat :=
            qrservico.fieldbyname('valor').AsFloat;
          OS_QTDE1Exit(frmnotafiscal);
          PERFORM(WM_NEXTDLGCTL, 0, 0);
        end
        else
        begin
          application.messagebox('Serviço não encontrado!', 'Erro',
            mb_yesno + mb_iconquestion);
          TEdit(Sender).setfocus;
        end;
      end
      else
      begin
        ed_serv6ButtonClick(frmnotafiscal);
      end;
    end;
  end;
end;

procedure Tfrmnotafiscal.ed_serv2ButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_servico := Tfrmxloc_servico.create(self);
  frmxloc_servico.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    frmnotafiscal_menu.qrnota.fieldbyname('os_cod2').asstring :=
      resultado_pesquisa1;
    TEdit(Sender).setfocus;
  end;
end;

procedure Tfrmnotafiscal.ed_serv3ButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_servico := Tfrmxloc_servico.create(self);
  frmxloc_servico.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    frmnotafiscal_menu.qrnota.fieldbyname('os_cod3').asstring :=
      resultado_pesquisa1;
    TEdit(Sender).setfocus;
  end;
end;

procedure Tfrmnotafiscal.ed_serv4ButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_servico := Tfrmxloc_servico.create(self);
  frmxloc_servico.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    frmnotafiscal_menu.qrnota.fieldbyname('os_cod4').asstring :=
      resultado_pesquisa1;
    TEdit(Sender).setfocus;
  end;
end;

procedure Tfrmnotafiscal.ed_serv5ButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_servico := Tfrmxloc_servico.create(self);
  frmxloc_servico.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    frmnotafiscal_menu.qrnota.fieldbyname('os_cod5').asstring :=
      resultado_pesquisa1;
    TEdit(Sender).setfocus;
  end;
end;

procedure Tfrmnotafiscal.ed_serv6ButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_servico := Tfrmxloc_servico.create(self);
  frmxloc_servico.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    frmnotafiscal_menu.qrnota.fieldbyname('os_cod6').asstring :=
      resultado_pesquisa1;
    TEdit(Sender).setfocus;
  end;
end;

procedure Tfrmnotafiscal.RzDBNumericEdit20Exit(Sender: TObject);
begin
  if frmnotafiscal_menu.qrnota.State in [dsinsert, dsedit] then
  begin

    if frmnotafiscal_menu.qrnota.fieldbyname('OS_ISS').AsFloat > 0 then
    begin
      frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL_ISS').AsFloat :=
        frmnotafiscal_menu.qrnota.fieldbyname('OS_TOTAL_GERAL').AsFloat *
        (frmnotafiscal_menu.qrnota.fieldbyname('OS_ISS').AsFloat / 100);
    end;
  end;
end;

procedure Tfrmnotafiscal.ENUMEROEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmnotafiscal.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #8 then
    if Key = #13 then
      PERFORM(WM_NEXTDLGCTL, 0, 0)
    else if (Key in ['0' .. '9']) then
      //
    else
      abort;
end;

procedure Tfrmnotafiscal.combocondpgtoExit(Sender: TObject);
var
  prestacao: integer;
  valor: real;
  Key: Char;
begin
//  if Key = #13 then
 // begin
    TEdit(Sender).Color := clwindow;

    if combocondpgto.text <> '' then
    begin
      if frmmodulo.qrcondpgto.locate('condpgto', combocondpgto.text,
        [loCaseInsensitive]) then
      begin
        frmmodulo.qrcondpgto_parcela.close;
        frmmodulo.qrcondpgto_parcela.sql.clear;
        frmmodulo.qrcondpgto_parcela.sql.add
          ('select * from c000016 where codcondpgto = ''' +
          frmmodulo.qrcondpgto.fieldbyname('codigo').asstring +
          ''' order by codigo');
        frmmodulo.qrcondpgto_parcela.Open;
        if frmmodulo.qrcondpgto_parcela.RecordCount > 0 then
        begin
          qrreceber.close;
          qrreceber.sql.clear;
          qrreceber.sql.add('delete from c000117');
          qrreceber.sql.add('where cod_nota = ''' +
            frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
          qrreceber.execsql;
          qrreceber.close;
          qrreceber.sql.clear;
          qrreceber.sql.add('select * from c000117');
          qrreceber.sql.add('where cod_nota = ''' +
            frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
          qrreceber.sql.add('order by numero');
          qrreceber.Open;

          rqtde.IntValue := frmmodulo.qrcondpgto_parcela.RecordCount;

          frmmodulo.qrcondpgto_parcela.first;
          prestacao := 1;

          while not frmmodulo.qrcondpgto_parcela.eof do
          begin
            qrreceber.Insert;
            qrreceber.fieldbyname('numero').asstring :=
              frmprincipal.zerarcodigo(inttostr(prestacao), 2);
            qrreceber.fieldbyname('vencimento').asDATETIME :=
              frmnotafiscal_menu.qrnota.fieldbyname('data').asDATETIME +
              frmmodulo.qrcondpgto_parcela.fieldbyname('dias').asinteger;

            valor := frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').AsFloat
              * (frmmodulo.qrcondpgto_parcela.fieldbyname('percentual')
              .AsFloat / 100);

            if frmmodulo.qrcondpgto_parcela.fieldbyname('juros').AsFloat > 0
            then
              valor := valor +
                (valor * (frmmodulo.qrcondpgto_parcela.fieldbyname('juros')
                .AsFloat / 100));

            qrreceber.fieldbyname('valor').AsFloat :=
            frmprincipal.Arredondar(valor, 2);
            qrreceber.fieldbyname('documento').asstring :=
              frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring + '/' +
              inttostr(prestacao);

            qrreceber.fieldbyname('TIPO').asstring := 'DUPLICATA';

            qrreceber.post;
            prestacao := prestacao + 1;
            frmmodulo.qrcondpgto_parcela.Next;
          end;
          qrreceber.Open;

          rsoma.value := frmnotafiscal_menu.qrnota.fieldbyname
            ('TOTAL_NOTA').AsFloat;

          rdiferenca.value := 0;
          qrreceber.Refresh;
          if tab_principal.ActivePageIndex = 1 then
            wwDBGrid1.setfocus;
        end
        else
        begin
          application.messagebox
            ('Esta Condição de Pagamento não possue parcelas! Seu cadastro não foi feito corretamente!',
            'Atenção', mb_ok + mb_iconwarning);
          if tab_principal.ActivePageIndex = 1 then
            combocondpgto.setfocus;
        end;
      end
      else
      begin
        application.messagebox('Condição de Pagamento não encontrada!', 'Aviso',
          mb_ok + mb_iconerror);
        if tab_principal.ActivePageIndex = 1 then
          combocondpgto.setfocus;
      end;
    end
    else
    begin
      if tab_principal.ActivePageIndex = 1 then
        rqtde.setfocus;
    end;
  end;
//end;

procedure Tfrmnotafiscal.combocondpgtoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmnotafiscal.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmnotafiscal.rqtdeExit(Sender: TObject);
var
  qtde, prestacao: integer;
  valor: real;
begin
  TEdit(Sender).Color := clwindow;

  if rqtde.value > 0 then
  begin

    prestacao := 1;
    qtde := trunc(rqtde.value);

    valor := frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').AsFloat / qtde;

    qrreceber.close;
    qrreceber.sql.clear;
    qrreceber.sql.add('delete from c000117');
    qrreceber.sql.add('where cod_nota = ''' +
      frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
    qrreceber.execsql;
    qrreceber.close;
    qrreceber.sql.clear;
    qrreceber.sql.add('select * from c000117');
    qrreceber.sql.add('where cod_nota = ''' +
      frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
    qrreceber.sql.add('order by numero');
    qrreceber.Open;

    while qtde <> 0 do
    begin
      qrreceber.Insert;
      qrreceber.fieldbyname('numero').asstring :=
        frmprincipal.zerarcodigo(inttostr(prestacao), 2);
      qrreceber.fieldbyname('vencimento').asDATETIME :=
        incmonth(frmnotafiscal_menu.qrnota.fieldbyname('data').asDATETIME,
        prestacao);
      qrreceber.fieldbyname('valor').AsFloat := valor;
      qrreceber.fieldbyname('documento').asstring :=
        frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring + '/' +
        inttostr(prestacao);
      qrreceber.fieldbyname('TIPO').asstring := 'DUPLICATA';
      qrreceber.post;
      prestacao := prestacao + 1;
      qtde := qtde - 1;
    end;

    qrreceber.Refresh;
    rsoma.value := frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').AsFloat;

    rdiferenca.value := 0;
    if tab_principal.ActivePageIndex = 1 then
      wwDBGrid1.setfocus;
  end;
end;

procedure Tfrmnotafiscal.qrreceberBeforePost(DataSet: TDataSet);
begin
  if qrreceber.State = dsinsert then
    qrreceber.fieldbyname('codigo').asstring := frmprincipal.codifica('000062');

  qrreceber.fieldbyname('cod_nota').asstring :=
    frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring;
end;

procedure Tfrmnotafiscal.qryBeforePost(DataSet: TDataSet);
begin
  qry.fieldbyname('numnota').asstring := frmnotafiscal_menu.qrnota.fieldbyname
    ('numero').asstring;
  qry.fieldbyname('codnota').asstring := frmnotafiscal_menu.qrnota.fieldbyname
    ('codigo').asstring;
end;

procedure Tfrmnotafiscal.tab_principalChange(Sender: TObject);
var
  itotal: real;
begin

  if tab_principal.ActivePageIndex = 1 then
  begin
    if (rtipo.ItemIndex = 0) or (rtipo.ItemIndex = 2) then
      tab_principal.ActivePageIndex := 0;
  end;

  if tab_principal.ActivePageIndex = 1 then
  begin
    qrreceber.first;
    itotal := 0;
    while not qrreceber.eof do
    begin
      itotal := itotal + qrreceber.fieldbyname('valor').AsFloat;
      qrreceber.Next;
    end;

    if itotal = 0 then
    begin
      rsoma.value := 0;
      rdiferenca.value := 0;
    end
    else
    begin
      rdiferenca.value := frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA')
        .AsFloat - itotal;
      rsoma.value := itotal;

      if (rdiferenca.value < 0.10) and (rdiferenca.value > (-0.10)) then
      begin
        rdiferenca.value := 0;
      end;
    end;
  end;

  if tab_principal.ActivePageIndex = 5 then
    begin
      qry.close;
      qry.sql.clear;
      qry.sql.add('select * from nfe_complementar where NUMNOTA = :NUMNOTA');
      qry.parambyname('NUMNOTA').asstring := frmnotafiscal_menu.qrnota.fieldbyname
        ('numero').asstring;
      qry.Open;
      qry.first;
    end;

end;

procedure Tfrmnotafiscal.BDUPLICATAClick(Sender: TObject);
begin
  qrduplicata.Open;
  while qrduplicata.RecordCount <> 0 do
    qrduplicata.delete;
  qrduplicata.Refresh;

  qrreceber.first;
  while not qrreceber.eof do
  begin
    qrduplicata.Insert;
    qrduplicata.fieldbyname('emitente_fantasia').asstring := emitente_fantasia;
    qrduplicata.fieldbyname('emitente_RAZAO').asstring := emitente_nome;
    qrduplicata.fieldbyname('emitente_telefone').asstring := 'Fone: ' +
      emitente_telefone;
    qrduplicata.fieldbyname('emitente_endereco').asstring := emitente_endereco +
      ' - ' + emitente_cidade + ' - ' + emitente_cep;
    qrduplicata.fieldbyname('emitente_cnpj').asstring := emitente_cnpj;
    qrduplicata.fieldbyname('emitente_ie').asstring := emitente_ie;
    qrduplicata.fieldbyname('FATURA_NUMERO').asstring :=
      frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring;
    qrduplicata.fieldbyname('fatura_valor').asstring :=
      formatfloat('###,###,##0.00', frmnotafiscal_menu.qrnota.fieldbyname
      ('total_nota').AsFloat);

    qrduplicata.fieldbyname('duplicata_numero').asstring :=
      qrreceber.fieldbyname('documento').asstring;
    qrduplicata.fieldbyname('duplicata_valor').asstring :=
      formatfloat('###,###,##0.00', qrreceber.fieldbyname('valor').AsFloat);
    qrduplicata.fieldbyname('data_vencimento').asstring :=
      qrreceber.fieldbyname('vencimento').asstring;
    qrduplicata.fieldbyname('data_emissao').asstring :=
      frmnotafiscal_menu.qrnota.fieldbyname('data').asstring;
    qrduplicata.fieldbyname('extenso').asstring :=
      AnsiUpperCase(extenso(qrreceber.fieldbyname('valor').AsFloat));

    qrduplicata.fieldbyname('sacado_nome').asstring :=
      qrcliente.fieldbyname('nome').asstring;
    qrduplicata.fieldbyname('sacado_endereco').asstring :=
      qrcliente.fieldbyname('endereco').asstring + ' ' +
      qrcliente.fieldbyname('bairro').asstring;
    qrduplicata.fieldbyname('sacado_municipio').asstring :=
      qrcliente.fieldbyname('cidade').asstring;
    qrduplicata.fieldbyname('sacado_uf').asstring :=
      qrcliente.fieldbyname('uf').asstring;
    qrduplicata.fieldbyname('sacado_cep').asstring :=
      qrcliente.fieldbyname('cep').asstring;
    qrduplicata.fieldbyname('sacado_cnpj').asstring :=
      qrcliente.fieldbyname('cpf').asstring;
    qrduplicata.fieldbyname('sacado_ie').asstring :=
      qrcliente.fieldbyname('rg').asstring;
    qrduplicata.fieldbyname('sacado_praca').asstring := emitente_cidade;
    qrduplicata.post;

    qrreceber.Next;
  end;
  qrduplicata.SortOnFields('duplicata_numero');

  fxduplicata.LoadFromFile('\OneMaker\server\rel\f000150.fr3');
  fxduplicata.ShowReport;
end;

procedure Tfrmnotafiscal.bimporta_cupomClick(Sender: TObject);
begin
  if (efilial.text = '') or (efilial.text = '000000') then
  begin
    application.messagebox('Empresa Não Informada!', 'Atenção!',
      mb_ok + MB_ICONEXCLAMATION);
    efilial.setfocus;
    exit;
  end;
  if (ecliente.text = '') or (ecliente.text = '000000') then
  begin
    application.messagebox('Cliente Não Informado!', 'Atenção!',
      mb_ok + MB_ICONEXCLAMATION);
    ecliente.setfocus;
    exit;
  end;

  frmnotafiscal_importacupom := Tfrmnotafiscal_importacupom.create(self);
  frmnotafiscal_importacupom.showmodal;

  qrnotafiscal_item.post;

  {
    frmmodulo.Conexao.Commit;
    frmmodulo.EConexao.Commit;

    qrnotafiscal_item.Close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
    qrnotafiscal_item.SQL.add('from c000062 item, c000025 pro');
    qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
    qrnotafiscal_item.SQL.add('item.codnota = '''+vnumero_inclui_nota+''' order by item');
    qrnotafiscal_item.open;


    if qrnotafiscal_item.fieldbyname('item').asstring = '' then
    begin
    nf_item := 1;
    qrnotafiscal_item.first;
    while not qrnotafiscal_item.eof do
    begin
    query.close;
    query.sql.clear;
    query.sql.add('update c000062 set item = '+inttostr(nf_item)+' where codigo = '''+qrnotafiscal_item.fieldbyname('codigo').asstring+'''');
    query.execsql;
    NF_ITEM := NF_ITEM + 1;
    qrnotafiscal_item.Next;
    end;
    end
    else
    nf_item := qrnotafiscal_item.recordcount + 1;

    //    qrnotafiscal_item.refresh;

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from c000007');
    qrcliente.Open;

    efilial.SetFocus;
  }

  grid1.setfocus;

end;

procedure Tfrmnotafiscal.ImportaCupomFiscal1Click(Sender: TObject);
begin
  bimporta_cupomClick(frmnotafiscal);
end;

procedure Tfrmnotafiscal.ecodmodeloExit(Sender: TObject);
begin
  if TEdit(Sender).text = '' then
  begin
    ecodmodeloButtonClick(frmnotafiscal);
  end;
end;

end.
