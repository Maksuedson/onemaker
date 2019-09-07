unit notafiscal_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvOfficeStatusBar, ImgList, AdvMenus, AdvMenuStylers,
  AdvToolBar, AdvToolBarStylers, AdvPreviewMenu, AdvPreviewMenuStylers,
  AdvOfficeStatusBarStylers, AdvGlowButton, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus, DBCtrls, Mask,
  RzEdit, RzDBEdit, RzDBBnEd, RzBtnEdt, frxClass, frxPreview,
  frxDesgn, ExtCtrls, MemDS, DBAccess, Wwdatsrc, Buttons, jpeg,
  ACBrNFe, ACBrNFeDANFEClass, pcnRetConsReciNFe,blcksock,
  // units nfe acbr
  pcnConversaoNFe, pcnConversao, ACBrUtil, ACBrDFeUtil, SHDocVw, ComCtrls,
  OleCtrls, FileCtrl,
  inifiles, AdvReflectionImage, UCBase, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, System.ImageList, ACBrNFeDANFEFRDM,
  ACBrNFeDANFEFR, ACBrBase, ACBrDFe, JvExMask, JvToolEdit, XMLIntf, XMLDoc,
  ACBrMail;

type
  Tfrmnotafiscal_menu = class(TForm)
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    ImageList1: TImageList;
    dsnota: TDataSource;
    menu_tabelas_fiscais: TAdvPopupMenu;
    ClassesdeRecolhimento1: TMenuItem;
    ModelosdeNotasFiscais1: TMenuItem;
    CFOP1: TMenuItem;
    pop: TAdvPopupMenu;
    Incluir2: TMenuItem;
    LocalizarFiltro2: TMenuItem;
    Relatrios2: TMenuItem;
    Sair2: TMenuItem;
    ConfirmarNotaFiscal1: TMenuItem;
    espelho: TfrxReport;
    Cancelar1: TMenuItem;
    Imprimir1: TMenuItem;
    ImageList2: TImageList;
    N1: TMenuItem;
    MemorandodeExportao1: TMenuItem;
    Panel3: TPanel;
    Label10: TLabel;
    bfiltrar: TAdvGlowButton;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    ecliente: TRzButtonEdit;
    ENUMERO: TEdit;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    N2: TMenuItem;
    ZerarNotaFiscal1: TMenuItem;
    query: TZQuery;
    qrnota: TZQuery;
    qrnotacliente: TStringField;
    qrnotaempresa: TStringField;
    qrnotaendereco: TStringField;
    qrnotacpf: TStringField;
    qrnotarg: TStringField;
    qrnotatransp_endereco: TStringField;
    qrnotatransp_cidade: TStringField;
    qrnotatransp_cpf: TStringField;
    qrnotatransp_rg: TStringField;
    qrnotanatureza: TStringField;
    qrnotafilial: TStringField;
    qrproduto2: TZQuery;
    qrcliente2: TZQuery;
    qrempresa: TZQuery;
    qrmodelo: TZQuery;
    qrcliente: TZQuery;
    qrnota_item: TZQuery;
    qrnota_total: TZQuery;
    qrnota_antes: TZQuery;
    qritem_antes: TZQuery;
    qrgrade_entrada: TZQuery;
    query2: TZQuery;
    N3: TMenuItem;
    NFeExportarNotaFiscal1: TMenuItem;
    qrnotatransp_tipo: TIntegerField;
    Panel4: TPanel;
    Panel1: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    rtotal: TRzNumericEdit;
    rqde: TRzNumericEdit;
    RzDBEdit1: TRzDBEdit;
    Panel5: TPanel;
    grid: TwwDBGrid;
    pn_nfe_log: TPanel;
    Panel7: TPanel;
    Button1: TButton;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwNFe: TTreeView;
    ACBrNFe1: TACBrNFe;
    qrNFE_Cliente: TZQuery;
    TabSheet2: TTabSheet;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label9: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label25: TLabel;
    sbtnGetCert: TSpeedButton;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    edtNumSerie: TEdit;
    TabSheet4: TTabSheet;
    TabSheet7: TTabSheet;
    gbProxy: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    TabSheet11: TTabSheet;
    rgTipoDanfe: TRadioGroup;
    rgFormaEmissao: TRadioGroup;
    Label11: TLabel;
    sbtnLogoMarca: TSpeedButton;
    sbtnPathSalvar: TSpeedButton;
    edtLogoMarca: TEdit;
    edtPathLogs: TEdit;
    ckSalvar: TCheckBox;
    Label12: TLabel;
    ckVisualizar: TCheckBox;
    cbUF: TComboBox;
    rgTipoAmb: TRadioGroup;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    edtSmtpHost: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    btnSalvarConfig: TBitBtn;
    mmEmailMsg: TMemo;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    RzButtonEdit1: TRzButtonEdit;
    Inutilizar1: TMenuItem;
    qrtransportador2: TZQuery;
    qryapoio: TZQuery;
    Label17: TLabel;
    edtnfe: TEdit;
    qrmodeloCODIGO: TWideStringField;
    qrmodeloMODELO: TWideStringField;
    qrmodeloSIGLA: TWideStringField;
    qrmodeloSINTEGRA: TWideStringField;
    qrmodeloTIPO_REGISTRO: TWideStringField;
    qrmodeloSEQUENCIANF: TIntegerField;
    UCControls1: TUCControls;
    // WBResposta: TWebBrowser;
    qrnotatransp_uf: TStringField;
    qrnotaABC: TStringField;
    qrnotaTRANSPORTADOR: TStringField;
    WebBrowser1: TWebBrowser;
    qrnotaespecie: TStringField;
    Panel2: TPanel;
    Bevel3: TBevel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bitbtn6: TAdvGlowButton;
    bimprimir: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    btabela: TAdvGlowMenuButton;
    pn_nfe: TPanel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    bt_nfe_assinar: TBitBtn;
    BitBtn1: TBitBtn;
    Panel8: TPanel;
    bt_nfe_validar: TAdvGlowButton;
    bt_nfe_danfe: TAdvGlowButton;
    bt_nfe_consultar: TAdvGlowButton;
    bt_nfe_cancelar: TAdvGlowButton;
    bt_nfe_exportar: TAdvGlowButton;
    bt_nfe_status: TAdvGlowButton;
    bt_log: TAdvGlowButton;
    btnCCe_nfe_cce: TAdvGlowButton;
    qrnotaTIPO_FINALIDADE: TIntegerField;
    qryApoioCCE: TZQuery;
    qrTrib: TZQuery;
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    qrcompl: TZQuery;
    ACBrMail1: TACBrMail;
    bt_nfe_retorno: TAdvGlowButton;
    qrnotaSEQEVENTO: TIntegerField;
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
    qrinventarioDATA_CADASTRO: TDateField;
    qrinventarioDATA_ULTIMACOMPRA: TDateField;
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
    qrinventarioRG_EMISSAO: TDateField;
    qrclienteSEXO: TWideStringField;
    qrclienteHISTORICO: TBlobField;
    qrinventarioPREVISAO: TDateField;
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
    qrcliente2CODIGO: TWideStringField;
    qrcliente2NOME: TWideStringField;
    qrcliente2APELIDO: TWideStringField;
    qrcliente2ENDERECO: TWideStringField;
    qrcliente2BAIRRO: TWideStringField;
    qrcliente2CIDADE: TWideStringField;
    qrcliente2UF: TWideStringField;
    qrcliente2CEP: TWideStringField;
    qrcliente2COMPLEMENTO: TWideStringField;
    qrcliente2MORADIA: TIntegerField;
    qrcliente2TIPO: TIntegerField;
    qrcliente2SITUACAO: TIntegerField;
    qrcliente2TELEFONE1: TWideStringField;
    qrcliente2TELEFONE2: TWideStringField;
    qrcliente2TELEFONE3: TWideStringField;
    qrcliente2CELULAR: TWideStringField;
    qrcliente2EMAIL: TWideStringField;
    qrcliente2RG: TWideStringField;
    qrcliente2CPF: TWideStringField;
    qrcliente2FILIACAO: TWideStringField;
    qrcliente2ESTADOCIVIL: TWideStringField;
    qrcliente2CONJUGE: TWideStringField;
    qrcliente2PROFISSAO: TWideStringField;
    qrcliente2EMPRESA: TWideStringField;
    qrcliente2RENDA: TFloatField;
    qrcliente2LIMITE: TFloatField;
    qrcliente2REF1: TWideStringField;
    qrcliente2REF2: TWideStringField;
    qrcliente2CODVENDEDOR: TWideStringField;
    qrinventarioqrcliente2DATA_CADASTRO: TDateField;
    qrinventarioqrcliente2DATA_ULTIMACOMPRA: TDateField;
    qrcliente2OBS1: TWideStringField;
    qrcliente2OBS2: TWideStringField;
    qrcliente2OBS3: TWideStringField;
    qrcliente2OBS4: TWideStringField;
    qrcliente2OBS5: TWideStringField;
    qrcliente2OBS6: TWideStringField;
    qrcliente2NASCIMENTO: TWideStringField;
    qrcliente2CODREGIAO: TWideStringField;
    qrcliente2CODCONVENIO: TWideStringField;
    qrcliente2CODUSUARIO: TWideStringField;
    qrcliente2NUMERO: TWideStringField;
    qrcliente2RG_ORGAO: TWideStringField;
    qrcliente2RG_ESTADO: TWideStringField;
    qrinventarioqrcliente2RG_EMISSAO: TDateField;
    qrcliente2SEXO: TWideStringField;
    qrcliente2HISTORICO: TBlobField;
    qrinventarioqrcliente2PREVISAO: TDateField;
    qrcliente2CNAE: TWideStringField;
    qrcliente2COD_MUNICIPIO_IBGE: TWideStringField;
    qrcliente2IBGE: TWideStringField;
    qrcliente2TAMANHO_CALCA: TWideStringField;
    qrcliente2TAMANHO_BLUSA: TWideStringField;
    qrcliente2TAMANHO_SAPATO: TWideStringField;
    qrcliente2CORRESP_ENDERECO: TWideStringField;
    qrcliente2CORRESP_BAIRRO: TWideStringField;
    qrcliente2CORRESP_CIDADE: TWideStringField;
    qrcliente2CORRESP_UF: TWideStringField;
    qrcliente2CORRESP_CEP: TWideStringField;
    qrcliente2CORRESP_COMPLEMENTO: TWideStringField;
    qrcliente2RG_PRODUTOR: TWideStringField;
    qrcliente2RESP1_NOME: TWideStringField;
    qrcliente2RESP1_CPF: TWideStringField;
    qrcliente2RESP1_RG: TWideStringField;
    qrcliente2RESP1_PROFISSAO: TWideStringField;
    qrcliente2RESP1_ESTADO_CIVIL: TWideStringField;
    qrcliente2RESP1_ENDERECO: TWideStringField;
    qrcliente2RESP1_BAIRRO: TWideStringField;
    qrcliente2RESP1_CIDADE: TWideStringField;
    qrcliente2RESP1_UF: TWideStringField;
    qrcliente2RESP1_CEP: TWideStringField;
    qrcliente2RESP2_NOME: TWideStringField;
    qrcliente2RESP2_CPF: TWideStringField;
    qrcliente2RESP2_RG: TWideStringField;
    qrcliente2RESP2_PROFISSAO: TWideStringField;
    qrcliente2RESP2_ESTADO_CIVIL: TWideStringField;
    qrcliente2RESP2_ENDERECO: TWideStringField;
    qrcliente2RESP2_BAIRRO: TWideStringField;
    qrcliente2RESP2_CIDADE: TWideStringField;
    qrcliente2RESP2_UF: TWideStringField;
    qrcliente2RESP2_CEP: TWideStringField;
    qrcliente2FOTO: TWideStringField;
    qrcliente2CONDPGTO: TWideStringField;
    qrNFE_ClienteCODIGO: TWideStringField;
    qrNFE_ClienteNOME: TWideStringField;
    qrNFE_ClienteAPELIDO: TWideStringField;
    qrNFE_ClienteENDERECO: TWideStringField;
    qrNFE_ClienteBAIRRO: TWideStringField;
    qrNFE_ClienteCIDADE: TWideStringField;
    qrNFE_ClienteUF: TWideStringField;
    qrNFE_ClienteCEP: TWideStringField;
    qrNFE_ClienteCOMPLEMENTO: TWideStringField;
    qrNFE_ClienteMORADIA: TIntegerField;
    qrNFE_ClienteTIPO: TIntegerField;
    qrNFE_ClienteSITUACAO: TIntegerField;
    qrNFE_ClienteTELEFONE1: TWideStringField;
    qrNFE_ClienteTELEFONE2: TWideStringField;
    qrNFE_ClienteTELEFONE3: TWideStringField;
    qrNFE_ClienteCELULAR: TWideStringField;
    qrNFE_ClienteEMAIL: TWideStringField;
    qrNFE_ClienteRG: TWideStringField;
    qrNFE_ClienteCPF: TWideStringField;
    qrNFE_ClienteFILIACAO: TWideStringField;
    qrNFE_ClienteESTADOCIVIL: TWideStringField;
    qrNFE_ClienteCONJUGE: TWideStringField;
    qrNFE_ClientePROFISSAO: TWideStringField;
    qrNFE_ClienteEMPRESA: TWideStringField;
    qrNFE_ClienteRENDA: TFloatField;
    qrNFE_ClienteLIMITE: TFloatField;
    qrNFE_ClienteREF1: TWideStringField;
    qrNFE_ClienteREF2: TWideStringField;
    qrNFE_ClienteCODVENDEDOR: TWideStringField;
    qrinventarioNFE_ClienteDATA_CADASTRO: TDateField;
    qrinventarioNFE_ClienteDATA_ULTIMACOMPRA: TDateField;
    qrNFE_ClienteOBS1: TWideStringField;
    qrNFE_ClienteOBS2: TWideStringField;
    qrNFE_ClienteOBS3: TWideStringField;
    qrNFE_ClienteOBS4: TWideStringField;
    qrNFE_ClienteOBS5: TWideStringField;
    qrNFE_ClienteOBS6: TWideStringField;
    qrNFE_ClienteNASCIMENTO: TWideStringField;
    qrNFE_ClienteCODREGIAO: TWideStringField;
    qrNFE_ClienteCODCONVENIO: TWideStringField;
    qrNFE_ClienteCODUSUARIO: TWideStringField;
    qrNFE_ClienteNUMERO: TWideStringField;
    qrNFE_ClienteRG_ORGAO: TWideStringField;
    qrNFE_ClienteRG_ESTADO: TWideStringField;
    qrinventarioNFE_ClienteRG_EMISSAO: TDateField;
    qrNFE_ClienteSEXO: TWideStringField;
    qrNFE_ClienteHISTORICO: TBlobField;
    qrinventarioNFE_ClientePREVISAO: TDateField;
    qrNFE_ClienteCNAE: TWideStringField;
    qrNFE_ClienteCOD_MUNICIPIO_IBGE: TWideStringField;
    qrNFE_ClienteIBGE: TWideStringField;
    qrNFE_ClienteTAMANHO_CALCA: TWideStringField;
    qrNFE_ClienteTAMANHO_BLUSA: TWideStringField;
    qrNFE_ClienteTAMANHO_SAPATO: TWideStringField;
    qrNFE_ClienteCORRESP_ENDERECO: TWideStringField;
    qrNFE_ClienteCORRESP_BAIRRO: TWideStringField;
    qrNFE_ClienteCORRESP_CIDADE: TWideStringField;
    qrNFE_ClienteCORRESP_UF: TWideStringField;
    qrNFE_ClienteCORRESP_CEP: TWideStringField;
    qrNFE_ClienteCORRESP_COMPLEMENTO: TWideStringField;
    qrNFE_ClienteRG_PRODUTOR: TWideStringField;
    qrNFE_ClienteRESP1_NOME: TWideStringField;
    qrNFE_ClienteRESP1_CPF: TWideStringField;
    qrNFE_ClienteRESP1_RG: TWideStringField;
    qrNFE_ClienteRESP1_PROFISSAO: TWideStringField;
    qrNFE_ClienteRESP1_ESTADO_CIVIL: TWideStringField;
    qrNFE_ClienteRESP1_ENDERECO: TWideStringField;
    qrNFE_ClienteRESP1_BAIRRO: TWideStringField;
    qrNFE_ClienteRESP1_CIDADE: TWideStringField;
    qrNFE_ClienteRESP1_UF: TWideStringField;
    qrNFE_ClienteRESP1_CEP: TWideStringField;
    qrNFE_ClienteRESP2_NOME: TWideStringField;
    qrNFE_ClienteRESP2_CPF: TWideStringField;
    qrNFE_ClienteRESP2_RG: TWideStringField;
    qrNFE_ClienteRESP2_PROFISSAO: TWideStringField;
    qrNFE_ClienteRESP2_ESTADO_CIVIL: TWideStringField;
    qrNFE_ClienteRESP2_ENDERECO: TWideStringField;
    qrNFE_ClienteRESP2_BAIRRO: TWideStringField;
    qrNFE_ClienteRESP2_CIDADE: TWideStringField;
    qrNFE_ClienteRESP2_UF: TWideStringField;
    qrNFE_ClienteRESP2_CEP: TWideStringField;
    qrNFE_ClienteFOTO: TWideStringField;
    qrNFE_ClienteCONDPGTO: TWideStringField;
    qrnotaCODIGO: TWideStringField;
    qrnotaNUMERO: TWideStringField;
    qrnotaCFOP: TWideStringField;
    qrinventarioDATA: TDateField;
    qrnotaCODCLIENTE: TWideStringField;
    qrnotaVALOR_PRODUTOS: TFloatField;
    qrnotaTOTAL_NOTA: TFloatField;
    qrnotaBASE_CALCULO: TFloatField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaBASE_SUB: TFloatField;
    qrnotaICMS_SUB: TFloatField;
    qrnotaFRETE: TFloatField;
    qrnotaSEGURO: TFloatField;
    qrnotaOUTRAS_DESPESAS: TFloatField;
    qrnotaVALOR_TOTAL_IPI: TFloatField;
    qrnotaITENS: TIntegerField;
    qrnotaDESCONTO: TFloatField;
    qrnotaCODTRANSPORTADOR: TWideStringField;
    qrnotaFRETE_CONTA: TIntegerField;
    qrnotaPLACA: TWideStringField;
    qrnotaPLACA_UF: TWideStringField;
    qrnotaVOL_QTDE: TFloatField;
    qrnotaVOL_ESPECIE: TWideStringField;
    qrnotaVOL_MARCA: TWideStringField;
    qrnotaVOL_NUMERO: TWideStringField;
    qrnotaPESO_LIQUIDO: TFloatField;
    qrnotaPESO_BRUTO: TFloatField;
    qrnotaSITUACAO: TIntegerField;
    qrnotaMOTIVO: TWideStringField;
    qrinventarioFATURAMENTO_DATA1: TDateField;
    qrinventarioFATURAMENTO_DATA2: TDateField;
    qrinventarioFATURAMENTO_DATA3: TDateField;
    qrinventarioFATURAMENTO_DATA4: TDateField;
    qrnotaFATURAMENTO_NUMERO1: TWideStringField;
    qrnotaFATURAMENTO_NUMERO2: TWideStringField;
    qrnotaFATURAMENTO_NUMERO3: TWideStringField;
    qrnotaFATURAMENTO_NUMERO4: TWideStringField;
    qrnotaFATURAMENTO_VALOR1: TFloatField;
    qrnotaFATURAMENTO_VALOR2: TFloatField;
    qrnotaFATURAMENTO_VALOR3: TFloatField;
    qrnotaFATURAMENTO_VALOR4: TFloatField;
    qrnotaCODFILIAL: TWideStringField;
    qrnotaOBS1: TWideStringField;
    qrnotaOBS2: TWideStringField;
    qrnotaOBS3: TWideStringField;
    qrnotaINF1: TWideStringField;
    qrnotaINF2: TWideStringField;
    qrnotaINF3: TWideStringField;
    qrnotaINF4: TWideStringField;
    qrnotaINF5: TWideStringField;
    qrinventarioDATA_SAIDA: TDateField;
    qrnotaHORA: TWideStringField;
    qrnotaSITUACAO_A: TWideStringField;
    qrnotaMODELO_NF: TWideStringField;
    qrnotaSERIE_NF: TWideStringField;
    qrnotaVALOR_ISENTO_ICMS: TFloatField;
    qrnotaALIQUOTA_ICMS: TFloatField;
    qrnotaSIT: TWideStringField;
    qrnotaCODLANCAMENTO: TWideStringField;
    qrnotaMOVIMENTO: TWideStringField;
    qrnotaBAIXA_ESTOQUE: TWideStringField;
    qrnotaTIPO: TWideStringField;
    qrnotaOS_COD1: TWideStringField;
    qrnotaOS_COD2: TWideStringField;
    qrnotaOS_COD3: TWideStringField;
    qrnotaOS_COD4: TWideStringField;
    qrnotaOS_COD5: TWideStringField;
    qrnotaOS_COD6: TWideStringField;
    qrnotaOS_SERV1: TWideStringField;
    qrnotaOS_SERV2: TWideStringField;
    qrnotaOS_SERV3: TWideStringField;
    qrnotaOS_SERV4: TWideStringField;
    qrnotaOS_SERV5: TWideStringField;
    qrnotaOS_SERV6: TWideStringField;
    qrnotaOS_COMP1: TWideStringField;
    qrnotaOS_COMP2: TWideStringField;
    qrnotaOS_COMP3: TWideStringField;
    qrnotaOS_COMP4: TWideStringField;
    qrnotaOS_COMP5: TWideStringField;
    qrnotaOS_COMP6: TWideStringField;
    qrnotaOS_QTDE1: TFloatField;
    qrnotaOS_QTDE2: TFloatField;
    qrnotaOS_QTDE3: TFloatField;
    qrnotaOS_QTDE4: TFloatField;
    qrnotaOS_QTDE5: TFloatField;
    qrnotaOS_QTDE6: TFloatField;
    qrnotaOS_UNIT1: TFloatField;
    qrnotaOS_UNIT2: TFloatField;
    qrnotaOS_UNIT3: TFloatField;
    qrnotaOS_UNIT4: TFloatField;
    qrnotaOS_UNIT5: TFloatField;
    qrnotaOS_UNIT6: TFloatField;
    qrnotaOS_TOTAL1: TFloatField;
    qrnotaOS_TOTAL2: TFloatField;
    qrnotaOS_TOTAL3: TFloatField;
    qrnotaOS_TOTAL4: TFloatField;
    qrnotaOS_TOTAL5: TFloatField;
    qrnotaOS_TOTAL6: TFloatField;
    qrnotaOS_ISS: TFloatField;
    qrnotaOS_TOTAL_GERAL: TFloatField;
    qrnotaOS_TOTAL_ISS: TFloatField;
    qrnotaDESCONTO_ITEM: TFloatField;
    qrnotaOBS4: TWideStringField;
    qrnotaOBS5: TWideStringField;
    qrnotaCODIGOMODELO: TWideStringField;
    qrnotaCUSTO_VENDA: TWideStringField;
    qrnotaFAT_FORMA_PGTO: TWideStringField;
    qrnotaFAT_CONDI_PGTO: TWideStringField;
    qrnotaFAT_QTDE_PRESTACAO: TIntegerField;
    qrnotaFAT_GERAR_RECEBER: TIntegerField;
    qrnotaFAT_GERAR_DUPLICATA: TIntegerField;
    qrnotaPIS: TFloatField;
    qrnotaCOFINS: TFloatField;
    qrnotaFAT_TIPO: TIntegerField;
    qrnotaCODVENDEDOR: TWideStringField;
    qrnotaOPERACAO: TWideStringField;
    qrnotaINTEGRACAO: TIntegerField;
    qrnotaNFE_SITUACAO: TIntegerField;
    qrnotaNFE_XML: TWideStringField;
    qrnotaVAREJO_ATACADO: TWideStringField;
    qrnotaINDUSTRIALIZACAO: TWideStringField;
    qrnotaPERDA: TWideStringField;
    qrinventarioFATURAMENTO_DATA5: TDateField;
    qrinventarioFATURAMENTO_DATA6: TDateField;
    qrnotaFATURAMENTO_NUMERO5: TWideStringField;
    qrnotaFATURAMENTO_NUMERO6: TWideStringField;
    qrnotaFATURAMENTO_VALOR5: TFloatField;
    qrnotaFATURAMENTO_VALOR6: TFloatField;
    qrinventarioFATURAMENTO_DATA7: TDateField;
    qrinventarioFATURAMENTO_DATA8: TDateField;
    qrinventarioFATURAMENTO_DATA9: TDateField;
    qrnotaFATURAMENTO_NUMERO7: TWideStringField;
    qrnotaFATURAMENTO_NUMERO8: TWideStringField;
    qrnotaFATURAMENTO_NUMERO9: TWideStringField;
    qrnotaFATURAMENTO_VALOR7: TFloatField;
    qrnotaFATURAMENTO_VALOR8: TFloatField;
    qrnotaFATURAMENTO_VALOR9: TFloatField;
    qrnotaCHAVE: TWideStringField;
    qrtransportador2CODIGO: TWideStringField;
    qrtransportador2NOME: TWideStringField;
    qrtransportador2ENDERECO: TWideStringField;
    qrtransportador2BAIRRO: TWideStringField;
    qrtransportador2CIDADE: TWideStringField;
    qrtransportador2UF: TWideStringField;
    qrtransportador2CEP: TWideStringField;
    qrtransportador2CPF: TWideStringField;
    qrtransportador2RG: TWideStringField;
    qrtransportador2TELEFONE: TWideStringField;
    qrtransportador2CELULAR: TWideStringField;
    qrtransportador2PLACA: TWideStringField;
    qrtransportador2UFPLACA: TWideStringField;
    qrtransportador2OBS1: TWideStringField;
    qrtransportador2OBS2: TWideStringField;
    qrtransportador2OBS3: TWideStringField;
    qrinventarioqrtransportador2DATA: TDateField;
    qrtransportador2TIPO: TIntegerField;
    qrtransportador2NUMERO: TWideStringField;
    qrtransportador2COD_MUNICIPIO_IBGE: TWideStringField;
    qrtransportador2IBGE: TWideStringField;
    qrtransportador2ANTT: TWideStringField;
    qrnotaREFNFE: TWideStringField;
    qrnotaVBCUFDEST: TFloatField;
    qrnotaVICMSUFDEST: TFloatField;
    qrnotaVICMSUFREMET: TFloatField;
    qrnotaPFCPUFDEST: TFloatField;
    qrnotaPICMSUFDEST: TFloatField;
    qrnotaPICMSINTER: TFloatField;
    qrnotaPICMSITERPART: TFloatField;
    qrnotaVFCPUFDESTTOTAL: TFloatField;
    qrnotaVFCPUFDEST: TFloatField;
    qrnotaVICMSUFDESTTOTAL: TFloatField;
    qrnotaVICMSUFREMETTOTAL: TFloatField;
    qrnotaDIFAL: TFloatField;
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
    qryaux: TZQuery;
    qrnotaORIGEM: TIntegerField;
    qrnotaIND_PAG: TIntegerField;
    qrnotaIND_PRESS: TIntegerField;
    AdvGlowButton1: TAdvGlowButton;
    procedure bincluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bitbtn6Click(Sender: TObject);
    procedure b(Sender: TObject);
    procedure gridRowChanged(Sender: TObject);
    procedure Alterar2Click(Sender: TObject);
    procedure abelasFunes2Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure ClassesdeRecolhimento1Click(Sender: TObject);
    procedure ModelosdeNotasFiscais1Click(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteButtonClick(Sender: TObject);
    procedure ENUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BfiltrarClick(Sender: TObject);
    procedure ENUMEROExit(Sender: TObject);
    procedure btotaliza_notaClick(Sender: TObject);
    procedure eclienteEnter(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure gridTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ZerarNotaFiscal1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NFeExportarNotaFiscal1Click(Sender: TObject);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure bt_nfe_status1Click(Sender: TObject);
    procedure bt_log1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ACBrNFe1GerarLog(const Mensagem: string);
    procedure bt_nfe_validar1Click(Sender: TObject);
    procedure bt_nfe_danfe1Click(Sender: TObject);
    procedure bt_nfe_assinarClick(Sender: TObject);
    procedure bt_nfe_exportar1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bt_nfe_consultar1Click(Sender: TObject);
    procedure bt_nfe_cancelar1Click(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure sbtnPathSalvarClick(Sender: TObject);
    procedure Inutilizar1Click(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure ENUMEROEnter(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure btn464814Click(Sender: TObject);
    procedure btnf77786Click(Sender: TObject);
    procedure btnrt78942Click(Sender: TObject);
    procedure btnfff403113Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure btnCCe_nfe_cceClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure legenfe001Click(Sender: TObject);
  private
    { Private declarations }
    // nfe
    procedure GravarConfiguracao;
    procedure Inicia_NFe;
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    function Gerar_XML(): string;
    function SN(sNum: string): string;
    procedure AjustarParametrosdeEnvioEmail(Destinatario: String);
    function LeInistr(arquivo, sessao, chave, padrao: string): string;
  public
    vopcao_nfs, vopcao_item: Integer;
    correcao: string;
    { Public declarations }
  end;

var
  frmnotafiscal_menu: Tfrmnotafiscal_menu;
  vrecno: Integer;
  cancela: boolean;

  bmensagem: boolean;

  // nfe
  ok: boolean;

const
  sc_DragMove = $F012;

implementation

uses modulo, principal, compra, cfop, cst, modelo_fiscal, xloc_cliente,
  compra_item, lista_notaentrada, lista_notacompra, notafiscal,
  compra_menu, lista_notasaida, notafiscal_cancelar, unNFe2,
  status, nfe_legenda, email, math, cliente, produto, fornecedor, empresa,
  OpNatureza, orcamento,
  notas_venda, legendanfe;

const
  SELDIRHELP = 1000;

{$R *.dfm}

procedure Tfrmnotafiscal_menu.GravarConfiguracao;
var
  IniFile: string;
  Ini: TIniFile;
  StreamMemo: TMemoryStream;
begin
  IniFile := ChangeFileExt(Application.ExeName, '.ini');

  Ini := TIniFile.Create(IniFile);
  try
    Ini.WriteString('Certificado', 'Caminho', edtCaminho.Text);
    Ini.WriteString('Certificado', 'Senha', edtSenha.Text);
    Ini.WriteString('Certificado', 'NumSerie', edtNumSerie.Text);

    Ini.WriteInteger('Geral', 'DANFE', rgTipoDanfe.ItemIndex);
    Ini.WriteInteger('Geral', 'FormaEmissao', rgFormaEmissao.ItemIndex);
    Ini.WriteString('Geral', 'LogoMarca', edtLogoMarca.Text);
    Ini.WriteBool('Geral', 'Salvar', ckSalvar.Checked);
    Ini.WriteString('Geral', 'PathSalvar', edtPathLogs.Text);

    Ini.WriteString('WebService', 'UF', cbUF.Text);
    Ini.WriteInteger('WebService', 'Ambiente', rgTipoAmb.ItemIndex);
    Ini.WriteBool('WebService', 'Visualizar', ckVisualizar.Checked);

    Ini.WriteString('Proxy', 'Host', edtProxyHost.Text);
    Ini.WriteString('Proxy', 'Porta', edtProxyPorta.Text);
    Ini.WriteString('Proxy', 'User', edtProxyUser.Text);
    Ini.WriteString('Proxy', 'Pass', edtProxySenha.Text);

    Ini.WriteString('Email', 'Host', edtSmtpHost.Text);
    Ini.WriteString('Email', 'Port', edtSmtpPort.Text);
    Ini.WriteString('Email', 'User', edtSmtpUser.Text);
    Ini.WriteString('Email', 'Pass', edtSmtpPass.Text);
    Ini.WriteString('Email', 'Assunto', edtEmailAssunto.Text);
    Ini.WriteBool('Email', 'SSL', cbEmailSSL.Checked);
    Ini.WriteString('Email', 'PadraoNFe', edtnfe.Text);
    StreamMemo := TMemoryStream.Create;
    mmEmailMsg.Lines.SaveToStream(StreamMemo);
    StreamMemo.Seek(0, soFromBeginning);
    Ini.WriteBinaryStream('Email', 'Mensagem', StreamMemo);
    StreamMemo.Free;
  finally
    Ini.Free;
  end;

end;

function Tfrmnotafiscal_menu.SN(sNum: string): string;
var
  s1, s2: string;
  i: Integer;
begin
  s1 := sNum;
  s2 := '';
  for i := 1 to Length(s1) do
    if s1[i] in ['0' .. '9'] then
      s2 := s2 + s1[i];
  result := s2;
end;

procedure Tfrmnotafiscal_menu.Inicia_NFe();
var
  IniFile: string;
  Ini: TIniFile;
  ok: boolean;
  StreamMemo: TMemoryStream;
begin
  IniFile := ChangeFileExt(Application.ExeName, '.ini');

  Ini := TIniFile.Create(IniFile);
   try
{$IFDEF ACBrNFeOpenSSL}
    edtCaminho.Text := Ini.ReadString('Certificado', 'Caminho', '');
    edtSenha.Text := Ini.ReadString('Certificado', 'Senha', '');
    ACBrNFe1.Configuracoes.Certificados.Certificado := edtCaminho.Text;
    ACBrNFe1.Configuracoes.Certificados.Senha := edtSenha.Text;
    edtNumSerie.Visible := False;
    Label25.Visible := False;
    sbtnGetCert.Visible := False;
{$ELSE}
    edtNumSerie.Text := Ini.ReadString('Certificado', 'NumSerie', '');
    edtCaminho.Text := Ini.ReadString('Certificado', 'Caminho', '');
    edtSenha.Text := Ini.ReadString('Certificado', 'Senha', '');
    ACBrNFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
    edtNumSerie.Text := ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
//    edtxml.text := Ini.ReadString('Caminho', 'XML', '');
//    edtpdf.text := Ini.ReadString('Caminho', 'PDF', '');

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
    rgFormaEmissao.ItemIndex := Ini.ReadInteger('Geral', 'FormaEmissao', 0);
    ckSalvar.Checked := Ini.ReadBool('Geral', 'Salvar', True);
    edtPathLogs.Text := Ini.ReadString('Geral', 'PathSalvar', '');
    ACBrNFe1.Configuracoes.Geral.FormaEmissao :=
      StrToTpEmis(ok, IntToStr(rgFormaEmissao.ItemIndex + 1));

    ACBrNFe1.Configuracoes.Geral.Salvar := ckSalvar.Checked;
    ACBrNFe1.Configuracoes.Arquivos.PathSalvar := edtPathLogs.Text;
  {  if edtxml.text <> '' then
    begin
      ACBrNFe1.Configuracoes.Arquivos.PathEvento := edtxml.text;
      ACBrNFe1.Configuracoes.Arquivos.PathInu := edtxml.text;
      ACBrNFe1.Configuracoes.Arquivos.PathSalvar := edtxml.text;
      ACBrNFe1.Configuracoes.Arquivos.pathnfe := edtxml.text;
    end
    else
    begin
      ACBrNFe1.Configuracoes.Arquivos.PathEvento := 'C:\OneMaker\Server\nfe\';
      ACBrNFe1.Configuracoes.Arquivos.PathInu := 'C:\OneMaker\Server\nfe\';
      ACBrNFe1.Configuracoes.Arquivos.PathSalvar := 'C:\OneMaker\Server\nfe\';
      ACBrNFe1.Configuracoes.Arquivos.pathnfe := 'C:\OneMaker\Server\nfe\';
    end;
    if edtpdf.text <> '' then
     ACBrNFeDANFEFR1.PathPDF := edtpdf.Text
    else
      ACBrNFeDANFEFR1.PathPDF := 'C:\OneMaker\Server\pdf';   }

    ACBrNFe1.Configuracoes.Geral.ModeloDF:= moNFe;
    ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;
    ACBrNFe1.SSL.SSLType := LT_TLSv1_2;


    cbUF.ItemIndex := cbUF.Items.IndexOf(Ini.ReadString('WebService',
      'UF', 'SP'));
    rgTipoAmb.ItemIndex := Ini.ReadInteger('WebService', 'Ambiente', 0);
    ckVisualizar.Checked := Ini.ReadBool('WebService', 'Visualizar', False);
    ACBrNFe1.Configuracoes.WebServices.UF := cbUF.Text;
    ACBrNFe1.Configuracoes.WebServices.Ambiente :=
      StrToTpAmb(ok, IntToStr(rgTipoAmb.ItemIndex + 1));
    ACBrNFe1.Configuracoes.WebServices.Visualizar := ckVisualizar.Checked;

    edtProxyHost.Text := Ini.ReadString('Proxy', 'Host', '');
    edtProxyPorta.Text := Ini.ReadString('Proxy', 'Porta', '');
    edtProxyUser.Text := Ini.ReadString('Proxy', 'User', '');
    edtProxySenha.Text := Ini.ReadString('Proxy', 'Pass', '');
    ACBrNFe1.Configuracoes.WebServices.ProxyHost := edtProxyHost.Text;
    ACBrNFe1.Configuracoes.WebServices.ProxyPort := edtProxyPorta.Text;
    ACBrNFe1.Configuracoes.WebServices.ProxyUser := edtProxyUser.Text;
    ACBrNFe1.Configuracoes.WebServices.ProxyPass := edtProxySenha.Text;

    rgTipoDanfe.ItemIndex := Ini.ReadInteger('Geral', 'DANFE', 0);
    edtLogoMarca.Text := Ini.ReadString('Geral', 'LogoMarca', '');
    if ACBrNFe1.DANFE <> nil then
    begin
      ACBrNFe1.DANFE.TipoDANFE :=
        StrToTpImp(ok, IntToStr(rgTipoDanfe.ItemIndex + 1));
      ACBrNFe1.DANFE.Logo := edtLogoMarca.Text;
    end;
    edtSmtpHost.Text := Ini.ReadString('Email', 'Host', '');
    edtSmtpPort.Text := Ini.ReadString('Email', 'Port', '');
    edtSmtpUser.Text := Ini.ReadString('Email', 'User', '');
    edtSmtpPass.Text := Ini.ReadString('Email', 'Pass', '');
    edtEmailAssunto.Text := Ini.ReadString('Email', 'Assunto', '');
    edtnfe.Text := Ini.ReadString('Email', 'PadraoNFe', '');
    cbEmailSSL.Checked := Ini.ReadBool('Email', 'SSL', False);
    SSL := Ini.ReadBool('Email', 'SSL', False);
    StreamMemo := TMemoryStream.Create;
    Ini.ReadBinaryStream('Email', 'Mensagem', StreamMemo);
    mmEmailMsg.Lines.LoadFromStream(StreamMemo);
    StreamMemo.Free;
  finally
    Ini.Free;
  end;

 (* try
{$IFDEF ACBrNFeOpenSSL}
    edtCaminho.Text := Ini.ReadString('Certificado', 'Caminho', '');
    edtSenha.Text := Ini.ReadString('Certificado', 'Senha', '');
    ACBrNFe1.Configuracoes.Certificados.Certificado := edtCaminho.Text;
    ACBrNFe1.Configuracoes.Certificados.Senha := edtSenha.Text;
    edtNumSerie.Visible := False;
    Label25.Visible := False;
    sbtnGetCert.Visible := False;
{$ELSE}
    edtNumSerie.Text := Ini.ReadString('Certificado', 'NumSerie', '');
    edtCaminho.Text := Ini.ReadString('Certificado', 'Caminho', '');
    edtSenha.Text := Ini.ReadString('Certificado', 'Senha', '');
    ACBrNFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
    edtNumSerie.Text := ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
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
    rgFormaEmissao.ItemIndex := Ini.ReadInteger('Geral', 'FormaEmissao', 0);
    ckSalvar.Checked := Ini.ReadBool('Geral', 'Salvar', True);
    edtPathLogs.Text := Ini.ReadString('Geral', 'PathSalvar', '');
    ACBrNFe1.Configuracoes.Geral.FormaEmissao :=
      StrToTpEmis(ok, IntToStr(rgFormaEmissao.ItemIndex + 1));

    ACBrNFe1.Configuracoes.Geral.Salvar := ckSalvar.Checked;
    // ACBrNFe1.Configuracoes.Geral.PathSalvar := edtPathLogs.Text;

    cbUF.ItemIndex := cbUF.Items.IndexOf(Ini.ReadString('WebService',
      'UF', 'AL'));
    rgTipoAmb.ItemIndex := Ini.ReadInteger('WebService', 'Ambiente', 0);
    ckVisualizar.Checked := Ini.ReadBool('WebService', 'Visualizar', False);
    ACBrNFe1.Configuracoes.WebServices.UF := cbUF.Text;
    ACBrNFe1.Configuracoes.WebServices.Ambiente :=
      StrToTpAmb(ok, IntToStr(rgTipoAmb.ItemIndex + 1));
    ACBrNFe1.Configuracoes.WebServices.Visualizar := ckVisualizar.Checked;

    edtProxyHost.Text := Ini.ReadString('Proxy', 'Host', '');
    edtProxyPorta.Text := Ini.ReadString('Proxy', 'Porta', '');
    edtProxyUser.Text := Ini.ReadString('Proxy', 'User', '');
    edtProxySenha.Text := Ini.ReadString('Proxy', 'Pass', '');
    ACBrNFe1.Configuracoes.WebServices.ProxyHost := edtProxyHost.Text;
    ACBrNFe1.Configuracoes.WebServices.ProxyPort := edtProxyPorta.Text;
    ACBrNFe1.Configuracoes.WebServices.ProxyUser := edtProxyUser.Text;
    ACBrNFe1.Configuracoes.WebServices.ProxyPass := edtProxySenha.Text;

    rgTipoDanfe.ItemIndex := Ini.ReadInteger('Geral', 'DANFE', 0);
    edtLogoMarca.Text := Ini.ReadString('Geral', 'LogoMarca', '');
    if ACBrNFe1.DANFE <> nil then
    begin
      ACBrNFe1.DANFE.TipoDANFE :=
        StrToTpImp(ok, IntToStr(rgTipoDanfe.ItemIndex + 1));
      ACBrNFe1.DANFE.Logo := edtLogoMarca.Text;
    end;

    edtSmtpHost.Text := Ini.ReadString('Email', 'Host', '');
    edtSmtpPort.Text := Ini.ReadString('Email', 'Port', '');
    edtSmtpUser.Text := Ini.ReadString('Email', 'User', '');
    edtSmtpPass.Text := Ini.ReadString('Email', 'Pass', '');
    edtEmailAssunto.Text := Ini.ReadString('Email', 'Assunto', '');
    edtnfe.Text := Ini.ReadString('Email', 'PadraoNFe', '');
    cbEmailSSL.Checked := Ini.ReadBool('Email', 'SSL', False);
    StreamMemo := TMemoryStream.Create;
    Ini.ReadBinaryStream('Email', 'Mensagem', StreamMemo);
    mmEmailMsg.Lines.LoadFromStream(StreamMemo);
    StreamMemo.Free;
  finally
    Ini.Free;
  end;              *)

end;

function Tfrmnotafiscal_menu.LeInistr(arquivo, sessao, chave,
  padrao: string): string;
var
  ArqIni: TIniFile;
begin
  ArqIni := TIniFile.Create(arquivo);
  try
    result := ArqIni.ReadString(sessao, chave, padrao);
  finally
    ArqIni.Free;
  end;
end;

procedure Tfrmnotafiscal_menu.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MyMemo.Lines.SaveToFile(ExtractFileDir(Application.ExeName) + 'temp.xml');
  MyWebBrowser.Navigate(ExtractFileDir(Application.ExeName) + 'temp.xml');
end;

function Tfrmnotafiscal_menu.Gerar_XML(): string;
var
  vAux: string;
  BnF_VEICULO: boolean;
  iCRT, i: Integer;
  xvoltransp: Integer;
  xTotalImposto: Currency;
  TotalIBPT: Double;
  PorcIBPT: Double;
  vok: boolean;
  TotalEst, TotalFed: Double;

  vItemNFe: string;
  vNFe: string;
  wConsumidor, wVenda, wTotalizaPartilha: boolean;
  wVTotFPC, wVTotPartDest, wVTotPartOrig, wPercentPartilha: Currency;

  lDifal, lBaseProduto, lBaseProduto1, lIcmDifal, lValFCP, lPartDest,
    lPartOrig: Currency;
  lALiqICmsInterEstadual, lALiqICmsInterno, lAliqIcmsImportado,
    lAliqFCP: Currency;
  lAliqAux: Currency;

begin
  if qrnota.RecordCount = 0 then
    exit;

  // filial
  query2.close;
  query2.sql.clear;
  query2.sql.add('select * from c000004');
  query2.sql.add('where codigo = ''' + qrnota.fieldbyname('codfilial')
    .asstring + '''');
  query2.open;

  qrNFE_Cliente.close;
  qrNFE_Cliente.sql.clear;
  qrNFE_Cliente.sql.add('select * from c000007');
  qrNFE_Cliente.sql.add('where codigo = ''' + qrnota.fieldbyname('codcliente')
    .asstring + '''');
  qrNFE_Cliente.open;

  qrtransportador2.close;
  qrtransportador2.sql.clear;
  qrtransportador2.sql.add('select * from c000010');
  qrtransportador2.sql.add('where codigo = ''' +
    qrnota.fieldbyname('codtransportador').asstring + '''');
  qrtransportador2.open;

  qryapoio.close;
  qryapoio.sql.clear;
  qryapoio.sql.add('select natureza from c000061 where CODIGO = :CODIGO');
  qryapoio.ParamByName('CODIGO').asstring :=
    qrnota.fieldbyname('codigo').asstring;
  qryapoio.open;

  ACBrNFe1.NotasFiscais.clear;

  with ACBrNFe1.NotasFiscais.add.NFe do
  begin

    infNFe.ID := qrnota.fieldbyname('numero').asstring;

    Ide.natOp := qrnota.fieldbyname('natureza').asstring;
    Ide.nNF := StrToInt(qrnota.fieldbyname('numero').asstring);
    Ide.cNF := StrToInt(qrnota.fieldbyname('numero').asstring);
    Ide.modelo := 55;
    Ide.serie := StrToInt(qrnota.fieldbyname('serie_nf').asstring);
    Ide.dEmi := qrnota.fieldbyname('data').AsDateTime;
    Ide.dSaiEnt := qrnota.fieldbyname('data_saida').AsDateTime;
    // Ide.hSaiEnt   := StrToTime(qrnota.fieldbyname('hora').asstring);;
    Ide.hSaiEnt := Time;

   // Ide.indPres := pcOutros;

    case qrnota.fieldbyname('TIPO_FINALIDADE').AsInteger of
      0:
        Ide.finNFe := fnNormal;
      1:
        Ide.finNFe := fnComplementar;
      2:
        Ide.finNFe := fnAjuste;
      3:
        Ide.finNFe := fnDevolucao;
    end;

    case qrnota.fieldbyname('ind_press').AsInteger of
      0:  ide.indPres := pcPresencial;
      1:  ide.indPres := pcOutros;
    end;

    if (qrNFE_Cliente.fieldbyname('tipo').AsInteger = 1) then
    Begin
      Ide.indFinal := cfConsumidorFinal;
    End;

    // ShowMessage(Copy(qrnota.fieldbyname('NATUREZA').AsString, 1, Pred(Pos(' \', qrnota.fieldbyname('NATUREZA').AsString))));

    if Copy(qrnota.fieldbyname('NATUREZA').asstring, 1, 5) = 'VENDA' then
    begin
      Ide.finNFe := fnNormal;
    end
    else if Copy(qrnota.fieldbyname('NATUREZA').asstring, 1, 5) = 'COMPL' then
    begin
      Ide.finNFe := fnComplementar;

      // Ide.NFref.Add.RefNfe := qrnota.fieldbyname('INF2').AsString;
    end
    else if Copy(qrnota.fieldbyname('NATUREZA').asstring, 1, 5) = 'AJUST' then
    begin
      Ide.finNFe := fnAjuste;
    end
    else if Copy(qrnota.fieldbyname('NATUREZA').asstring, 1, 5) = 'DEVOL' then
    begin
      Ide.finNFe := fnDevolucao;

      //Ide.NFref.add.RefNfe := qrnota.fieldbyname('INF2').asstring;
    end;

    if qrnota.fieldbyname('MOVIMENTO').asstring = 'S' then
      Ide.tpNF := tnSaida
    else
      Ide.tpNF := tnEntrada;

    if qrnota.fieldbyname('fat_tipo').AsInteger = 0 then
    begin
      Ide.indPag := ipVista;
    end
    else if qrnota.fieldbyname('fat_tipo').AsInteger = 1 then
    begin
      Ide.indPag := ipPrazo;
    end
    else if qrnota.fieldbyname('fat_tipo').AsInteger = 2 then
    begin
      Ide.indPag := ipOutras;
    end;

    Ide.verProc := '10.2.1.0';
    Ide.cUF := StrToInt(Copy(query2.fieldbyname('COD_MUNICIPIO_IBGE')
      .asstring, 1, 2));
    Ide.cMunFG := query2.fieldbyname('COD_MUNICIPIO_IBGE').AsInteger;
    { if (query2.fieldbyname('UF').asstring = qrNFE_Cliente.fieldbyname('UF')
      .asstring) then

      Ide.idDest := doInterna
      else
      Ide.idDest := doInterestadual; }

    if (query2.fieldbyname('UF').asstring = qrNFE_Cliente.fieldbyname('UF')
      .asstring) then
    begin
      Ide.idDest := doInterna;

      if qrNFE_Cliente.fieldbyname('TIPO').AsInteger = 1 then
      begin
        Ide.indFinal := cfConsumidorFinal;
      end
      else
      begin
        if (qrNFE_Cliente.fieldbyname('RG').asstring = '') or
          (qrNFE_Cliente.fieldbyname('RG').asstring = 'ISENTO') then
          Ide.indFinal := cfConsumidorFinal
        else
          Ide.indFinal := cfNao;
      end;
    end
    else
    begin
      Ide.idDest := doInterestadual;

      if qrNFE_Cliente.fieldbyname('TIPO').AsInteger = 1 then
      begin
        Ide.indFinal := cfConsumidorFinal;
      end
      else
      begin
        if (qrNFE_Cliente.fieldbyname('RG').asstring = '') or
          (qrNFE_Cliente.fieldbyname('RG').asstring = 'ISENTO') then
          Ide.indFinal := cfConsumidorFinal
        else
          Ide.indFinal := cfNao;
      end;
    end;

    // 21/10/2015
    qrcompl.close;
    qrcompl.sql.clear;
    qrcompl.sql.add('select * from NFE_COMPLEMENTAR where NUMNOTA = :NUMNOTA');
    qrcompl.ParamByName('NUMNOTA').asstring :=
      qrnota.fieldbyname('numero').asstring;
    qrcompl.open;

    if qrcompl.RecordCount > 0 then
    begin
      // Para NFe referenciada use os campos abaixo
      with Ide.NFref.add do
      begin
        RefNfe := qrcompl.fieldbyname('chave').asstring; // NFe Eletronica
      end;
    end;
    // ShowMessage('cabeçalho da nota');
    // dados do emitente

    Emit.CNPJCPF := SN(query2.fieldbyname('CNPJ').asstring);

    Emit.CNPJCPF := SN(query2.fieldbyname('CNPJ').asstring);

    if (query2.fieldbyname('IE').asstring = '') or
      (query2.fieldbyname('IE').asstring = 'ISENTO') then
      Emit.IE := '1234567890'
    else
      Emit.IE := SN(query2.fieldbyname('IE').asstring);

    Emit.IM := SN(query2.fieldbyname('INSC_MUNICIPAL').asstring);
    Emit.CNAE := SN(query2.fieldbyname('CNAE').asstring);

    if query2.fieldbyname('CRT').asstring = '1' then
      Emit.CRT := crtSimplesNacional
    else if query2.fieldbyname('CRT').asstring = '2' then
      Emit.CRT := crtSimplesExcessoReceita
    else if query2.fieldbyname('CRT').asstring = '3' then
      Emit.CRT := crtRegimeNormal;

    Emit.xNome := query2.fieldbyname('FILIAL').asstring;
    Emit.xFant := query2.fieldbyname('FILIAL').asstring;
    Emit.EnderEmit.fone := query2.fieldbyname('TELEFONE').asstring;
    Emit.EnderEmit.CEP := StrToInt(SN(query2.fieldbyname('CEP').asstring));
    Emit.EnderEmit.xLgr := query2.fieldbyname('ENDERECO').asstring;
    Emit.EnderEmit.nro := query2.fieldbyname('NUMERO').asstring;
    Emit.EnderEmit.xCpl := query2.fieldbyname('COMPLEMENTO').asstring;
    Emit.EnderEmit.xBairro := query2.fieldbyname('BAIRRO').asstring;
    Emit.EnderEmit.cMun := StrToInt(query2.fieldbyname('COD_MUNICIPIO_IBGE')
      .asstring);
    Emit.EnderEmit.xMun := query2.fieldbyname('CIDADE').asstring;
    Emit.EnderEmit.UF := query2.fieldbyname('UF').asstring;
    Emit.EnderEmit.cPais := 1058;
    Emit.EnderEmit.xPais := 'BRASIL';
    ACBrNFeDANFEFR1.Site := query2.fieldbyname('EMAIL').asstring;

    // destinatario
    // ShowMessage('emitente');

    Dest.xNome := qrNFE_Cliente.fieldbyname('nome').asstring;

    Dest.CNPJCPF := SN(qrNFE_Cliente.fieldbyname('cpf').asstring);

    Dest.IE := SN(qrNFE_Cliente.fieldbyname('rg').asstring);

    Dest.EnderDest.CEP :=
      StrToInt(SN(qrNFE_Cliente.fieldbyname('cep').asstring));
    Dest.EnderDest.xLgr := qrNFE_Cliente.fieldbyname('endereco').asstring;
    Dest.EnderDest.nro := qrNFE_Cliente.fieldbyname('numero').asstring;
    Dest.EnderDest.xCpl := qrNFE_Cliente.fieldbyname('complemento').asstring;
    Dest.EnderDest.xBairro := qrNFE_Cliente.fieldbyname('bairro').asstring;
    Dest.EnderDest.cMun :=
      StrToInt(qrNFE_Cliente.fieldbyname('cod_municipio_ibge').asstring);
    Dest.EnderDest.xMun := qrNFE_Cliente.fieldbyname('cidade').asstring;
    Dest.EnderDest.UF := qrNFE_Cliente.fieldbyname('uf').asstring;
    Dest.EnderDest.fone := SN(qrNFE_Cliente.fieldbyname('telefone1').asstring);
    // TpcnDestinoOperacao = (doInterna, doInterestadual, doExterior);
    if Dest.EnderDest.UF = 'EX' then
      Ide.idDest := doExterior
    else if Dest.EnderDest.UF = Emit.EnderEmit.UF then
      Ide.idDest := doInterna
    else
      Ide.idDest := doInterestadual;
    // auterado NT
    // Dest.IE := SN(qrNFE_Cliente.fieldbyname('rg').asstring);
    IF qrNFE_Cliente.fieldbyname('TIPO').AsInteger = 1 then
    Begin
      Dest.indIEDest := inNaoContribuinte;
    End;

    IF qrNFE_Cliente.fieldbyname('TIPO').AsInteger = 2 then
    BEGIN
      // Campo IE e RG é o mesmo.
      if (qrNFE_Cliente.fieldbyname('rg').asstring = '') or
        (qrNFE_Cliente.fieldbyname('rg').asstring = 'ISENTO') then
      begin
        Dest.IE := SN('ISENTO');
        Dest.indIEDest := inNaoContribuinte; // inIsento;
      end
      else
      Begin
        Dest.IE := SN(qrNFE_Cliente.fieldbyname('rg').asstring);
        Dest.indIEDest := inContribuinte;
      end;

    END;
    // Fim da alteraqção NT
    Dest.ISUF := '';
    Dest.EnderDest.cPais := 1058;
    Dest.EnderDest.xPais := 'BRASIL';
    Dest.email := qrNFE_Cliente.fieldbyname('email').asstring;
    // ShowMessage('destinatario');
    // itens

    qrnota_item.close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add
      ('select c000062.*, c000025.produto, c000025.codbarra cod_barra, c000025.unidade un');
    qrnota_item.sql.add
      ('from c000062, c000025 where c000062.codproduto = c000025.codigo');
    qrnota_item.sql.add('and c000062.codnota = ''' +
      qrnota.fieldbyname('codigo').asstring + '''');
    qrnota_item.open;
    qrnota_item.Last;
    qrnota_item.first;

    BnF_VEICULO := False;
    frmmodulo.qrconfig.open;
    if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'PECAS'
    then
    begin
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000025 where codigo = ''' +
        qrnota_item.fieldbyname('codproduto').asstring + '''');
      query.open;
      if query.fieldbyname('CODRECEITA').asstring = 'SIM' then
      begin
        BnF_VEICULO := True;
      end;
    end;

    if BnF_VEICULO then
    begin

      with Det.add do
      begin

        Prod.nItem := qrnota_item.fieldbyname('item').AsInteger;
        Prod.cProd := qrnota_item.fieldbyname('codproduto').asstring;
        // Prod.cEAN := frmPrincipal.Zerarcodigo(qrnota_item.fieldbyname('codbarra').asstring, 13);
        Prod.NCM := SN(qrnota_item.fieldbyname('classificacao_fiscal')
          .asstring);
        if trim(qrnota_item.fieldbyname('cest').asstring) <> '0' then
        begin
          Prod.CEST := qrnota_item.fieldbyname('cest').asstring;
        end;
        Prod.xProd := Copy(query.fieldbyname('veic_especie').asstring, 1, 3) +
          '/' + query.fieldbyname('veic_tipo').asstring;
        infAdProd := query.fieldbyname('veic_cod_marca').asstring + '/' +
          qrnota_item.fieldbyname('produto').asstring + ';' +

          'Ano: ' + query.fieldbyname('veic_ano_fabricacao').asstring + ' ' +
          'Mod: ' + query.fieldbyname('veic_ano_modelo').asstring + ';' +

          'Cor: ' + query.fieldbyname('veic_cor').asstring + ';' +

          'Combustivel: ' + query.fieldbyname('veic_tipo_combustivel')
          .asstring + ';' +

          'Placa: ' + query.fieldbyname('VEIC_SERIE').asstring + ';' +

          'Renavam: ' + query.fieldbyname('veic_renavam').asstring + ';' +

          'Chassi: ' + query.fieldbyname('veic_chassi').asstring + ';' +

          'Categoria: ' + query.fieldbyname('VEIC_NUMERO_MOTOR').asstring;

        Prod.cfop := qrnota_item.fieldbyname('cfop').asstring;
        Prod.EXTIPI := '23';
        Prod.uCom := qrnota_item.fieldbyname('UN').asstring;
        Prod.qCom := qrnota_item.fieldbyname('qtde').asfloat;
        Prod.vUnCom := qrnota_item.fieldbyname('unitario').asfloat;
        Prod.vProd := qrnota_item.fieldbyname('total').asfloat;
        Prod.cEANTrib := '';
        Prod.qTrib := qrnota_item.fieldbyname('qtde').asfloat;
        Prod.vUnTrib := qrnota_item.fieldbyname('unitario').asfloat;
        Prod.uTrib := qrnota_item.fieldbyname('UN').asstring;
        Prod.vDesc := qrnota_item.fieldbyname('desconto').asfloat;
        Prod.vFrete := qrnota.fieldbyname('frete').AsCurrency/qrnota.fieldbyname('itens').AsInteger;
        Prod.vSeg := qrnota.fieldbyname('seguro').AsCurrency/qrnota.fieldbyname('itens').AsInteger;
        Prod.vOutro := qrnota.fieldbyname('outras_despesas').AsCurrency/qrnota.fieldbyname('itens').AsInteger;
        // Prod.IndTot   := qrnota.fieldbyname('total_nota').AsVariant;
        Prod.IndTot := TpcnIndicadorTotal(0);
       // ShowMessage('item 1');
        with Imposto do
        begin

          ICMS.orig := oeNacional;
          iCRT := StrToInt(frmmodulo.qrfilial.fieldbyname('crt').asstring);

          case iCRT of
            1:
              begin // Linhas para o simples nacional
                if qrnota_item.fieldbyname('csosn').asstring = '101' then
                  ICMS.CSOSN := csosn101;
                if qrnota_item.fieldbyname('csosn').asstring = '102' then
                  ICMS.CSOSN := csosn102;
                if qrnota_item.fieldbyname('csosn').asstring = '103' then
                  ICMS.CSOSN := csosn103;
                if qrnota_item.fieldbyname('csosn').asstring = '300' then
                  ICMS.CSOSN := csosn300;
                if qrnota_item.fieldbyname('csosn').asstring = '400' then
                  ICMS.CSOSN := csosn400;
                if qrnota_item.fieldbyname('csosn').asstring = '201' then
                  ICMS.CSOSN := csosn201;
                if qrnota_item.fieldbyname('csosn').asstring = '202' then
                  ICMS.CSOSN := csosn202;
                if qrnota_item.fieldbyname('csosn').asstring = '500' then
                  ICMS.CSOSN := csosn500;
                if qrnota_item.fieldbyname('csosn').asstring = '900' then
                  ICMS.CSOSN := csosn900;

                case ICMS.CSOSN of

                  csosn101:
                    begin
                      ICMS.pCredSN := qrnota_item.fieldbyname('credsn_aliquota').Value; // Colocar o percentual do Crédito
                        ICMS.vCredICMSSN := qrnota_item.fieldbyname('credsn_valor').Value; // Colocar o valor do Crédito
                    end;

                  csosn102:
                    begin

                    end;

                  csosn103:
                    begin

                    end;

                  csosn300:
                    begin

                    end;

                  csosn400:
                    begin

                    end;

                  csosn201:
                    begin
                      ICMS.modBCST := dbisMargemValorAgregado;;
                      ICMS.pMVAST := qrnota_item.fieldbyname
                        ('margem_agregada').Value;
                      ICMS.pRedBCST := 00.00;
                      ICMS.vBCST := qrnota_item.fieldbyname('base_sub').Value;
                      ICMS.pICMSST := 00.00;
                      ICMS.vICMSST := qrnota_item.fieldbyname('icms_sub').Value;
                      ICMS.pCredSN := qrnota_item.fieldbyname('credsn_aliquota').Value; // Colocar o percentual do Crédito
                        ICMS.vCredICMSSN := qrnota_item.fieldbyname('credsn_valor').Value; // Colocar o valor do Crédito
                    end;

                  csosn202:
                    begin
                      ICMS.modBCST := dbisMargemValorAgregado;
                      ICMS.pMVAST := qrnota_item.fieldbyname
                        ('margem_agregada').Value;
                      ICMS.pRedBCST := 00.00;
                      ICMS.vBCST := qrnota_item.fieldbyname('base_sub').Value;
                      ICMS.pICMSST := 00.00;
                      ICMS.vICMSST := qrnota_item.fieldbyname('icms_sub').Value;
                    end;

                  csosn500:
                    begin
                      ICMS.vBCSTRet := qrnota_item.fieldbyname
                        ('base_sub').Value;
                      ICMS.vICMSSTRet := qrnota_item.fieldbyname
                        ('icms_sub').Value;
                    end;

                  csosn900:
                    begin
                      ICMS.modBC := dbiMargemValorAgregado;
                      ICMS.vBC := qrnota_item.fieldbyname('base_calculo').Value;
                      ICMS.pRedBC := qrnota_item.fieldbyname
                        ('icms_reduzido').Value;
                      ICMS.pICMS := qrnota_item.fieldbyname('ICMS').asfloat;
                      ICMS.vICMS := qrnota_item.fieldbyname('valor_icms').Value;
                      ICMS.modBCST := dbisMargemValorAgregado;
                      ICMS.pMVAST := qrnota_item.fieldbyname
                        ('margem_agregada').Value;
                      ICMS.pRedBCST := 00.00;
                      ICMS.vBCST := qrnota_item.fieldbyname('base_sub').Value;
                      ICMS.pICMSST := 00.00;
                      ICMS.vICMSST := qrnota_item.fieldbyname('icms_sub').Value;
                      ICMS.pCredSN := qrnota_item.fieldbyname('credsn_aliquota').Value; // Colocar o percentual do Crédito
                        ICMS.vCredICMSSN := qrnota_item.fieldbyname('credsn_valor').Value; // Colocar o valor do Crédito
                    end;
                end; // fim do case icms.csosn

              end;

            2:
              begin
                // (...)
              end;

            3:
              begin
                if qrnota_item.fieldbyname('cst').asstring = '000' then
                  ICMS.cst := cst00;
                if qrnota_item.fieldbyname('cst').asstring = '010' then
                  ICMS.cst := cst10;
                if qrnota_item.fieldbyname('cst').asstring = '020' then
                  ICMS.cst := cst20;
                if qrnota_item.fieldbyname('cst').asstring = '030' then
                  ICMS.cst := cst30;
                if qrnota_item.fieldbyname('cst').asstring = '040' then
                  ICMS.cst := cst40;
                if qrnota_item.fieldbyname('cst').asstring = '041' then
                  ICMS.cst := cst41;
                if qrnota_item.fieldbyname('cst').asstring = '050' then
                  ICMS.cst := cst50;
                if qrnota_item.fieldbyname('cst').asstring = '051' then
                  ICMS.cst := cst51;
                if qrnota_item.fieldbyname('cst').asstring = '060' then
                  ICMS.cst := cst60;
                if qrnota_item.fieldbyname('cst').asstring = '070' then
                  ICMS.cst := cst70;
                if qrnota_item.fieldbyname('cst').asstring = '080' then
                  ICMS.cst := cst80;
                if qrnota_item.fieldbyname('cst').asstring = '081' then
                  ICMS.cst := cst81;
                if qrnota_item.fieldbyname('cst').asstring = '090' then
                  ICMS.cst := cst90;
                ICMS.modBC := dbiPrecoTabelado;
                ICMS.pICMS := qrnota_item.fieldbyname('ICMS').asfloat;
                ICMS.vICMS := qrnota_item.fieldbyname('valor_icms').asfloat;
                ICMS.vBC := qrnota_item.fieldbyname('base_calculo').asfloat;
                ICMS.orig := oeNacional;
                IPI.cst := ipi00;
                IPI.clEnq := '';
                IPI.cEnq := '999';
              end;

          end; // fim do case iCRT

          // lei transparencia
          with qrTrib do
          begin
            close;
            sql.clear;
            sql.add('select ALIQNAC from IBPT_ALIQUOTAS where NCM = :NCM');
            ParamByName('NCM').asstring := frmPrincipal.somenteNumero
              (qrnota_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring);
            open;
          end;

          if qrTrib.RecordCount > 0 then
          begin
            vTotTrib := (qrnota_item.fieldbyname('total').Value *
              qrTrib.fieldbyname('ALIQNAC').asfloat) / 100;
            xTotalImposto := xTotalImposto + vTotTrib;
          end;

          TotalIBPT := TotalIBPT +
            ((Prod.vProd * qrTrib.fieldbyname('ALIQNAC').asfloat) / 100);
          // partilha do icms e fundo de probreza

          if (query2.fieldbyname('UF').asstring <> qrNFE_Cliente.fieldbyname
            ('uf').asstring) and
            (qrNFE_Cliente.fieldbyname('tipo').AsInteger = 1) then
          begin
            with ICMSUFDest do
            begin
              vBCUFDest := frmnotafiscal_menu.qrnota.fieldbyname
                ('VBCUFDEST').asfloat;
              pFCPUFDest := frmnotafiscal_menu.qrnota.fieldbyname
                ('PFCPUFDEST').asfloat;
              pICMSUFDest := frmnotafiscal_menu.qrnota.fieldbyname
                ('PICMSUFDEST').asfloat;
              pICMSInter := frmnotafiscal_menu.qrnota.fieldbyname
                ('PICMSINTER').asfloat;
              pICMSInterPart := frmnotafiscal_menu.qrnota.fieldbyname
                ('PICMSINTERPART').asfloat;
              vFCPUFDest := frmnotafiscal_menu.qrnota.fieldbyname
                ('VFCPUFDEST').asfloat;
              vICMSUFDest := frmnotafiscal_menu.qrnota.fieldbyname
                ('VICMSUFDEST').asfloat;
              vICMSUFRemet := frmnotafiscal_menu.qrnota.fieldbyname
                ('VICMSUFREMET').asfloat;
            end;
          end
          else
          begin
            with ICMSUFDest do
            begin
              vBCUFDest := 0.00;
              pFCPUFDest := 0.00;
              pICMSUFDest := 0.00;
              pICMSInter := 0.00;
              pICMSInterPart := 0.00;
              vFCPUFDest := 0.00;
              vICMSUFDest := 0.00;
              vICMSUFRemet := 0.00;
            end;
          end;
        end; // fim do with imposto

      end;
    end
    else
      while not qrnota_item.eof do
      begin

        with Det.add do
        begin
          // colocar cfop nos produtos

          frmmodulo.qrproduto.close;
          frmmodulo.qrproduto.open;

          Prod.nItem := qrnota_item.fieldbyname('item').AsInteger;
          Prod.cProd := qrnota_item.fieldbyname('codproduto').asstring;
          Prod.cEAN := '';
          // frmPrincipal.Zerarcodigo(qrnota_item.fieldbyname('codbarra').asstring, 13);
          // NCM
          if frmmodulo.qrproduto.Locate('codigo',
            qrnota_item.fieldbyname('codproduto').asstring, [loCaseInsensitive])
          then
          begin
            Prod.NCM := frmPrincipal.somenteNumero
              (frmmodulo.qrproduto.fieldbyname('CLASSIFICACAO_FISCAL')
              .asstring);
            if trim(qrnota_item.fieldbyname('cest').asstring) <> '0' then
            begin
              Prod.CEST := frmPrincipal.somenteNumero
                (frmmodulo.qrproduto.fieldbyname('CEST').asstring);
            end;

          end;

          // prod.NCM := sn(qrnota_item.fieldbyname('classificacao_fiscal').asstring);
          Prod.xProd := qrnota_item.fieldbyname('produto').asstring;

          Prod.cfop := qrnota_item.fieldbyname('cfop').asstring;
          Prod.uCom := qrnota_item.fieldbyname('UN').asstring;
          Prod.qCom := qrnota_item.fieldbyname('qtde').asfloat;
          Prod.vUnCom := qrnota_item.fieldbyname('unitario').asfloat;
          Prod.vProd := qrnota_item.fieldbyname('total').asfloat;
          Prod.qTrib := qrnota_item.fieldbyname('qtde').asfloat;
          Prod.vUnTrib := qrnota_item.fieldbyname('unitario').asfloat;
          Prod.uTrib := qrnota_item.fieldbyname('UN').asstring;
          Prod.vDesc := qrnota_item.fieldbyname('desconto').AsCurrency;
           Prod.vFrete := qrnota.fieldbyname('frete').AsCurrency/qrnota.fieldbyname('itens').AsInteger;
           Prod.vSeg := qrnota.fieldbyname('seguro').AsCurrency/qrnota.fieldbyname('itens').AsInteger;
           Prod.vOutro := qrnota.fieldbyname('outras_despesas').AsCurrency/qrnota.fieldbyname('itens').AsInteger;
          infAdProd := ''; // complemento do nome do item
          Prod.EXTIPI := '23';
          Prod.cEANTrib := '';
          Prod.IndTot := qrnota.fieldbyname('total_nota').AsVariant;
          Prod.IndTot := TpcnIndicadorTotal(0);

          with Imposto do
          begin

            iCRT := StrToInt(frmmodulo.qrfilial.fieldbyname('crt').asstring);

            case iCRT of

              1:
                begin // Linhas para o simples nacional
                  ICMS.CSOSN := StrToCSOSNIcms(vok,
                    Copy(qrnota_item.fieldbyname('csosn').asstring, 1, 3));

                  case qrnota_item.fieldbyname('origem').AsInteger of
                    0:
                      ICMS.orig := oeNacional;
                    1:
                      ICMS.orig := oeEstrangeiraImportacaoDireta;
                    2:
                      ICMS.orig := oeEstrangeiraAdquiridaBrasil;
                    3:
                      ICMS.orig := oeNacionalConteudoImportacaoSuperior40;
                    4:
                      ICMS.orig := oeNacionalProcessosBasicos;
                    5:
                      ICMS.orig := oeNacionalConteudoImportacaoInferiorIgual40;
                    6:
                      ICMS.orig := oeEstrangeiraImportacaoDiretaSemSimilar;
                    7:
                      ICMS.orig := oeEstrangeiraAdquiridaBrasilSemSimilar;
                    8:
                      ICMS.orig := oeNacionalConteudoImportacaoSuperior70;
                  end;

                  case ICMS.CSOSN of

                    csosn101:
                      begin
                         ICMS.pCredSN := qrnota_item.fieldbyname('credsn_aliquota').Value; // Colocar o percentual do Crédito
                        ICMS.vCredICMSSN := qrnota_item.fieldbyname('credsn_valor').Value; // Colocar o valor do Crédito
                      end;

                    csosn102:
                      begin

                      end;
                    csosn103:
                      begin

                      end;
                    csosn300:
                      begin

                      end;
                    csosn400:
                      begin

                      end;

                    csosn201:
                      begin
                        ICMS.modBCST := dbisMargemValorAgregado;
                        ICMS.pMVAST := qrnota_item.fieldbyname
                          ('margem_agregada').Value;
                        ICMS.pRedBCST := 00.00;
                        ICMS.vBCST := qrnota_item.fieldbyname('base_sub').Value;
                        ICMS.pICMSST := qrnota_item.fieldbyname('icms').Value;
                        ICMS.vICMSST := qrnota_item.fieldbyname
                          ('icms_sub').Value;
                        ICMS.pCredSN := qrnota_item.fieldbyname('credsn_aliquota').Value; // Colocar o percentual do Crédito
                        ICMS.vCredICMSSN := qrnota_item.fieldbyname('credsn_valor').Value; // Colocar o valor do Crédito
                      end;

                    csosn202:
                      begin
                        ICMS.modBCST := dbisMargemValorAgregado;
                        ICMS.pMVAST := qrnota_item.fieldbyname
                          ('margem_agregada').Value;
                        ICMS.pRedBCST := 00.00;
                        ICMS.vBCST := qrnota_item.fieldbyname('base_sub').Value;
                        ICMS.pICMSST := qrnota_item.fieldbyname('icms').Value;
                        ICMS.vICMSST := qrnota_item.fieldbyname
                          ('icms_sub').Value;
                        ICMS.pCredSN := qrnota_item.fieldbyname('credsn_aliquota').Value; // Colocar o percentual do Crédito
                        ICMS.vCredICMSSN := qrnota_item.fieldbyname('credsn_valor').Value; // Colocar o valor do Crédito
                      end;

                    csosn500:
                      begin
                        ICMS.vBCSTRet := qrnota_item.fieldbyname
                          ('base_sub').Value;
                        ICMS.vICMSSTRet :=
                          qrnota_item.fieldbyname('icms_sub').Value;
                      end;

                    csosn900:
                      begin
                        ICMS.modBC := dbiMargemValorAgregado;
                        ICMS.vBC := qrnota_item.fieldbyname
                          ('base_calculo').Value;
                        ICMS.pRedBC := qrnota_item.fieldbyname
                          ('icms_reduzido').Value;
                        ICMS.pICMS := qrnota_item.fieldbyname('ICMS').asfloat;
                        ICMS.vICMS := qrnota_item.fieldbyname
                          ('valor_icms').Value;
                        ICMS.modBCST := dbisMargemValorAgregado;
                        ICMS.pMVAST := qrnota_item.fieldbyname
                          ('margem_agregada').Value;
                        ICMS.pRedBCST := 00.00;
                        ICMS.vBCST := qrnota_item.fieldbyname('base_sub').Value;
                        ICMS.pICMSST := 00.00;
                        ICMS.vICMSST := qrnota_item.fieldbyname
                          ('icms_sub').Value;
                         ICMS.pCredSN := qrnota_item.fieldbyname('credsn_aliquota').Value; // Colocar o percentual do Crédito
                        ICMS.vCredICMSSN := qrnota_item.fieldbyname('credsn_valor').Value; // Colocar o valor do Crédito
                      end;
                  end; // fim do case icms.csosn

                end;

              2:
                begin
                  // (...)
                end;

              3:
                begin
                  ICMS.cst := StrToCSTICMS(vok,
                    Copy(qrnota_item.fieldbyname('cst').asstring, 2, 3));

                  case qrnota_item.fieldbyname('origem').AsInteger of
                    0:
                      ICMS.orig := oeNacional;
                    1:
                      ICMS.orig := oeEstrangeiraImportacaoDireta;
                    2:
                      ICMS.orig := oeEstrangeiraAdquiridaBrasil;
                    3:
                      ICMS.orig := oeNacionalConteudoImportacaoSuperior40;
                    4:
                      ICMS.orig := oeNacionalProcessosBasicos;
                    5:
                      ICMS.orig := oeNacionalConteudoImportacaoInferiorIgual40;
                    6:
                      ICMS.orig := oeEstrangeiraImportacaoDiretaSemSimilar;
                    7:
                      ICMS.orig := oeEstrangeiraAdquiridaBrasilSemSimilar;
                    8:
                      ICMS.orig := oeNacionalConteudoImportacaoSuperior70;
                  end;

                  { ICMS.modBC := dbiMargemValorAgregado;
                    //ICMS.modBC := dbiPrecoTabelado;
                    ICMS.pICMS := qrnota_item.fieldbyname('ICMS').asfloat;
                    ICMS.vICMS := qrnota_item.fieldbyname('valor_icms').asfloat;
                    ICMS.vBC := qrnota_item.fieldbyname('base_calculo').asfloat;
                    ICMS.vBC := qrnota_item.fieldbyname
                    ('base_calculo').Value;
                    ICMS.pRedBC := qrnota_item.fieldbyname
                    ('icms_reduzido').Value;

                    ICMS.modBCST := dbisMargemValorAgregado;
                    ICMS.pMVAST := qrnota_item.fieldbyname
                    ('margem_agregada').Value;
                    ICMS.pRedBCST := 00.00;
                    ICMS.vBCST := qrnota_item.fieldbyname('base_sub').Value;
                    ICMS.pICMSST := 00.00;
                    ICMS.vICMSST := qrnota_item.fieldbyname
                    ('icms_sub').Value;
                    ICMS.pCredSN := 0.0; // Colocar o percentual do Crédito
                    ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                    ICMS.orig := oeNacional;
                    IPI.cst := ipi00;
                    IPI.clEnq := '';
                    IPI.cEnq := '999'; }
                  ICMS.modBC := dbiPrecoTabelado;
                  ICMS.pICMS := qrnota_item.fieldbyname('ICMS').asfloat;
                  ICMS.vICMS := qrnota_item.fieldbyname('valor_icms').asfloat;
                  ICMS.vBC := qrnota_item.fieldbyname('base_calculo').asfloat;

                end;

            end; // fim do case iCRT

            // lei transparencia
            with qrTrib do
            begin
              close;
              sql.clear;
              sql.add('select * from IBPT_ALIQUOTAS where NCM =''' +
                qrnota_item.fieldbyname('CLASSIFICACAO_FISCAL')
                .asstring + '''');
              open;

              if (qrnota_item.fieldbyname('origem').AsInteger = 0) or
                (qrnota_item.fieldbyname('origem').AsInteger = 3) or
                (qrnota_item.fieldbyname('origem').AsInteger = 4) or
                (qrnota_item.fieldbyname('origem').AsInteger = 5) or
                (qrnota_item.fieldbyname('origem').AsInteger = 8) then
              begin
                if qrTrib.RecordCount > 0 then
                begin
                  vTotTrib :=
                    RoundABNT(((qrnota_item.fieldbyname('total').Value *
                    qrTrib.fieldbyname('ALIQNAC').asfloat) / 100 +
                    (qrnota_item.fieldbyname('total').Value *
                    qrTrib.fieldbyname('ALIQESTADUAL').asfloat) / 100), 2);
                  xTotalImposto := xTotalImposto + vTotTrib;
                  TotalEst :=
                    RoundABNT(TotalEst + (qrnota_item.fieldbyname('total').Value
                    * qrTrib.fieldbyname('ALIQESTADUAL').asfloat) / 100, 2);
                  TotalFed :=
                    RoundABNT(TotalFed + (qrnota_item.fieldbyname('total').Value
                    * qrTrib.fieldbyname('ALIQNAC').asfloat) / 100, 2);
                end;

                TotalIBPT := TotalIBPT +
                  ((Prod.vProd * qrTrib.fieldbyname('ALIQNAC').asfloat) / 100) +
                  ((Prod.vProd * qrTrib.fieldbyname('ALIQESTADUAL')
                  .asfloat) / 100);

              end
              else
              begin
                begin
                  if qrTrib.RecordCount > 0 then
                  begin
                    vTotTrib :=
                      RoundABNT(((qrnota_item.fieldbyname('total').Value *
                      qrTrib.fieldbyname('ALIQIMP').asfloat) / 100 +
                      (qrnota_item.fieldbyname('total').Value *
                      qrTrib.fieldbyname('ALIQESTADUAL').asfloat) / 100), 2);
                    xTotalImposto := xTotalImposto + vTotTrib;
                    TotalEst :=
                      RoundABNT(TotalEst + (qrnota_item.fieldbyname('total')
                      .Value * qrTrib.fieldbyname('ALIQESTADUAL').asfloat)
                      / 100, 2);
                    TotalFed :=
                      RoundABNT(TotalFed + (qrnota_item.fieldbyname('total')
                      .Value * qrTrib.fieldbyname('ALIQIMP').asfloat) / 100, 2);

                  end;

                  TotalIBPT := TotalIBPT +
                    ((Prod.vProd * qrTrib.fieldbyname('ALIQIMP').asfloat) / 100)
                    + ((Prod.vProd * qrTrib.fieldbyname('ALIQESTADUAL')
                    .asfloat) / 100);
                end;
              end;
            end;

            TotalIBPT := TotalIBPT +
              ((Prod.vProd * qrTrib.fieldbyname('ALIQNAC').asfloat) / 100);

            if (Ide.idDest = doInterestadual) then
            // Venda InterEstadual a Consumidor
            begin
              // obter aliquotas UF Destino
              IF (Dest.indIEDest = inNaoContribuinte) and
                (Ide.idDest = doInterestadual) then
              begin
                qryaux.close;
                qryaux.sql.clear;
                qryaux.sql.add
                  ('SELECT ALIQ, ALIQST, ALIQIMPORTADO, FCP FROM ICM_PARTILHA WHERE UF='''
                  + qrNFE_Cliente.fieldbyname('uf').asstring + '''');
                qryaux.open;

                lALiqICmsInterEstadual := qryaux.fieldbyname('ALIQ').asfloat;
                // INTERESTADUAL     7 / 12
                lALiqICmsInterno := qryaux.fieldbyname('ALIQST').AsCurrency;
                // INTERNA       18
                lAliqIcmsImportado := qryaux.fieldbyname('ALIQIMPORTADO')
                  .AsCurrency; // Importado 4
                lAliqFCP := qryaux.fieldbyname('FCP').AsCurrency;

                wPercentPartilha := 60;

                if (ICMS.orig = oeEstrangeiraImportacaoDireta) or
                  (ICMS.orig = oeEstrangeiraAdquiridaBrasil) or
                  (ICMS.orig = oeEstrangeiraImportacaoDiretaSemSimilar) or
                  (ICMS.orig = oeEstrangeiraAdquiridaBrasilSemSimilar) then
                  // 1,2,3 -> importados
                  lAliqAux := lAliqIcmsImportado
                Else
                  lAliqAux := lALiqICmsInterEstadual;

                lDifal := (lALiqICmsInterno - lAliqAux);
                lBaseProduto1 := (Prod.qTrib * Prod.vUnTrib);
                lBaseProduto := (lBaseProduto1 + Prod.vFrete + Prod.vSeg +
                  Prod.vOutro + IPI.vIPI) - Prod.vDesc;

                lIcmDifal := (lBaseProduto / 100) * lDifal;
                lValFCP := (lBaseProduto / 100) * lAliqFCP;
                lPartDest := (lIcmDifal / 100) * wPercentPartilha;
                lPartOrig := (lIcmDifal / 100) * (100 - wPercentPartilha);

                WITH ICMSUFDest DO
                begin
                  vBCUFDest := lBaseProduto;
                  pFCPUFDest := lAliqFCP;
                  pICMSUFDest := lALiqICmsInterno;
                  pICMSInter := lAliqAux;
                  pICMSInterPart := wPercentPartilha;
                  vFCPUFDest := lValFCP;
                  vICMSUFDest := lPartDest;
                  if (Emit.EnderEmit.UF = 'SP') or (Emit.EnderEmit.UF = 'MG')
                  then
                    vICMSUFRemet := 0.00 // lPartOrig;
                  else
                    vICMSUFRemet := lPartOrig;
                end;

                wVTotFPC := wVTotFPC + RoundTo(lValFCP, -2);
                wVTotPartDest := wVTotPartDest + RoundTo(lPartDest, -2);
                wVTotPartOrig := wVTotPartOrig + RoundTo(lPartOrig, -2);
              end;


              // partilha do icms e fundo de probreza

              { if (query2.fieldbyname('UF').asstring <> qrNFE_Cliente.fieldbyname('uf').asstring) and (qrNFE_Cliente.fieldbyname('tipo').AsInteger = 1) then
                begin
                with ICMSUFDest do
                begin
                vBCUFDest      := frmnotafiscal_menu.qrnota.fieldbyname('VBCUFDEST').asfloat;
                pFCPUFDest     := frmnotafiscal_menu.qrnota.fieldbyname('PFCPUFDEST').asfloat;
                pICMSUFDest    := frmnotafiscal_menu.qrnota.fieldbyname('PICMSUFDEST').asfloat;
                pICMSInter     := frmnotafiscal_menu.qrnota.fieldbyname('PICMSINTER').asfloat;
                pICMSInterPart := frmnotafiscal_menu.qrnota.fieldbyname('PICMSITERPART').asfloat;
                vFCPUFDest     := frmnotafiscal_menu.qrnota.fieldbyname('VFCPUFDEST').asfloat;
                vICMSUFDest    := frmnotafiscal_menu.qrnota.fieldbyname('VICMSUFDEST').asfloat;
                vICMSUFRemet   := frmnotafiscal_menu.qrnota.fieldbyname('VICMSUFREMET').asfloat;
                end;
                end
                else
                begin
                with ICMSUFDest do
                begin
                vBCUFDest      := 0.00;
                pFCPUFDest     := 0.00;
                pICMSUFDest    := 0.00;
                pICMSInter     := 0.00;
                pICMSInterPart := 0.00;
                vFCPUFDest     := 0.00;
                vICMSUFDest    := 0.00;
                vICMSUFRemet   := 0.00;
                end;
                end; }

                   //pisconfins
               if qrnota_item.fieldbyname('piscofins').asstring = 'S' then
                 begin
                    if qrnota_item.fieldbyname('cst_pis').asstring <> '51' then
                      begin
                               with PIS do
                                 begin


                                   CST      := StrToCSTPIS(OK,Trim(qrnota_item.fieldbyname('cst_pis').asstring)); //pis99;
                                   PIS.vBC  := qrnota_item.fieldbyname('pis_base').asfloat;
                                   PIS.pPIS := qrnota_item.fieldbyname('pis_aliquota').asfloat;
                                   PIS.vPIS := qrnota_item.fieldbyname('pis_valor').asfloat;

                                   PIS.qBCProd   := qrnota_item.fieldbyname('pis_base').asfloat;
                                   PIS.vAliqProd := qrnota_item.fieldbyname('pis_aliquota').asfloat;
                                   PIS.vPIS      := qrnota_item.fieldbyname('pis_valor').asfloat;
                                 end;

                                with PISST do
                                 begin
                                   vBc       := 0;
                                   pPis      := 0;
                                   qBCProd   := 0;
                                   vAliqProd := 0;
                                   vPIS      := 0;

                                 end;




                            with COFINS do
                             begin
                               CST            := StrToCSTCOFINS(OK,Trim(qrnota_item.fieldbyname('cst_cofins').asstring)); //cof99;
                               COFINS.vBC     := qrnota_item.fieldbyname('cofins_base').asfloat;
                               COFINS.pCOFINS := qrnota_item.fieldbyname('cofins_aliquota').asfloat;
                               COFINS.vCOFINS := qrnota_item.fieldbyname('cofins_valor').asfloat;

                               COFINS.qBCProd   := qrnota_item.fieldbyname('cofins_base').asfloat;
                               COFINS.vAliqProd := qrnota_item.fieldbyname('cofins_aliquota').asfloat;
                             end;

                            with COFINSST do
                             begin
                               vBC       := 0;
                               pCOFINS   := 0;
                               qBCProd   := 0;
                               vAliqProd := 0;
                               vCOFINS   := 0;
                             end;
                        end
                        else
                        begin
                            with PIS do
                                 begin


                                   CST      := StrToCSTPIS(OK,Trim(qrnota_item.fieldbyname('cst_pis').asstring)); //pis99;
                                   PIS.vBC  := 0;
                                   PIS.pPIS := 0;
                                   PIS.vPIS := 0;

                                   PIS.qBCProd   := 0;
                                   PIS.vAliqProd := 0;
                                   PIS.vPIS      := 0;
                                 end;

                                with PISST do
                                 begin
                                   vBc       := 0;
                                   pPis      := 0;
                                   qBCProd   := 0;
                                   vAliqProd := 0;
                                   vPIS      := 0;

                                 end;




                            with COFINS do
                             begin
                               CST            := StrToCSTCOFINS(OK,Trim(qrnota_item.fieldbyname('cst_cofins').asstring)); //cof99;
                               COFINS.vBC     := 0;
                               COFINS.pCOFINS := 0;
                               COFINS.vCOFINS := 0;

                               COFINS.qBCProd   := 0;
                               COFINS.vAliqProd := 0;
                             end;

                            with COFINSST do
                             begin
                               vBC       := 0;
                               pCOFINS   := 0;
                               qBCProd   := 0;
                               vAliqProd := 0;
                               vCOFINS   := 0;
                             end;
                        end;

                    end;



            end; // fim do with imposto

          end; // fim do with det.add

          qrnota_item.Next;

        end; // fim do loop de itens

        // base de calculo do icms
        Total.ICMSTot.vBC := qrnota.fieldbyname('base_calculo').asfloat;
        // valor do icms
        Total.ICMSTot.vICMS := qrnota.fieldbyname('valor_icms').asfloat;
        // base de calculo st
        Total.ICMSTot.vBCST := qrnota.fieldbyname('base_sub').asfloat;
        // valor st
        Total.ICMSTot.vst := qrnota.fieldbyname('icms_sub').asfloat;
        // frete
        Total.ICMSTot.vFrete := qrnota.fieldbyname('frete').asfloat;
        // seguro
        Total.ICMSTot.vSeg := qrnota.fieldbyname('seguro').asfloat;
        // outras despesas
        Total.ICMSTot.vOutro := qrnota.fieldbyname('OUTRAS_DESPESAS').asfloat;
        // ipi
        Total.ICMSTot.vIPI := qrnota.fieldbyname('VALOR_TOTAL_IPI').asfloat;
        // valor da nota
        Total.ICMSTot.vNF := qrnota.fieldbyname('TOTAL_NOTA').asfloat;
        // valor dos produtos
        Total.ICMSTot.vProd := qrnota.fieldbyname('VALOR_PRODUTOS').asfloat;
        // desconto
        Total.ICMSTot.vDesc := qrnota.fieldbyname('DESCONTO').asfloat;

         if  qrnota_item.fieldbyname('cst_pis').asstring <> '51' then
        begin
            Total.ICMSTot.vPIS    := qrnota.fieldbyname('PIS').asfloat;
            Total.ICMSTot.vCOFINS := qrnota.fieldbyname('COFINS').asfloat;
         end
         else
         begin
              Total.ICMSTot.vPIS    := 0;
            Total.ICMSTot.vCOFINS := 0;
         end;

        PorcIBPT := ((TotalIBPT / Total.ICMSTot.vProd) * 100);

        //
        if (Ide.indFinal = cfConsumidorFinal) and (Ide.idDest = doInterestadual)
        then
        begin
          Total.ICMSTot.vFCPUFDest := wVTotFPC;
          Total.ICMSTot.vICMSUFDest := wVTotPartDest;
          if (Emit.EnderEmit.UF = 'SP') or (Emit.EnderEmit.UF = 'MG') then
            Total.ICMSTot.vICMSUFRemet := 0.00
          else
            Total.ICMSTot.vICMSUFRemet := wVTotPartOrig;
        end;
        //
        if xTotalImposto > 0 then
          Total.ICMSTot.vTotTrib := xTotalImposto;
        // contas a pagar

        cobr.Fat.nFat := qrnota.fieldbyname('numero').asstring;
        cobr.Fat.vOrig := RoundTo(qrnota.fieldbyname('TOTAL_NOTA').asfloat, -2);
        cobr.Fat.vDesc := RoundTo(0.0, -2);
        cobr.Fat.vLiq := RoundTo(qrnota.fieldbyname('TOTAL_NOTA').asfloat, -2);

        for i := 1 to qrnota.fieldbyname('fat_qtde_prestacao').AsInteger do
        begin
          with cobr.Dup.add do
          begin
            // nDup  := FormatFloat('00', i); -> para que o numero saisse 01, 02, 03...
            case i of
              1:
                begin
                  nDup := qrnota.fieldbyname('faturamento_numero1').asstring;
                  dVenc := qrnota.fieldbyname('faturamento_data1').AsDateTime;
                  vDup := RoundTo(qrnota.fieldbyname('faturamento_valor1')
                    .asfloat, -2);
                end;
              2:
                begin
                  nDup := qrnota.fieldbyname('faturamento_numero2').asstring;
                  dVenc := qrnota.fieldbyname('faturamento_data2').AsDateTime;
                  vDup := RoundTo(qrnota.fieldbyname('faturamento_valor2')
                    .asfloat, -2);
                end;
              3:
                begin
                  nDup := qrnota.fieldbyname('faturamento_numero3').asstring;
                  dVenc := qrnota.fieldbyname('faturamento_data3').AsDateTime;
                  vDup := RoundTo(qrnota.fieldbyname('faturamento_valor3')
                    .asfloat, -2);
                end;
              4:
                begin
                  nDup := qrnota.fieldbyname('faturamento_numero4').asstring;
                  dVenc := qrnota.fieldbyname('faturamento_data4').AsDateTime;
                  vDup := RoundTo(qrnota.fieldbyname('faturamento_valor4')
                    .asfloat, -2);
                end;
              5:
                begin
                  nDup := qrnota.fieldbyname('faturamento_numero5').asstring;
                  dVenc := qrnota.fieldbyname('faturamento_data5').AsDateTime;
                  vDup := RoundTo(qrnota.fieldbyname('faturamento_valor5')
                    .asfloat, -2);
                end;
              6:
                begin
                  nDup := qrnota.fieldbyname('faturamento_numero6').asstring;
                  dVenc := qrnota.fieldbyname('faturamento_data6').AsDateTime;
                  vDup := RoundTo(qrnota.fieldbyname('faturamento_valor6')
                    .asfloat, -2);
                end;
            end;
          end;
        end;

        with pag.add do
        begin
          case qrnota.fieldbyname('ind_pag').AsInteger of
            0:
              tpag := fpDinheiro;
            1:
              tpag := fpCheque;
            2:
              tpag := fpCartaoCredito;
            3:
              tpag := fpCartaoDebito;
            4:
              tpag := fpDuplicataMercantil;
            5:
              tpag := fpoutro;
            6:
              tpag := fpSemPagamento;
          end;
          vPag := RoundTo(qrnota.fieldbyname('TOTAL_NOTA').asfloat, -2);
        end;

        // trasnportadora

        case qrnota.fieldbyname('frete_conta').AsInteger of
          0:
            Transp.modFrete := mfContaEmitente;
          1:
            Transp.modFrete := mfContaDestinatario;
          2:
            Transp.modFrete := mfContaTerceiros;
          9:
            Transp.modFrete := mfSemFrete;
        end;

        // Transp.modFrete := mfContaEmitente;

        Transp.Transporta.CNPJCPF := qrtransportador2.fieldbyname
          ('cpf').asstring;
        Transp.Transporta.xNome :=
          trim(qrtransportador2.fieldbyname('nome').asstring);
        Transp.Transporta.IE := qrtransportador2.fieldbyname('rg').asstring;
        Transp.Transporta.xEnder :=
          trim(qrtransportador2.fieldbyname('endereco').asstring) + ', ' +
          trim(qrtransportador2.fieldbyname('numero').asstring);
        Transp.Transporta.xMun := trim(qrtransportador2.fieldbyname('cidade')
          .asstring);
        Transp.Transporta.UF := qrtransportador2.fieldbyname('uf').asstring;
        Transp.veicTransp.placa := qrnota.fieldbyname('placa').asstring;
        Transp.veicTransp.UF := qrnota.fieldbyname('placa_uf').asstring;

        Transp.retTransp.vServ := RoundTo(0.0, -2);; // X12 - Valor do Serviço
        Transp.retTransp.vBCRet := RoundTo(0.0, -2);;
        // X13 - BC da Retenção do ICMS
        Transp.retTransp.pICMSRet := RoundTo(0.0, -2);;
        // X14 - Alíquota da Retenção
        Transp.retTransp.vICMSRet := RoundTo(0.0, -2);;
        // X15 - Valor do ICMS Retido
        Transp.retTransp.cfop := ''; // X16 - CFOP (Utilizar Tabela de CFOP)
        Transp.retTransp.cMunFG := 0;
        // X17 - Código do município de ocorrência do fato gerador do ICMS do transporte (Tabela do IBGE)

        if qrnota.fieldbyname('frete_conta').AsInteger = 9 then
        begin
          Transp.Transporta.xEnder := '';
          Transp.veicTransp.placa := '';
          Transp.veicTransp.UF := '';
          Transp.veicTransp.RNTC := '';
          // X21 - Registro Nacional de Transportador de Carga (ANTT)
        end;

        // end;

        // Dados sobre Volumes Transportados   29/02/2012

        with Transp.Vol.add do
        begin
          qVol := qrnota.fieldbyname('vol_qtde').AsInteger;
          esp := qrnota.fieldbyname('vol_especie').asstring;
          marca := qrnota.fieldbyname('vol_marca').asstring;
          nVol := qrnota.fieldbyname('vol_numero').asstring;
          pesoL := RoundTo(qrnota.fieldbyname('peso_liquido').asfloat, -3);
          pesoB := RoundTo(qrnota.fieldbyname('peso_bruto').asfloat, -3);
        end;
        // Informações complementares

        InfAdic.infCpl := qrnota.fieldbyname('inf1').asstring + ';' +
          qrnota.fieldbyname('inf2').asstring + ';' + qrnota.fieldbyname('inf3')
          .asstring + ';' + qrnota.fieldbyname('inf4').asstring + ';' +
          qrnota.fieldbyname('inf5').asstring + ';';

        if (frmmodulo.qrfilial.fieldbyname('CRT').asstring = '3') and
          (Ide.idDest = doInterestadual) then
          InfAdic.infCpl := InfAdic.infCpl + ';* EC 87/2015 DIFAL ' +
            'valor GNRE UF destinatário ' + FormatFloat('#0.00',
            wPercentPartilha) + '% R$ ' + FormatFloat('####,##0.00',
            wVTotPartDest) + ', ' + 'valor GNRE UF remetente ' +
            FormatFloat('#0.00', 100 - wPercentPartilha) + '% R$ ' +
            FormatFloat('####,##0.00', wVTotPartOrig) + ', ' + 'valor FCP R$ ' +
            FormatFloat('####,##0.00', wVTotFPC) + ' **';
        { else
          InfAdic.InfCpl := InfAdic.InfCpl +
          ';** EC 87/2015 DIFAL '+
          'valor GNRE UF destinatário '+FormatFloat('#0.00',wPercentPartilha)+'% R$ '+FormatFloat( '####,##0.00',wVTotPartDest)+', '+
          'valor FCP R$ '+FormatFloat('####,##0.00',wVTotFPC)+' **' ; }

        InfAdic.infCpl := InfAdic.infCpl + ';** Valor Aproximado de Impostos ' +
          '  (Imp.Est)' + ' R$ ' + FormatFloat('#0.00', TotalEst) +
          ' ( Imp.Fed )' + ' R$ ' + FormatFloat('#0.00', TotalFed) + #13 +
          ' Valor Aproximado de Tributos desta NFe ' + ' R$ ' +
          FormatFloat('#0.00', xTotalImposto) + ',  Correspondente à ' +
          FormatFloat('#0.00', PorcIBPT) + '%' +
          ' (Conforme lei Fed 12.741/2012 "Fonte IBPT")';

        ACBrNFe1.NotasFiscais.GerarNFe;
        result := ACBrNFe1.NotasFiscais.Items[0].NomeArq;

      end;
  end;
end;

procedure Tfrmnotafiscal_menu.bincluirClick(Sender: TObject);
var
  natureza: string;
begin
  // Abre Opçoes de Faturamento
  frmOpNatureza := TfrmOpNatureza.Create(self);
  frmOpNatureza.showmodal;

  vrecno := qrnota.RecNo;
  vopcao_nfs := 1;

  qrnota.Insert;
  qrnota.fieldbyname('codigo').asstring := frmPrincipal.codifica('000061');
  qrnota.fieldbyname('situacao').AsInteger := 1;
  qrnota.fieldbyname('baixa_estoque').asstring := 'S';
  qrnota.fieldbyname('custo_venda').asstring := 'V';
  qrnota.fieldbyname('sit').asstring := 'N';
  qrnota.fieldbyname('movimento').asstring := 'S';
  qrnota.fieldbyname('codfilial').asstring := '000001';
  qrnota.fieldbyname('codvendedor').asstring := 'S/VEND';
  qrnota.fieldbyname('natureza').asstring := frmmodulo.natoperacao;

  frmmodulo.qrconfig.open;

  if frmmodulo.qrconfig.fieldbyname('NF_GERAR_RECEBER').asstring = '1' then
    qrnota.fieldbyname('fat_gerar_receber').AsInteger := 1
  else
    qrnota.fieldbyname('fat_gerar_receber').AsInteger := 0;

  if frmmodulo.qrconfig.fieldbyname('NF_GERAR_duplicata').asstring = '1' then
    qrnota.fieldbyname('fat_gerar_duplicata').AsInteger := 1
  else
    qrnota.fieldbyname('fat_gerar_duplicata').AsInteger := 0;

  frmnotafiscal := Tfrmnotafiscal.Create(self);
  // frmnotafiscal.rtipo.ItemIndex := 0;
  if sUsa_NFE = '1' then
  begin
    frmnotafiscal.ecodmodelo.Text := '55';
    frmnotafiscal.DBEdit42.Text := 'NFE';
  end;

  frmnotafiscal.showmodal;

  qrnota.refresh;
  qrnota.RecNo := vrecno;
  qrempresa.close;
  qrempresa.sql.clear;
  qrempresa.sql.add('select * from  c000004');
  qrempresa.open;

  qrcliente.close;
  qrcliente.sql.clear;
  qrcliente.sql.add('select * from  c000007');
  qrcliente.open;

  btotaliza_notaClick(frmnotafiscal_menu);

end;

procedure Tfrmnotafiscal_menu.FormShow(Sender: TObject);
begin
  if sUsa_NFE = '1' then
  begin
    pn_nfe.Visible := True;
    Inicia_NFe();
  end
  else
    pn_nfe.Visible := False;

  qrmodelo.close;
  qrmodelo.sql.clear;
  qrmodelo.sql.add('SELECT * FROM C000082 ORDER BY SINTEGRA');
  qrmodelo.open;
  qrmodelo.IndexFieldNames := 'SINTEGRA';

  frmmodulo.qrfilial.close;
  frmmodulo.qrfilial.sql.clear;
  frmmodulo.qrfilial.sql.add('select * from c000004');
  frmmodulo.qrfilial.open;

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.sql.add('select * from c000010 order by nome');
  frmmodulo.qrtransportador.open;
  frmmodulo.qrtransportador.IndexFieldNames := 'nome';

  frmmodulo.qrcfop.close;
  frmmodulo.qrcfop.sql.clear;
  frmmodulo.qrcfop.sql.add('select * from c000030 ');
  frmmodulo.qrcfop.open;
  frmmodulo.qrcfop.IndexFieldNames := 'NATUREZA';

  frmmodulo.qrfiscal_modelo.close;
  frmmodulo.qrfiscal_modelo.sql.clear;
  frmmodulo.qrfiscal_modelo.sql.add('SELECT * FROM C000082 ORDER BY MODELO');
  frmmodulo.qrfiscal_modelo.open;
  frmmodulo.qrfiscal_modelo.IndexFieldNames := 'SINTEGRA';

  DateEdit1.Text := '01/' + Copy(datetostr(incmonth(date, -1)), 4, 7);
  DateEdit2.date := frmPrincipal.UltimoDiaMes(date);

  qrnota.close;
  qrnota.sql.clear;
  qrnota.sql.add
    ('select * from c000061 where data BETWEEN :datai and :dataf order by numero');
  qrnota.params.ParamByName('datai').AsDateTime := DateEdit1.date;
  qrnota.params.ParamByName('dataf').AsDateTime := DateEdit2.date;

  qrnota.open;


  // conf_totalnota

  rqde.Value := qrnota.RecordCount;

  btotaliza_notaClick(frmnotafiscal_menu);

  // gridRowChanged(frmcompra_menu);
  grid.SetFocus;
  if self.Tag = 100 then
  begin
    qrnota.Locate('NUMERO', frmmodulo.NUMERO_CUPOM_FISCAL, [loCaseInsensitive]);
  end;

end;

procedure Tfrmnotafiscal_menu.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmnotafiscal_menu.balterarClick(Sender: TObject);
var
  vrecno: Integer;
begin

  vrecno := qrnota.RecNo;

  if qrnota.fieldbyname('SITUACAO').AsInteger = 1 then
  begin
    vopcao_nfs := 2;
    if qrnota.RecordCount = 0 then
      exit;

    qrnota.edit;

    frmnotafiscal := Tfrmnotafiscal.Create(self);
    frmnotafiscal.showmodal;

    qrnota.refresh;

    qrempresa.close;
    qrempresa.sql.clear;
    qrempresa.sql.add('select * from  c000004');
    qrempresa.open;

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from  c000007');
    qrcliente.open;

    btotaliza_notaClick(frmnotafiscal_menu);

    qrnota.RecNo := vrecno;

  end
  else
  begin
    Application.messagebox('Nota fiscal cancelada! Impossível alterar!',
      'Atenção', mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmnotafiscal_menu.bexcluirClick(Sender: TObject);
begin
  if qrnota.RecordCount = 0 then
    exit;

  if frmPrincipal.autentica('Excluir NF', 4) then
  begin
    query2.close;
    query2.sql.clear;
    query2.sql.add('select * from c000049 where codvenda = ''NF' +
      frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
    query2.sql.add('and valor_pago > 0');
    query2.open;
    if query2.RecordCount > 0 then
    begin
      Application.messagebox
        ('Esta nota fiscal possue prestações que já foram feito pagamentos! Favor verificar!',
        'Aviso', mb_ok + mb_iconerror);
      exit;
    end;
    query2.close;
    query2.sql.clear;
    query2.sql.add('delete from c000117 where cod_nota = ''' +
      frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
    query2.execsql;

    query2.close;
    query2.sql.clear;
    query2.sql.add('delete from c000049 where codvenda = ''NF' +
      frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
    query2.execsql;

    if qrnota.fieldbyname('SITUACAO').AsInteger = 1 then
    begin
      qrnota_item.close;
      qrnota_item.sql.clear;
      qrnota_item.sql.add('select * from c000062 where codnota = ''' +
        qrnota.fieldbyname('codigo').asstring + '''');
      qrnota_item.open;
      while qrnota_item.RecordCount <> 0 do
      begin
        if qrnota_item.fieldbyname('CODLANCAMENTO').asstring <> 'XXXXXX' then
        begin
          frmmodulo.QRPRODUTO_MOV.close;
          frmmodulo.QRPRODUTO_MOV.sql.clear;
          frmmodulo.QRPRODUTO_MOV.sql.add
            ('DELETE FROM C000032 WHERE CODIGO = ''' + qrnota_item.fieldbyname
            ('CODLANCAMENTO').asstring + '''');
          frmmodulo.QRPRODUTO_MOV.execsql;
        end;

        if qrnota.fieldbyname('BAIXA_ESTOQUE').asstring = 'S' then
        begin
          if qrnota_item.fieldbyname('codgrade').asstring <> '' then
          begin
            if frmnotafiscal_menu.qrnota.fieldbyname('BAIXA_ESTOQUE').asstring = 'S'
            then
            begin
              frmmodulo.qrgrade_produto.close;
              frmmodulo.qrgrade_produto.sql.clear;
              frmmodulo.qrgrade_produto.sql.add
                ('select * from c000021 where codproduto = ''' +
                qrnota_item.fieldbyname('CODPRODUTO').asstring + '''');
              frmmodulo.qrgrade_produto.sql.add
                ('and codigo = ''' + qrnota_item.fieldbyname('codgrade')
                .asstring + '''');
              frmmodulo.qrgrade_produto.open;
              if frmmodulo.qrgrade_produto.RecordCount > 0 then
              begin
                frmmodulo.qrgrade_produto.edit;
                if frmnotafiscal_menu.qrnota.fieldbyname('MOVIMENTO').asstring = 'S'
                then
                  frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat :=
                    frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat +
                    qrnota_item.fieldbyname('qtde').asfloat
                else
                  frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat :=
                    frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat -
                    qrnota_item.fieldbyname('qtde').asfloat;
                frmmodulo.qrgrade_produto.post;
              end;
            end;
          end;
          if qrnota_item.fieldbyname('serial').asstring <> '' then
          begin
            query.close;
            query.sql.clear;
            query.sql.add
              ('update c000022 set situacao = :situacao, cliente = :cliente, codcliente = :codcliente, datavenda= :datavenda,');
            query.sql.add('codvenda = :codvenda, precovenda = :precovenda');
            query.sql.add('where serial = ''' + qrnota_item.fieldbyname
              ('serial').asstring + '''');
            query.sql.add('and codproduto = ''' + qrnota_item.fieldbyname
              ('codigo').asstring + '''');
            query.params.ParamByName('situacao').AsInteger := 1;
            query.params.ParamByName('cliente').asstring := '';
            query.params.ParamByName('codcliente').asstring := '';
            query.params.ParamByName('DATAVENDA').asstring := '';
            query.params.ParamByName('codvenda').asstring := '';
            query.params.ParamByName('precovenda').asfloat := 0;
            query.execsql;
          end;

        end;
        qrnota_item.delete;
      end;
    end;
    qrnota.delete;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;

end;

procedure Tfrmnotafiscal_menu.bitbtn6Click(Sender: TObject);
begin
  vrecno := qrnota.RecNo;

  frmlista_notasaida := tfrmlista_notasaida.Create(self);
  frmlista_notasaida.showmodal;

  qrnota.RecNo := vrecno;

end;

procedure Tfrmnotafiscal_menu.b(Sender: TObject);
begin
  //
end;

procedure Tfrmnotafiscal_menu.gridRowChanged(Sender: TObject);
begin
  {
    IF QRNOTA.FIELDBYNAME('SITUACAO').ASINTEGER = 1 THEN
    BALTERAR.Enabled := TRUE ELSE BALTERAR.Enabled := FALSE;
  }

  if sUsa_NFE = '1' then
  begin
    try
      case qrnota.fieldbyname('nfe_situacao').AsInteger of
        3: // aguardando validacao
          begin
            bt_nfe_validar.Enabled := True;
            bt_nfe_assinar.Enabled := False;
            bt_nfe_danfe.Enabled := False;
            bt_nfe_consultar.Enabled := False;
            bt_nfe_cancelar.Enabled := False;
            bt_nfe_exportar.Enabled := False;
          end;
        4: // validada
          begin
            bt_nfe_validar.Enabled := True;
            bt_nfe_assinar.Enabled := True;
            bt_nfe_danfe.Enabled := False;
            bt_nfe_consultar.Enabled := True;
            bt_nfe_cancelar.Enabled := False;
            bt_nfe_exportar.Enabled := False;
          end;
        5: // enviada. aguardando retorno.
          begin
            bt_nfe_validar.Enabled := False;
            bt_nfe_assinar.Enabled := True;
            bt_nfe_danfe.Enabled := False;
            bt_nfe_consultar.Enabled := True;
            bt_nfe_cancelar.Enabled := False;
            bt_nfe_exportar.Enabled := False;
          end;
        6: // aceita
          begin
            bt_nfe_validar.Enabled := False;
            bt_nfe_assinar.Enabled := False;
            bt_nfe_danfe.Enabled := True;
            bt_nfe_consultar.Enabled := True;
            bt_nfe_cancelar.Enabled := True;
            bt_nfe_exportar.Enabled := True;
          end;
        7: // rejeitada
          begin
            bt_nfe_validar.Enabled := True;
            bt_nfe_assinar.Enabled := True;
            bt_nfe_danfe.Enabled := False;
            bt_nfe_consultar.Enabled := True;
            bt_nfe_cancelar.Enabled := False;
            bt_nfe_exportar.Enabled := False;
          end;
        8: // cancelada
          begin
            bt_nfe_validar.Enabled := False;
            bt_nfe_assinar.Enabled := False;
            bt_nfe_danfe.Enabled := False;
            bt_nfe_consultar.Enabled := True;
            bt_nfe_cancelar.Enabled := False;
            bt_nfe_exportar.Enabled := False;
          end;
      end;
    except
    end;
  end;

end;

procedure Tfrmnotafiscal_menu.Alterar2Click(Sender: TObject);
begin
  if balterar.Enabled then
    balterarClick(frmnotafiscal_menu);
end;

procedure Tfrmnotafiscal_menu.abelasFunes2Click(Sender: TObject);
begin
  btabela.Click;
end;

procedure Tfrmnotafiscal_menu.CFOP1Click(Sender: TObject);
begin
  FRMCFOP := TFRMCFOP.Create(self);
  FRMCFOP.showmodal;
end;

procedure Tfrmnotafiscal_menu.ClassesdeRecolhimento1Click(Sender: TObject);
begin
  FRMcst := TFRMcst.Create(self);
  FRMcst.showmodal;
end;

procedure Tfrmnotafiscal_menu.ModelosdeNotasFiscais1Click(Sender: TObject);
begin
  FRMmodelo_fiscal := TFRMmodelo_fiscal.Create(self);
  FRMmodelo_fiscal.showmodal;
end;

procedure Tfrmnotafiscal_menu.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if ecliente.Text <> '' then
    begin
      qrcliente2.close;
      qrcliente2.sql.clear;
      qrcliente2.sql.add('select * from c000007 where codigo = ''' +
        frmPrincipal.zerarcodigo(Copy(ecliente.Text, 1, 6), 6) + '''');
      qrcliente2.open;
      if qrcliente2.RecordCount > 0 then
      begin
        if qrcliente2.RecordCount = 1 then
        begin
          ecliente.Text := qrcliente2.fieldbyname('codigo').asstring + ' ' +
            qrcliente2.fieldbyname('nome').asstring;
          perform(wm_nextdlgctl, 0, 0);
        end
        else
        begin
          resultado_pesquisa1 := '';
          parametro_pesquisa :=
            'select * from c000007 where upper(nome) like ''' +
            ansiuppercase(ecliente.Text) + '%'' order by nome';
          frmxloc_cliente := tfrmxloc_cliente.Create(self);
          frmxloc_cliente.showmodal;
          if resultado_pesquisa1 <> '' then
          begin
            ecliente.Text := resultado_pesquisa1 + ' ' + resultado_pesquisa2;
            perform(wm_nextdlgctl, 0, 0);
          end;
        end;
      end
      else
      begin
        Application.messagebox('Cliente não encontrado! Favor verificar!',
          'Atenção', mb_ok + mb_iconerror);
        ecliente.SetFocus;

      end;
    end;
  end;

end;

procedure Tfrmnotafiscal_menu.eclienteButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  parametro_pesquisa := ecliente.Text;
  frmxloc_cliente := tfrmxloc_cliente.Create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    ecliente.Text := resultado_pesquisa1 + ' ' + resultado_pesquisa2;

  end;
  ENUMERO.SetFocus;
end;

procedure Tfrmnotafiscal_menu.ENUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0)
end;

procedure Tfrmnotafiscal_menu.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bfiltrar.SetFocus;
end;

procedure Tfrmnotafiscal_menu.BfiltrarClick(Sender: TObject);
var
  cliente, nota: string;
begin
  if ecliente.Text = '' then
    cliente := ''
  else
    cliente := ' and codcliente = ''' + Copy(ecliente.Text, 1, 6) + '''';
  if (ENUMERO.Text = '000000') or (ENUMERO.Text = '') then
    nota := ''
  else
    nota := ' and numero = ''' + ENUMERO.Text + '''';

  qrnota.close;
  qrnota.sql.clear;

  if (ENUMERO.Text = '000000') or (ENUMERO.Text = '') then
  begin
    qrnota.sql.add('select * from c000061 where data BETWEEN :datai and :dataf '
      + cliente + nota + ' order by numero');
    qrnota.params.ParamByName('datai').AsDateTime := DateEdit1.date;
    qrnota.params.ParamByName('dataf').AsDateTime := DateEdit2.date;
  end
  else
    qrnota.sql.add('select * from c000061 where codigo is not null ' + cliente +
      nota + ' order by numero');
  qrnota.open;

  rqde.Value := qrnota.RecordCount;

  btotaliza_notaClick(frmnotafiscal_menu);

  gridRowChanged(frmnotafiscal_menu);
end;

procedure Tfrmnotafiscal_menu.ENUMEROExit(Sender: TObject);
begin
  ENUMERO.Text := frmPrincipal.zerarcodigo(ENUMERO.Text, 6);
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmnotafiscal_menu.btotaliza_notaClick(Sender: TObject);
begin
  rqde.Value := 0;
  rtotal.Value := 0;
  dsnota.DataSet := nil;
  qrnota.first;
  while not qrnota.eof do
  begin
    rqde.Value := rqde.Value + 1;
    rtotal.Value := rtotal.Value + qrnota.fieldbyname('total_nota').asfloat;

    qrnota.Next;
  end;
  dsnota.DataSet := qrnota;

  qrnota.RecNo := vrecno;

end;

procedure Tfrmnotafiscal_menu.eclienteEnter(Sender: TObject);
begin
  ecliente.Text := '';
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmnotafiscal_menu.gridKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    vrecno := qrnota.RecNo;

    vopcao_nfs := 0;

    qrnota.edit;

    frmnotafiscal := Tfrmnotafiscal.Create(self);
    frmnotafiscal.showmodal;
    qrnota.refresh;

    qrnota.RecNo := vrecno;

    qrempresa.close;
    qrempresa.sql.clear;
    qrempresa.sql.add('select * from  c000004');
    qrempresa.open;

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from  c000007');
    qrcliente.open;

    btotaliza_notaClick(frmnotafiscal_menu);

  end;
end;

procedure Tfrmnotafiscal_menu.bimprimirClick(Sender: TObject);
begin

  if qrnota.RecordCount = 0 then
    exit;

  vrecno := qrnota.RecNo;

  vopcao_nfs := 3;

  frmnotafiscal := Tfrmnotafiscal.Create(self);
  frmnotafiscal.showmodal;
  qrnota.refresh;

  qrnota.RecNo := vrecno;

  qrempresa.close;
  qrempresa.sql.clear;
  qrempresa.sql.add('select * from  c000004');
  qrempresa.open;

  qrcliente.close;
  qrcliente.sql.clear;
  qrcliente.sql.add('select * from  c000007');
  qrcliente.open;

  btotaliza_notaClick(frmnotafiscal_menu);

end;

procedure Tfrmnotafiscal_menu.Cancelar1Click(Sender: TObject);
begin
  bcancelarClick(frmnotafiscal_menu);
end;

procedure Tfrmnotafiscal_menu.Imprimir1Click(Sender: TObject);
begin
  bimprimirClick(frmnotafiscal_menu);
end;

procedure Tfrmnotafiscal_menu.bcancelarClick(Sender: TObject);
var
  modelo, serie, Ano, NumeroInicial, NumeroFinal, Justificativa: string;
begin

  if qrnota.RecordCount = 0 then
    exit;

  if qrnota.fieldbyname('nfe_situacao').AsInteger = 8 then
    exit; // cancelada
  if qrnota.fieldbyname('nfe_situacao').AsInteger = 6 then
    exit; // validada e transmitida e aceita

  if frmPrincipal.autentica('Cancelar NF', 4) then
  begin
    if qrnota.fieldbyname('situacao').AsInteger = 1 then
    begin

      cancela := False;
      frmnotafiscal_cancelar := tfrmnotafiscal_cancelar.Create(self);
      frmnotafiscal_cancelar.showmodal;
      if not cancela then
        exit;
      query2.close;
      query2.sql.clear;
      query2.sql.add('select * from c000049 where codvenda = ''NF' +
        frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
      query2.sql.add('and valor_pago > 0');
      query2.open;
      if query2.RecordCount > 0 then
      begin
        Application.messagebox
          ('Esta nota fiscal possue prestações que já foram feito pagamentos! Favor verificar!',
          'Aviso', mb_ok + mb_iconerror);
        exit;

      end;

      query2.close;
      query2.sql.clear;
      query2.sql.add('delete from c000117 where cod_nota = ''' +
        frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
      query2.execsql;

      query2.close;
      query2.sql.clear;
      query2.sql.add('delete from c000049 where codvenda = ''NF' +
        frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring + '''');
      query2.execsql;

      qrnota_item.close;
      qrnota_item.sql.clear;
      qrnota_item.sql.add('select * from c000062 where codnota = ''' +
        qrnota.fieldbyname('codigo').asstring + '''');
      qrnota_item.open;

      qrnota_item.first;
      while not qrnota_item.eof do
      begin
        if qrnota_item.fieldbyname('CODLANCAMENTO').asstring <> 'XXXXXX' then
        begin
          frmmodulo.QRPRODUTO_MOV.close;
          frmmodulo.QRPRODUTO_MOV.sql.clear;
          frmmodulo.QRPRODUTO_MOV.sql.add
            ('DELETE FROM C000032 WHERE CODIGO = ''' + qrnota_item.fieldbyname
            ('CODLANCAMENTO').asstring + '''');
          frmmodulo.QRPRODUTO_MOV.execsql;
        end;

        if qrnota.fieldbyname('BAIXA_ESTOQUE').asstring = 'S' then
        begin

          if qrnota_item.fieldbyname('codgrade').asstring <> '' then
          begin
            if frmnotafiscal_menu.qrnota.fieldbyname('BAIXA_ESTOQUE').asstring = 'S'
            then
            begin
              frmmodulo.qrgrade_produto.close;
              frmmodulo.qrgrade_produto.sql.clear;
              frmmodulo.qrgrade_produto.sql.add
                ('select * from c000021 where codproduto = ''' +
                qrnota_item.fieldbyname('CODPRODUTO').asstring + '''');
              frmmodulo.qrgrade_produto.sql.add
                ('and codigo = ''' + qrnota_item.fieldbyname('codgrade')
                .asstring + '''');
              frmmodulo.qrgrade_produto.open;
              if frmmodulo.qrgrade_produto.RecordCount > 0 then
              begin
                frmmodulo.qrgrade_produto.edit;
                frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat :=
                  frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat -
                  qrnota_item.fieldbyname('qtde').asfloat;
                frmmodulo.qrgrade_produto.post;
              end;
            end;
          end;
        end;

        if trim(qrnota_item.fieldbyname('serial').asstring) <> '' then
        begin

          query.close;
          query.sql.clear;
          query.sql.add
            ('update c000022 set situacao = :situacao, cliente = :cliente, codcliente = :codcliente, datavenda = :datavenda,');
          query.sql.add('codvenda = :codvenda, precovenda = :precovenda');
          query.sql.add('where serial = ''' + qrnota_item.fieldbyname('serial')
            .asstring + '''');
          query.sql.add('and codproduto = ''' + qrnota_item.fieldbyname
            ('codproduto').asstring + '''');
          query.params.ParamByName('situacao').AsInteger := 1;
          query.params.ParamByName('cliente').asstring := '';
          query.params.ParamByName('codcliente').asstring := '';
          query.params.ParamByName('DATAVENDA').clear;
          query.params.ParamByName('codvenda').asstring := '';
          query.params.ParamByName('precovenda').asfloat := 0;
          query.execsql;

        end;

        qrnota_item.Next;
      end;

      qrnota.edit;
      qrnota.fieldbyname('motivo').asstring :=
        inputbox('Cancelar NF', 'Informe o motivo do Cancelamento:', '');
      qrnota.fieldbyname('situacao_a').asstring := 'C';
      qrnota.fieldbyname('situacao').AsInteger := 2;
      qrnota.post;

      frmmodulo.Conexao.Commit;
      Application.ProcessMessages;

      // devolver esstoque usando tela notas
      if self.Tag = 100 then
      begin
        frmmodulo.cancelou_venda_nf := True;
        qrnota.edit;
        qrnota.fieldbyname('nfe_situacao').AsInteger := 8;
        qrnota.post;
        close;
      end
      else
      begin

        try
          frmmodulo.cancelou_venda_nf := True;
          frmnotas_venda := Tfrmnotas_venda.Create(Application);
          frmmodulo.QRVENDA.close;
          frmmodulo.QRVENDA.sql.clear;
          frmmodulo.QRVENDA.sql.add
            ('SELECT * FROM C000048 ORDER BY DATA, codigo');
          frmmodulo.QRVENDA.open;
          frmmodulo.QRVENDA.IndexFieldNames := 'CODIGO';
          frmmodulo.QRVENDA.Locate('NUMERO_CUPOM_FISCAL',
            qrnota.fieldbyname('NUMERO').asstring, [loCaseInsensitive]);
          frmnotas_venda.bcancelarClick(frmnotas_venda);
          frmmodulo.QRVENDA.close;
          qrnota.edit;
          qrnota.fieldbyname('nfe_situacao').AsInteger := 8;
          qrnota.post;
        except
          frmmodulo.cancelou_venda_nf := False;
          frmmodulo.QRVENDA.close;
        end;

      end;
      // inutilizar numero nfe

      qrempresa.close;
      qrempresa.sql.clear;
      qrempresa.sql.add('select * from  c000004');
      qrempresa.open;

      Ano := datetostr(qrnota.fieldbyname('DATA').AsDateTime);
      Ano := formatdatetime('yyyy', StrToDate(Ano));
      serie := qrempresa.fieldbyname('CONHECIMENTO').asstring;
      modelo := '55';
      NumeroInicial := qrnota.fieldbyname('NUMERO').asstring;
      NumeroFinal := qrnota.fieldbyname('NUMERO').asstring;
      Justificativa := 'Inutilizacao por conta de cancelamento';

      try

        ACBrNFe1.WebServices.Inutiliza(qrempresa.fieldbyname('CNPJ').asstring,
          Justificativa, StrToInt(Ano), StrToInt(modelo), StrToInt(serie),
          StrToInt(NumeroInicial), StrToInt(NumeroFinal));
        MemoResp.Lines.Text :=
          UTF8Encode(ACBrNFe1.WebServices.Inutilizacao.RetWS);
        LoadXML(MemoResp, WebBrowser1);

      finally

      end;

    end
    else
    begin
      Application.messagebox('Esta nota fiscal já está CANCELADA!', 'Atenção',
        mb_ok + mb_iconerror);
    end;

  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;

end;

procedure Tfrmnotafiscal_menu.gridTitleButtonClick(Sender: TObject;
  AFieldName: string);
var
  cliente, nota: string;
begin

  if (ansiuppercase(AFieldName) = ansiuppercase('numero')) or
    (ansiuppercase(AFieldName) = ansiuppercase('data')) or
    (ansiuppercase(AFieldName) = ansiuppercase('data_saida')) or
    (ansiuppercase(AFieldName) = ansiuppercase('modelo')) or
    (ansiuppercase(AFieldName) = ansiuppercase('serie')) or
    (ansiuppercase(AFieldName) = ansiuppercase('crop')) or
    (ansiuppercase(AFieldName) = ansiuppercase('total_nota')) or
    (ansiuppercase(AFieldName) = ansiuppercase('base_calculo')) or
    (ansiuppercase(AFieldName) = ansiuppercase('valor_icms')) then

  begin
    if ecliente.Text = '' then
      cliente := ''
    else
      cliente := ' and codcliente = ''' + Copy(ecliente.Text, 1, 6) + '''';
    if (ENUMERO.Text = '000000') or (ENUMERO.Text = '') then
      nota := ''
    else
      nota := ' and numero = ''' + ENUMERO.Text + '''';

    qrnota.close;
    qrnota.sql.clear;
    qrnota.sql.add('select * from c000061 where data BETWEEN :datai and :dataf '
      + cliente + nota + ' order by numero');
    qrnota.params.ParamByName('datai').AsDateTime := DateEdit1.date;
    qrnota.params.ParamByName('dataf').AsDateTime := DateEdit2.date;
    qrnota.open;

  end;

  if ansiuppercase(AFieldName) = 'CLIENTE' then
  begin
    if ecliente.Text = '' then
      cliente := ''
    else
      cliente := ' and codcliente = ''' + Copy(ecliente.Text, 1, 6) + '''';
    if (ENUMERO.Text = '000000') or (ENUMERO.Text = '') then
      nota := ''
    else
      nota := ' and numero = ''' + ENUMERO.Text + '''';

    qrnota.close;
    qrnota.sql.clear;
    qrnota.sql.add('select * from c000061 where data BETWEEN :datai and :dataf '
      + cliente + nota + ' order by numero');
    qrnota.params.ParamByName('datai').AsDateTime := DateEdit1.date;
    qrnota.params.ParamByName('dataf').AsDateTime := DateEdit2.date;
    qrnota.open;
  end;

end;

procedure Tfrmnotafiscal_menu.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmnotafiscal_menu.ZerarNotaFiscal1Click(Sender: TObject);
begin
  if qrnota.RecordCount = 0 then
    exit;

  if qrnota.fieldbyname('situacao').AsInteger = 1 then
  begin
    Application.messagebox('Esta nota fiscal não está cancelada!', 'Erro',
      mb_ok + mb_iconerror);
    exit;
  end;

  if frmPrincipal.autentica('Zerar NF', 4) then
  begin

    qrnota_item.close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add('select * from c000062 where codnota = ''' +
      qrnota.fieldbyname('codigo').asstring + '''');
    qrnota_item.open;
    while not qrnota_item.eof do
    begin
      qrnota_item.edit;
      qrnota_item.fieldbyname('qtde').asfloat := 0;
      qrnota_item.fieldbyname('unitario').asfloat := 0;
      qrnota_item.fieldbyname('total').asfloat := 0;
      qrnota_item.fieldbyname('subtotal').asfloat := 0;
      qrnota_item.fieldbyname('desconto').asfloat := 0;
      qrnota_item.fieldbyname('BASE_CALCULO').asfloat := 0;
      qrnota_item.fieldbyname('VALOR_ICMS').asfloat := 0;
      qrnota_item.fieldbyname('ICMS').asfloat := 0;
      qrnota_item.fieldbyname('ICMS_SUB').asfloat := 0;
      qrnota_item.fieldbyname('ISENTO').asfloat := 0;
      qrnota_item.post;
      qrnota_item.Next;
    end;

    qrnota.edit;
    qrnota.fieldbyname('VALOR_PRODUTOS').asfloat := 0;
    qrnota.fieldbyname('total_nota').asfloat := 0;
    qrnota.fieldbyname('desconto').asfloat := 0;
    qrnota.fieldbyname('BASE_CALCULO').asfloat := 0;
    qrnota.fieldbyname('VALOR_ICMS').asfloat := 0;

    qrnota.fieldbyname('BASE_SUB').asfloat := 0;
    qrnota.fieldbyname('ICMS_SUB').asfloat := 0;
    qrnota.fieldbyname('FRETE').asfloat := 0;
    qrnota.fieldbyname('seguro').asfloat := 0;
    qrnota.fieldbyname('OUTRAS_DESPESAS').asfloat := 0;
    qrnota.fieldbyname('VALOR_TOTAL_IPI').asfloat := 0;

    qrnota.post;

  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmnotafiscal_menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := cafree;
end;

procedure Tfrmnotafiscal_menu.NFeExportarNotaFiscal1Click(Sender: TObject);
var
  mov: Integer;
  ALIQUOTA_SUB, BC_IPI: REAL;
  CPF, CNPJ: string;
  Fat: Integer;
  frete_conta: Integer;
  vtransportador_nome, vtransportador_rg: string;

begin
  if Application.messagebox
    ('Confirma a exportação desta nota fiscal para o sistema de Emissão de Nota Fiscal Eletrônica?',
    'Aviso', mb_yesno + mb_iconquestion) = idyes then
  begin
    // filial
    query2.close;
    query2.sql.clear;
    query2.sql.add('select * from c000004');
    query2.sql.add('where codigo = ''' + qrnota.fieldbyname('codfilial')
      .asstring + '''');
    query2.open;

    if query2.fieldbyname('COD_MUNICIPIO_IBGE').asstring = '' then
    begin
      Application.messagebox
        ('Código do Município Não Informado para a Empresa, Verifique!!!',
        'Atenção', mb_ok + mb_iconerror);
      exit;
    end;

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from c000007');
    qrcliente.sql.add('where codigo = ''' + qrnota.fieldbyname('codcliente')
      .asstring + '''');
    qrcliente.open;

    Fat := 0;
    if qrnota.fieldbyname('fat_tipo').asstring = '1' then
      Fat := 0;
    if qrnota.fieldbyname('fat_tipo').asstring = '0' then
      Fat := 1;

    CPF := '';
    CNPJ := '';

    if qrcliente.fieldbyname('tipo').AsInteger = 1 then
      CPF := qrcliente.fieldbyname('CPF').asstring;
    if qrcliente.fieldbyname('tipo').AsInteger = 2 then
      CNPJ := qrcliente.fieldbyname('CPF').asstring;
    if qrcliente.fieldbyname('tipo').AsInteger = 3 then
      CPF := qrcliente.fieldbyname('CPF').asstring;

    if Exp_Abre_NOTAFISCAL(inputbox('NFe', 'Nome do Arquivo',
      'NF' + qrnota.fieldbyname('numero').asstring + '.txt')) then
    begin

      // Inicia a inclusao individual da nota
      if qrnota.fieldbyname('movimento').asstring = 'S' then
        mov := 1
      else
        mov := 0;

      if not Exp_Inicia_NotaFiscal(1, query2.fieldbyname('uf').asstring,
        qrnota.fieldbyname('natureza').asstring, Fat,
        // 0 - a vista, 1 - a prazo, 3 - outros
        '55', // modelo
        '001', // serie
        frmPrincipal.zerarcodigo(qrnota.fieldbyname('numero').asstring, 8),
        // número da nf
        qrnota.fieldbyname('data').AsDateTime, // data de emissao
        qrnota.fieldbyname('data_saida').AsDateTime, // data da saida)
        mov, // 0 - Entrada, 1 - Saida
        query2.fieldbyname('COD_MUNICIPIO_IBGE').AsInteger,
        // codigo do municipio
        1, // Formato de impressao -> 1 retrato, 2 paisagem
        query2.fieldbyname('FILIAL').asstring, // Emitente - Razao Social
        query2.fieldbyname('IE').asstring, // Emitente - Inscricao Estadual
        query2.fieldbyname('CNPJ').asstring, // Emitente - CNPJ
        query2.fieldbyname('ENDERECO').asstring, // Emitente - Endereco
        query2.fieldbyname('NUMERO').asstring, // Emitente - Numero
        query2.fieldbyname('COMPLEMENTO').asstring, // Emitente - Complemento
        query2.fieldbyname('BAIRRO').asstring, // Emitente - Bairro
        query2.fieldbyname('COD_MUNICIPIO_IBGE').asstring,
        // Emitente - Codigo do municipio
        query2.fieldbyname('CIDADE').asstring, // Emitente - Municipio
        query2.fieldbyname('UF').asstring, // Emitente - UF
        query2.fieldbyname('CEP').asstring, // Emitente - CEP
        query2.fieldbyname('TELEFONE').asstring, // Emitente - Telefone
        qrcliente.fieldbyname('nome').asstring, // Destinatario - Razao Social
        qrcliente.fieldbyname('rg').asstring,
        // Destinatario - Inscricao Estadual
        '', // Destinatario - Suframa
        CNPJ, // Destinatario - CNPJ
        CPF, qrcliente.fieldbyname('endereco').asstring,
        // Destinatario - Endereco
        '-', // Destinatario - numero
        qrcliente.fieldbyname('complemento').asstring,
        // Destinatario - Complemento
        qrcliente.fieldbyname('bairro').asstring, // Destinatario - Bairro
        qrcliente.fieldbyname('cod_municipio_ibge').asstring,
        // Destinatario - Codigo do municipio
        qrcliente.fieldbyname('cidade').asstring, // Destinatario - Municipio
        qrcliente.fieldbyname('uf').asstring, // Destinatario - UF
        qrcliente.fieldbyname('cep').asstring, // Destinatario - cep
        qrcliente.fieldbyname('telefone1').asstring, // Destinatario - Telefone
        '', // local Retirada - CNPJ
        '', // local Retirada - Endereco
        '', // local Retirada - Numero
        '', // local Retirada - Complemento
        '', // local Retirada - BArrio
        '', // local Retirada - Codigo Municipio
        '', // lcoal Retirada - Municipio
        '', // local Retirada - uf
        '', // local Entrega - CNPJ
        '', // local Entrega - Endereco
        '', // local Entrega - Numero
        '', // local Entrega - Complemento
        '', // local Entrega - Bairro
        '', // local Entrega - Codigo Municipio
        '', // local Entrega - Municipio
        '' // local Entrega - UF
        ) then
      begin
        ShowMessage('Falha ao inciar nota fiscal');
        exit;
      end;

      qrnota_item.close;
      qrnota_item.sql.clear;
      qrnota_item.sql.add
        ('select c000062.*, c000025.produto, c000025.codbarra cod_barra, c000025.unidade un');
      qrnota_item.sql.add
        ('from c000062, c000025 where c000062.codproduto = c000025.codigo');
      qrnota_item.sql.add('and c000062.codnota = ''' +
        qrnota.fieldbyname('codigo').asstring + '''');
      qrnota_item.open;
      qrnota_item.Last;
      mov := qrnota_item.RecordCount;
      qrnota_item.first;
      while not qrnota_item.eof do
      begin

        if qrnota_item.fieldbyname('BASE_SUB').asfloat > 0 then
          ALIQUOTA_SUB := qrnota_item.fieldbyname('ICMS').asfloat;
        if qrnota_item.fieldbyname('VALOR_IPI').asfloat > 0 then
          BC_IPI := qrnota_item.fieldbyname('base_calculo').asfloat;

        (* *  INCLUSAO DO(S) ITEM(S)   * *)
        if not Exp_Inclui_item(qrnota_item.fieldbyname('item').AsInteger,
          // Item:integer;
          qrnota_item.fieldbyname('codproduto').asstring, // Codigo,
          frmPrincipal.zerarcodigo(qrnota_item.fieldbyname('cod_barra')
          .asstring, 13), // Cod_Barra,
          qrnota_item.fieldbyname('produto').asstring, // Produto,
          qrnota_item.fieldbyname('classificacao_fiscal').asstring, // NCM,
          qrnota_item.fieldbyname('cest').asstring,
          qrnota_item.fieldbyname('cfop').asstring, // CFOP,
          qrnota_item.fieldbyname('UN').asfloat, // Unidade:string;
          qrnota_item.fieldbyname('qtde').asfloat, // Quantidade,
          qrnota_item.fieldbyname('unitario').asfloat, // Valor_Unitario,
          qrnota_item.fieldbyname('total').asfloat, // Valor_Total,
          0, // Valor_Frete,
          0, // Valor_Seguro,
          qrnota_item.fieldbyname('desconto').asstring, // Valor_Desconto:real;
          qrnota_item.fieldbyname('cst').AsInteger, // CST:string;
          0, // Origem:integer; --> 0 NACIONAL, 1 ESTRANG IMPORTACAO DIRETA , 2 ESTRANG ADQUIRIDA MERC INTER
          1, // Modalidade:integer; 0 MARGEM VLR AGREGADO, 1 PAUTA, 2 PRECO TABELADO, 3 VALOR OPERACAO
          qrnota_item.fieldbyname('base_calculo').asfloat, // ICMS_Base_Calculo,
          qrnota_item.fieldbyname('ICMS').asfloat, // ICMS_Aliquota,
          qrnota_item.fieldbyname('valor_icms').asfloat, // ICMS_Valor,
          qrnota_item.fieldbyname('ICMS_REDUZIDO').AsInteger,
          // ICMS_Reducao:REAL;
          0, // ST_Modalidade:integer - 0 PRECO TABELADO, 1 LISTA NEGATIVA, 2 LISTA POSITIVA, 3 LISTA NEUTRA, 5 PAUTA
          qrnota_item.fieldbyname('MARGEM_AGREGADA').asfloat,
          // ST_Margem_Adicional,
          0, // ST_Reducao,
          qrnota_item.fieldbyname('BASE_SUB').asfloat, // ST_Base_Calculo,
          ALIQUOTA_SUB, // ST_Aliquota,
          qrnota_item.fieldbyname('ICMS_SUB').asstring, // ST_Valor:real;
          02.00, // IPI_Codigo:string;
          qrnota_item.fieldbyname('VALOR_IPI').asfloat, // IPI_Valor,
          BC_IPI, // IPI_Base_Calculo,
          qrnota_item.fieldbyname('IPI').asfloat, // IPI_Aliquota:real
          qrnota_item.fieldbyname('PIS_ALIQUOTA').asfloat, // PIS_Aliquota,
          qrnota_item.fieldbyname('PIS_BASE').asfloat, // PIS_Base_Calculo,
          qrnota_item.fieldbyname('PIS_VALOR').asfloat, // PIS_Valor:real;
          qrnota_item.fieldbyname('COFINS_ALIQUOTA').asfloat,
          // COFINS_Aliquota,
          qrnota_item.fieldbyname('COFINS_VALOR').asfloat // COFINS_Valor,
          // qrnota_item.fieldbyname('COFINS_BASE').asfloat
          // COFINS_Base_Calculo:real
          ) then
        begin
          ShowMessage('Falha ao Incluir item na nf');
          exit;
        end;

        qrnota_item.Next;
      end;

      CPF := '';
      CNPJ := '';
      if qrnota.fieldbyname('TRANSP_TIPO').asstring = '1' then
        CPF := qrnota.fieldbyname('TRANSP_CPF').asstring;
      if qrnota.fieldbyname('TRANSP_TIPO').asstring = '2' then
        CNPJ := qrnota.fieldbyname('TRANSP_CPF').asstring;

      if (CPF = '') and (CNPJ = '') then
        CNPJ := qrcliente.fieldbyname('cpf').asstring;

      if qrnota.fieldbyname('FRETE_CONTA').asstring = '' then
        frete_conta := 0;
      if qrnota.fieldbyname('FRETE_CONTA').AsInteger = 1 then
        frete_conta := 0;
      if qrnota.fieldbyname('FRETE_CONTA').AsInteger = 2 then
        frete_conta := 1;

      if qrnota.fieldbyname('TRANSPORTADOR').asstring = 'DESTINATARIO' then
      // quando for o próprio destinatário
      begin
        vtransportador_nome := qrnota.fieldbyname('CLIENTE').asstring;
        vtransportador_rg := qrnota.fieldbyname('RG').asstring;
      end
      else
      begin
        vtransportador_nome := qrnota.fieldbyname('TRANSPORTADOR').asstring;
        vtransportador_rg := qrnota.fieldbyname('transp_rg').asstring;
      end;

      if not Exp_Termina_NotaFiscal(qrnota.fieldbyname('base_calculo').asfloat,
        // Total_ICMS_Base_Calculo,
        qrnota.fieldbyname('VALOR_ICMS').asfloat, // Total_ICMS_Valor,
        qrnota.fieldbyname('base_sub').asfloat, // Total_ST_Base_Calculo,
        qrnota.fieldbyname('icms_sub').asfloat, // Total_ST_Valor,
        qrnota.fieldbyname('VALOR_PRODUTOS').asfloat, // Total_Produtos,
        qrnota.fieldbyname('FRETE').asfloat, // Total_Frete,
        qrnota.fieldbyname('seguro').asfloat, // Total_Seguro,
        qrnota.fieldbyname('desconto').asfloat, // Total_Desconto,
        qrnota.fieldbyname('VALOR_TOTAL_IPI').asfloat, // Total_IPI,
        qrnota.fieldbyname('PIS').asfloat, // Total_PIS,
        qrnota.fieldbyname('COFINS').asfloat, // Total_COFINS,
        qrnota.fieldbyname('OUTRAS_DESPESAS').asfloat, // Total_Outras_Despesas,
        qrnota.fieldbyname('TOTAL_NOTA').asfloat, // Total_Nota_Fiscal:real;
        frete_conta, // Frete_por_Conta:integer;
        vtransportador_nome, // Frete_Transportador,
        vtransportador_rg, // Frete_Inscricao_Estadual,
        qrnota.fieldbyname('transp_endereco').asstring, // Frete_Endereco,
        qrnota.fieldbyname('ABC').asstring, // Frete_UF,
        qrnota.fieldbyname('transp_cidade').asstring, // Frete_Municipio,
        CNPJ, // Frete_CNPJ,
        CPF, // Frete_CPF,
        qrnota.fieldbyname('PLACA').asstring, // Frete_Placa,
        qrnota.fieldbyname('PLACA_UF').asstring, // Frete_UF_Placa:string;
        qrnota.fieldbyname('vol_qtde').asfloat, // Frete_Volume_Quantidade:real;
        qrnota.fieldbyname('vol_especie').asstring, // Frete_Volume_Especie,
        qrnota.fieldbyname('vol_marca').asstring, // Frete_Volume_Marca,
        qrnota.fieldbyname('vol_numero').asstring,
        // Frete_Volume_Numero:string;
        qrnota.fieldbyname('peso_liquido').asfloat,
        // Frete_Volume_Peso_Liquido,
        qrnota.fieldbyname('peso_bruto').asfloat // Frete_Volume_Peso_Bruto:real
        ) then
      begin
        ShowMessage('Falha ao Terminar nota fiscal');
        exit;
      end;

      if Fat = 1 then
      begin

        if not Exp_Faturamento_NotaFiscal
          (frmPrincipal.zerarcodigo(qrnota.fieldbyname('numero').asstring, 9),
          // Numero_Fatura:string;
          qrnota.fieldbyname('total_nota').asfloat, // Valor_Original,
          0, // Desconto,
          qrnota.fieldbyname('total_nota').asfloat // Valor_Liquido:real
          ) then
        begin
          ShowMessage('Falha ao Lançar o faturamento');
          exit;
        end;

        query2.close;
        query2.sql.clear;
        query2.sql.add('select * from c000117');
        query2.sql.add('where cod_nota = ''' + qrnota.fieldbyname('codigo')
          .asstring + '''');
        query2.sql.add('order by numero');
        query2.open;
        while not query2.eof do
        begin
          if not Exp_Duplicata_NotaFiscal(query2.fieldbyname('documento')
            .asstring, // Numero:string;
            query2.fieldbyname('vencimento').AsDateTime,
            // Vencimento:tdatetime;
            query2.fieldbyname('valor').asfloat // Valor:real
            ) then
          begin
            ShowMessage('Falha ao Lançar a duplicata');
            exit;
          end;
        end;

      end;

      if Exp_Fecha_NotaFiscal(qrnota.fieldbyname('inf1').asstring + ' ' +
        qrnota.fieldbyname('inf2').asstring + ' ' + qrnota.fieldbyname('inf3')
        .asstring + ' ' + qrnota.fieldbyname('inf4').asstring + ' ' +
        qrnota.fieldbyname('inf5').asstring) then
      begin
        ShowMessage('Arquivo de Nota Fiscal criado com sucesso!');
      end
      else
      begin
        ShowMessage('Houve falha na criação do arquivo de Nota Fiscal!');
      end;

    end;

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from c000007');
    qrcliente.open;
  end;
end;

procedure Tfrmnotafiscal_menu.ACBrNFe1StatusChange(Sender: TObject);
begin
  case ACBrNFe1.status of
    stIdle:
      begin
        if (frmStatus <> nil) then
          frmStatus.Hide;
      end;
    stNFeStatusServico:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeRecepcao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeRetRecepcao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeConsulta:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeCancelamento:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNfeInutilizacao:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeRecibo:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeCadastro:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeEmail:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Email...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeCCe:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Carta de Correção...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
    stNFeEvento:
      begin
        if (frmStatus = nil) then
          frmStatus := TfrmStatus.Create(Application);
        frmStatus.lblStatus.Caption := 'Enviando Evento...';
        frmStatus.Show;
        frmStatus.BringToFront;
      end;
  end;
  Application.ProcessMessages;

end;

procedure Tfrmnotafiscal_menu.AdvGlowButton1Click(Sender: TObject);
var
  sXML: string;
begin
  if qrnota.RecordCount = 0 then
    exit;
  sXML := qrnota.fieldbyname('nfe_xml').asstring;
  if sXML = '' then
    exit;
  try
    if qrnota.fieldbyname('nfe_situacao').AsInteger = 4 then
    begin
      if FileExists(sXML) then
      begin
        bmensagem := True;
        qrnota.edit;
        qrnota.fieldbyname('nfe_situacao').AsInteger := 6;
        qrnota.post;
        ACBrNFe1.NotasFiscais.clear;
        ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
        ACBrNFe1.Consultar;
        if ACBrNFe1.WebServices.Consulta.cStat = 100 then
        begin
          ACBrNFe1.NotasFiscais.Imprimir;
        end
        else
        begin
          qrnota.edit;
          qrnota.fieldbyname('nfe_situcao').AsInteger := 4;
          qrnota.post;
        end;
        MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
        MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
        LoadXML(MemoResp, WebBrowser1);
      end
      else
      begin
        Application.messagebox('Arquivo XML nao encontrado!', 'Erro',
          mb_ok + mb_iconerror);
      end;
    end;
  except
    on E: exception do
    begin
      Application.messagebox(PWideChar('004- Erro ao crair/imprimir NFe!' + #13
        + 'Mensagem: ' + E.message), 'Erro', mb_ok + mb_iconerror);
    end;

  end;

end;

procedure Tfrmnotafiscal_menu.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmnotafiscal_menu.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmnotafiscal_menu.AjustarParametrosdeEnvioEmail
  (Destinatario: String);
var
  // mudanca pra salvar na pasta dll
  caminho: string;
begin
  // mudanca pra salvar na pasta dll
  caminho := ExtractFilePath(ParamStr(0)) + 'ini\com.ini';
  self.ACBrMail1.Host := LeInistr(caminho, 'Email', 'HostOrc', '');
  // 'smtp.gmail.com'; // troque pelo seu servidor smtp
  self.ACBrMail1.Username := LeInistr(caminho, 'Email', 'UserOrc', '');
  self.ACBrMail1.Password := LeInistr(caminho, 'Email', 'PassOrc', '');
  self.ACBrMail1.Port := LeInistr(caminho, 'Email', 'PortOrc', '');
  // troque pela porta do seu servidor smtp
  self.ACBrMail1.SetTLS := True; // Verifique se o seu servidor necessita SSL
  self.ACBrMail1.SetSSL := True; // Verifique se o seu servidor necessita SSL
  self.ACBrMail1.From := LeInistr(caminho, 'Email', 'PadraoOrc', '');
  ///
  self.ACBrMail1.FromName := LeInistr(caminho, 'Email', 'PadraoOrc', ''); //
  self.ACBrMail1.AddAddress(Destinatario);
  self.ACBrMail1.UseThread := False;
end;

procedure Tfrmnotafiscal_menu.bt_nfe_status1Click(Sender: TObject);
begin
  memoLog.clear;
  ACBrNFe1.WebServices.StatusServico.Executar;
  bt_log.Click;
  MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetWS);
  LoadXML(MemoResp, WebBrowser1);
end;

procedure Tfrmnotafiscal_menu.bt_log1Click(Sender: TObject);
begin
  pn_nfe_log.Visible := True;
end;

procedure Tfrmnotafiscal_menu.Button1Click(Sender: TObject);
begin
  pn_nfe_log.Visible := False
end;

procedure Tfrmnotafiscal_menu.ACBrNFe1GerarLog(const Mensagem: string);
begin
  { memoLog.Lines.add(Mensagem);
    if bmensagem then
    showmessage(Mensagem);
    bmensagem := False; }

end;

procedure Tfrmnotafiscal_menu.bt_nfe_validar1Click(Sender: TObject);
var
  sXML: string;
begin
  case qrnota.fieldbyname('nfe_situacao').AsInteger of
    // 3 - nao validada

    4:
      begin // validada
        if Application.messagebox
          ('Esta nota já foi validada! Deseja prosseguir?', 'Atenção',
          mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
          exit;
      end;
    5:
      begin // transmitida
        if Application.messagebox
          ('Esta nota já foi validada e transmitida! Deseja prosseguir?',
          'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
          exit;
      end;

    6:
      begin // Aceita
        if Application.messagebox
          ('Esta nota já foi validada/aceita pela receita! Deseja prosseguir?',
          'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
          exit;
      end;

    7:
      begin // rejeitada
        if Application.messagebox
          ('Esta nota já foi validada e rejeitada! Deseja prosseguir?',
          'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
          exit;
      end;
    8:
      begin // cancelada
        Application.messagebox('Esta nota já foi cancelada!', 'Erro',
          mb_ok + mb_iconerror);
        exit;
      end;
  end;

  try

    Gerar_XML;

    ACBrNFe1.NotasFiscais.Assinar;
    ACBrNFe1.NotasFiscais.Validar;
    ACBrNFe1.NotasFiscais.Items[0].GravarXML(ACBrNFe1.NotasFiscais.Items[0]
      .NomeArq, ACBrNFe1.Configuracoes.Arquivos.PathSalvar);

    sXML := ACBrNFe1.NotasFiscais.Items[0].NomeArq;

    Application.ProcessMessages;

    if FileExists(sXML) then
    begin
      ACBrNFe1.NotasFiscais.clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
      // ACBrNFe1.NotasFiscais.Valida;
      // Application.MessageBox('Nota
      // Fiscal validada com sucesso!','Aviso',mb_ok+mb_iconinformation);

      qrnota.edit;
      qrnota.fieldbyname('nfe_xml').asstring := sXML;
      qrnota.fieldbyname('nfe_situacao').AsInteger := 4;
      qrnota.fieldbyname('chave').asstring :=
        Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID,
        (Length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID) - 44) + 1, 44);
      qrnota.post;

      gridRowChanged(frmnotafiscal_menu);

      ACBrNFeDANFEFR1.ProtocoloNFe := '';
      bt_nfe_assinar.Click;

    end
    else
    begin
      Application.messagebox('Arquivo XML não encontrado!', 'Erro',
        mb_ok + mb_iconerror);
      exit;
    end;
  except
    on E: exception do
    begin
      Application.messagebox(PWideChar('Erro ao criar/imprimir NFe!' + #13 +
        'Mensagem: ' + E.message), 'Erro', mb_ok + mb_iconerror);
    end;
  end;

end;

procedure Tfrmnotafiscal_menu.bt_nfe_danfe1Click(Sender: TObject);
var
  sXML: string;
begin

  if qrnota.RecordCount = 0 then
    exit;

  sXML := qrnota.fieldbyname('nfe_xml').asstring;

  if sXML = '' then
    exit;

  try

    if FileExists(sXML) then
    begin
      ACBrNFeDANFEFR1.ProtocoloNFe := '';
      // Linha inserida para corrigir problema de impressao do numero do protocolo na nfe.
      ACBrNFe1.NotasFiscais.clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
      { if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
        begin
        ACBrNFe1.WebServices.Consulta.NFeChave :=
        ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
        ACBrNFe1.WebServices.ConsultaDPEC.Executar;
        ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(ACBrNFe1.WebServices.ConsultaDPEC.retDPEC.dhRegDPEC);
        ACBrNFe1.DANFE.ProtocoloNFe :=
        ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC + ' ' +
        DateTimeToStr(ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);
        /end; }
      ACBrNFe1.NotasFiscais.Imprimir;
      ACBrNFe1.NotasFiscais.Imprimirpdf;
    end
    else
    begin
      Application.messagebox('Arquivo XML não econtraddo!', 'Erro',
        mb_ok + mb_iconerror);
    end;

  except
    on E: exception do
    begin
      Application.messagebox(PWideChar('Erro ao criar/imprimir NFe!' + #13 +
        'Mensagem: ' + E.message), 'Erro', mb_ok + mb_iconerror);
    end;
  end;
end;

procedure Tfrmnotafiscal_menu.bt_nfe_assinarClick(Sender: TObject);
var
  sXML: string;
begin
  if qrnota.RecordCount = 0 then
    exit;

  sXML := qrnota.fieldbyname('nfe_xml').asstring;
  if sXML = '' then
    exit;
  if FileExists(sXML) then
  begin
    ACBrNFe1.NotasFiscais.clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
    ACBrNFe1.Enviar(0);
    ACBrNFe1.NotasFiscais.Imprimirpdf;
    // ShowMessage(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt);
    // ShowMessage(ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec);
    MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetWS);
    LoadXML(MemoResp, WebBrowser1);
    ACBrNFe1.NotasFiscais.clear;

    qrnota.edit;
    qrnota.fieldbyname('nfe_xml').asstring := sXML;
    qrnota.fieldbyname('nfe_situacao').AsInteger := 6;
    qrnota.post;

    gridRowChanged(frmnotafiscal_menu);

    ACBrNFeDANFEFR1.ProtocoloNFe := '';
    // Linha inserida para corrigir problema de impressao do numero do protocolo na nfe.

    // bt_nfe_danfe.Click;

  end
  else
  begin
    Application.messagebox('Arquivo XML não econtraddo!', 'Erro',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmnotafiscal_menu.bt_nfe_exportar1Click(Sender: TObject);
var
  Para: String;
  CC: Tstrings;
  // Para: string;
  sXML, pdf: string;
  bserv: boolean;
  StreamMemo: TMemoryStream;
  email: TEmail;
begin
  try
    if qrnota.RecordCount = 0 then
      exit;
    sXML := qrnota.fieldbyname('nfe_xml').asstring;
    if sXML = '' then
      exit;

    Application.ProcessMessages;

    if FileExists(sXML) then
    begin
      frmmodulo.qrconfig.open;
      if edtSmtpHost.Text = '' then
      begin
        Application.messagebox('Favor configurar a conta de email!', 'Erro',
          mb_ok + mb_iconerror);
        exit;
      end;
      // verificar se pdf existe
      pdf := 'C:\OneMaker\SERVER\PDF\' + stringreplace(ExtractFileName(sXML),
        '-NFe.xml', '.pdf', [rfReplaceAll, rfIgnoreCase]);
      if FileExists(pdf) then
        sXML := sXML + '|' + pdf;

      qrNFE_Cliente.close;
      qrNFE_Cliente.sql.clear;
      qrNFE_Cliente.sql.add('select * from c000007');
      qrNFE_Cliente.sql.add('where codigo = ''' +
        qrnota.fieldbyname('codcliente').asstring + '''');
      qrNFE_Cliente.open;

      Para := qrNFE_Cliente.fieldbyname('email').asstring;

      if Para = '' then
        inputbox('Email', 'Email do Cliente', '');
      if frmmodulo.qrconfig.fieldbyname('email_exige_conexao').AsInteger = 1
      then
        bserv := True
      else
        bserv := False;
      // inicio

      ACBrNFe1.NotasFiscais.clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
      // CC:=TstringList.Create;
      try

        AjustarParametrosdeEnvioEmail(Para);
        ACBrMail1.FromName := 'Nota Fiscal eletronica';

        ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(Para, edtEmailAssunto.Text,
          mmEmailMsg.Lines, True // Enviar PDF junto
          , nil // Lista com emails que serÃ£o enviado cÃ³pias - TStrings
          , nil); // Lista de anexos - TStrings
      finally
        // CC.Free;
      end;
    end;

    // fim

  except
    on E: exception do
    begin
      Application.messagebox(PWideChar('Erro ao criar/imprimir NFe!' + #13 +
        'Mensagem: ' + E.message), 'Erro', mb_ok + mb_iconerror);
    end;
  end;

end;

procedure Tfrmnotafiscal_menu.BitBtn1Click(Sender: TObject);
begin
  frmnfe_legenda := tfrmnfe_legenda.Create(self);
  frmnfe_legenda.Show;
end;

procedure Tfrmnotafiscal_menu.bt_nfe_consultar1Click(Sender: TObject);
var
  sXML: string;
begin

  if qrnota.RecordCount = 0 then
    exit;

  sXML := qrnota.fieldbyname('nfe_xml').asstring;

  if sXML = '' then
    exit;

  try

    if FileExists(sXML) then
    begin
      bmensagem := True;

      ACBrNFe1.NotasFiscais.clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
      ACBrNFe1.Consultar;
      MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
      MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
      LoadXML(MemoResp, WebBrowser1);
    end
    else
    begin
      Application.messagebox('Arquivo XML não econtraddo!', 'Erro',
        mb_ok + mb_iconerror);
    end;

  except
    on E: exception do
    begin
      Application.messagebox(PWideChar('Erro ao criar/imprimir NFe!' + #13 +
        'Mensagem: ' + E.message), 'Erro', mb_ok + mb_iconerror);
    end;
  end;

end;

procedure Tfrmnotafiscal_menu.bt_nfe_cancelar1Click(Sender: TObject);
var
  vAux, sXML: string;
  idLote: string;
begin
  // novo cancelar
  if qrnota.RecordCount = 0 then
    exit;
  sXML := qrnota.fieldbyname('nfe_xml').asstring;
  if sXML = '' then
    exit;

  if FileExists(sXML) then
  begin
    bmensagem := True;

    ACBrNFe1.NotasFiscais.clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(sXML);

    idLote := '1';
    if not(InputQuery('WebServices Eventos: Cancelamento',
      'Identificador de controle do Lote de envio do Evento', idLote)) then
      exit;
    if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa',
      vAux)) then
      exit;

    ACBrNFe1.EventoNFe.Evento.clear;
    ACBrNFe1.EventoNFe.idLote := StrToInt(idLote);
    with ACBrNFe1.EventoNFe.Evento.add do
    begin
      infEvento.dhEvento := now;
      infEvento.tpEvento := teCancelamento;
      infEvento.detEvento.xJust := vAux;
    end;
    ACBrNFe1.EnviarEvento(StrToInt(idLote));

    MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetWS);
    // memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetornoWS);
    LoadXML(MemoResp, WebBrowser1);
    ShowMessage(IntToStr(ACBrNFe1.WebServices.EnvEvento.cStat));
    ShowMessage(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0]
      .RetInfEvento.nProt);

    qrnota.edit;
    qrnota.fieldbyname('nfe_xml').asstring := sXML;
    qrnota.fieldbyname('nfe_situacao').AsInteger := 8;
    qrnota.post;

    gridRowChanged(frmnotafiscal_menu);

    if self.Tag = 100 then
    begin
      frmmodulo.cancelou_venda_nf := True;
      qrnota.edit;
      qrnota.fieldbyname('motivo').asstring := vAux;
      // inputbox('Cancelar NF', 'Informe o motivo do Cancelamento:', '');
      qrnota.fieldbyname('situacao_a').asstring := 'C';
      qrnota.fieldbyname('situacao').AsInteger := 2;
      qrnota.post;
      close;
    end
    else
    begin

      try
        frmmodulo.cancelou_venda_nf := True;
        frmnotas_venda := Tfrmnotas_venda.Create(Application);
        frmmodulo.QRVENDA.close;
        frmmodulo.QRVENDA.sql.clear;
        frmmodulo.QRVENDA.sql.add
          ('SELECT * FROM C000048 ORDER BY DATA, codigo');
        frmmodulo.QRVENDA.open;
        frmmodulo.QRVENDA.IndexFieldNames := 'CODIGO';
        frmmodulo.QRVENDA.Locate('NUMERO_CUPOM_FISCAL',
          qrnota.fieldbyname('NUMERO').asstring, [loCaseInsensitive]);
        frmnotas_venda.bcancelarClick(frmnotas_venda);
        frmmodulo.QRVENDA.close;
        qrnota.edit;
        qrnota.fieldbyname('motivo').asstring := vAux;
        // inputbox('Cancelar NF', 'Informe o motivo do Cancelamento:', '');
        qrnota.fieldbyname('situacao_a').asstring := 'C';
        qrnota.fieldbyname('situacao').AsInteger := 2;
        qrnota.post;
      except
        frmmodulo.cancelou_venda_nf := False;
        frmmodulo.QRVENDA.close;
      end;

    end;

  end
  else
  begin
    Application.messagebox('Arquivo XML não econtraddo!', 'Erro',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmnotafiscal_menu.btnSalvarConfigClick(Sender: TObject);
begin
  GravarConfiguracao;
  Inicia_NFe;
end;

procedure Tfrmnotafiscal_menu.sbtnCaminhoCertClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Certificado';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter :=
    'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(Application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtCaminho.Text := OpenDialog1.FileName;
  end;
end;

procedure Tfrmnotafiscal_menu.sbtnGetCertClick(Sender: TObject);
begin
  edtNumSerie.Text := ACBrNFe1.SSL.SelecionarCertificado;
end;

procedure Tfrmnotafiscal_menu.sbtnLogoMarcaClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Logo';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter :=
    'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(Application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtLogoMarca.Text := OpenDialog1.FileName;
  end;
end;

procedure Tfrmnotafiscal_menu.sbtnPathSalvarClick(Sender: TObject);
var
  Dir: string;
begin
  if Length(edtPathLogs.Text) <= 0 then
    Dir := ExtractFileDir(Application.ExeName)
  else
    Dir := edtPathLogs.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt], SELDIRHELP)
  then
    edtPathLogs.Text := Dir;

end;

procedure Tfrmnotafiscal_menu.Inutilizar1Click(Sender: TObject);
var
  modelo, serie, Ano, NumeroInicial, NumeroFinal, Justificativa: string;
begin

  qrempresa.close;
  qrempresa.sql.clear;
  qrempresa.sql.add('select * from  c000004');
  qrempresa.open;

  if not(InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa))
  then
    exit;

  Ano := datetostr(qrnota.fieldbyname('DATA').AsDateTime);
  Ano := formatdatetime('yyyy', StrToDate(Ano));
  serie := qrempresa.fieldbyname('CONHECIMENTO').asstring;
  modelo := '55';
  NumeroInicial := qrnota.fieldbyname('NUMERO').asstring;
  NumeroFinal := qrnota.fieldbyname('NUMERO').asstring;

  try

    ACBrNFe1.WebServices.Inutiliza(qrempresa.fieldbyname('CNPJ').asstring,
      Justificativa, StrToInt(Ano), StrToInt(modelo), StrToInt(serie),
      StrToInt(NumeroInicial), StrToInt(NumeroFinal));
    MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Inutilizacao.RetWS);
    LoadXML(MemoResp, WebBrowser1);

  finally

  end;

end;

procedure Tfrmnotafiscal_menu.legenfe001Click(Sender: TObject);
begin
  Frm_legendaNfe.showmodal;
end;

procedure Tfrmnotafiscal_menu.eclienteExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmnotafiscal_menu.ENUMEROEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmnotafiscal_menu.DateEdit1Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmnotafiscal_menu.btn464814Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.02') = 'NAO' then
  begin
    Application.messagebox('Acesso não permitido!', 'Atenção',
      mb_ok + mb_iconerror);
    exit;
  end;
  frmcliente := tfrmcliente.Create(self);
  frmcliente.showmodal;

end;

procedure Tfrmnotafiscal_menu.btnCCe_nfe_cceClick(Sender: TObject);
var
  chave, idLote, CNPJ, correcao, NumeroProtocolo, MotivoStatus, sXML: string;
  DataHoraEvento: TDateTime;
  XMLCCe: AnsiString;
  CodigoStatus, nSeqEvento: Integer;
begin

  qrempresa.close;
  qrempresa.sql.clear;
  qrempresa.sql.add('select * from c000004');
  // qrempresa.sql.add('where codigo = ''' + qrnota.fieldbyname('codcliente').asstring + '''');
  qrempresa.open;

  idLote := formatdatetime('yymmddhhmm', now);

  { if not(InputQuery('WebServices Eventos: Carta de Correção', 'Chave da NF-e', Chave)) then
    exit;
    Chave := Trim(OnlyNumber(Chave));
    idLote := '1';
    if not(InputQuery('WebServices Eventos: Carta de Correção', 'Identificador de controle do Lote de envio do Evento', idLote)) then
    exit;
    CNPJ := copy(Chave,7,14);
    if not(InputQuery('WebServices Eventos: Carta de Correção', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
    exit;
    nSeqEvento := '1';
    if not(InputQuery('WebServices Eventos: Carta de Correção', 'Sequencial do evento para o mesmo tipo de evento', nSeqEvento)) then
    exit;
    Correcao := 'Correção a ser considerada, texto livre. A correção mais recente substitui as anteriores.'; }
  if not(InputQuery('WebServices Eventos: Carta de Correção',
    'Correção a ser considerada', correcao)) then
    exit;

  ACBrNFe1.EventoNFe.Evento.clear;
  // ACBrNFe1.EnvEvento.EnvEventoNFe..idLote := StrToInt(idLote) ;
  with ACBrNFe1.EventoNFe.Evento.add do
  begin

    nSeqEvento := qrnota.fieldbyname('seqevento').AsInteger + 1;
    if nSeqEvento = 21 then
    begin
      ShowMessage('Numero maxímo de correções por nota são 20, ' + #13 +
        ' não são possiveis novas correções nesta nota ' + #13 +
        IntToStr(qrnota.fieldbyname('seqevento').AsInteger) +
        ' correções ja efetuadas');
      exit;
    end
    else
    begin
      infEvento.chNFe := OnlyNumber(qrnota.fieldbyname('Chave').asstring);
      infEvento.CNPJ := OnlyNumber(qrempresa.fieldbyname('cnpj').asstring);
      infEvento.dhEvento := now;
      infEvento.tpEvento := teCCe;
      infEvento.nSeqEvento := nSeqEvento;
      infEvento.detEvento.xCorrecao := correcao;
      qrnota.edit;
      qrnota.fieldbyname('seqevento').AsInteger := nSeqEvento;
      qrnota.post;
    end;

  end;
  // ACBrNFe1.EnviarEvento(StrToInt(idLote));

  // envio da carta de correção
  if ACBrNFe1.EnviarEvento(StrToInt(idLote)) then
  begin
    with ACBrNFe1.WebServices.EnvEvento do
    begin
      if not(EventoRetorno.retEvento.Items[0].RetInfEvento.cStat in [135, 136])
      then
      begin
        raise EDatabaseError.CreateFmt
          ('Ocorreu o seguinte erro ao enviar a carta de correção:' + sLineBreak
          + 'Código:%d' + sLineBreak + 'Motivo: %s',
          [EventoRetorno.retEvento.Items[0].RetInfEvento.cStat,
          EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo]);
      end;
      // retornos
      DataHoraEvento := EventoRetorno.retEvento.Items[0]
        .RetInfEvento.dhRegEvento;
      NumeroProtocolo := EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
      XMLCCe := EventoRetorno.retEvento.Items[0].RetInfEvento.XML;
      CodigoStatus := EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
      MotivoStatus := EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;

      if qrnota.RecordCount = 0 then
        exit;
      sXML := qrnota.fieldbyname('nfe_xml').asstring;
      if sXML = '' then
        exit;

      if FileExists(sXML) then
      begin
        ACBrNFe1.DANFE.PathPDF := ExtractFilePath(ParamStr(0)) + 'CCePdf\';
        ACBrNFeDANFEFR1.MostrarPreview := True;

        ACBrNFe1.NotasFiscais.clear;
        ACBrNFe1.NotasFiscais.LoadFromString(sXML);

        ACBrNFe1.EventoNFe.Evento.clear;
        ACBrNFe1.EventoNFe.LerXMLFromString(XMLCCe);

        ACBrNFe1.ImprimirEvento;
        ACBrNFe1.ImprimirEventoPDF;
      end;
    end;
  end
  else
  begin
    with ACBrNFe1.WebServices.EnvEvento do
    begin
      raise exception.Create('Ocorreram erros ao enviar a Carta de Correção:' +
        sLineBreak + 'Lote: ' + IntToStr(EventoRetorno.idLote) + sLineBreak +
        'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak + 'Orgao: '
        + IntToStr(EventoRetorno.cOrgao) + sLineBreak + sLineBreak + 'Status: '
        + IntToStr(EventoRetorno.cStat) + sLineBreak + 'Motivo: ' +
        EventoRetorno.xMotivo);
    end;
  end;

end;

procedure Tfrmnotafiscal_menu.btnf77786Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '02.01') = 'NAO' then
  begin
    Application.messagebox('Acesso não permitido!', 'Atenção',
      mb_ok + mb_iconerror);
    exit;
  end;

  frmmodulo.qrconfig.open;
  if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'NORMAL' then
  begin
    frmproduto := tfrmproduto.Create(self);
    frmproduto.showmodal;
  end
  { else
    begin
    if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'LIGHT'
    then
    begin
    frmproduto_LIGTH := tfrmproduto_LIGTH.Create(self);
    frmproduto_LIGTH.showmodal;
    end
    else
    begin
    if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'FARMA'
    then
    begin
    frmproduto_FARMA := tfrmproduto_FARMA.Create(self);
    frmproduto_FARMA.showmodal;
    end
    else
    begin
    if frmmodulo.qrconfig.fieldbyname('CADASTRO_PRODUTO').asstring = 'PECAS'
    then
    begin
    frmproduto_AUTO := tfrmproduto_AUTO.Create(self);
    frmproduto_AUTO.showmodal;
    end;
    end;
    end;
    end; }

end;

procedure Tfrmnotafiscal_menu.btnrt78942Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.03') = 'NAO' then
  begin
    Application.messagebox('Acesso não permitido!', 'Atenção',
      mb_ok + mb_iconerror);
    exit;
  end;
  FRMFORNECEDOR := TFRMFORNECEDOR.Create(self);
  FRMFORNECEDOR.showmodal;

end;

procedure Tfrmnotafiscal_menu.btnfff403113Click(Sender: TObject);
begin
  if frmPrincipal.acesso(codigo_usuario, '01.01') = 'NAO' then
  begin
    Application.messagebox('Acesso não permitido!', 'Atenção',
      mb_ok + mb_iconerror);
    exit;
  end;
  if frmEMPRESA = nil then
  begin
    frmEMPRESA := tfrmEMPRESA.Create(self);
    frmEMPRESA.showmodal;
  end;

end;

end.
