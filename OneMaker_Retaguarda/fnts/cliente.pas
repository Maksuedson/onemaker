unit cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, PageView, wwdbedit,
  Wwdotdot, Wwdbcomb, Wwdbigrd, Wwdbgrid, ImgList, SHELLAPI, ComCtrls,
  RzEdit, RzDBEdit, RzDBBnEd, AdvGlowButton, AdvToolBar, RzPanel, ExtDlgs,
  AdvReflectionImage, AdvPanel, UCBase, AdvSmoothPanel,
  Vcl.ToolWin, AdvMenus, W7Labels, dxGDIPlusClasses, cyBaseSpeedButton,
  cySpeedButton, sBitBtn, W7Classes, W7Buttons, AdvSmoothExpanderPanel,
  AdvMetroButton, System.ImageList, pngimage, JPEG, ACBrBase, ACBrSocket,
  ACBrConsultaCNPJ, ACBrConsultaCPF, JvToolEdit, JvBaseEdits, JvDBControls,
  JvExMask, AdvSmoothButton, cxGraphics, cxControls, cxLookAndFeels,
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
  cxGrid, CurvyControls, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  Tfrmcliente = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dscliente2: TDataSource;
    qrcliente: TZQuery;
    Relatrios1: TMenuItem;
    dscliente: TDataSource;
    query1: TZQuery;
    N1: TMenuItem;
    FichadeCadastro1: TMenuItem;
    Movimento1: TMenuItem;
    qrvenda: TZQuery;
    dsvenda: TDataSource;
    qrvenda_mes: TZQuery;
    dsvenda_mes: TDataSource;
    qrproduto: TZQuery;
    dsproduto: TDataSource;
    QUERY: TZQuery;
    dsreceber: TDataSource;
    qrcontasreceber: TZQuery;
    ImageList1: TImageList;
    qrcontasreceberpg: TZQuery;
    IntegerField1: TIntegerField;
    FloatField4: TFloatField;
    dsreceberpg: TDataSource;
    qrpgto: TZQuery;
    InformaesAdicionais1: TMenuItem;
    qrpessoas: TZQuery;
    dspessoas: TDataSource;
    dsservicos_periodicos: TDataSource;
    ServicosPeriodicos1: TMenuItem;
    Bevel1: TBevel;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    brelatorios: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Regies2: TMenuItem;
    Vendedor1: TMenuItem;
    Convnio1: TMenuItem;
    qrduplo: TZQuery;
    Histrico1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    qrvendaCODIGO: TWideStringField;
    qrvendaCODCAIXA: TWideStringField;
    qrvendaCODVENDEDOR: TWideStringField;
    qrvendaCODCLIENTE: TWideStringField;
    qrvendaOBS: TWideStringField;
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
    qrvendaNUMERO_CUPOM_FISCAL: TWideStringField;
    qrvendaRETIRADO: TWideStringField;
    qrvendaMEIO_CONVENIO: TFloatField;
    qrvendaP5: TFloatField;
    qrvendaP3: TFloatField;
    qrvendaMEIO_FINANCEIRA: TFloatField;
    qrvendaCOD_FINANCEIRA: TWideStringField;
    qrvendaCOD_FINANCEIRA_LANCTO: TWideStringField;
    qrvendaCOD_FINANCEIRA_LACTO: TWideStringField;
    qrvendaCODCONVENIO: TWideStringField;
    qrvendaSITUACAO: TIntegerField;
    qrvendaCODTRANSPORTADOR: TWideStringField;
    qrvendaCODVEICULO: TWideStringField;
    qrvendaFRETE_VALOR: TFloatField;
    qrvendaFRETE_OBS: TWideStringField;
    qrvendaFRETE_LANCAR: TIntegerField;
    qrvendaECF_SERIAL: TWideStringField;
    qrvendaCODNFSAIDA: TWideStringField;
    qrvendaATACADO_VAREJO: TSmallintField;
    qrvendaNRVENDA: TWideStringField;
    qrvendaFILTRO: TIntegerField;
    qrcontasreceberCODIGO: TWideStringField;
    qrcontasreceberCODVENDA: TWideStringField;
    qrcontasreceberCODVENDEDOR: TWideStringField;
    qrcontasreceberCODCAIXA: TWideStringField;
    qrcontasreceberCODCLIENTE: TWideStringField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberDOCUMENTO: TWideStringField;
    qrcontasreceberTIPO: TWideStringField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceberNOSSONUMERO: TWideStringField;
    qrcontasreceberCODREGIAO: TWideStringField;
    qrcontasreceberCODCEDENTE: TWideStringField;
    qrcontasreceberP5: TFloatField;
    qrcontasreceberP3: TFloatField;
    qrcontasreceberNUMERO_CUPOM: TWideStringField;
    qrcontasreceberVALOR_VENDA: TFloatField;
    qrcontasreceberCOD_VENDA_ORIGINAL: TWideStringField;
    qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField;
    qrcontasreceberEMAIL_ENVIADO: TIntegerField;
    qrcontasreceberpgCODIGO: TWideStringField;
    qrcontasreceberpgCODVENDA: TWideStringField;
    qrcontasreceberpgCODVENDEDOR: TWideStringField;
    qrcontasreceberpgCODCAIXA: TWideStringField;
    qrcontasreceberpgCODCLIENTE: TWideStringField;
    qrcontasreceberpgVALOR_ORIGINAL: TFloatField;
    qrcontasreceberpgVALOR_PAGO: TFloatField;
    qrcontasreceberpgVALOR_JUROS: TFloatField;
    qrcontasreceberpgVALOR_ATUAL: TFloatField;
    qrcontasreceberpgVALOR_DESCONTO: TFloatField;
    qrcontasreceberpgDOCUMENTO: TWideStringField;
    qrcontasreceberpgTIPO: TWideStringField;
    qrcontasreceberpgSITUACAO: TIntegerField;
    qrcontasreceberpgFILTRO: TIntegerField;
    qrcontasreceberpgNOSSONUMERO: TWideStringField;
    qrcontasreceberpgCODREGIAO: TWideStringField;
    qrcontasreceberpgCODCEDENTE: TWideStringField;
    qrcontasreceberpgP5: TFloatField;
    qrcontasreceberpgP3: TFloatField;
    qrcontasreceberpgNUMERO_CUPOM: TWideStringField;
    qrcontasreceberpgVALOR_VENDA: TFloatField;
    qrcontasreceberpgCOD_VENDA_ORIGINAL: TWideStringField;
    qrcontasreceberpgVALOR_ATUAL_ANTERIOR: TFloatField;
    qrcontasreceberpgEMAIL_ENVIADO: TIntegerField;
    qrcontasreceberpgDIAS: TIntegerField;
    qrcontasreceberpgRESTANTE: TFloatField;
    qrcontasreceberDIAS: TIntegerField;
    qrcontasreceberRESTANTE: TFloatField;
    qrcontasrecebersituacao2: TIntegerField;
    qrcontasreceberjuros: TFloatField;
    UCControls1: TUCControls;
    AdvPanelStyler1: TAdvPanelStyler;
    FontDialog1: TFontDialog;
    PrintDialog1: TPrintDialog;
    ColorDialog1: TColorDialog;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    ImagesBR: TImageList;
    N2: TMenuItem;
    i1: TMenuItem;
    A1: TMenuItem;
    ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
    Timer1: TTimer;
    ACBrConsultaCPF1: TACBrConsultaCPF;
    Timer2: TTimer;
    qrcontasreceberDATA_EMISSAO: TDateField;
    qrcontasreceberDATA_VENCIMENTO: TDateField;
    qrcontasreceberDATA_PAGAMENTO: TDateField;
    qrcontasreceberHISTORICO: TWideStringField;
    qrcontasreceberpgDATA_EMISSAO: TDateField;
    qrcontasreceberpgDATA_VENCIMENTO: TDateField;
    qrcontasreceberpgDATA_PAGAMENTO: TDateField;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoCODNOTA: TWideStringField;
    qrprodutoCODPRODUTO: TWideStringField;
    qrprodutoUNITARIO: TFloatField;
    qrprodutoTOTAL: TFloatField;
    qrprodutoICMS: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoCFOP: TWideStringField;
    qrprodutoDATA: TDateField;
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
    qrprodutoVENCIMENTO: TDateField;
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
    qrvendaDATA: TDateField;
    Panel8: TPanel;
    Panel7: TPanel;
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
    qrclienteTOTALGERAL: TWideStringField;
    qrclienteFOTO2: TWideMemoField;
    qrclienteCODFILIAL: TWideStringField;
    qrclienteCODLOCAL: TWideStringField;
    qrvenda_mesCOLUMN_0: TStringField;
    qrvenda_mesColumn: TStringField;
    qrvenda_mesColumn_1: TStringField;
    qrvenda_mesColumn_2: TStringField;
    qrvenda_mesColumn_3: TStringField;
    qrvenda_mesColumn_4: TStringField;
    qrvenda_mesColumn_5: TStringField;
    qrvenda_mesColumn_6: TStringField;
    qrvenda_mesColumn_7: TStringField;
    qrvenda_mesColumn_8: TStringField;
    qrvenda_mesColumn_9: TStringField;
    qrvenda_mesColumn_10: TStringField;
    Panel6: TPanel;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CPF: TcxGridDBColumn;
    cxGrid1DBTableView1ENDERECO: TcxGridDBColumn;
    cxGrid1DBTableView1vendedor: TcxGridDBColumn;
    cxGrid1DBTableView1convenio: TcxGridDBColumn;
    cxGrid1DBTableView1usuario: TcxGridDBColumn;
    cxGrid1DBTableView1regiao: TcxGridDBColumn;
    cxGrid1DBTableView1APELIDO: TcxGridDBColumn;
    cxGrid1DBTableView1BAIRRO: TcxGridDBColumn;
    cxGrid1DBTableView1CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1UF: TcxGridDBColumn;
    cxGrid1DBTableView1CEP: TcxGridDBColumn;
    cxGrid1DBTableView1COMPLEMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1MORADIA: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1SITUACAO: TcxGridDBColumn;
    cxGrid1DBTableView1TELEFONE1: TcxGridDBColumn;
    cxGrid1DBTableView1TELEFONE2: TcxGridDBColumn;
    cxGrid1DBTableView1TELEFONE3: TcxGridDBColumn;
    cxGrid1DBTableView1CELULAR: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1RG: TcxGridDBColumn;
    cxGrid1DBTableView1FILIACAO: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADOCIVIL: TcxGridDBColumn;
    cxGrid1DBTableView1CONJUGE: TcxGridDBColumn;
    cxGrid1DBTableView1PROFISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1EMPRESA: TcxGridDBColumn;
    cxGrid1DBTableView1RENDA: TcxGridDBColumn;
    cxGrid1DBTableView1LIMITE: TcxGridDBColumn;
    cxGrid1DBTableView1REF1: TcxGridDBColumn;
    cxGrid1DBTableView1REF2: TcxGridDBColumn;
    cxGrid1DBTableView1CODVENDEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_CADASTRO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_ULTIMACOMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1OBS1: TcxGridDBColumn;
    cxGrid1DBTableView1OBS2: TcxGridDBColumn;
    cxGrid1DBTableView1OBS3: TcxGridDBColumn;
    cxGrid1DBTableView1OBS4: TcxGridDBColumn;
    cxGrid1DBTableView1OBS5: TcxGridDBColumn;
    cxGrid1DBTableView1OBS6: TcxGridDBColumn;
    cxGrid1DBTableView1NASCIMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1CODREGIAO: TcxGridDBColumn;
    cxGrid1DBTableView1CODCONVENIO: TcxGridDBColumn;
    cxGrid1DBTableView1CODUSUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1RG_ORGAO: TcxGridDBColumn;
    cxGrid1DBTableView1RG_ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1RG_EMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1SEXO: TcxGridDBColumn;
    cxGrid1DBTableView1HISTORICO: TcxGridDBColumn;
    cxGrid1DBTableView1PREVISAO: TcxGridDBColumn;
    cxGrid1DBTableView1CNAE: TcxGridDBColumn;
    cxGrid1DBTableView1COD_MUNICIPIO_IBGE: TcxGridDBColumn;
    cxGrid1DBTableView1IBGE: TcxGridDBColumn;
    cxGrid1DBTableView1TAMANHO_CALCA: TcxGridDBColumn;
    cxGrid1DBTableView1TAMANHO_BLUSA: TcxGridDBColumn;
    cxGrid1DBTableView1TAMANHO_SAPATO: TcxGridDBColumn;
    cxGrid1DBTableView1CORRESP_ENDERECO: TcxGridDBColumn;
    cxGrid1DBTableView1CORRESP_BAIRRO: TcxGridDBColumn;
    cxGrid1DBTableView1CORRESP_CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1CORRESP_UF: TcxGridDBColumn;
    cxGrid1DBTableView1CORRESP_CEP: TcxGridDBColumn;
    cxGrid1DBTableView1CORRESP_COMPLEMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1RG_PRODUTOR: TcxGridDBColumn;
    cxGrid1DBTableView1RESP1_NOME: TcxGridDBColumn;
    cxGrid1DBTableView1RESP1_CPF: TcxGridDBColumn;
    cxGrid1DBTableView1RESP1_RG: TcxGridDBColumn;
    cxGrid1DBTableView1RESP1_PROFISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1RESP1_ESTADO_CIVIL: TcxGridDBColumn;
    cxGrid1DBTableView1RESP1_ENDERECO: TcxGridDBColumn;
    cxGrid1DBTableView1RESP1_BAIRRO: TcxGridDBColumn;
    cxGrid1DBTableView1RESP1_CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1RESP1_UF: TcxGridDBColumn;
    cxGrid1DBTableView1RESP1_CEP: TcxGridDBColumn;
    cxGrid1DBTableView1RESP2_NOME: TcxGridDBColumn;
    cxGrid1DBTableView1RESP2_CPF: TcxGridDBColumn;
    cxGrid1DBTableView1RESP2_RG: TcxGridDBColumn;
    cxGrid1DBTableView1RESP2_PROFISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1RESP2_ESTADO_CIVIL: TcxGridDBColumn;
    cxGrid1DBTableView1RESP2_ENDERECO: TcxGridDBColumn;
    cxGrid1DBTableView1RESP2_BAIRRO: TcxGridDBColumn;
    cxGrid1DBTableView1RESP2_CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1RESP2_UF: TcxGridDBColumn;
    cxGrid1DBTableView1RESP2_CEP: TcxGridDBColumn;
    cxGrid1DBTableView1FOTO: TcxGridDBColumn;
    cxGrid1DBTableView1CONDPGTO: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    combo_pessoa: TComboBox;
    wwDBComboBox1: TwwDBComboBox;
    Panel4: TPanel;
    bt_referencias: TAdvGlowButton;
    bt_i_muni: TAdvGlowButton;
    bt_historico: TAdvGlowButton;
    bt_respon: TAdvGlowButton;
    bt_finan: TAdvGlowButton;
    bt_info: TAdvGlowButton;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    pficha: TFlatPanel;
    Label5: TLabel;
    LAPELIDO: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    lnascimento: TLabel;
    Label57: TLabel;
    Label2: TLabel;
    edata_cadastro: TJvDBDateEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit30: TDBEdit;
    Edit1: TEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    euf: TwwDBComboBox;
    dbedit28: TRzDBButtonEdit;
    pcad: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    RLIMITE: TJvDBCalcEdit;
    DBDateEdit3: TJvDBDateEdit;
    GroupBox7: TGroupBox;
    ltelefone1: TLabel;
    ltelefone2: TLabel;
    Label24: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    GroupBox8: TGroupBox;
    LRG: TLabel;
    LCPF: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    bitbtn8: TAdvGlowButton;
    rrg: TRzPanel;
    Label27: TLabel;
    Label26: TLabel;
    Label30: TLabel;
    wwDBComboBox5: TwwDBComboBox;
    wwDBComboBox4: TwwDBComboBox;
    DBDateEdit2: TJvDBDateEdit;
    GroupBox9: TGroupBox;
    lprofissao: TLabel;
    lempresa: TLabel;
    lrenda: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    ERENDA: TJvDBCalcEdit;
    DateEdit1: TJvDateEdit;
    bcad: TAdvGlowButton;
    DBEdit7: TDBEdit;
    AdvGlowButton1: TAdvGlowButton;
    DBEdit38: TDBEdit;
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
    Panel5: TPanel;
    Image4: TImage;
    LabAtualizarCaptcha: TLabel;
    btnConsultar: TButton;
    EditDtNasc: TEdit;
    EditSituacao: TEdit;
    advsmthxpndrpnl2: TAdvSmoothExpanderPanel;
    lbl4: TLabel;
    btn2: TAdvMetroButton;
    pg_rodape: TPageView;
    PageSheet7: TPageSheet;
    pficha2: TPanel;
    LFILIACAO: TLabel;
    lestadocivil: TLabel;
    lconjuge: TLabel;
    Label16: TLabel;
    lsexo: TLabel;
    EFILIACAO: TDBEdit;
    ECIVIL: TDBComboBox;
    ECONJUGE: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    lconvenio: TGroupBox;
    ecodconvenio: TRzDBButtonEdit;
    ECONVENIO: TDBEdit;
    combo_sexo: TDBComboBox;
    DBCheckBox1: TDBCheckBox;
    PageSheet10: TPageSheet;
    pficha4: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label25: TLabel;
    eibge: TDBEdit;
    ecodmunicipio: TDBEdit;
    bibge: TAdvGlowButton;
    ecnae: TDBEdit;
    bcnae: TAdvGlowButton;
    PageSheet8: TPageSheet;
    pficha3: TPanel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    tab_responsavel: TPageSheet;
    PG_RESP: TPageControl;
    TabSheet1: TTabSheet;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    wwDBComboBox6: TwwDBComboBox;
    DBEdit34: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    TabSheet2: TTabSheet;
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
    ED_RESP2_NOME: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    wwDBComboBox7: TwwDBComboBox;
    DBEdit42: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    PageSheet2: TPageSheet;
    ViewSplit1: TViewSplit;
    FlipView1: TFlipView;
    ViewSplit2: TViewSplit;
    Label4: TLabel;
    LTOTAL: TLabel;
    wwDBGrid1: TwwDBGrid;
    GroupBox3: TGroupBox;
    wwDBGrid2: TwwDBGrid;
    GroupBox4: TGroupBox;
    PageView2: TPageView;
    PageSheet3: TPageSheet;
    Label6: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    wwDBGrid4: TwwDBGrid;
    rvalor: TJvCalcEdit;
    rjuro: TJvCalcEdit;
    rtotal: TJvCalcEdit;
    PageSheet4: TPageSheet;
    Label18: TLabel;
    Label9: TLabel;
    wwDBGrid5: TwwDBGrid;
    rtotal_pago: TJvCalcEdit;
    FlatPanel2: TFlatPanel;
    HeaderView2: THeaderView;
    wwDBGrid3: TwwDBGrid;
    PPGTO: TFlatPanel;
    HeaderView4: THeaderView;
    SpeedButton1: TSpeedButton;
    FlatPanel1: TFlatPanel;
    Memo1: TMemo;
    PageSheet5: TPageSheet;
    pInfAdic: TPanel;
    GroupBox5: TGroupBox;
    wwDBGrid6: TwwDBGrid;
    wwDBComboBox2: TwwDBComboBox;
    sBitBtn11: TsBitBtn;
    PageSheet11: TPageSheet;
    GroupBox1: TGroupBox;
    Label22: TLabel;
    Label58: TLabel;
    Label23: TLabel;
    dbedit29: TRzDBButtonEdit;
    DBEdit31: TDBEdit;
    combocond: TwwDBComboBox;
    DBDateEdit1: TJvDBDateEdit;
    PageSheet6: TPageSheet;
    GroupBox6: TGroupBox;
    wwDBComboBox3: TwwDBComboBox;
    wwDBGrid7: TwwDBGrid;
    sBitBtn12: TsBitBtn;
    PageSheet9: TPageSheet;
    DBMemo1: TDBMemo;
    PageSheet12: TPageSheet;
    Panel3: TPanel;
    RzPanel9: TRzPanel;
    Image2: TImage;
    btn101: TAdvGlowButton;
    btn125: TAdvGlowButton;
    btn1987: TAdvGlowButton;
    cad_tabfoto: TAdvGlowButton;
    bt_info_completo: TAdvSmoothButton;
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
    procedure RLIMITEKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit27Exit(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure brelatoriosClick(Sender: TObject);
    procedure FichadeCadastro1Click(Sender: TObject);
    procedure Movimento1Click(Sender: TObject);
    procedure wwDBComboBox1Change(Sender: TObject);
    procedure wwDBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure qrcontasreceberCalcFields(DataSet: TDataSet);
    procedure wwDBGrid4DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure InformaesAdicionais1Click(Sender: TObject);
    procedure qrpessoasBeforePost(DataSet: TDataSet);
    procedure btExcluiPessoasautorizadasClick(Sender: TObject);
    procedure qrpessoasAfterPost(DataSet: TDataSet);
    procedure ECODCONVENIOExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure eufExit(Sender: TObject);
    procedure eufEnter(Sender: TObject);
    procedure wwDBComboBox1Exit(Sender: TObject);
    procedure ServicosPeriodicos1Click(Sender: TObject);
    procedure btImprimirServicosClick(Sender: TObject);
    procedure dbedit28ButtonClick(Sender: TObject);
    procedure dbedit29ButtonClick(Sender: TObject);
    procedure ecodconvenioButtonClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure combo_pessoaChange(Sender: TObject);
    procedure dbedit29KeyPress(Sender: TObject; var Key: Char);
    procedure dbedit28KeyPress(Sender: TObject; var Key: Char);
    procedure combo_pessoaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure ecodconvenioKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure Regies2Click(Sender: TObject);
    procedure Vendedor1Click(Sender: TObject);
    procedure Convnio1Click(Sender: TObject);
    procedure ECIVILKeyPress(Sender: TObject; var Key: Char);
    procedure ECONJUGEKeyPress(Sender: TObject; var Key: Char);
    procedure bcadClick(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure combo_sexoKeyPress(Sender: TObject; var Key: Char);
    procedure Histrico1Click(Sender: TObject);
    procedure DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure bibgeClick(Sender: TObject);
    procedure bcnaeClick(Sender: TObject);
    procedure dscliente2DataChange(Sender: TObject; Field: TField);
    procedure ecnaeExit(Sender: TObject);
    procedure ecnaeKeyPress(Sender: TObject; var Key: Char);
    procedure pg_rodapeChange(Sender: TObject);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit34KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboBox6Exit(Sender: TObject);
    procedure DBEdit34Exit(Sender: TObject);
    procedure DBEdit45KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit45Exit(Sender: TObject);
    procedure DBEdit37Exit(Sender: TObject);
    procedure DBDateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure EFILIACAOKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Exit(Sender: TObject);
    procedure ecodmunicipioKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit38Exit(Sender: TObject);
    procedure DBEdit38KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit42Exit(Sender: TObject);
    procedure combocondKeyPress(Sender: TObject; var Key: Char);
    procedure btn125Click(Sender: TObject);
    procedure btn101Click(Sender: TObject);
    procedure btn1987Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure W7ActiveLabel7Click(Sender: TObject);
    procedure W7ActiveLabel8Click(Sender: TObject);
    procedure W7ActiveLabel9Click(Sender: TObject);
    procedure W7ActiveLabel10Click(Sender: TObject);
    procedure W7ActiveLabel11Click(Sender: TObject);
    procedure cySpeedButton9Click(Sender: TObject);
    procedure cySpeedButton10Click(Sender: TObject);
    procedure cySpeedButton11Click(Sender: TObject);
    procedure cySpeedButton12Click(Sender: TObject);
    procedure cySpeedButton13Click(Sender: TObject);
    procedure cySpeedButton14Click(Sender: TObject);
    procedure cySpeedButton15Click(Sender: TObject);
    procedure cySpeedButton16Click(Sender: TObject);
    procedure cySpeedButton17Click(Sender: TObject);
    procedure cySpeedButton18Click(Sender: TObject);
    procedure cySpeedButton19Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn3Click(Sender: TObject);
    procedure sBitBtn4Click(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure sBitBtn6Click(Sender: TObject);
    procedure sBitBtn7Click(Sender: TObject);
    procedure sBitBtn8Click(Sender: TObject);
    procedure sBitBtn9Click(Sender: TObject);
    procedure sBitBtn10Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure bt00014ttdClick(Sender: TObject);
    procedure combo_pessoaExit(Sender: TObject);
    procedure btnButBuscarClick(Sender: TObject);
    procedure lblLabAtualizarCaptchaClick(Sender: TObject);
    procedure edtCaptchaKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure lblsituacaoCNPJChange(Sender: TObject);
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure EditSituacaoChange(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure bt_mostrar_tudoClick(Sender: TObject);
    procedure cad_tabfotoClick(Sender: TObject);
    procedure bt_info_completoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcliente: Tfrmcliente;
  comando: string;
  juro_carencia: integer;
  juro_taxa, juro_multa, total_original, total_juros: real;

  CONTINUA_INCLUSAO: BOOLEAN;

  CLI_PESSOA, CLI_CPF: string;
  FUpdating : Boolean;
  FModified : Boolean ;
    const
   sc_DragMove = $f012;
implementation

uses modulo, principal, loc_regiao, regiao, loc_funci,
  xloc_cliente, lista_cliente2, Math, loc_convenio,
  lista_servicos_periodicos, funcionario, convenio, xloc_convenio,
  cliente_inicio, xloc_cidade, webcam2, xloc_cnae;

{$R *.dfm}

procedure Tfrmcliente.FormActivate(Sender: TObject);
begin
   PageControl1.ActivePageIndex := 0;
end;

procedure Tfrmcliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcliente.FormShow(Sender: TObject);
begin

  total_juros := 0;
  total_original := 0;

  FRMMODULO.qrconfig.OPEN;
  juro_carencia := FRMMODULO.qrconfig.FieldByName('CONTASRECEBER_CARENCIA')
    .asinteger;
  juro_taxa := FRMMODULO.qrconfig.FieldByName
    ('CONTASRECEBER_TAXAJUROS').asfloat;
  juro_multa := FRMMODULO.qrconfig.FieldByName('CONTASRECEBER_multa').asfloat;

  FRMMODULO.qrregiao.close;
  FRMMODULO.qrregiao.sql.clear;
  FRMMODULO.qrregiao.sql.add('select * from c000005 order by regiao');
  FRMMODULO.qrregiao.OPEN;
  FRMMODULO.qrregiao.IndexFieldNames := 'regiao';

  FRMMODULO.qrfunci.close;
  FRMMODULO.qrfunci.sql.clear;
  FRMMODULO.qrfunci.sql.add
    ('select * from c000008 where upper(funcao) = ''VENDEDOR'' order by nome');
  FRMMODULO.qrfunci.OPEN;
  FRMMODULO.qrfunci.IndexFieldNames := 'nome';

  FRMMODULO.qrconvenio.close;
  FRMMODULO.qrconvenio.sql.clear;
  FRMMODULO.qrconvenio.sql.add('select * from c000071 order by nome');
  FRMMODULO.qrconvenio.OPEN;
  FRMMODULO.qrconvenio.IndexFieldNames := 'nome';

  pgravar.visible := false;
  pgravar.Align := alClient;

  FRMMODULO.qrcliente.close;
  FRMMODULO.qrcliente.sql.clear;
  FRMMODULO.qrcliente.sql.add('select * from c000007 order by nome');
  FRMMODULO.qrcliente.OPEN;
  FRMMODULO.qrcliente.first;

  if procura_sintegra = true then
  begin
    FRMMODULO.qrcliente.Locate('codigo', parametro_pesquisa,
      [loCaseInsensitive]);
  end;

  procura_sintegra := false;

  OpenPictureDialog1.InitialDir := caminho_fotos_clientes;

  pficha.Enabled := false;
  // pficha1.enabled := false;
  pficha2.Enabled := false;
  pficha3.Enabled := false;
  pficha4.Enabled := false;
  pInfAdic.Enabled := false;
  Panel1.Enabled := false;
  // bincluir.SetFocus;

  if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 1 then
    wwDBComboBox1.Text := 'CADASTRO APROVADO';
  if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 2 then
    wwDBComboBox1.Text := 'CADASTRO EM OBSERVAÇÃO';
  if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 3 then
    wwDBComboBox1.Text := 'CADASTRO BLOQUEADO';
  if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 4 then
    wwDBComboBox1.Text := 'INATIVO';
  if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 5 then
    wwDBComboBox1.Text := 'SPC';

  if FRMMODULO.qrcliente.FieldByName('TIPO').asinteger = 2 then
    combo_pessoa.ItemIndex := 1
  else
    combo_pessoa.ItemIndex := 0;

end;

procedure Tfrmcliente.enomeEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcliente.enomeExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmcliente.bincluirClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  PageView1.ActivePageIndex := 0;
  pg_rodape.ActivePageIndex := 0;

  CONTINUA_INCLUSAO := false;
  CLI_PESSOA := 'FÍSICA';
  CLI_CPF := '';
  FRMMODULO.qrconfig.OPEN;
  if FRMMODULO.qrconfig.FieldByName('CLIENTE_PEDE_CPF').asstring <> '0' then
  begin
    FRMCLIENTE_INICIO := TFRMCLIENTE_INICIO.CREATE(SELF);
    FRMCLIENTE_INICIO.SHOWMODAL;
  end
  else
    CONTINUA_INCLUSAO := true;

  if CONTINUA_INCLUSAO then
  begin
    pcad.Enabled := true;
    pcad.caption := 'Informações Cadastrais';
    bcad.visible := false;

    FRMMODULO.qrcliente.insert;
    FRMMODULO.qrcliente.FieldByName('codigo').asstring :=
      frmprincipal.codifica('000007');
    FRMMODULO.qrcliente.FieldByName('codusuario').asstring := codigo_usuario;
    wwDBComboBox1.ItemIndex := 0;
    pficha.Enabled := true;
    // pficha1.enabled := true;
    pficha2.Enabled := true;
    pficha3.Enabled := true;
    pficha4.Enabled := true;
    Panel1.Enabled := true;
    pInfAdic.Enabled := true;
    pgravar.visible := true;
    edata_cadastro.Date := Date;

    FRMMODULO.qrcliente.FieldByName('cpf').asstring := CLI_CPF;

    if CLI_PESSOA = 'FÍSICA' then
    begin
      combo_pessoa.SetFocus;
      combo_pessoa.ItemIndex := 0;
      LAPELIDO.caption := 'Apelido:';
      ltelefone1.caption := 'Residencial';
      ltelefone2.caption := 'Comercial:';
      LRG.caption := 'RG:';
      LCPF.caption := 'CPF';
      rrg.visible := true;
      lnascimento.caption := 'Nascimento:';

      LFILIACAO.visible := true;
      EFILIACAO.visible := true;
      lestadocivil.visible := true;
      ECIVIL.visible := true;
      lconjuge.visible := true;
      ECONJUGE.visible := true;

      lprofissao.caption := 'Profissão:';
      lempresa.caption := 'Empresa:';
      lrenda.visible := true;
      ERENDA.visible := true;
      // ecnae.Enabled := false;
      bcnae.Enabled := false;
    end
    else
    begin
      combo_pessoa.SetFocus;
      combo_pessoa.ItemIndex := 1;

      LAPELIDO.caption := 'Fantasia:';
      ltelefone1.caption := 'Telefone 01:';
      ltelefone2.caption := 'Telefone 02:';
      LRG.caption := 'IE:';
      LCPF.caption := 'CNPJ:';
      rrg.visible := false;
      lnascimento.caption := 'Fundação:';

      LFILIACAO.Enabled := false;
      EFILIACAO.Enabled := false;
      lestadocivil.Enabled := false;
      ECIVIL.Enabled := false;
      lconjuge.Enabled := false;
      ECONJUGE.Enabled := false;
      Label23.Enabled := false;
      DBDateEdit1.Enabled := false;
      lconvenio.Enabled := false;

      lprofissao.caption := 'Ramo:';
      lempresa.caption := 'Titular:';
      lrenda.Enabled := false;
      ERENDA.Enabled := false;
      ecnae.Enabled := true;
      bcnae.Enabled := true;

      lsexo.Enabled := false;
      combo_sexo.Enabled := false;

    end;
    PopupMenu := Pop2;
  end;

end;

procedure Tfrmcliente.AdvGlowButton2Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmcliente.AdvGlowButton3Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmcliente.AdvGlowButton4Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmcliente.AdvGlowButton5Click(Sender: TObject);
begin
PageView1.ActivePageIndex := 3;
end;

procedure Tfrmcliente.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcliente.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcliente.balterarClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  CONTINUA_INCLUSAO := false;
  if DBEdit1.Text <> '' then
  begin

    FRMMODULO.qrcliente.Edit;

    if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 1 then
      wwDBComboBox1.Text := 'CADASTRO APROVADO';
    if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 2 then
      wwDBComboBox1.Text := 'CADASTRO EM OBSERVAÇÃO';
    if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 3 then
      wwDBComboBox1.Text := 'CADASTRO BLOQUEADO';
    if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 4 then
      wwDBComboBox1.Text := 'INATIVO';
    if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 5 then
      wwDBComboBox1.Text := 'SPC';

    pcad.Enabled := true;
    pcad.caption := '          Informações Cadastrais';
    bcad.visible := true;

    pficha.Enabled := true;
    // pficha1.enabled := true;
    pficha2.Enabled := true;
    pficha3.Enabled := true;
    pficha4.Enabled := true;
    pInfAdic.Enabled := true;
    GroupBox1.Enabled := true;

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

procedure Tfrmcliente.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir cliente', 4) then
  begin

    qrduplo.close;
    qrduplo.sql.clear;
    qrduplo.sql.add('select * from c000049 where codcliente = ''' +
      FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''');
    qrduplo.OPEN;
    if qrduplo.recordcount > 0 then
    begin
      application.messagebox
        ('Este cliente possue movimento de parcelas (contas a receber/recebidas) em seu nome! Impossível excluir!',
        'Erro', mb_ok + mb_iconerror);
      exit;
    end
    else
    begin

      qrduplo.close;
      qrduplo.sql.clear;
      qrduplo.sql.add('select * from c000048 where codcliente = ''' +
        FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''');
      qrduplo.OPEN;
      if qrduplo.recordcount > 0 then
      begin
        application.messagebox
          ('Este cliente possue movimento de vendas em seu nome! Impossível excluir!',
          'Erro', mb_ok + mb_iconerror);
        exit;
      end
      else
      begin
        frmprincipal.log(codigo_usuario, 'CLIENTE',
          FRMMODULO.qrcliente.FieldByName('codigo').asstring, 'EXCLUIU',
          FRMMODULO.qrcliente.FieldByName('NOME').asstring);

      end;

    end;
    frmprincipal.logUC('Excluiu Cliente - ' + DBEdit2.Text, 3);
    FRMMODULO.qrcliente.Delete;
    FRMMODULO.Conexao.commit;
    PageView1Change(frmcliente);

  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmcliente.blocalizarClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cliente := tfrmxloc_cliente.CREATE(SELF);
  frmxloc_cliente.bitbtn1.Enabled := false;
  frmxloc_cliente.SHOWMODAL;
  if resultado_pesquisa1 <> '' then
  begin
    FRMMODULO.qrcliente.Locate('codigo', resultado_pesquisa1,
      [loCaseInsensitive]);
    if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 1 then
      wwDBComboBox1.Text := 'CADASTRO APROVADO';
    if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 2 then
      wwDBComboBox1.Text := 'CADASTRO EM OBSERVAÇÃO';
    if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 3 then
      wwDBComboBox1.Text := 'CADASTRO BLOQUEADO';
    if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 4 then
      wwDBComboBox1.Text := 'INATIVO';
    if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 5 then
      wwDBComboBox1.Text := 'SPC';

    PageView1Change(frmcliente);
  end;
end;

procedure Tfrmcliente.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcliente.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin
  PageControl1.ActivePageIndex := 0;
  if euf.Text = '' then
  begin
    application.messagebox('Favor informar um Estado válido para este cliente!',
      'Atenção', mb_ok + mb_iconerror);
    euf.SetFocus;
    exit;
  end;

  if DBEdit2.Text = '' then
  begin
    application.messagebox('Favor informar um nome válido para este cliente!',
      'Atenção', mb_ok + mb_iconerror);
    DBEdit2.SetFocus;
    exit;
  end;

  bgravar.SetFocus;

  pg_rodape.ActivePageIndex := 0;
  PageView1.ActivePageIndex := 0;

  if wwDBComboBox1.ItemIndex = 0 then
  begin
    wwDBComboBox1.Color := $00C6FFC6;
    wwDBComboBox1.Font.Color := clBLACK;
  end;
  if wwDBComboBox1.ItemIndex = 2 then
  begin
    wwDBComboBox1.Color := $00AAAAFF;
    wwDBComboBox1.Font.Color := clBLACK;
  end;
  if wwDBComboBox1.ItemIndex = 1 then
  begin
    wwDBComboBox1.Color := clSkyBlue;
    wwDBComboBox1.Font.Color := clBLACK;
  end;
  if wwDBComboBox1.ItemIndex = 3 then
  begin
    wwDBComboBox1.Color := $00FF9BCD;
    wwDBComboBox1.Font.Color := clBLACK;
  end;
  if wwDBComboBox1.ItemIndex = 4 then
  begin
    wwDBComboBox1.Color := $00D2D2FF;
    wwDBComboBox1.Font.Color := clBLACK;
  end;

  if (FRMMODULO.qrcliente.State = dsinsert) then
  begin
    FRMMODULO.qrcliente.FieldByName('TIPO').asinteger :=
      combo_pessoa.ItemIndex + 1;
    FRMMODULO.qrcliente.FieldByName('nascimento').asstring := DateEdit1.Text;
    FRMMODULO.qrcliente.FieldByName('SITUACAO').asinteger :=
      wwDBComboBox1.ItemIndex + 1;
    frmprincipal.logUC('Incluiu Cliente - ' + DBEdit2.Text, 1);
    FRMMODULO.qrcliente.post;
  end;

  if (FRMMODULO.qrcliente.State = dsedit) then
  begin
    FRMMODULO.qrcliente.FieldByName('TIPO').asinteger :=
      combo_pessoa.ItemIndex + 1;
    FRMMODULO.qrcliente.FieldByName('nascimento').asstring := DateEdit1.Text;
    FRMMODULO.qrcliente.FieldByName('SITUACAO').asinteger :=
      wwDBComboBox1.ItemIndex + 1;
    frmprincipal.logUC('Alterou Cliente - ' + DBEdit2.Text, 2);
    FRMMODULO.qrcliente.post;
  end;

  if CONTINUA_INCLUSAO then
    frmprincipal.agenda('1', 'CLIENTE', DBEdit2.Text, DBEdit10.Text,
      DBEdit11.Text, '', DBEdit12.Text, DBEdit13.Text, '', '', '1');
  frmprincipal.log(codigo_usuario, 'CLIENTE',
    FRMMODULO.qrcliente.FieldByName('codigo').asstring, 'INCLUIU',
    FRMMODULO.qrcliente.FieldByName('NOME').asstring);
  // else if (frmmodulo.qrcliente.State = dsedit) then
  // frmprincipal.agenda('2','CLIENTE',DBEdit2.Text,DBEdit10.Text,DBEdit11.Text,'',DBEdit12.Text,DBEdit13.Text,'','','1');

  FRMMODULO.Conexao.commit;
  pficha.Enabled := false;
  // pficha1.enabled := false;
  pficha2.Enabled := false;
  pficha3.Enabled := false;
  pficha4.Enabled := false;
  Panel1.Enabled := false;
  pInfAdic.Enabled := false;
  pgravar.visible := false;
  GroupBox1.Enabled := false;
  PopupMenu := Pop1;
  bincluir.SetFocus;

  if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 1 then
    wwDBComboBox1.Text := 'CADASTRO APROVADO';
  if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 2 then
    wwDBComboBox1.Text := 'CADASTRO EM OBSERVAÇÃO';
  if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 3 then
    wwDBComboBox1.Text := 'CADASTRO BLOQUEADO';
  if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 4 then
    wwDBComboBox1.Text := 'INATIVO';
  if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 5 then
    wwDBComboBox1.Text := 'SPC';

  pcad.Enabled := false;
  pcad.caption := '          Informações Cadastrais';
  bcad.visible := true;

end;

procedure Tfrmcliente.bcancelarClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  if (FRMMODULO.qrcliente.State = dsinsert) or
    (FRMMODULO.qrcliente.State = dsedit) then
  begin
    PageView1.ActivePageIndex := 0;
    pg_rodape.ActivePageIndex := 0;
    if (FRMMODULO.qrcliente.State = dsinsert) then
    begin
      // frmprincipal.transMestre.active := true;
      frmprincipal.qrmestre.close;
      frmprincipal.qrmestre.sql.clear;
      frmprincipal.qrmestre.sql.add
        ('update c000000 set sequencia = sequencia - 1 where codigo = ''000007''');
      frmprincipal.qrmestre.execsql;
      // frmprincipal.transMestre.commit;
    end;

    FRMMODULO.qrcliente.cancel;
  end;

  if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 1 then
    wwDBComboBox1.Text := 'CADASTRO APROVADO';
  if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 2 then
    wwDBComboBox1.Text := 'CADASTRO EM OBSERVAÇÃO';
  if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 3 then
    wwDBComboBox1.Text := 'CADASTRO BLOQUEADO';
  if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 4 then
    wwDBComboBox1.Text := 'INATIVO';
  if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 5 then
    wwDBComboBox1.Text := 'SPC';

  pficha.Enabled := false;
  // pficha1.enabled := false;
  pficha2.Enabled := false;
  pficha3.Enabled := false;
  pficha4.Enabled := false;
  Panel1.Enabled := false;
  pInfAdic.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
  bincluir.SetFocus;
  comando := '';

  pcad.Enabled := false;
  pcad.caption := '          Informações Cadastrais';
  bcad.visible := true;

end;

procedure Tfrmcliente.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcliente.etipoExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmcliente.edata_cadastroEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
  if FRMMODULO.qrcliente.State = dsinsert then
    edata_cadastro.Date := Date;
end;

procedure Tfrmcliente.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmcliente.DBEdit1Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcliente.DBEdit1Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmcliente.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PERFORM(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure Tfrmcliente.RLIMITEKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DateEdit1.SetFocus;
end;

procedure Tfrmcliente.sBitBtn10Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  pg_rodape.ActivePageIndex := 3;
end;

procedure Tfrmcliente.sBitBtn1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  pg_rodape.ActivePageIndex := 0;
end;

procedure Tfrmcliente.sBitBtn2Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmcliente.sBitBtn3Click(Sender: TObject);
begin
PageView1.ActivePageIndex := 3;
end;

procedure Tfrmcliente.sBitBtn4Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 4;
end;

procedure Tfrmcliente.sBitBtn5Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 5;
end;

procedure Tfrmcliente.sBitBtn6Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 6;
end;

procedure Tfrmcliente.sBitBtn7Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  pg_rodape.ActivePageIndex := 0;
end;

procedure Tfrmcliente.sBitBtn8Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  pg_rodape.ActivePageIndex := 1;
end;

procedure Tfrmcliente.sBitBtn9Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  pg_rodape.ActivePageIndex := 2;
end;

procedure Tfrmcliente.DBEdit27Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmcliente.DBEdit28Exit(Sender: TObject);
begin

  TEdit(Sender).Color := clwindow;
  if (FRMMODULO.qrcliente.State = dsinsert) or
    (FRMMODULO.qrcliente.State = dsedit) then
  begin
    FRMMODULO.qrcliente.FieldByName('codregiao').asstring :=
      frmprincipal.zerarcodigo(dbedit28.Text, 6);
    if dbedit28.Text <> '000000' then
      if not frmprincipal.Locregistro(FRMMODULO.qrregiao, dbedit28.Text,
        'codigo') then
        dbedit28ButtonClick(frmcliente)
      else
        dbedit29.SetFocus
    else
      dbedit28ButtonClick(frmcliente);
  end;

end;

procedure Tfrmcliente.DBEdit29Exit(Sender: TObject);
begin

  TEdit(Sender).Color := clwindow;
  if (FRMMODULO.qrcliente.State = dsinsert) or
    (FRMMODULO.qrcliente.State = dsedit) then
  begin
    FRMMODULO.qrcliente.FieldByName('codvendedor').asstring :=
      frmprincipal.zerarcodigo(dbedit29.Text, 6);
    if dbedit29.Text <> '000000' then
    begin
      if not frmprincipal.Locregistro(FRMMODULO.qrfunci, dbedit29.Text, 'codigo')
      then
        dbedit29ButtonClick(frmcliente)
      else
      begin
        if pcad.Enabled then
          // RLIMITE.setfocus
        else
          DBDateEdit1.SetFocus;
      end;
    end
    else
      dbedit29ButtonClick(frmcliente);
  end;

end;

procedure Tfrmcliente.DBEdit15Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if DBEdit15.Text <> '' then
  begin
    if (FRMMODULO.qrcliente.State = dsinsert) or
      (FRMMODULO.qrcliente.State = dsedit) then
    begin
      if combo_pessoa.ItemIndex = 0 then
      begin
        frmprincipal.CheckCPF1.documento := DBEdit15.Text;
        if frmprincipal.CheckCPF1.validar then
        begin
          if pos('-', DBEdit15.Text) = 0 then
            FRMMODULO.qrcliente.FieldByName('cpf').asstring :=
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
        // if Length(frmprincipal.somenteNumero(dbedit15.Text)) > 11 then
        begin
          if frmprincipal.TestaCnpj(DBEdit15.Text) then
          begin
            if pos('/', DBEdit15.Text) = 0 then
              FRMMODULO.qrcliente.FieldByName('cpf').asstring :=
                FormatMaskText('99.999.999/9999-99;0;_', DBEdit15.Text);
          end
          else
          begin
            Showmessage('CNPJ Inválido!');
            DBEdit15.SetFocus;
            exit;
          end;
        end;
        {
          else
          begin
          frmprincipal.CheckCPF1.Cpf := dbedit15.text;
          if frmprincipal.CheckCPF1.Valido then
          begin
          if pos('-',dbedit15.text) = 0 then
          frmmodulo.qrcliente.fieldbyname('cpf').asstring := FormatMaskText('999.999.999-99;0;_',dbedit15.text);
          end
          else
          begin
          Showmessage('CPF Inválido!');
          dbedit15.SetFocus;
          exit;
          end;
          end;
        }
      end;

      if DBEdit15.Text <> '' then
      begin

        if (FRMMODULO.qrcliente.State = dsinsert) then
        begin
          query1.close;
          query1.sql.clear;
          query1.sql.add('select * from c000007 where cpf = ''' +
            DBEdit15.Text + '''');
          query1.OPEN;
          if query1.recordcount > 0 then
          begin
            if application.messagebox
              ('Existe um cliente cadastrado com este CPF/CNPJ! Deseja cancelar esta ficha de cadastro e ir até a ficha deste cliente?',
              'Atenção', mb_yesno + mb_iconquestion + MB_DEFBUTTON2) = idyes
            then
            begin
              FRMMODULO.qrcliente.cancel;
              FRMMODULO.qrcliente.Locate('codigo', query1.FieldByName('codigo')
                .asstring, [loCaseInsensitive]);
              FRMMODULO.qrcliente.Edit;
            end
            else
            begin
              FRMMODULO.qrcliente.FieldByName('cpf').asstring := '';
              DBEdit15.SetFocus;
            end;
            exit;
          end;
        end;
      end;
    end;
  end;

end;

procedure Tfrmcliente.DBEdit8Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if DBEdit8.Text <> '' then
  begin
    if (FRMMODULO.qrcliente.State = dsinsert) or
      (FRMMODULO.qrcliente.State = dsedit) then
    begin
      if pos('-', DBEdit8.Text) = 0 then
        FRMMODULO.qrcliente.FieldByName('cEP').asstring :=
          FormatMaskText('99999-999;0;_', DBEdit8.Text);

    end;
  end;

end;

procedure Tfrmcliente.DateEdit1Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmcliente.DBEdit4Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmcliente.Edit1Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
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

procedure Tfrmcliente.EditSituacaoChange(Sender: TObject);
begin
//PNLcpf.Visible := False;
end;

procedure Tfrmcliente.lblsituacaoCNPJChange(Sender: TObject);
begin
  //
       pnlPnlCNPJ.Visible := False;

end;

procedure Tfrmcliente.edtCaptchaKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
    btnButBuscarClick(btnButBuscar);
end;

procedure Tfrmcliente.DBEdit1Change(Sender: TObject);
begin
  DateEdit1.Text := FRMMODULO.qrcliente.FieldByName('nascimento').asstring;
  wwDBComboBox1.ItemIndex := FRMMODULO.qrcliente.FieldByName('SITUACAO')
    .asinteger - 1;

  PageView1Change(frmcliente);
  if pg_rodape.ActivePageIndex = 0 then // FOTO
  begin
    if FRMMODULO.qrcliente.FieldByName('FOTO').asstring <> '' then
    begin
      Image2.Picture.LoadFromFile(FRMMODULO.qrcliente.FieldByName('FOTO')
        .asstring);
    end
    else
    begin
      Image2.Picture := nil;
    end;
  end;

  if FRMMODULO.qrcliente.State <> dsinsert then
  begin
    if FRMMODULO.qrcliente.State <> dsedit then
    begin

      try
        combo_pessoa.ItemIndex := FRMMODULO.qrcliente.FieldByName('TIPO')
          .asinteger - 1;
        if FRMMODULO.qrcliente.FieldByName('TIPO').asinteger = 2 then
        begin

          LAPELIDO.caption := 'Fantasia:';
          ltelefone1.caption := 'Telefone 01:';
          ltelefone2.caption := 'Telefone 02:';
          LRG.caption := 'IE:';
          LCPF.caption := 'CNPJ:';
          rrg.visible := false;
          lnascimento.caption := 'Fundação:';

          LFILIACAO.Enabled := false;
          EFILIACAO.Enabled := false;
          lestadocivil.Enabled := false;
          ECIVIL.Enabled := false;
          lconjuge.Enabled := false;
          ECONJUGE.Enabled := false;
          Label23.Enabled := false;
          DBDateEdit1.Enabled := false;
          lconvenio.Enabled := false;

          lprofissao.caption := 'Ramo:';
          lempresa.caption := 'Titular:';
          lrenda.Enabled := false;
          ERENDA.Enabled := false;

          lsexo.Enabled := false;
          combo_sexo.Enabled := false;

        end
        else
        begin
          LAPELIDO.caption := 'Apelido:';
          ltelefone1.caption := 'Residencial';
          ltelefone2.caption := 'Comercial:';
          LRG.caption := 'RG:';
          LCPF.caption := 'CPF';
          rrg.visible := true;
          lnascimento.caption := 'Nascimento:';

          LFILIACAO.Enabled := true;
          EFILIACAO.Enabled := true;
          lestadocivil.Enabled := true;
          ECIVIL.Enabled := true;
          lconjuge.Enabled := true;
          ECONJUGE.Enabled := true;
          Label23.Enabled := true;
          DBDateEdit1.Enabled := true;
          lconvenio.Enabled := true;

          lprofissao.caption := 'Profissão:';
          lempresa.caption := 'Empresa:';
          lrenda.Enabled := true;
          ERENDA.Enabled := true;

          lsexo.Enabled := true;
          combo_sexo.Enabled := true;
        end;
      except
      end;
    end;
  end;
end;

procedure Tfrmcliente.brelatoriosClick(Sender: TObject);
begin
  frmlista_cliente2 := tfrmlista_cliente2.CREATE(SELF);
  frmlista_cliente2.SHOWMODAL;
end;

procedure Tfrmcliente.FichadeCadastro1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmcliente.Movimento1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmcliente.wwDBComboBox1Change(Sender: TObject);
begin
  wwDBComboBox1.Color := clwindow;
  wwDBComboBox1.Font.Color := clBLACK;
  if wwDBComboBox1.ItemIndex = 0 then
  begin
    wwDBComboBox1.Color := $00C6FFC6;
    wwDBComboBox1.Font.Color := clBLACK;
  end;
  if wwDBComboBox1.ItemIndex = 2 then
  begin
    wwDBComboBox1.Color := $00AAAAFF;
    wwDBComboBox1.Font.Color := clBLACK;
  end;
  if wwDBComboBox1.ItemIndex = 1 then
  begin
    wwDBComboBox1.Color := clSkyBlue;
    wwDBComboBox1.Font.Color := clBLACK;
  end;
  if wwDBComboBox1.ItemIndex = 3 then
  begin
    wwDBComboBox1.Color := $00FF9BCD;
    wwDBComboBox1.Font.Color := clBLACK;
  end;
  if wwDBComboBox1.ItemIndex = 4 then
  begin
    wwDBComboBox1.Color := $00D2D2FF;
    wwDBComboBox1.Font.Color := clBLACK;
  end;

end;

procedure Tfrmcliente.wwDBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcliente.wwDBComboBox1Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
  TEdit(Sender).Font.Color := clBLACK;
end;

procedure Tfrmcliente.PageView1Change(Sender: TObject);
var
  mes01, mes02, mes03, mes04, mes05, mes06, mes07, mes08, mes09, mes10, mes11,
    mes12: string;
begin

  if PageView1.ActivePageIndex = 0 then
  begin
    if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 1 then
      wwDBComboBox1.Text := 'CADASTRO APROVADO';
    if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 2 then
      wwDBComboBox1.Text := 'CADASTRO EM OBSERVAÇÃO';
    if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 3 then
      wwDBComboBox1.Text := 'CADASTRO BLOQUEADO';
    if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 4 then
      wwDBComboBox1.Text := 'INATIVO';
    if FRMMODULO.qrcliente.FieldByName('situacao').asinteger = 5 then
      wwDBComboBox1.Text := 'SPC';

  end;

  if PageView1.ActivePageIndex = 1 then
  begin
    QUERY.close;
    QUERY.sql.clear;
    QUERY.sql.add
      ('select SUM(TOTAL) TOTAL_GERAL from c000048 where codcliente = ''' +
      FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''');
    QUERY.OPEN;
    LTOTAL.caption := FORMATFLOAT('###,###,##0.00',
      QUERY.FieldByName('TOTAL_GERAL').asfloat);

    qrvenda.close;
    qrvenda.sql.clear;
    qrvenda.sql.add('select * from c000048 where codcliente = ''' +
      FRMMODULO.qrcliente.FieldByName('codigo').asstring +
      ''' order by data, codigo');
    qrvenda.OPEN;

    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select * from c000032 where codcliente = ''' +
      FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''');
    qrproduto.OPEN;

    GroupBox3.caption := 'PRODUTOS COMPRADOS [TODAS AS NOTAS]';

    qrcontasreceber.close;
    qrcontasreceber.sql.clear;
    qrcontasreceber.sql.add('select * from c000049 where codcliente =''' +
      FRMMODULO.qrcliente.FieldByName('codigo').asstring +
      ''' and situacao = 1 order by data_vencimento, codigo');
    qrcontasreceber.OPEN;

    qrcontasreceberpg.close;
    qrcontasreceberpg.sql.clear;
    qrcontasreceberpg.sql.add('select * from c000049 where codcliente =''' +
      FRMMODULO.qrcliente.FieldByName('codigo').asstring +
      ''' and situacao = 2 order by data_vencimento, codigo');
    qrcontasreceberpg.OPEN;

    rtotal_pago.value := 0;

    rvalor.value := 0;
    rjuro.value := 0;
    rtotal.value := 0;
    while not qrcontasreceber.eof do
    begin
      rvalor.value := rvalor.value + qrcontasreceber.FieldByName
        ('VALOR_ATUAL').asfloat;
      rjuro.value := rjuro.value + qrcontasreceber.FieldByName('JUROS').asfloat;
      rtotal.value := rtotal.value + qrcontasreceber.FieldByName
        ('RESTANTE').asfloat;
      qrcontasreceber.next;
    end;
    while not qrcontasreceberpg.eof do
    begin
      rtotal_pago.value := rtotal_pago.value + qrcontasreceberpg.FieldByName
        ('valor_pago').asfloat;
      qrcontasreceberpg.next;
    end;

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
    // correcao mysql
    if FRMMODULO.tipo_conexao = 'MySQL' then
    begin
      // ShowMessage('MySQL');
      qrvenda_mes.close;
      qrvenda_mes.sql.clear;
      qrvenda_mes.sql.add('select sum(total) as sum_0, ' +
        '(select sum(total) as total from c000048 where data >= :data11 and data < :data10 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) as total from c000048 where data >= :data10 and data < :data09 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) as total from c000048 where data >= :data09 and data < :data08 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) as total from c000048 where data >= :data08 and data < :data07 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) as total from c000048 where data >= :data07 and data < :data06 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) as total from c000048 where data >= :data06 and data < :data05 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) as total from c000048 where data >= :data05 and data < :data04 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) as total from c000048 where data >= :data04 and data < :data03 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) as total from c000048 where data >= :data03 and data < :data02 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) as total from c000048 where data >= :data02 and data < :data01 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) as total from c000048 where data >= :data01 and data < :data00 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + ''') ' +
        'from c000048 where data >= :data12 and data < :data11 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''');
    end
    else
    begin
      qrvenda_mes.close;
      qrvenda_mes.sql.clear;
      qrvenda_mes.sql.add('select sum(total) sum_0, ' +
        '(select sum(total) from c000048 where data >= :data11 and data < :data10 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) from c000048 where data >= :data10 and data < :data09 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) from c000048 where data >= :data09 and data < :data08 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) from c000048 where data >= :data08 and data < :data07 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) from c000048 where data >= :data07 and data < :data06 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) from c000048 where data >= :data06 and data < :data05 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) from c000048 where data >= :data05 and data < :data04 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) from c000048 where data >= :data04 and data < :data03 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) from c000048 where data >= :data03 and data < :data02 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) from c000048 where data >= :data02 and data < :data01 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''), ' +
        '(select sum(total) from c000048 where data >= :data01 and data < :data00 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + ''') ' +
        'from c000048 where data >= :data12 and data < :data11 and codcliente = '''
        + FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''');
    end;

    qrvenda_mes.Params.ParamByName('data00').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, 1)), 4, 7));
    qrvenda_mes.Params.ParamByName('data01').asdatetime :=
      strtodate('01/' + copy(datetostr(Date), 4, 7));
    qrvenda_mes.Params.ParamByName('data02').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -1)), 4, 7));
    qrvenda_mes.Params.ParamByName('data03').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -2)), 4, 7));
    qrvenda_mes.Params.ParamByName('data04').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -3)), 4, 7));
    qrvenda_mes.Params.ParamByName('data05').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -4)), 4, 7));
    qrvenda_mes.Params.ParamByName('data06').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -5)), 4, 7));
    qrvenda_mes.Params.ParamByName('data07').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -6)), 4, 7));
    qrvenda_mes.Params.ParamByName('data08').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -7)), 4, 7));
    qrvenda_mes.Params.ParamByName('data09').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -8)), 4, 7));
    qrvenda_mes.Params.ParamByName('data10').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -9)), 4, 7));
    qrvenda_mes.Params.ParamByName('data11').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -10)), 4, 7));
    qrvenda_mes.Params.ParamByName('data12').asdatetime :=
      strtodate('01/' + copy(datetostr(IncMonth(Date, -11)), 4, 7));

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
  end;

  if PageView1.ActivePageIndex = 2 then
  begin
    qrpessoas.close;
    qrpessoas.sql.clear;
    qrpessoas.sql.add('SELECT * FROM C000070 WHERE CODCLIENTE = ''' +
      FRMMODULO.qrcliente.FieldByName('CODIGO').asstring + ''' ORDER BY NOME');
    qrpessoas.OPEN;
  end;

  if PageView1.ActivePageIndex = 3 then
  begin
    FRMMODULO.qrservicos_periodicos.close;
    FRMMODULO.qrservicos_periodicos.sql.clear;
    FRMMODULO.qrservicos_periodicos.sql.add
      ('select * from servicos_periodicos');
    FRMMODULO.qrservicos_periodicos.sql.add('where codcliente = ''' +
      FRMMODULO.qrcliente.FieldByName('CODIGO').asstring + '''');
    FRMMODULO.qrservicos_periodicos.OPEN;
  end;

end;

procedure Tfrmcliente.wwDBGrid1DblClick(Sender: TObject);
begin
  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.sql.add('select * from c000032 where codnota = ''' +
    qrvenda.FieldByName('codigo').asstring + ''' and codcliente = ''' +
    FRMMODULO.qrcliente.FieldByName('codigo').asstring + '''');
  qrproduto.OPEN;

  GroupBox3.caption := 'PRODUTOS COMPRADOS [NOTA: ' +
    qrvenda.FieldByName('CODIGO').asstring + ']';

  qrcontasreceber.close;
  qrcontasreceber.sql.clear;
  qrcontasreceber.sql.add('select * from c000049 where codvenda = ''' +
    qrvenda.FieldByName('codigo').asstring + ''' and codcliente =''' +
    FRMMODULO.qrcliente.FieldByName('codigo').asstring +
    ''' and situacao = 1 order by data_vencimento, codigo');
  qrcontasreceber.OPEN;

  qrcontasreceberpg.close;
  qrcontasreceberpg.sql.clear;
  qrcontasreceberpg.sql.add('select * from c000049 where codcliente =''' +
    FRMMODULO.qrcliente.FieldByName('codigo').asstring +
    ''' and situacao = 2 order by data_vencimento, codigo');
  qrcontasreceberpg.OPEN;
  rtotal_pago.value := 0;

  rvalor.value := 0;
  rjuro.value := 0;
  rtotal.value := 0;
  while not qrcontasreceber.eof do
  begin
    rvalor.value := rvalor.value + qrcontasreceber.FieldByName
      ('VALOR_ATUAL').asfloat;
    rjuro.value := rjuro.value + qrcontasreceber.FieldByName('JUROS').asfloat;
    rtotal.value := rtotal.value + qrcontasreceber.FieldByName
      ('RESTANTE').asfloat;
    qrcontasreceber.next;
  end;
  while not qrcontasreceberpg.eof do
  begin
    rtotal_pago.value := rtotal_pago.value + qrcontasreceberpg.FieldByName
      ('valor_pago').asfloat;
    qrcontasreceberpg.next;
  end;

end;

procedure Tfrmcliente.qrcontasreceberCalcFields(DataSet: TDataSet);
var
  valor, juro, multa: real;
  dias: integer;
begin

  valor := qrcontasreceber.FieldByName('valor_ATUAL').asfloat;

  if qrcontasreceber.FieldByName('SITUACAO').asinteger = 2 then
    qrcontasreceber.FieldByName('SITUACAO2').asinteger := 2;
  if qrcontasreceber.FieldByName('SITUACAO').asinteger = 1 then
  begin
    if qrcontasreceber.FieldByName('DATA_VENCIMENTO').asdatetime = Date then
      qrcontasreceber.FieldByName('SITUACAO2').asinteger := 4;
    if qrcontasreceber.FieldByName('DATA_VENCIMENTO').asdatetime < Date then
      qrcontasreceber.FieldByName('SITUACAO2').asinteger := 3;
    if qrcontasreceber.FieldByName('DATA_VENCIMENTO').asdatetime > Date then
      qrcontasreceber.FieldByName('SITUACAO2').asinteger := 1;
  end;
  qrcontasreceber.FieldByName('restante').asfloat := 0;

  if qrcontasreceber.FieldByName('situacao').asinteger = 1 then
  begin
    if valor > 0 then
    begin
      if qrcontasreceber.FieldByName('data_pagamento').asfloat > 0 then
      // puxar pelo ultimo pagamento
      begin
        if qrcontasreceber.FieldByName('data_pagamento').asfloat >
          qrcontasreceber.FieldByName('data_vencimento').asdatetime then
          dias := trunc(Date - qrcontasreceber.FieldByName('data_pagamento')
            .asdatetime)
        else
          dias := trunc(Date - qrcontasreceber.FieldByName('data_vencimento')
            .asdatetime);
      end
      else
      begin // puxar pela data de vencimento
        dias := trunc(Date - qrcontasreceber.FieldByName('data_vencimento')
          .asdatetime);

        // soh cobrar a multa se nao tiver nenhum pagamento!
        if juro_multa > 0 then
        begin
          multa := (valor * (juro_multa / 100));
        end;
      end;

      if juro_taxa <> 0 then
      begin
        if (dias - juro_carencia) > 0 then
        begin
          juro := (valor * ((juro_taxa / 100) * (dias { - juro_carencia } )));
          valor := valor + juro + multa;
        end;
      end;
      qrcontasreceber.FieldByName('dias').asinteger := dias;
      if (dias - juro_carencia) > 0 then
      begin
        qrcontasreceber.FieldByName('dias').asinteger := dias;
        qrcontasreceber.FieldByName('restante').asfloat := valor;
        qrcontasreceber.FieldByName('juros').asfloat := juro + multa;
      end
      else
      begin
        qrcontasreceber.FieldByName('restante').asfloat :=
          qrcontasreceber.FieldByName('valor_atual').asfloat;
      end;

    end
    else
    begin
      qrcontasreceber.FieldByName('dias').asinteger := 0;
      qrcontasreceber.FieldByName('restante').asfloat := valor;
      qrcontasreceber.FieldByName('juros').asfloat := 0;
      qrcontasreceber.FieldByName('situacao2').asinteger := 5;

    end;
  end
  else
  begin
    qrcontasreceber.FieldByName('dias').asinteger := 0;
    qrcontasreceber.FieldByName('restante').asfloat := valor;
    qrcontasreceber.FieldByName('juros').asfloat := 0;
  end;

end;

procedure Tfrmcliente.wwDBGrid4DblClick(Sender: TObject);
begin
  if PageView2.ActivePageIndex = 0 then
  begin
    if qrcontasreceber.FieldByName('VALOR_PAGO').asfloat <> 0 then
    begin

      qrpgto.close;
      qrpgto.sql.clear;
      qrpgto.sql.add('select * from c000050 where CODCONTA = ''' +
        qrcontasreceber.FieldByName('codigo').asstring +
        ''' and codcliente = ''' + qrcontasreceber.FieldByName('codcliente')
        .asstring + ''' order by data');
      qrpgto.OPEN;
      Memo1.Text := '';
      qrpgto.first;
      while not qrpgto.eof do
      begin
        Memo1.lines.add(qrpgto.FieldByName('data').asstring + ' -->' +
          frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',
          qrpgto.FieldByName('valor_pago').asfloat), 12, ' ', 'E'));
        qrpgto.next;
      end;
      PPGTO.visible := true;
    end;
  end
  else
  begin
    qrpgto.close;
    qrpgto.sql.clear;
    qrpgto.sql.add('select * from c000050 where CODCONTA = ''' +
      qrcontasreceberpg.FieldByName('codigo').asstring +
      ''' and codcliente = ''' + qrcontasreceber.FieldByName('codcliente')
      .asstring + ''' order by data');
    qrpgto.OPEN;
    Memo1.Text := '';
    qrpgto.first;
    while not qrpgto.eof do
    begin
      Memo1.lines.add(qrpgto.FieldByName('data').asstring + ' -->' +
        frmprincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',
        qrpgto.FieldByName('valor_pago').asfloat), 12, ' ', 'E'));
      qrpgto.next;
    end;
    PPGTO.visible := true;

  end;

end;

procedure Tfrmcliente.SpeedButton1Click(Sender: TObject);
begin
  PPGTO.visible := false;
end;

procedure Tfrmcliente.Timer1Timer(Sender: TObject);
begin
Timer1.Enabled:= False;
  lblLabAtualizarCaptchaClick(lblLabAtualizarCaptcha);
  medtEditCNPJ.SetFocus;
end;

procedure Tfrmcliente.Timer2Timer(Sender: TObject);
begin
Timer2.Enabled := False;
  LabAtualizarCaptchaClick(LabAtualizarCaptcha);
  EditCaptcha.SetFocus;
end;

procedure Tfrmcliente.InformaesAdicionais1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmcliente.LabAtualizarCaptchaClick(Sender: TObject);
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

procedure Tfrmcliente.lblLabAtualizarCaptchaClick(Sender: TObject);
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

procedure Tfrmcliente.qrpessoasBeforePost(DataSet: TDataSet);
begin
  qrpessoas.FieldByName('CODCLIENTE').asstring :=
    FRMMODULO.qrcliente.FieldByName('CODIGO').asstring;
  qrpessoas.FieldByName('nome').asstring :=
    ansiuppercase(qrpessoas.FieldByName('nome').asstring);

end;

procedure Tfrmcliente.bt00014ttdClick(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmcliente.btExcluiPessoasautorizadasClick(Sender: TObject);
begin
  if application.messagebox('Tem certeza que deseja excluir este registro?',
    'Atenção', mb_yesno + MB_ICONWARNING) = idyes then
  begin
    qrpessoas.Delete;
    FRMMODULO.Conexao.commit;
  end;
end;

procedure Tfrmcliente.qrpessoasAfterPost(DataSet: TDataSet);
begin
  FRMMODULO.Conexao.commit;
end;

procedure Tfrmcliente.ECODCONVENIOExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if (FRMMODULO.qrcliente.State = dsinsert) or
    (FRMMODULO.qrcliente.State = dsedit) then
  begin
    FRMMODULO.qrcliente.FieldByName('codconvenio').asstring :=
      frmprincipal.zerarcodigo(ecodconvenio.Text, 6);
    if ecodconvenio.Text <> '000000' then
    begin
      if not frmprincipal.Locregistro(FRMMODULO.qrconvenio, ecodconvenio.Text,
        'codigo') then
        ecodconvenioButtonClick(frmcliente)
      else
      begin
        if ECIVIL.visible then
          ECIVIL.SetFocus;
      end;
    end
    else
      ecodconvenioButtonClick(frmcliente);
  end;
end;

procedure Tfrmcliente.FormCreate(Sender: TObject);
begin
  { FRMMODULO.QRCONFIG.OPEN;
    IF FRMMODULO.QRCONFIG.FIELDBYNAME('RAMO_ATIVIDADE').ASINTEGER = 4 THEN  // FARMACIA
    BEGIN
    LCONVENIO.Visible := TRUE;
    EFILIACAO.Width := 465;
    econjuge.Width := 273;
    END
    ELSE
    BEGIN
    LCONVENIO.Visible := FALSE;
    EFILIACAO.Width := 689;
    econjuge.Width := 497;
    END; }
  with FRMMODULO do
  begin
    qrcondpgto.close;
    qrcondpgto.OPEN;
    qrcondpgto.first;
    while not qrcondpgto.eof do
    begin
      combocond.Items.add(qrcondpgto.Fields.FieldByName('CONDPGTO').asstring);
      qrcondpgto.next;
    end;
    combocond.ItemIndex := 0;
  end;

end;

procedure Tfrmcliente.BitBtn8Click(Sender: TObject);
var
  tipo, campo, UF: PWideChar;
begin
  if FRMMODULO.qrcliente.FieldByName('uf').asstring = '' then
  begin
    Showmessage('Favor informar a UF!');
    exit;
  end;
  UF := PWideChar(FRMMODULO.qrcliente.FieldByName('uf').asstring);
  if FRMMODULO.qrcliente.FieldByName('CPF').asstring <> '' then
  begin
    if FRMMODULO.qrcliente.FieldByName('TIPO').asinteger = 2 then
      tipo := 'CNPJ'
    else
      tipo := 'CPF';

    campo := PWideChar(frmprincipal.somenteNumero
      (FRMMODULO.qrcliente.FieldByName('CPF').asstring));
  end
  else
  begin
    if FRMMODULO.qrcliente.FieldByName('RG').asstring <> '' then
    begin
      tipo := 'IE';
      campo := PWideChar(frmprincipal.somenteNumero
        (FRMMODULO.qrcliente.FieldByName('RG').asstring));
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

procedure Tfrmcliente.DBEdit2Exit(Sender: TObject);
var
  texto: PWideChar;
begin

  TEdit(Sender).Color := clwindow;
  if FRMMODULO.qrcliente.State in [dsinsert, dsedit] then
  begin
    qrduplo.close;
    qrduplo.sql.clear;
    qrduplo.sql.add('select * from c000007');
    qrduplo.sql.add('where upper(NOME) = ''' + ansiuppercase(DBEdit2.Text) +
      ''' and codigo <> ''' + DBEdit1.Text + '''');
    qrduplo.OPEN;
    if qrduplo.recordcount > 0 then
    begin
      texto := PWideChar('Existe um cliente cadastrado com este nome!' + #13 +
        qrduplo.FieldByName('codigo').asstring + ' - ' +
        qrduplo.FieldByName('nome').asstring + #13 + 'Endereço: ' +
        qrduplo.FieldByName('ENDERECO').asstring + '!' + #13 +
        'Deseja prosseguir?');
      if application.messagebox(texto, 'Atenção', mb_yesno + MB_ICONWARNING +
        MB_DEFBUTTON2) = idNO then
      begin
        bcancelarClick(frmcliente);
        exit;
      end;
    end;
  end;
end;

procedure Tfrmcliente.eufExit(Sender: TObject);
begin

  if frmprincipal.ChecaEstado(euf.Text) = false then
  begin
    Showmessage('Unidade de Federação Inválida...');
    euf.SetFocus;
    exit;
  end;

  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmcliente.eufEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;

end;

procedure Tfrmcliente.wwDBComboBox1Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;

end;

procedure Tfrmcliente.ServicosPeriodicos1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 4;
end;

procedure Tfrmcliente.btImprimirServicosClick(Sender: TObject);
begin
  frmlista_servicos_periodicos := Tfrmlista_servicos_periodicos.CREATE(SELF);
  frmlista_servicos_periodicos.SHOWMODAL;

end;

procedure Tfrmcliente.dbedit28ButtonClick(Sender: TObject);
begin
  frmloc_regiao := tfrmloc_regiao.CREATE(SELF);
  frmloc_regiao.SHOWMODAL;
  FRMMODULO.qrcliente.FieldByName('codregiao').asstring :=
    FRMMODULO.qrregiao.FieldByName('codigo').asstring;
  DBEdit10.SetFocus;
end;

procedure Tfrmcliente.dbedit29ButtonClick(Sender: TObject);
begin
  frmloc_funci := tfrmloc_funci.CREATE(SELF);
  frmloc_funci.SHOWMODAL;
  FRMMODULO.qrcliente.FieldByName('codvendedor').asstring :=
    FRMMODULO.qrfunci.FieldByName('codigo').asstring;

  DBDateEdit1.SetFocus
end;

procedure Tfrmcliente.ecodconvenioButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_convenio := tfrmxloc_convenio.CREATE(SELF);
  frmxloc_convenio.SHOWMODAL;
  if resultado_pesquisa1 <> '' then
  begin
    FRMMODULO.qrcliente.FieldByName('codconvenio').asstring :=
      resultado_pesquisa1;
  end;

  if ECIVIL.visible then
    ECIVIL.SetFocus
  else
    DBEdit20.SetFocus;
end;

procedure Tfrmcliente.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PageView1.ActivePageIndex := 0;
    DBEdit3.SetFocus;

  end;
end;

procedure Tfrmcliente.combo_pessoaChange(Sender: TObject);
begin

  if combo_pessoa.ItemIndex = 1 then
  begin

    LAPELIDO.caption := 'Fantasia:';
    ltelefone1.caption := 'Telefone 01:';
    ltelefone2.caption := 'Telefone 02:';
    LRG.caption := 'IE:';
    LCPF.caption := 'CNPJ:';
    rrg.visible := false;
    lnascimento.caption := 'Fundação:';

    LFILIACAO.Enabled := false;
    EFILIACAO.Enabled := false;
    lestadocivil.Enabled := false;
    ECIVIL.Enabled := false;
    lconjuge.Enabled := false;
    ECONJUGE.Enabled := false;
    Label23.Enabled := false;
    DBDateEdit1.Enabled := false;
    lconvenio.Enabled := false;

    lprofissao.caption := 'Ramo:';
    lempresa.caption := 'Titular:';
    lrenda.Enabled := false;
    ERENDA.Enabled := false;

    lsexo.Enabled := false;
    combo_sexo.Enabled := false;

  end
  else
  begin
    LAPELIDO.caption := 'Apelido:';
    ltelefone1.caption := 'Residencial';
    ltelefone2.caption := 'Comercial:';
    LRG.caption := 'RG:';
    LCPF.caption := 'CPF';
    rrg.visible := true;

    lnascimento.caption := 'Nascimento:';

    LFILIACAO.Enabled := true;
    EFILIACAO.Enabled := true;
    lestadocivil.Enabled := true;
    ECIVIL.Enabled := true;
    lconjuge.Enabled := true;
    ECONJUGE.Enabled := true;
    Label23.Enabled := true;
    DBDateEdit1.Enabled := true;
    lconvenio.Enabled := true;

    lprofissao.caption := 'Profissão:';
    lempresa.caption := 'Empresa:';
    lrenda.Enabled := true;
    ERENDA.Enabled := true;

    lsexo.Enabled := true;
    combo_sexo.Enabled := true;

  end;
end;

procedure Tfrmcliente.combo_pessoaExit(Sender: TObject);
begin
if combo_pessoa.Text = 'JURIDICA' then
 begin
     //  pnlPnlCNPJ.Visible := True;
      // Timer1.Enabled := True;
 end
 else
 begin
      //    PNLcpf.Visible := True;
      // Timer2.Enabled := True;
 end;

end;

procedure Tfrmcliente.dbedit29KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcliente.dbedit28KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcliente.combo_pessoaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBEdit2.SetFocus;
end;

procedure Tfrmcliente.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #8 then
    if Key = #13 then
      PERFORM(WM_NEXTDLGCTL, 0, 0)
    else if (Key in ['0' .. '9']) then
      //
    else
      abort;

  if ecnae.Enabled = false then
  begin
    pg_rodape.ActivePageIndex := 3;

    if rrg.visible = true then
      wwDBComboBox5.SetFocus
    else
      DBEdit18.SetFocus;
  end;
end;

procedure Tfrmcliente.ecodconvenioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcliente.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    pg_rodape.ActivePageIndex := 2;
    ecodmunicipio.SetFocus;
  end;
end;

procedure Tfrmcliente.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if pgravar.visible then
      bgravar.SetFocus;
  end;
end;

procedure Tfrmcliente.Regies2Click(Sender: TObject);
begin
  frmregiao := tfrmregiao.CREATE(SELF);
  frmregiao.SHOWMODAL;
  FRMMODULO.qrregiao.refresh;
end;

procedure Tfrmcliente.Vendedor1Click(Sender: TObject);
begin
  frmfuncionario := tfrmfuncionario.CREATE(SELF);
  frmfuncionario.SHOWMODAL;
end;

procedure Tfrmcliente.W7ActiveLabel10Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  pg_rodape.ActivePageIndex := 2;
end;

procedure Tfrmcliente.W7ActiveLabel11Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  pg_rodape.ActivePageIndex := 3;
end;

procedure Tfrmcliente.W7ActiveLabel7Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 6;
end;

procedure Tfrmcliente.W7ActiveLabel8Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  pg_rodape.ActivePageIndex := 0;
end;

procedure Tfrmcliente.W7ActiveLabel9Click(Sender: TObject);
begin
    PageView1.ActivePageIndex := 0;
  pg_rodape.ActivePageIndex := 1;
end;

procedure Tfrmcliente.Convnio1Click(Sender: TObject);
begin
  frmconvenio := tfrmconvenio.CREATE(SELF);
  frmconvenio.SHOWMODAL;
end;

procedure Tfrmcliente.cySpeedButton10Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmcliente.cySpeedButton11Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmcliente.cySpeedButton12Click(Sender: TObject);
begin
PageView1.ActivePageIndex := 3;
end;

procedure Tfrmcliente.cySpeedButton13Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 4;
end;

procedure Tfrmcliente.cySpeedButton14Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 5;
end;

procedure Tfrmcliente.cySpeedButton15Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 6;
end;

procedure Tfrmcliente.cySpeedButton16Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  pg_rodape.ActivePageIndex := 0;

end;

procedure Tfrmcliente.cySpeedButton17Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  pg_rodape.ActivePageIndex := 1;

end;

procedure Tfrmcliente.cySpeedButton18Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  pg_rodape.ActivePageIndex := 2;
end;

procedure Tfrmcliente.cySpeedButton19Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  pg_rodape.ActivePageIndex := 3;
end;

procedure Tfrmcliente.cySpeedButton9Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmcliente.ECIVILKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ECONJUGE.SetFocus;
end;

procedure Tfrmcliente.ECONJUGEKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcliente.bcadClick(Sender: TObject);
begin
  if frmprincipal.autentica('Alterar Cadastro', 4) then
  begin
    pcad.Enabled := true;
    bcad.visible := false;
    pcad.caption := 'Informações Cadastrais';
    wwDBComboBox1.SetFocus;
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmcliente.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #8 then
    if Key = #13 then
      PERFORM(WM_NEXTDLGCTL, 0, 0)
    else if (Key in ['0' .. '9']) then
      //
    else
      abort;

end;

procedure Tfrmcliente.combo_sexoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcliente.Histrico1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 5;
end;

procedure Tfrmcliente.DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcliente.DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    combocond.SetFocus;
  end;
end;

procedure Tfrmcliente.bibgeClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cidade := tfrmxloc_cidade.CREATE(SELF);
  frmxloc_cidade.SHOWMODAL;

  FRMMODULO.qrcliente.FieldByName('COD_MUNICIPIO_IBGE').asstring :=
    resultado_pesquisa6;
  FRMMODULO.qrcliente.FieldByName('IBGE').asstring := resultado_pesquisa5;
  FRMMODULO.qrcliente.FieldByName('CIDADE').asstring := resultado_pesquisa2;
  FRMMODULO.qrcliente.FieldByName('UF').asstring := resultado_pesquisa3;
  DBEdit8.SetFocus;
end;

procedure Tfrmcliente.bcnaeClick(Sender: TObject);
begin

  parametro_pesquisa := '';
  frmxloc_cnae := tfrmxloc_cnae.CREATE(SELF);
  frmxloc_cnae.SHOWMODAL;

  FRMMODULO.qrcliente.FieldByName('CNAE').asstring := resultado_pesquisa2;

end;

procedure Tfrmcliente.dscliente2DataChange(Sender: TObject; Field: TField);
begin

  if FRMMODULO.qrcliente.State = dsBrowse then
  begin
    if FRMMODULO.qrcliente.FieldByName('TIPO').asinteger = 2 then
      combo_pessoa.ItemIndex := 1
    else
      combo_pessoa.ItemIndex := 0;
  end;
end;

procedure Tfrmcliente.ecnaeExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if (FRMMODULO.qrcliente.State = dsinsert) or
    (FRMMODULO.qrcliente.State = dsedit) then
  begin
    if ecnae.Text = '' then
      bcnae.OnClick(frmcliente);
  end;
end;

procedure Tfrmcliente.ecnaeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    pg_rodape.ActivePageIndex := 3;
    DBEdit22.SetFocus;
  end;

end;

procedure Tfrmcliente.pg_rodapeChange(Sender: TObject);
begin
  if pg_rodape.ActivePageIndex = 4 then
  begin
    if combo_pessoa.ItemIndex = 0 then
      pg_rodape.ActivePageIndex := 0;
  end;
end;

procedure Tfrmcliente.DBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcliente.DBEdit34KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcliente.DBEdit37KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PG_RESP.ActivePageIndex := 1;
    ED_RESP2_NOME.SetFocus;
  end;
end;

procedure Tfrmcliente.wwDBComboBox6Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmcliente.DBEdit34Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if DBEdit34.Text <> '' then
  begin
    if (FRMMODULO.qrcliente.State = dsinsert) or
      (FRMMODULO.qrcliente.State = dsedit) then
    begin
      if pos('-', DBEdit34.Text) = 0 then
        FRMMODULO.qrcliente.FieldByName('RESP1_CEP').asstring :=
          FormatMaskText('(99)9999-9999;0;_', DBEdit34.Text);
    end;
  end;
end;

procedure Tfrmcliente.DBEdit45KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if pgravar.visible then
      bgravar.SetFocus;
  end;
end;

procedure Tfrmcliente.DBEdit45Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmcliente.DBEdit37Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmcliente.DBDateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    PERFORM(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure Tfrmcliente.EFILIACAOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    ecodconvenio.SetFocus;
  end;
end;

procedure Tfrmcliente.DBEdit6Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if (FRMMODULO.qrcliente.State = dsinsert) or
    (FRMMODULO.qrcliente.State = dsedit) then
  begin
    if DBEdit6.Text = '' then
      AdvGlowButton1.OnClick(frmcliente);
  end;
end;

procedure Tfrmcliente.ecodmunicipioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #8 then
    if Key = #13 then
      PERFORM(WM_NEXTDLGCTL, 0, 0)
    else if (Key in ['0' .. '9']) then
      //
    else
      abort;
end;

procedure Tfrmcliente.DBEdit14Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if (DBEdit14.Text = '') and (LRG.caption = 'IE:') then
    DBEdit14.Text := 'ISENTO';
end;

procedure Tfrmcliente.DBEdit38Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  FRMMODULO.qrcliente.FieldByName('numero').asstring :=
    frmprincipal.zerarcodigo(DBEdit38.Text, 5);
end;

procedure Tfrmcliente.DBEdit38KeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #8 then
    if Key = #13 then
      PERFORM(WM_NEXTDLGCTL, 0, 0)
    else if (Key in ['0' .. '9']) then
      //
    else
      abort;
end;

procedure Tfrmcliente.DBEdit10Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if DBEdit10.Text <> '' then
  begin
    if (FRMMODULO.qrcliente.State = dsinsert) or
      (FRMMODULO.qrcliente.State = dsedit) then
    begin
      if pos('-', DBEdit10.Text) = 0 then
        FRMMODULO.qrcliente.FieldByName('TELEFONE1').asstring :=
          FormatMaskText('(99)9999-9999;0;_', DBEdit10.Text);
    end;
  end;
end;

procedure Tfrmcliente.DBEdit13Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;

  if FRMMODULO.qrcliente.FieldByName('TIPO').asinteger = 2 then
  begin
    pg_rodape.ActivePageIndex := 2;
    ecodmunicipio.SetFocus;
  end;
end;

procedure Tfrmcliente.DBEdit11Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if DBEdit11.Text <> '' then
  begin
    if (FRMMODULO.qrcliente.State = dsinsert) or
      (FRMMODULO.qrcliente.State = dsedit) then
    begin
      if pos('-', DBEdit11.Text) = 0 then
        FRMMODULO.qrcliente.FieldByName('TELEFONE2').asstring :=
          FormatMaskText('(99)9999-9999;0;_', DBEdit11.Text);
    end;
  end;
end;

procedure Tfrmcliente.DBEdit12Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if DBEdit12.Text <> '' then
  begin
    if (FRMMODULO.qrcliente.State = dsinsert) or
      (FRMMODULO.qrcliente.State = dsedit) then
    begin
      if pos('-', DBEdit12.Text) = 0 then
        FRMMODULO.qrcliente.FieldByName('CELULAR').asstring :=
          FormatMaskText('(99)9999-9999;0;_', DBEdit12.Text);
    end;
  end;
end;

procedure Tfrmcliente.DBEdit42Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if DBEdit42.Text <> '' then
  begin
    if (FRMMODULO.qrcliente.State = dsinsert) or
      (FRMMODULO.qrcliente.State = dsedit) then
    begin
      if pos('-', DBEdit42.Text) = 0 then
        FRMMODULO.qrcliente.FieldByName('RESP2_CEP').asstring :=
          FormatMaskText('(99)9999-9999;0;_', DBEdit42.Text);
    end;
  end;
end;

procedure Tfrmcliente.cad_tabfotoClick(Sender: TObject);
begin
  PageView1.ActivePageIndex := 6;
  pg_rodape.ActivePageIndex := 1;
end;

procedure Tfrmcliente.combocondKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    pg_rodape.ActivePageIndex := 5;
    // DBMemo1.SetFocus;
  end;

end;

procedure Tfrmcliente.btn125Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    Image2.Picture.LoadFromFile(OpenPictureDialog1.Filename);
    if FRMMODULO.qrcliente.State <> dsedit then
      if FRMMODULO.qrcliente.State <> dsinsert then
        FRMMODULO.qrcliente.Edit;
    FRMMODULO.qrcliente.FieldByName('FOTO').asstring :=
      OpenPictureDialog1.Filename;
  end;
end;

procedure Tfrmcliente.btn101Click(Sender: TObject);
begin
  if FRMMODULO.qrcliente.State <> dsedit then
    if FRMMODULO.qrcliente.State <> dsinsert then
      FRMMODULO.qrcliente.Edit;

  frmwebcam2 := tfrmwebcam2.CREATE(SELF);
  frmwebcam2.SHOWMODAL;
end;

procedure Tfrmcliente.btn1987Click(Sender: TObject);
begin
  if FRMMODULO.qrcliente.State <> dsedit then
    if FRMMODULO.qrcliente.State <> dsinsert then
      FRMMODULO.qrcliente.Edit;
  Image2.Picture := nil;
  FRMMODULO.qrcliente.FieldByName('FOTO').asstring := '';
end;

procedure Tfrmcliente.btn1Click(Sender: TObject);
begin
   //   pnlPnlCNPJ.Visible := False;
end;

procedure Tfrmcliente.btn2Click(Sender: TObject);
begin
//PNLcpf.Visible := False;
end;

procedure Tfrmcliente.btnButBuscarClick(Sender: TObject);
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
     // EditTipo.Text        := ACBrConsultaCNPJ1.EmpresaTipo;
      frmmodulo.qrclienteNOME.AsString := ACBrConsultaCNPJ1.RazaoSocial;
      //EditAbertura.Text    := DateToStr( ACBrConsultaCNPJ1.Abertura );
      frmmodulo.qrclienteNOME.AsString    := ACBrConsultaCNPJ1.Fantasia;
      frmmodulo.qrclienteENDERECO.AsString    := ACBrConsultaCNPJ1.Endereco;
      frmmodulo.qrclienteNUMERO.AsString      := ACBrConsultaCNPJ1.Numero;
      frmmodulo.qrclienteCOMPLEMENTO.AsString := ACBrConsultaCNPJ1.Complemento;
      frmmodulo.qrclienteBAIRRO.AsString      := ACBrConsultaCNPJ1.Bairro;
      frmmodulo.qrclienteCIDADE.AsString      := ACBrConsultaCNPJ1.Cidade;
      euf.Text          := ACBrConsultaCNPJ1.UF;
      frmmodulo.qrclienteCEP.AsString         := ACBrConsultaCNPJ1.CEP;
      frmmodulo.qrclienteCOD_MUNICIPIO_IBGE.AsString       := ACBrConsultaCNPJ1.IBGE_Municipio;
      frmmodulo.qrclienteEMAIL.AsString       := ACBrConsultaCNPJ1.EndEletronico;
      frmmodulo.qrclienteTELEFONE1.AsString       := ACBrConsultaCNPJ1.Telefone;
     frmmodulo.qrclienteCPF.AsString      := ACBrConsultaCNPJ1.CNPJ;
      edata_cadastro.Date := Date();
       frmmodulo.qrclienteRG.AsString   := 'ISENTO';
       DateEdit1.Date := ACBrConsultaCNPJ1.DataSituacao;
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    edtCaptcha.SetFocus;
  end;


end;

procedure Tfrmcliente.btnConsultarClick(Sender: TObject);
begin
 if EditCaptcha.Text <> '' then
  begin
    if ACBrConsultaCPF1.Consulta(EditCNPJ.Text, EditDtNasc.Text, EditCaptcha.Text) then
    begin
    frmmodulo.qrclienteNOME.AsString := ACBrConsultaCPF1.Nome;

      //EditAbertura.Text    := DateToStr( ACBrConsultaCNPJ1.Abertura );
      frmmodulo.qrclienteAPELIDO.AsString    := ACBrConsultaCPF1.Nome;
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
      frmmodulo.qrclienteCPF.AsString  := ACBrConsultaCPF1.CPF;
      edata_cadastro.Date := Date();
      frmmodulo.qrclienteRG.AsString   := 'ISENTO';
       DateEdit1.Date := StrToDate(ACBrConsultaCPF1.DataNascimento);
       EditSituacao.Text := ACBrConsultaCPF1.Situacao;

    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EditCaptcha.SetFocus;
  end;

end;

procedure Tfrmcliente.bt_info_completoClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure Tfrmcliente.bt_mostrar_tudoClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

end.
