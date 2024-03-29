unit Lista_Vendas_Periodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, DB, MemDS, DBAccess, RzPrgres, ComCtrls, Menus, XPMan, Uni,
  JvExMask, JvToolEdit;

type
  TfrmLista_Vendas_Periodo = class(TForm)
    Panel1: TPanel;
    bt_ok: TButton;
    bt_cancelar: TButton;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    ed_data_ini: TJvDateEdit;
    ed_data_fim: TJvDateEdit;
    BT_SAIDA: TButton;
  //  qrSaida: TIBCQuery;
  //  QrAdiciona_item: TIBCQuery;
 //   qritem: TIBCQuery;
  //  qrsaida_item: TIBCQuery;
  //  qrsaida_temp: TIBCQuery;
    PageControl1: TPageControl;
    TabSintegra: TTabSheet;
    rchSintegra: TRichEdit;
    progressbar1: TRzProgressBar;
    bt_sintegra: TButton;
   // QrySIntegra: TIBCQuery;
//    QrySintegra_D: TIBCQuery;
  //  DtsQrySintegra: TIBCDataSource;
   // query: TIBCQuery;
    bt_sped: TButton;
    menu_sped: TMainMenu;
    blocos1: TMenuItem;
    Bloco_C_Abertura: TMenuItem;
    Bloco_C_Reg_C300: TMenuItem;
    Bloco_C_Reg_C400: TMenuItem;
    Bloco_C_Fechamento: TMenuItem;
    N1: TMenuItem;
    Bloco_D: TMenuItem;
    Bloco_E: TMenuItem;
    Bloco_H: TMenuItem;
    Bloco_1: TMenuItem;
    N2: TMenuItem;
    Bloco_0_Reg_0200: TMenuItem;
    Bloco_0_Abertura: TMenuItem;
    Bloco_0_Fechamento: TMenuItem;
    Bloco_0_Reg_0190: TMenuItem;
    N3: TMenuItem;
    Bloco_9: TMenuItem;
  //  qrReducao: TIBCQuery;
 //   qrECF: TIBCQuery;
  //  qrCupom: TIBCQuery;
  //  qrcupom_item: TIBCQuery;
    GroupBox1: TGroupBox;
    rb_sintegra: TRadioButton;
    rb_efd: TRadioButton;
    TabSPED: TTabSheet;
    rchSped: TRichEdit;
    QrySIntegra: TUniQuery;
    QrySintegra_D: TUniQuery;
    qrcupom_item: TUniQuery;
    qrReducao: TUniQuery;
    qrECF: TUniQuery;
    qrCupom: TUniQuery;
    qrsaida_temp: TUniQuery;
    query: TUniQuery;
    qrSaida: TUniQuery;
    QrAdiciona_item: TUniQuery;
    qritem: TUniQuery;
    qrsaida_item: TUniQuery;
    DtsQrySintegra: TUniDataSource;
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure ed_data_iniKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BT_SAIDAClick(Sender: TObject);
    procedure bt_sintegraClick(Sender: TObject);
    (*procedures do sintegra*)
    procedure Add_Log(Log: string; Cor: TColor = clWindowText; Tamanho: byte = 10);
    function Sintegra_Process: boolean;
    function Trata_SIntegra_Str(TempStr: string): boolean;
    function sRegistro10 (var Err_Msg: string): boolean;
    function sRegistro11 (var Err_Msg: string): boolean;
    function sRegistro50 (var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro54 (var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro60 (var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro60D(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro60I(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro60R(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro61 (var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro61R(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
    function sRegistro75 (var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;

    function sRegistro90: boolean;
    (* final procedures do sintegra*)

    procedure Trata_SPED_Int(sender: tobject; retorno: integer);

    function RoundNum(Valor:Extended;Decimais:Integer):Extended;
    procedure bt_spedClick(Sender: TObject);
    procedure Bloco_0_AberturaClick(Sender: TObject);
    procedure Bloco_0_FechamentoClick(Sender: TObject);
    procedure Bloco_0_Reg_0190Click(Sender: TObject);
    procedure Bloco_9Click(Sender: TObject);
    procedure Bloco_0_Reg_0200Click(Sender: TObject);
    procedure Bloco_DClick(Sender: TObject);
    procedure Bloco_1Click(Sender: TObject);
    procedure Bloco_HClick(Sender: TObject);
    procedure Bloco_C_AberturaClick(Sender: TObject);
    procedure Bloco_C_FechamentoClick(Sender: TObject);
    procedure Bloco_C_Reg_C300Click(Sender: TObject);
    procedure Bloco_C_Reg_C400Click(Sender: TObject);
    procedure Bloco_EClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLista_Vendas_Periodo: TfrmLista_Vendas_Periodo;

  // variaveis do sintegra - Athenas
  DataHora_Inicial, DataHora_Final: TDatetime;
  quit_sintegra: boolean;
  Gera_R75: Boolean;                     //Setado sempre que Registros 54, 60I, 60R, 74 ou 77 gerados!
  vxinscest,vxcnpj: string;
  vsituacao: string;
  XENTRADA : BOOLEAN;
  qpart : Longint;
  v60i,v60d : integer;

  sArquivoSintegra : string;
  sArquivoSped: String;

  rDebito_icms : real;

implementation

uses modulo, principal, funcoes, unECF, unSintegra, msg_Operador;



  (***** funcoes do SPED *******)



//  Function  Info_Versao: integer; stdcall; external 'SPEDFiscal32dll.dll';

 // Function Inicia_SPED(Dir_Saida, Dir_Entrada: String): integer; stdcall; external 'SPEDFiscal32dll.dll';
//  Procedure Finaliza_SPED; stdcall; external 'SPEDFiscal32dll.dll';


{  Function vCod_Leiaute(COD_VER: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vMovimento(Movimento: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vCEP(cCep:String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vUF(UF: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vCPF(const CPF: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vCNPJ(const CGC: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vInscEst(Inscricao, UF: string): Boolean; stdcall; external 'SPEDFiscal32dll.dll';

  Function vCod_situacao_documento_fiscal(COD_SIT: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vInd_tipo_transporte(IND_CARG: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vInd_emitente_titulo(IND_EMIT: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vInd_tipo_operacao(IND_OPER: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vInd_emitente_documento_fiscal(IND_EMIT: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vInd_origem_processo(IND_PROC: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vInd_tipo_titulo_credito(IND_TIT: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vInd_tipo_referencia_base(IND_MED: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vInd_tipo_receita(IND_REC: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vCod_classific_item_4_4_2(COD_CLASS: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vCod_modelo_documento_fiscal_4_1_1(COD_MOD: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vInd_tipo_veiculo_transportador(IND_VEIC: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vInd_natureza_frete(IND_NAT_FRT: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vInd_tipo_frete(IND_FRT: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';             //TODO: Funcao nova! Adequar demo!
  Function vInd_tipo_transporte_carga_coletada(IND_CARG: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vInd_tipo_servico_prestado(IND_SERV: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vInd_origem(IND_ORIG: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vCOD_CFOP(COD_CFOP: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vCod_Municipio(Cod_Municipio: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vCOD_NCM(COD_NCM: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vCOD_PAIS(COD_PAIS: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vIND_PERFIL(IND_PERFIL: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vIND_ATIV(IND_ATIV: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vCOD_FIN(COD_FIN: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vIND_MOV(IND_MOV: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vTIPO_ITEM(TIPO_ITEM: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll'; // todo inclui
  Function vIND_OPER(IND_OPER: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vIND_PGTO(IND_PGTO: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vCOD_DOC_IMP(COD_DOC_IMP: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vIND_APUR(IND_APUR: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vTP_PROD(TP_PROD: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vIND_ARM(IND_ARM: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vIND_VEIC_OPER(IND_VEIC_OPER: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vIND_FRT_RED(IND_FRT_RED: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vIND_NAV(IND_NAV: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vIND_TFA(IND_TFA: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vIND_REC(IND_REC: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vIND_MOV_ST(IND_MOV_ST: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vIND_AJ(IND_AJ: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vIND_DOC(IND_DOC: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vIND_PROP(IND_PROP: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vIND_DOC_Informe_tipo_documento(IND_DOC: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vTP_CHC(TP_CHC: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';
  Function vTIPO_MEDICAO(TIPO_MEDICAO: String): Boolean; stdcall; external 'SPEDFiscal32dll.dll';

  //  bloco 0
  Function Registro0000(COD_VER, COD_FIN, DT_INI, DT_FIN, NOME, CNPJ, CPF, UF, IE, COD_MUN, IM, SUFRAMA, IND_PERFIL, IND_ATIV: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro0001(IND_MOV: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro0005(FANTASIA, CEP, ENDERECO, NUM, COMPL, BAIRRO, FONE, FAX, EMAIL: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro0015(UF_ST, IE_ST: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro0100(NOME, CPF, CRC, CNPJ, CEP, ENDERECO, NUM,COMPL,BAIRRO, FONE, FAX, EMAIL, COD_MUN: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro0150(COD_PART, NOME, COD_PAIS, CNPJ, CPF, IE, COD_MUN, SUFRAMA, ENDERECO, NUM, COMPL,BAIRRO: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro0175(DT_ALT, NR_CAMPO, CONT_ANT: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro0190(UNID, DESCR: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro0200(COD_ITEM, DESCR_ITEM, COD_BARRA, COD_ANT_ITEM, UNID_INV, TIPO_ITEM, COD_NCM, EX_IPI, COD_GEN, COD_LST, ALIQ_ICMS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro0205(DESCR_ANT_ITEM, DT_INI, DT_FIM: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro0206(COD_COMB:         String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro0220(UNID_CONV,FAT_CONV: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro0400(COD_NAT, DESCR_NAT: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro0450(COD_INF, TXT: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro0460(COD_OBS, TXT: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro0990: Integer; stdcall; external 'SPEDFiscal32dll.dll';
  //  bloco c
  Function RegistroC001(IND_MOV: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC100(IND_OPER, IND_EMIT, COD_PART, COD_MOD, COD_SIT, SER, NUM_DOC, CHV_NFE, DT_DOC, DT_E_S, VL_DOC, IND_PGTO, VL_DESC, VL_ABAT_NT, VL_MERC, IND_FRT, VL_FRT, VL_SEG, VL_OUT_DA, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_IPI, VL_PIS, VL_COFINS, VL_PIS_ST, VL_COFINS_ST: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC110(COD_INF, TXT_COMPL: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC111(NUM_PROC, IND_PROC: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC112(COD_DA, UF, NUM_DA, COD_AUT, VL_DA, DT_VCTO, DT_PGTO: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC113(IND_OPER, IND_EMIT, COD_PART, COD_MOD, SER, SUB, NUM_DOC, DT_DOC: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC114(COD_MOD, ECF_FAB, ECF_CX, NUM_DOC, DT_DOC: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC115(IND_CARGA, CNPJ_COL, IE_COL, CPF_COL, COD_MUN_COL, CNPJ_ENTG, IE_ENTG, CPF_ENTG, COD_MUN_ENTG: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC120(COD_DOC_IMP, NUM_DOC__IMP, PIS_IMP, COFINS_IMP: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC130(VL_SERV_NT, VL_BC_ISSQN, VL_ISSQN, VL_BC_IRRF, VL_IRRF, VL_BC_PREV, VL_PREV: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC140(IND_EMIT, IND_TIT, DESC_TIT, NUM_TIT, QTD_PARC, VL_TIT: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC141(NUM_PARC, DT_VCTO, VL_PARC: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC160(COD_PART, VEIC_ID, QTD_VOL, PESO_BRT, PESO_LIQ, UF_ID: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC165(COD_PART, VEIC_ID, COD_AUT, NR_PASSE, HORA, TEMPER, QTD_VOL, PESO_BRT, PESO_LIQ, NOM_MOT, CPF, UF_ID: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC170(NUM_ITEM, COD_ITEM, DESCR_COMPL, QTD, UNID, VL_ITEM, VL_DESC, IND_MOV, CST_ICMS, CFOP, COD_NAT, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_BC_ICMS_ST, ALIQ_ST, VL_ICMS_ST, IND_APUR, CST_IPI, COD_ENQ, VL_BC_IPI, ALIQ_IPI, VL_IPI, CST_PIS, VL_BC_PIS, ALIQ_PIS_PERC, QUANT_BC_PIS, ALIQ_PIS_R, VL_PIS, CST_COFINS, VL_BC_COFINS, ALIQ_COFINS_PERC, QUANT_BC_COFINS, ALIQ_COFINS_R, VL_COFINS, COD_CTA: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC171(NUM_TANQUE, QTDE: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC172(VL_BC_ISSQN, ALIQ_ISSQN, VL_ISSQN: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC173(LOTE_MED, QTD_ITEM, DT_FAB, DT_VAL, IND_MED, TP_PROD, VL_TAB_MAX: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC174(IND_ARM, NUM_ARM, DESCR_COMPL: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC175(IND_VEIC_OPER, CNPJ, UF, CHASSI_VEIC: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC176(COD_MOD_ULT_E, NUM_DOC_ULT_E, SER_ULT_E, DT_ULT_E, COD_PART_ULT_E, QUANT_ULT_E, VL_UNIT_ULT_E, VL_UNIT_BC_ST: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC177(COD_SELO_IPI, QT_SELO_IPI: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC178(CL_ENQ, VL_UNID, QUANT_PAD: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC179(BC_ST_ORIG_DEST, ICMS_ST_REP, ICMS_ST_COMPL, BC_RET, ICMS_RET: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC190(CST_ICMS,CFOP,ALIQ_ICMS,VL_OPR,VL_BC_ICMS,VL_ICMS, VL_BC_ICMS_ST,VL_ICMS_ST,VL_RED_BC,VL_IPI: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC195(COD_OBS, TXT_COMPL: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC197(COD_AJ, DESCR_COMPL_AJ, COD_ITEM, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_OUTROS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC300(COD_MOD, SER, SUB, NUM_DOC_INI, NUM_DOC_FIN, DT_DOC, VL_DOC, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC310(NUM_DOC_CANC: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC320(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_RED_BC, COD_OBS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC321(COD_ITEM, QTD, UNID, VL_ITEM, VL_DESC, VL_BC_ICMS, VL_ICMS, VL_PIS, VL_COFINS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC350(SER, SUB_SER, NUM_DOC, DT_DOC, CNPJ_CPF, VL_MERC, VL_DOC, VL_DESC, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC370(NUM_ITEM, COD_ITEM, QTD, UNID, VL_ITEM, VL_DESC: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC390(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_RED_BC, COD_OBS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC400(COD_MOD, ECF_MOD, ECF_FAB, ECF_CX: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC405(DT_DOC, CRO, CRZ, NUM_COO_FIN, GT_FIN, VL_BRT: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC410(VL_PIS, VL_COFINS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC420(COD_TOT_PAR, VLR_ACUM_TO, NR_TOT, DESCR_NR_TOT: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC425(COD_ITEM,QTD,UNID,VL_ITEM,VL_PIS,VL_COFINS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC460(COD_MOD, COD_SIT, NUM_DOC, DT_DOC, VL_DOC, VL_PIS, VL_COFINS, CPF_CNPJ, NOM_ADQ: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC470(COD_ITEM, QTD, QTD_CANC, UNID, VL_ITEM, CST_ICMS, CFOP, ALIQ_ICMS, VL_PIS, VL_COFINS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC490(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, COD_OBS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC495(ALIQ_ICMS, COD_ITEM, QTD, QTD_CANC, UNID, VL_ITEM, VL_DESC, VL_CANC, VL_ACMO, VL_BC_ICMS, VL_ICMS, VL_ISEN, VL_NT, VL_ICMS_ST: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC500(IND_OPER, IND_EMIT, COD_PART, COD_MOD, COD_SIT, SER, SUB, COD_CONS, NUM_DOC, DT_DOC, DT_E_S, VL_DOC, VL_DESC, VL_FORN, VL_SERV_NT, VL_TERC, VL_DA, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, COD_INF, VL_PIS, VL_COFINS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC510(NUM_ITEM, COD_ITEM, COD_CLASS, QTD, UNID, VL_ITEM, VL_DESC, CST_ICMS, CFOP, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_BC_ICMS_ST, ALIQ_ST, VL_ICMS_ST, IND_REC, COD_PART, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC590(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR , VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_RED_BC, COD_OBS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC600(COD_MOD, COD_MUN, SER, SUB, COD_CONS, QTD_CONS, QTD_CANC, DT_DOC, VL_DOC, VL_DESC, CONS, VL_FORN, VL_SERV_NT, VL_TERC, VL_DA, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_PIS, VL_COFINS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC601(NUM_DOC_CANC: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC610(COD_CLASS, COD_ITEM, QTD, UNID, VL_ITEM, VL_DESC, CST_ICMS, CFOP, ALIQ_ICMS, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC690(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_RED_BC, VL_BC_ICMS_ST, VL_ICMS_ST, COD_OBS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC700(COD_MOD, SER, NRO_ORD_INI, NRO_ORD_FIN, DT_DOC_INI, DT_DOC_FIN, NOM_MEST, CHV_COD_DIG: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC790(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_RED_BC, COD_OBS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC791(UF, VL_BC_ICMS_ST, VL_ICMS_ST: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroC990: Integer; stdcall; external 'SPEDFiscal32dll.dll';

  Function RegistroD001(IND_MOV: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD100(IND_OPER, IND_EMIT, COD_PART, COD_MOD, COD_SIT, SER, SUB, NUM_DOC, CHV_CTE, DT_DOC, DT_A_P, TP_CT_E, CHV_CTE_REF, VL_DOC, VL_DESC, IND_FRT, VL_SERV, VL_BC_ICMS, VL_ICMS, VL_NT, COD_INF, COD_CTA: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD110(NUM_ITEM, COD_ITEM, VL_SERV, VL_OUT: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD120(COD_MUN_ORIG, COD_MUN_DEST, VEIC_ID, UF_ID: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD130(COD_PART_CONSG, COD_PART_RED, IND_FRT_RED, COD_MUN_ORIG, COD_MUN_DEST, VEIC_ID, VL_LIQ_FRT, VL_SEC_CAT, VL_DESP, VL_PEDG, VL_OUT, VL_FRT, UF_ID: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD140(COD_PART_CONSG, COD_MUN_ORIG, COD_MUN_DEST, IND_VEIC, VEIC_ID, IND_NAV, VIAGEM, VL_FRT_LIQ, VL_DESP_PORT, VL_DESP_CAR_DESC, VL_OUT, VL_FRT_BRT, VL_FRT_MM: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD150(COD_MUN_ORIG, COD_MUN_DEST, VEIC_ID, VIAGEM, IND_TFA, VL_PESO_TX, VL_TX_TERR, VL_TX_RED, VL_OUT, VL_TX_ADV: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD160(DESPACHO, CNPJ_CPF_REM, IE_REM, COD_MUN_ORI, CNPJ_CPF_DEST, IE_DEST, COD_MUN_DEST: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD161(IND_CARGA, CNPJ_CPF_COL, IE_COL, COD_MUN_COL, CNPJ_CPF_ENTG, IE_ENTG, COD_MUN_ENTG: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD162(COD_MOD, SER, NUM_DOC, DT_DOC, VL_DOC, VL_MERC, QTD_VOL, PESO_BRT, PESO_LIQ: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD170(COD_PART_CONSG, COD_PART_RED, COD_MUN_ORIG, COD_MUN_DEST, OTM, IND_NAT_FRT, VL_LIQ_FRT, VL_GRIS, VL_PDG, VL_OUT, VL_FRT, VEIC_ID, UF_ID : String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD180(NUM_SEQ, IND_EMIT, CNPJ_CPF_EMIT , UF_EMIT, IE_EMIT , COD_MUN_ORIG, CNPJ_CPF_TOM , UF_TOM, IE_TOM, COD_MUN_DEST, COD_MOD , SER , SUB , NUM_DOC , DT_DOC , VL_DOC: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD190(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_RED_BC, COD_OBS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD300(COD_MOD, SER, SUB, NUM_DOC_INI, NUM_DOC_FIN, CST_ICMS, CFOP, ALIQ_ICMS, DT_DOC, VL_OPR, VL_DESC, VL_SERV, VL_SEG, VL_OUT_DESP, VL_BC_ICMS, VL_ICMS, VL_RED_BC, COD_OBS, COD_CTA: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD301(NUM_DOC_CANC: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD310(COD_MUN_ORIG, VL_SERV, VL_BC_ICMS, VL_ICMS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD350(COD_MOD, ECF_MOD, ECF_FAB, ECF_CX: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD355(DT_DOC, CRO, CRZ, NUM_COO_FIN, GT_FIN, VL_BRT: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD360(VL_PIS, VL_COFINS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD365(COD_TOT_PAR, VLR_ACUM_TOT, NR_TOT, DESCR_NR_TOT: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD370(COD_MUN_ORIG, VL_SERV, QTD_BILH, VL_BC_ICMS, VL_ICMS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD390(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ISSQN, ALIQ_ISSQN, VL_ISSQN, VL_BC_ICMS, VL_ICMS, COD_OBS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD400(COD_PART, COD_MOD, COD_SIT, SER, SUB, NUM_DOC, DT_DOC, VL_DOC, VL_DESC, VL_SERV, VL_BC_ICMS, VL_ICMS, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD410(COD_MOD, SER, SUB, NUM_DOC_INI, NUM_DOC_FIN, DT_DOC, CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_DESC, VL_SERV, VL_BC_ICMS, VL_ICMS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD411(NUM_DOC_CANC: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD420(COD_MUN_ORIG, VL_SERV, VL_BC_ICMS, VL_ICMS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD500(IND_OPER, IND_EMIT, COD_PART, COD_MOD, COD_SIT, SER, SUB, NUM_DOC, DT_DOC, DT_A_P, VL_DOC, VL_DESC, VL_SERV, VL_SERV_NT, VL_TERC, VL_DA, VL_BC_ICMS, VL_ICMS, COD_INF, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD510(NUM_ITEM, COD_ITEM, COD_CLASS, QTD, UNID, VL_ITEM, VL_DESC, CST_ICMS, CFOP, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, IND_REC, COD_PART, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD530(IND_SERV, DT_INI_SERV, DT_FIN_SERV, PER_FISCAL, COD_AREA, TERMINAL: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD590(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_RED_BC, COD_OBS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD600(COD_MOD, COD_MUN, SER, SUB, COD_CONS, QTD_CONS, DT_DOC, VL_DOC, VL_DESC, VL_SERV, VL_SERV_NT, VL_TERC, VL_DA, VL_BC_ICMS, VL_ICMS, VL_PIS, VL_COFINS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD610(COD_CLASS, COD_ITEM, QTD, UNID, VL_ITEM, VL_DESC, CST_ICMS, CFOP, ALIQ_ICMS, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_RED_BC, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD690(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_RED_BC, COD_OBS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD695(COD_MOD, SER, NRO_ORD_INI, NRO_ORD_FIN, DT_DOC_INI, DT_DOC_FIN, NOM_VOL, CHV_COD_DIG: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD696(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_RED_BC, COD_OBS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD697(UF, VL_BC_ICMS_ST, VL_ICMS_ST: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroD990: Integer; stdcall; external 'SPEDFiscal32dll.dll';
  // bloco e
  Function RegistroE001(IND_MOV:String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE100(DT_INI, DT_FIN: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE110(VL_TOT_DEBITOS, VL_AJ_DEBITOS, VL_TOT_AJ_DEBITOS, VL_ESTORNOS_CRED, VL_TOT_CREDITOS, VL_AJ_CREDITOS, VL_TOT_AJ_CREDITOS, VL_ESTORNOS_DEB, VL_SLD_CREDOR_ANT, VL_SLD_APURADO, VL_TOT_DED, VL_ICMS_RECOLHER, VL_SLD_CREDOR_TRANSPORTAR, DEB_ESP:String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE111(COD_AJ_APUR, DESCR_COMPL_AJ, VL_AJ_APUR: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE112(NUM_DA, NUM_PROC, IND_PROC, PROC, TXT_COMPL: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE113(COD_PART, COD_MOD, SER, SUB, NUM_DOC, DT_DOC, COD_ITEM, VL_AJ_ITEM: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE115(COD_INF_ADIC, VL_INF_ADIC, DESCR_COMPL_AJ: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE116(COD_OR,VL_OR,DT_VCTO,COD_REC,NUM_PROC,IND_PROC,PROC,TXT_COMPL:String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE200(UF, DT_INI, DT_FIN: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE210(IND_MOV_ST, VL_SLD_CRED_ANT_ST, VL_DEVOL_ST, VL_RESSARC_ST, VL_OUT_CRED_ST, VL_AJ_CREDITOS_ST, VL_RETENCAO_ST, VL_OUT_DEB_ST, VL_AJ_DEBITOS_ST, VL_SLD_DEV_ANT_ST, VL_DEDUCOES_ST, VL_ICMS_RECOL_ST, VL_SLD_CRED_ST_TRANSPORTAR, DEB_ESP_ST: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE220(COD_AJ_APUR, DESCR_COMPL_AJ, VL_AJ_APUR: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE230(NUM_DA, NUM_PROC, IND_PROC, PROC, TXT_COMPL: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE240(COD_PART, COD_MOD, SER, SUB, NUM_DOC, DT_DOC, COD_ITEM, VL_AJ_ITEM: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE250(COD_OR, VL_OR, DT_VCTO, COD_REC, NUM_PROC, IND_PROC, PROC, TXT_COMPL: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE500(IND_APUR, DT_INI, DT_FIN: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE510(CFOP, CST_IPI, VL_CONT_IPI, VL_BC_IPI, VL_IPI:String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE520(VL_SD_ANT_IPI,VL_DEB_IPI,VL_CRED_IPI,VL_OD_IPI,VL_OC_IPI,VL_SC_IPI,VL_SD_IPI:String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE530(IND_AJ, VL_AJ, COD_AJ, IND_DOC, NUM_DOC, DESCR_AJ: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroE990: Integer; stdcall; external 'SPEDFiscal32dll.dll';

  // bloco h
  Function RegistroH001(IND_MOV:String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroH005(DT_INV,VL_INV:String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroH010(COD_ITEM, UNID, QTD, VL_UNIT, VL_ITEM, IND_PROP, COD_PART, TXT_COMP, COD_CTA: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function RegistroH990: Integer; stdcall; external 'SPEDFiscal32dll.dll';

  // bloco1
  Function Registro1001(IND_MOV:String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro1100(IND_DOC, NRO_DE, DT_DE, NAT_EXP, NRO_RE, DT_RE, CHC_EMB, DT_CHC, DT_AVB, TP_CHC, PAIS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro1105(COD_MOD, SERIE, NUM_DOC, CHV_NFE, DT_DOC, COD_ITEM: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro1110(COD_PART, COD_MOD, SER, NUM_DOC, DT_DOC, CHV_NFE, NR_, QTD, UNID: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro1200(COD_AJ_APUR, SLD_CRED, CRED_APR, CRED_RECEB, CRED_UTIL, SLD_CRED_FIM: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro1210(TIPO_UTIL, NR_DOC, VL_CRED_UTIL: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro1300(COD_ITEM, DT_FECH, ESTQ_ABERT, VOL_ENTR, VOL_DISP, VOL_SAIDAS, ESTQ_ESCR, VAL_AJ_PERDA, VAL_AJ_GANHO, FECH_FISICO: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro1310(NUM_TANQUE, ESTQ_ABERT, VOL_ENTR, VOL_DISP, VOL_SAIDAS, ESTQ_ESCR, VAL_AJ_PERDA, VAL_AJ_GANHO, FECH_FISICO: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro1320(NUM_BICO, NR_INTERV, MOT_INTERV, NOM_INTERV, CNPJ_INTERV, CPF_INTERV, VAL_FECHA, VAL_ABERT, VOL_AFERI, VOL_VENDAS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro1350(SERIE, FABRICANTE, MODELO, TIPO_MEDICAO: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro1360(NUM_LACRE, DT_APLICACAO: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro1370(NUM_BICO, COD_ITEM, NUM_TANQUE: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro1400(COD_ITEM, MUN, VALOR: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro1500(IND_OPER, IND_EMIT, COD_PART, COD_MOD, COD_SIT, SER, SUB, COD_CONS, NUM_DOC, DT_DOC, DT_E_S, VL_DOC, VL_DESC, VL_FORN, VL_SERV_NT, VL_TERC, VL_DA, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, COD_INF, VL_PIS, VL_COFINS: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro1510(NUM_ITEM, COD_ITEM, COD_CLASS, QTD, UNID, VL_ITEM, VL_DESC, CST_ICMS, CFOP, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_BC_ICMS_ST, ALIQ_ST, VL_ICMS_ST, IND_REC, COD_PART, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro1600(COD_PART, TOT_CREDITO, TOT_DEBITO: String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro1990: Integer; stdcall; external 'SPEDFiscal32dll.dll';

  // bloco 9
  Function Registro9001(IND_MOV:String): Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro9900: Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro9990: Integer; stdcall; external 'SPEDFiscal32dll.dll';
  Function Registro9999: Integer; stdcall; external 'SPEDFiscal32dll.dll'; }
  (* FINAL DO SPED *)




{$R *.dfm}

procedure TfrmLista_Vendas_Periodo.Trata_SPED_Int(sender: tobject; retorno: integer);
begin
 if retorno = -1 then
 // showmessage('Erro na chamada da fun��o! Verifique o erro em C:\Store_Protheus\paf\Log_Erro.txt')
 else
 if retorno = 0 then
  //showmessage('Registro OK, verifique o registro no arquivo de sa�da em ' + edit1.text)
 else
  showmessage('Retorno desconhecido');
end;

procedure TfrmLista_Vendas_Periodo.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLista_Vendas_Periodo.bt_okClick(Sender: TObject);
var txt : textfile;
sNOme_arquivo : string;
iqtde : INTEGER;
rtotal : real;
sMensagem: String;

begin
  try
    DateToStr(StrToDate(ed_Data_Ini.Text));
  except
    Application.MessageBox('Data inicial inv�lida!',
      'Aten��o', MB_OK+MB_ICONERROR);
    ed_Data_Ini.SetFocus;
    ed_Data_ini.SelectAll;
    Abort;
  end;

  try
    DateToStr(StrToDate(ed_Data_Fim.Text));
  except
    Application.MessageBox('Data final inv�lida!',
      'Aten��o', MB_OK+MB_ICONERROR);


    ed_Data_Fim.SetFocus;
    ed_Data_Fim.SelectAll;
    Abort;
  end;

  sMensagem := '';
  rchSintegra.Lines.Clear;
  rchSped.Lines.Clear;

  // testando a conexao com o servidor
  try
    frmModulo.Conexao_Servidor.Connected := false;
    frmModulo.Conexao_Servidor.Connected := true;
    bServidor_Conexao := true;
  except
    bServidor_Conexao := false;
  end;

  if bServidor_Conexao then
  begin
    frmmodulo.qrfilial.close;
    frmmodulo.qrfilial.sql.clear;
    frmmodulo.qrfilial.sql.add('select * from c000004');
    frmmodulo.qrfilial.open;

    // GUIO - 04/03/2010 - Foi removido aop��o de selecionar se iria
    // gerar o arquivo do sintegra ou do SPED.
    // A partir de agora os dois arquivos s�o gerados ao mesmo tempo
    // essa foi a orienta��o passada delo MAURO DESERTO


    BT_SAIDAClick(FRMLISTA_VENDAS_PERIODO);


    sArquivoSintegra := sPasta_sistema+'\txt\'+sPAF_Laudo+copy(Datetostr(Date),1,2)+
                                                   copy(Datetostr(Date),4,2)+
                                                   copy(Datetostr(Date),7,4)+
                                                   copy(Timetostr(Time),1,2)+
                                                   copy(Timetostr(Time),4,2)+
                                                   copy(Timetostr(Time),7,2)+
                                                   '.txt';

    frmMsg_operador.lb_msg.Caption := 'Aguarde! Gerando Arquivo de Vendas do Per�odo...';
    frmMsg_Operador.Show;
    frmmsg_operador.Refresh;

    try
      // SINTEGRA
      bt_sintegraClick(frmLista_Vendas_Periodo);

      // SPED
      sArquivoSped := sPasta_sistema+'\txt\sped.txt';
      bt_spedClick(frmlista_vendas_periodo);
    finally
      frmMsg_Operador.Hide;
    end;

    if FileExists(sArquivoSintegra) then
    begin
      // assinatura digital
//      sMsg := sArquivoSintegra;
      assinatura_digital(sArquivoSintegra);

      sMensagem := sMensagem
        + 'Arquivo do SINTEGRA criado com Sucesso!'
        + #13
        + sArquivoSintegra;
    end
    else
    begin
      sMensagem := sMensagem + #13 + #13
        + 'Arquivo do SINTEGRA n�o foi encontrado!'
    end;

    if FileExists(sArquivoSped) then
    begin
      // assinatura digital
//      sMsg := sArquivoSintegra;
      assinatura_digital(sArquivoSped);

      sMensagem := sMensagem + #13 + #13
        + 'Arquivo do SPED criado com Sucesso!'
        + #13
        + sArquivoSped
    end
    else
    begin
      sMensagem := sMensagem + #13 + #13
        + 'Arquivo do SPED n�o foi encontrado!'
    end;

    application.messagebox(pwidechar(sMensagem), 'Aviso', mb_ok+MB_ICONINFORMATION);
  end
  else
  begin
    Application.MessageBox('N�o foi poss�vel se conectar a base de dados do Servidor!'+
                           'Favor verificar as conex�es de Rede!','Erro',
                           MB_OK+MB_ICONERROR);

  end;
end;

procedure TfrmLista_Vendas_Periodo.ed_data_iniKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmLista_Vendas_Periodo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmLista_Vendas_Periodo.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := TabSintegra;

  ed_data_ini.Date := dData_Sistema;
  ed_data_fim.Date := dData_Sistema;
end;

procedure TfrmLista_Vendas_Periodo.BT_SAIDAClick(Sender: TObject);
var item : integer;
nota : string;
texto : pansichar;
x : string;
begin
    QRSAIDA.CLOSE;
    QRSAIDA.SQL.CLEAR;
    QRSAIDA.SQL.ADD('DELETE FROM SINTEGRA_SAIDA');
    QRSAIDA.ExecSQL;
    QRSAIDA.SQL.CLEAR;
    QRSAIDA.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA');
    QRSAIDA.OPEN;
    QRSAIDA_ITEM.CLOSE;
    QRSAIDA_ITEM.SQL.CLEAR;
    QRSAIDA_ITEM.SQL.ADD('DELETE FROM SINTEGRA_SAIDA_ITEM');
    QRSAIDA_ITEM.EXECSQL;
    QRSAIDA_ITEM.SQL.CLEAR;
    QRSAIDA_ITEM.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA_ITEM');
    QRSAIDA_ITEM.OPEN;

    QRITEM.CLOSE;
    QRITEM.SQL.CLEAR;
    QRITEM.SQL.ADD('SELECT I.*,N.CODfilial, n.valor_produtos, n.frete, n.outras_despesas, n.seguro, N.NUMERO,n.data, n.modelo_nf, p.produto, p.unidade');
    QRITEM.SQL.ADD('FROM C000062 I, C000061 N, c000025 p');
    QRITEM.SQL.Add('WHERE');
    QRITEM.SQL.ADD('I.CODNOTA = N.CODIGO AND i.codproduto = p.codigo and n.movimento = ''E'' and ');
    QRITEM.SQL.ADD('n.DATA >= :DATAI AND n.DATA <= :DATAF AND N.COdfilial = '''+sEmpresa_codigo+''' order by NUMERO,modelo_nf');
    QRITEM.Params.ParamByName('DATAI').ASDATETIME := ed_data_ini.DATE;
    QRITEM.Params.ParamByName('DATAf').ASDATETIME := ed_data_fim.DATE;
    QRITEM.OPEN;
    QRITEM.FIRST;
    nota := qritem.fieldbyname('numero').asstring;
    item := 1;


    WHILE NOT QRITEM.EOF DO
    BEGIN

          qrsaida_item.Insert;
          qrsaida_item.fieldbyname('DATA_EMISSAO').value :=  copy(qritem.fieldbyname('data').asstring, 4,2)+copy(qritem.fieldbyname('data').asstring, 7,4);
          qrsaida_item.fieldbyname('num_item').value           := Zerar(inttostr(item),3);
          qrsaida_item.fieldbyname('cd_produto').value         := qritem.fieldbyname('Codproduto').value;
          qrsaida_item.fieldbyname('produto').value            := COPY(qritem.fieldbyname('PRODUTO').value,1,40);
          qrsaida_item.fieldbyname('apr_und').value            := qritem.fieldbyname('unidade').value;
          qrsaida_item.fieldbyname('TIPO').value               := 'E';
          qrsaida_item.fieldbyname('quantidade').value         := qritem.fieldbyname('qtde').value;
          qrsaida_item.fieldbyname('subtotal').value           := qritem.fieldbyname('SUBTOTAL').value;
          qrsaida_item.fieldbyname('valor_desconto').value     := qritem.fieldbyname('desconto').value;
          qrsaida_item.fieldbyname('total').value              := qritem.fieldbyname('TOTAL').value;
          qrsaida_item.fieldbyname('notafiscal').value         := qritem.fieldbyname('NUMERO').value;
          qrsaida_item.fieldbyname('valor_venda_bruta').value  := qritem.fieldbyname('TOTAL').value;
          qrsaida_item.fieldbyname('valor_total_geral').value  := qritem.fieldbyname('TOTAL').value;
          qrsaida_item.fieldbyname('datahora_recebimento').value := qritem.fieldbyname('data').value;
          qrsaida_item.fieldbyname('modelo_nf').value          := qritem.fieldbyname('modelo_nf').value;
          qrsaida_item.fieldbyname('modelo_doc').value         := qritem.fieldbyname('modelo_nf').value;
          qrsaida_item.fieldbyname('cfop').value               := qritem.fieldbyname('cfop').value;
          qrsaida_item.fieldbyname('cl_fis').value             := qritem.fieldbyname('classificacao_fiscal').value;
          qrsaida_item.fieldbyname('s_trib').value             := qritem.fieldbyname('cst').value;
          qrsaida_item.fieldbyname('datahora').value           := qritem.fieldbyname('data').value;
          qrsaida_item.fieldbyname('movimento').value          := 1;
          qrsaida_item.fieldbyname('cod_pedidos').value        := qritem.fieldbyname('NUMERO').value;
          QRSAIDA_ITEM.FIELDBYNAME('CODNOTA').VALUE            := qritem.fieldbyname('CODNOTA').value;

          IF QRITEM.FIELDBYNAME('ICMS').VALUE > 0 THEN
          BEGIN
             qrsaida_item.fieldbyname('aliquota_icms').value      := qritem.fieldbyname('ICMS').value;
             qrsaida_item.fieldbyname('base_icms').value          := qritem.fieldbyname('BASE_CALCULO').value;
             qrsaida_item.fieldbyname('valor_icms').value         := qritem.fieldbyname('VALOR_ICMS').value;
           END;
           if qritem.fieldbyname('ipi').value > 0 then
           begin
                    qrsaida_item.fieldbyname('aliquota_ipi').value       := qritem.fieldbyname('IPI').value;
                    qrsaida_item.fieldbyname('base_ipi').value           := qritem.fieldbyname('TOTAL').value;
                    qrsaida_item.fieldbyname('valor_ipi').value          := qritem.fieldbyname('VALOR_IPI').value;
                    qrsaida_item.fieldbyname('isentas_ipi').value        := 0;
                    qrsaida_item.fieldbyname('outras_ipi').value         := 0;
           end;
           qrsaida_item.fieldbyname('base_icms_subst').value    := qritem.fieldbyname('BASE_SUB').value;
           qrsaida_item.fieldbyname('reducao_base_icms').value  := qritem.fieldbyname('ICMS_SUB').value;


           qrsaida_item.fieldbyname('isentas_icms').value       :=  qritem.fieldbyname('ISENTo').value;

           if qritem.fieldbyname('frete').asfloat > 0 then
           begin
             qrsaida_item.fieldbyname('frete').value := qritem.fieldbyname('frete').asfloat * (qritem.fieldbyname('TOTAL').value / qritem.fieldbyname('valor_produtos').asfloat);
           end;

           if qritem.fieldbyname('seguro').asfloat > 0 then
           begin
             qrsaida_item.fieldbyname('seguro').value := qritem.fieldbyname('seguro').asfloat * (qritem.fieldbyname('TOTAL').value / qritem.fieldbyname('valor_produtos').asfloat);
           end;

           if (qritem.fieldbyname('outras_DESPESAS').asfloat+qritem.fieldbyname('SEGURO').asfloat) > 0 then
           begin
             // modif por eleno 30/10/2009
             qrsaida_item.fieldbyname('OUTRAS_despesas').value := (qritem.fieldbyname('outras_DESPESAS').asfloat+qritem.fieldbyname('SEGURO').asfloat) * (qritem.fieldbyname('TOTAL').value / qritem.fieldbyname('valor_produtos').asfloat);
            // qrsaida_item.fieldbyname('OUTRAS_ICMS').value := (qritem.fieldbyname('outras_DESPESAS').asfloat+qritem.fieldbyname('SEGURO').asfloat) * (qritem.fieldbyname('TOTAL').value / qritem.fieldbyname('valor_produtos').asfloat);
           end;
           qrsaida_item.Post;

          item := item + 1;

          qritem.next;
          if nota <> qritem.fieldbyname('numero').asstring then item := 1;
          NOTA := QRITEM.FIELDBYNAME('numero').asstring;
      end;




               QrAdiciona_item.Close;
               QrAdiciona_item.SQL.Clear;
               QrAdiciona_item.SQL.Add('SELECT');
               QrAdiciona_item.SQL.Add('it.cfop,');
               QrAdiciona_item.SQL.Add('it.aliquota_icms,');
               QrAdiciona_item.SQL.Add('nt.numero,');
               QrAdiciona_item.SQL.Add('nt.data,');
               QrAdiciona_item.SQL.Add('nt.codfilial,');
               QrAdiciona_item.SQL.Add('nt.codigo,');
               QrAdiciona_item.SQL.Add('sum(it.subtotal) subtotal, ');
               QrAdiciona_item.SQL.Add('sum(it.valor_desconto) desconto, ');
               qradiciona_item.sql.add('sum(it.valor_total_geral) total_geral,');
               QrAdiciona_item.SQL.Add('sum(it.base_icms) base_icms,');
               qradiciona_item.sql.add('sum(it.valor_icms) valor_icms, ');
               QrAdiciona_item.SQL.Add('sum(it.isentas_icms) isentas_icms,');
               QrAdiciona_item.SQL.Add('sum(it.outras_icms) outras_icms, ');
               QrAdiciona_item.SQL.Add('sum(it.base_ipi) base_ipi,');
               QrAdiciona_item.SQL.Add('sum(it.valor_ipi) valor_ipi, ');
               QrAdiciona_item.SQL.Add('sum(it.isentas_ipi) isentas_ipi,');
               QrAdiciona_item.SQL.Add('sum(it.outras_ipi) outras_ipi, ');
               QrAdiciona_item.SQL.Add('sum(it.reducao_base_icms) reducao_base_icms,');
               QrAdiciona_item.SQL.Add('sum(it.base_icms_subst) base_icms_subst,');
               QrAdiciona_item.SQL.Add('sum(it.frete) fretes,');
               //adicionado em 30/10/2009 por eleno
               qradiciona_item.sql.add('sum(it.outras_despesas) outras_despesas,');
               //
               QrAdiciona_item.SQL.Add('sum(it.seguro) seguro');
               QrAdiciona_item.SQL.Add('FROM sintegra_saida_item it, c000061 nt WHERE ');
               QrAdiciona_item.SQL.Add('it.codnota = nt.codigo and');
               qradiciona_item.sql.add('nt.data >= :datai and nt.data <= :dataf and nt.movimento = ''E'' and');
               qradiciona_item.SQL.add('nt.codfilial = '''+sEmpresa_codigo+''' AND ');
               QrAdiciona_item.SQL.Add('it.tipo = ''E'' ');
               QrAdiciona_item.SQL.Add('GROUP BY it.cfop,');
               QrAdiciona_item.SQL.Add('it.aliquota_icms,');
               QrAdiciona_item.SQL.Add('nt.numero,');
               QrAdiciona_item.SQL.Add('nt.data,');
               QrAdiciona_item.SQL.Add('nt.codfilial,');
               QrAdiciona_item.SQL.Add('nt.codigo');
               QrAdiciona_item.SQL.Add('order by nt.data');
               QRadiciona_ITEM.Params.ParamByName('DATAI').ASDATETIME := ed_data_ini.DATE;
               QRadiciona_ITEM.Params.ParamByName('DATAf').ASDATETIME := ed_data_fim.DATE;
               QrAdiciona_item.Open;

     qradiciona_item.First;
     while not QrAdiciona_item.Eof do
     begin
          qrsaida_temp.close;
          qrsaida_temp.SQL.clear;
          qrsaida_temp.sql.add('select nt.*,cli.*,esp.sigla from c000061 nt, c000007 cli, c000082 esp where nt.codcliente = cli.codigo and nt.MODELO_NF = esp.sintegra and nt.codigo = '''+qradiciona_item.fieldbyname('codigo').asstring+'''');
          qrsaida_temp.open;

          if qrsaida_temp.RecordCount = 0 then
               begin
                 showmessage('Tabelas 61,07,09 ou 82 com algum campo Nulo ou em branco, Informe ao Suporte!');
                 ShowMessage('C�DIGO : ' + qradiciona_item.fieldbyname('codigo').asstring + ' NA TABELA C000061');
                 exit;
               end;

          qrsaida.Insert;
          qrsaida.fieldbyname('CODIGO').asstring          := qrsaida_temp.fieldbyname('CODIGO').asSTRING;
          // empresa informante
          qrsaida.fieldbyname('CODIGO_EMPRESA').asstring  := sEmpresa_codigo;
          qrsaida.fieldbyname('CNPJ').asstring            := somenteNumero(sempresa_cnpj);
          qrsaida.fieldbyname('INSC_ESTADUAL').asstring   := somenteNumero(sempresa_ie);
          qrsaida.fieldbyname('UF').asstring              := sEmpresa_UF;

          // beneficiario
          qrsaida.fieldbyname('CODIGO_CLIENTE').asstring  := qrsaida_temp.fieldbyname('codcliente').asstring;
          qrsaida.fieldbyname('CNPJ_CLIENTE').ASSTRING  := somenteNumero(qrsaida_temp.fieldbyname('cpf').ASSTRING);


          IF QRSAIDA_TEMP.FIELDBYNAME('TIPO').ASstring = '2' THEN
          begin
            if (qrsaida_temp.fieldbyname('rg').asstring  = 'ISENTO') or (qrsaida_temp.fieldbyname('rg').asstring  = '') then
              qrsaida.fieldbyname('IE_CLIENTE').asstring  := 'ISENTO'
            else
              qrsaida.fieldbyname('IE_CLIENTE').asstring  := somenteNumero(qrsaida_temp.fieldbyname('rg').value);
          end
          ELSE
          begin
            qrsaida.fieldbyname('IE_CLIENTE').asstring    := 'ISENTO'
          end;

          if qrsaida_temp.fieldbyname('uf').value = null then
            qrsaida.fieldbyname('UF_IE_CLIENTE').asstring   := ''
          else
            qrsaida.fieldbyname('UF_IE_CLIENTE').asstring   := qrsaida_temp.fieldbyname('uf').value;

          qrsaida.fieldbyname('CPF_CLIENTE').asstring     := '';



          qrsaida.fieldbyname('NOTAFISCAL').value := qrsaida_temp.fieldbyname('numero').asstring;

          qrsaida.fieldbyname('VALOR_MERCADORIAS').value := qradiciona_item.fieldbyname('subtotal').value;;


          qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qradiciona_item.fieldbyname('total_geral').asfloat;
          QRSAIDA.fieldbyname('DESCONTO').asfloat := qrsaida_temp.fieldbyname('DESCONTO').asfloat;

          if qradiciona_item.fieldbyname('valor_ipi').asfloat > 0 then
            qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qrsaida.fieldbyname('VALOR_CONTABIL').asfloat +qradiciona_item.fieldbyname('valor_ipi').asfloat;

          if qradiciona_item.FieldByName('reducao_base_icms').asfloat > 0 then
             qrsaida.fieldbyname('VALOR_CONTABIL').asfloat :=  qrsaida.fieldbyname('VALOR_CONTABIL').asfloat+qradiciona_item.FieldByName('reducao_base_icms').asfloat;

          // modificado por eleno em 30/10/2009
          if qradiciona_item.FieldByName('outras_despesas').asfloat > 0 then
            qrsaida.fieldbyname('VALOR_CONTABIL').asfloat  :=  qrsaida.fieldbyname('VALOR_CONTABIL').asfloat+qradiciona_item.FieldByName('outras_despesas').asfloat;
          //

          if qradiciona_item.FieldByName('fretes').asfloat > 0 then
             qrsaida.fieldbyname('VALOR_CONTABIL').asfloat :=
             qrsaida.fieldbyname('VALOR_CONTABIL').asfloat +  qradiciona_item.FieldByName('fretes').asfloat;

          if qradiciona_item.FieldByName('seguro').asfloat > 0 then
             qrsaida.fieldbyname('VALOR_CONTABIL').asfloat :=
             qrsaida.fieldbyname('VALOR_CONTABIL').asfloat +  qradiciona_item.FieldByName('seguro').asfloat;


          qrsaida.fieldbyname('DATA').value := qradiciona_item.fieldbyname('data').value;
          qrsaida.fieldbyname('DATA_ESCRITURACAO').value := qradiciona_item.fieldbyname('data').value;
          qrsaida.fieldbyname('TIPO').value := 'E';

          qrsaida.fieldbyname('MODELO_NF').value := qrsaida_temp.fieldbyname('MODELO_NF').value;
          qrsaida.fieldbyname('SERIE').value := qrsaida_temp.fieldbyname('SERIE_NF').value;
          qrsaida.fieldbyname('especie').value := qrsaida_temp.fieldbyname('sigla').value;

          qrsaida.fieldbyname('CFOP').value := qradiciona_item.fieldbyname('cfop').value;

          if qrsaida_temp.fieldbyname('situacao').asstring = '1' then qrsaida.fieldbyname('NOTA_CANCELADA').value := 'N';
          if qrsaida_temp.fieldbyname('situacao').asstring = '2' then qrsaida.fieldbyname('NOTA_CANCELADA').value := 'S';
          qrsaida.fieldbyname('TIPO_FRETE').value := QRSAIDA_TEMP.FIELDBYNAME('FRETE_CONTA').VALUE;


          {ICMS}

          qrsaida.fieldbyname('ALIQUOTA_ICMS').value := qrAdiciona_item.FieldByName('aliquota_icms').AsFloat;

          qrsaida.fieldbyname('BASE_ICMS').value := qrAdiciona_item.FieldByName('base_icms').AsFloat;



          qrsaida.fieldbyname('VALOR_ICMS_CREDITADO').value := qrAdiciona_item.FieldByName('valor_icms').AsFloat;
          qrsaida.fieldbyname('BASE_SUBSTITUICAO').value := qrAdiciona_item.FieldByName('base_icms_subst').AsFloat;
          qrsaida.fieldbyname('VALOR_SUBSTITUICAO').value := qrAdiciona_item.FieldByName('reducao_base_icms').AsFloat;
          qrsaida.fieldbyname('VALOR_ICMS_ISENTAS').value := qrAdiciona_item.FieldByName('isentas_icms').AsFloat;
          qrsaida.fieldbyname('VALOR_ICMS_OUTRAS').value := qrAdiciona_item.FieldByName('outras_icms').AsFloat;

          {IPI}
          qrsaida.fieldbyname('ALIQUOTA_IPI').value := 0;
          qrsaida.fieldbyname('BASE_IPI').value := qrAdiciona_item.FieldByName('base_ipi').AsFloat;
          qrsaida.fieldbyname('VALOR_IPI_CREDITADO').value := qrAdiciona_item.FieldByName('valor_ipi').AsFloat;
          qrsaida.fieldbyname('VALOR_IPI_CREDITADO50').value := 0;
          qrsaida.fieldbyname('VALOR_IPI_ISENTAS').value := qrAdiciona_item.FieldByName('isentas_ipi').AsFloat;
          qrsaida.fieldbyname('VALOR_IPI_OUTRAS').value := qrAdiciona_item.FieldByName('outras_ipi').AsFloat;

          qrsaida.Post;
          QrAdiciona_item.Next;
     end;














(********************************************************************************)


    QRITEM.CLOSE;
    QRITEM.SQL.CLEAR;
//    QRITEM.SQL.ADD('SELECT I.*,N.CODfilial, N.NUMERO,n.data, n.modelo_nf, p.produto, p.unidade');
    QRITEM.SQL.ADD('SELECT I.*,N.CODfilial, n.valor_produtos, n.frete, n.outras_despesas, n.seguro, N.NUMERO,n.data, n.modelo_nf, p.produto, p.unidade');
    QRITEM.SQL.ADD('FROM C000062 I, C000061 N, c000025 p');
    QRITEM.SQL.Add('WHERE');
    QRITEM.SQL.ADD('I.CODNOTA = N.CODIGO AND i.codproduto = p.codigo and n.movimento = ''S'' and ');
    QRITEM.SQL.ADD('n.DATA >= :DATAI AND n.DATA <= :DATAF AND N.COdfilial = '''+sEmpresa_codigo+''' order by NUMERO,modelo_nf');
    QRITEM.Params.ParamByName('DATAI').ASDATETIME := ed_data_ini.DATE;
    QRITEM.Params.ParamByName('DATAf').ASDATETIME := ed_data_fim.DATE;
    QRITEM.OPEN;
    QRITEM.FIRST;
    nota := qritem.fieldbyname('CODNOTA').asstring;
    item := 1;


    WHILE NOT QRITEM.EOF DO
    BEGIN




          qrsaida_item.Insert;

          qrsaida_item.fieldbyname('DATA_EMISSAO').value :=  copy(qritem.fieldbyname('data').asstring, 4,2)+copy(qritem.fieldbyname('data').asstring, 7,4);
          qrsaida_item.fieldbyname('num_item').value           := Zerar(inttostr(item),3);
          qrsaida_item.fieldbyname('cd_produto').value         := qritem.fieldbyname('Codproduto').value;
          qrsaida_item.fieldbyname('produto').value            := COPY(qritem.fieldbyname('PRODUTO').value,1,40);
          qrsaida_item.fieldbyname('apr_und').value            := qritem.fieldbyname('unidade').value;
          qrsaida_item.fieldbyname('TIPO').value               := 'S';
          qrsaida_item.fieldbyname('quantidade').value         := qritem.fieldbyname('qtde').value;
          qrsaida_item.fieldbyname('subtotal').value           := qritem.fieldbyname('TOTAL').value;
          qrsaida_item.fieldbyname('valor_desconto').value     := 0;//qritem.fieldbyname('desconto').value;
          qrsaida_item.fieldbyname('total').value              := qritem.fieldbyname('TOTAL').value;
          qrsaida_item.fieldbyname('notafiscal').value         := qritem.fieldbyname('NUMERO').value;
          qrsaida_item.fieldbyname('valor_venda_bruta').value  := qritem.fieldbyname('TOTAL').value;
          qrsaida_item.fieldbyname('valor_total_geral').value  := qritem.fieldbyname('TOTAL').value;
          qrsaida_item.fieldbyname('datahora_recebimento').value := qritem.fieldbyname('data').value;
          qrsaida_item.fieldbyname('modelo_nf').value          := qritem.fieldbyname('modelo_nf').value;
          qrsaida_item.fieldbyname('modelo_doc').value         := qritem.fieldbyname('modelo_nf').value;
          qrsaida_item.fieldbyname('cfop').value               := qritem.fieldbyname('cfop').value;
          qrsaida_item.fieldbyname('cl_fis').value             := qritem.fieldbyname('classificacao_fiscal').value;
          qrsaida_item.fieldbyname('s_trib').value             := qritem.fieldbyname('cst').value;
          qrsaida_item.fieldbyname('datahora').value           := qritem.fieldbyname('data').value;
          qrsaida_item.fieldbyname('movimento').value          := 1;
          qrsaida_item.fieldbyname('cod_pedidos').value        := qritem.fieldbyname('NUMERO').value;
          QRSAIDA_ITEM.FIELDBYNAME('CODNOTA').VALUE            := qritem.fieldbyname('CODNOTA').value;

           if qritem.fieldbyname('ipi').value > 2 then  // deilson
//           if qritem.fieldbyname('ipi').value > 0 then  // deilson
            begin
              qrsaida_item.fieldbyname('aliquota_ipi').value       := qritem.fieldbyname('IPI').value;
              qrsaida_item.fieldbyname('base_ipi').value           := qritem.fieldbyname('TOTAL').value;
              qrsaida_item.fieldbyname('valor_ipi').value          := qritem.fieldbyname('VALOR_IPI').value;
              qrsaida_item.fieldbyname('isentas_ipi').value        := 0;
              qrsaida_item.fieldbyname('outras_ipi').value         := 0;
            end;
           qrsaida_item.fieldbyname('base_icms_subst').value    := qritem.fieldbyname('BASE_SUB').value;
           qrsaida_item.fieldbyname('reducao_base_icms').value  := qritem.fieldbyname('ICMS_SUB').value;

           qrsaida_item.fieldbyname('isentas_icms').value       := qritem.fieldbyname('ISENTo').value;




           if qritem.fieldbyname('frete').asfloat > 0 then
           begin
             qrsaida_item.fieldbyname('frete').value := qritem.fieldbyname('frete').asfloat * (qritem.fieldbyname('TOTAL').value / qritem.fieldbyname('valor_produtos').asfloat);
           end;

           if qritem.fieldbyname('seguro').asfloat > 0 then
           begin
             qrsaida_item.fieldbyname('seguro').value := qritem.fieldbyname('seguro').asfloat * (qritem.fieldbyname('TOTAL').value / qritem.fieldbyname('valor_produtos').asfloat);
           end;

           if (qritem.fieldbyname('outras_DESPESAS').asfloat+qritem.fieldbyname('SEGURO').asfloat) > 0 then
           begin
             // modif por eleno 30/10/2009
             qrsaida_item.fieldbyname('OUTRAS_DESPESAS').value := (qritem.fieldbyname('outras_DESPESAS').asfloat+qritem.fieldbyname('SEGURO').asfloat) * (qritem.fieldbyname('TOTAL').value / qritem.fieldbyname('valor_produtos').asfloat);
             //qrsaida_item.fieldbyname('OUTRAS_ICMS').value := (qritem.fieldbyname('outras_DESPESAS').asfloat+qritem.fieldbyname('SEGURO').asfloat) * (qritem.fieldbyname('TOTAL').value / qritem.fieldbyname('valor_produtos').asfloat);
           end;






          IF qrITEM.FIELDBYNAME('ICMS').VALUE > 0 THEN
          BEGIN
             if qritem.fieldbyname('desconto').asfloat > 0 then
             begin
               qrsaida_item.fieldbyname('aliquota_icms').value      := qritem.fieldbyname('ICMS').value;
               qrsaida_item.fieldbyname('base_icms').value          := qritem.fieldbyname('bASE_CALCULO').value{-qritem.fieldbyname('desconto').asfloat};
               if qritem.fieldbyname('VALOR_ICMS').value > 0 then
                 qrsaida_item.fieldbyname('valor_icms').value         := qrsaida_item.fieldbyname('base_ICMS').value*(qrITEM.FIELDBYNAME('ICMS').VALUE/100)
               else
               qrsaida_item.fieldbyname('valor_icms').value         := qritem.fieldbyname('VALOR_ICMS').value;
             end
             else
             begin
               qrsaida_item.fieldbyname('aliquota_icms').value      := qritem.fieldbyname('ICMS').value;
               qrsaida_item.fieldbyname('base_icms').value          := qritem.fieldbyname('BASE_CALCULO').value;
               qrsaida_item.fieldbyname('valor_icms').value         := qritem.fieldbyname('VALOR_ICMS').value;
             end;
           END;



//           qrsaida_item.fieldbyname('outras_icms').value





           qrsaida_item.Post;

          item := item + 1;

          qritem.next;
          if nota <> qritem.fieldbyname('CODNOTA').asstring then item := 1;
          NOTA := QRITEM.FIELDBYNAME('CODNOTA').asstring;
      end;





               QrAdiciona_item.Close;
               QrAdiciona_item.SQL.Clear;
               QrAdiciona_item.SQL.Add('SELECT');
               QrAdiciona_item.SQL.Add('it.cfop,');
               QrAdiciona_item.SQL.Add('it.aliquota_icms,');
               QrAdiciona_item.SQL.Add('nt.numero,');
               QrAdiciona_item.SQL.Add('nt.data,');
               QrAdiciona_item.SQL.Add('nt.codfilial,');
               QrAdiciona_item.SQL.Add('nt.codigo,');
               QrAdiciona_item.SQL.Add('sum(it.subtotal) subtotal, ');
               qradiciona_item.sql.add('sum(it.valor_total_geral) total_geral,');
               QrAdiciona_item.SQL.Add('sum(it.base_icms) base_icms,');
               qradiciona_item.sql.add('sum(it.valor_icms) valor_icms, ');
               QrAdiciona_item.SQL.Add('sum(it.isentas_icms) isentas_icms,');
               QrAdiciona_item.SQL.Add('sum(it.outras_icms) outras_icms, ');
               QrAdiciona_item.SQL.Add('sum(it.base_ipi) base_ipi,');
               QrAdiciona_item.SQL.Add('sum(it.valor_ipi) valor_ipi, ');
               QrAdiciona_item.SQL.Add('sum(it.isentas_ipi) isentas_ipi,');
               QrAdiciona_item.SQL.Add('sum(it.outras_ipi) outras_ipi, ');
               QrAdiciona_item.SQL.Add('sum(it.reducao_base_icms) reducao_base_icms,');
               QrAdiciona_item.SQL.Add('sum(it.base_icms_subst) base_icms_subst,');
               QrAdiciona_item.SQL.Add('sum(it.frete) fretes,');
               // adicionado em 30/10/2009 por eleno
               qradiciona_item.sql.add('sum(it.outras_despesas) outras_despesas,');
               //
               QrAdiciona_item.SQL.Add('sum(it.seguro) seguro');

               QrAdiciona_item.SQL.Add('FROM sintegra_saida_item it, c000061 nt WHERE ');
               QrAdiciona_item.SQL.Add('it.codnota = nt.codigo and');
               qradiciona_item.sql.add('nt.data >= :datai and nt.data <= :dataf and nt.movimento = ''S'' and');
               qradiciona_item.SQL.add('nt.codfilial = '''+sEmpresa_codigo+''' AND ');
               QrAdiciona_item.SQL.Add('it.tipo = ''S'' ');
               QrAdiciona_item.SQL.Add('GROUP BY it.cfop,');
               QrAdiciona_item.SQL.Add('it.aliquota_icms,');
               QrAdiciona_item.SQL.Add('nt.numero,');
               QrAdiciona_item.SQL.Add('nt.data,');
               QrAdiciona_item.SQL.Add('nt.codfilial,');
               QrAdiciona_item.SQL.Add('nt.codigo');
               QrAdiciona_item.SQL.Add('order by nt.data');
               QRadiciona_ITEM.Params.ParamByName('DATAI').ASDATETIME := ed_data_ini.DATE;
               QRadiciona_ITEM.Params.ParamByName('DATAf').ASDATETIME := ed_data_fim.DATE;
               QrAdiciona_item.Open;





     qradiciona_item.First;
     while not QrAdiciona_item.Eof do
     begin
          qrsaida_temp.close;
          qrsaida_temp.SQL.clear;
          qrsaida_temp.sql.add('select nt.*,cli.*,esp.sigla from c000061 nt, c000007 cli, c000082 esp where nt.codcliente = cli.codigo and nt.MODELO_NF = esp.sintegra and  nt.codigo = '''+qradiciona_item.fieldbyname('codigo').asstring+'''');
          qrsaida_temp.open;

          IF qrsaida_temp.RecordCount = 0 then
          begin
            texto := pansichar('A nota fiscal no.: '+QRADICIONA_ITEM.fieldbyname('numero').asstring+' possue dados incorretos! Verifique o modelo, o c�digo do cliente e o n�mero da nota!');
            application.messagebox(pwidechar(texto),'NF Emitida - SAI',mb_OK);
            abort;
          end;

          qrsaida.Insert;
          qrsaida.fieldbyname('CODIGO').asstring := qrsaida_temp.fieldbyname('CODIGO').asstring;
          // empresa informante
          qrsaida.fieldbyname('CODIGO_EMPRESA').asstring := sEmpresa_codigo;
          qrsaida.fieldbyname('CNPJ').asstring := somenteNumero(sempresa_cnpj);
          qrsaida.fieldbyname('INSC_ESTADUAL').asstring := somenteNumero(sempresa_ie);
          qrsaida.fieldbyname('UF').asstring := sempresa_uf;

          // beneficiario
          qrsaida.fieldbyname('CODIGO_CLIENTE').ASSTRING:= qrsaida_temp.fieldbyname('codcliente').asstring;
          qrsaida.fieldbyname('CNPJ_CLIENTE').ASSTRING  := somenteNumero(qrsaida_temp.fieldbyname('cpf').ASSTRING);

          //qrsaida.fieldbyname('CNPJ_CLIENTE').ASSTRING  := somenteNumero(qrsaida_temp.fieldbyname('cpf').ASSTRING);

          IF QRSAIDA_TEMP.FIELDBYNAME('TIPO').ASstring = '2' THEN
          begin
            if (qrsaida_temp.fieldbyname('rg').asstring  = 'ISENTO') or (qrsaida_temp.fieldbyname('rg').asstring  = '') then
              qrsaida.fieldbyname('IE_CLIENTE').asstring    := 'ISENTO'
            else
              qrsaida.fieldbyname('IE_CLIENTE').asstring    := somenteNumero(qrsaida_temp.fieldbyname('rg').asstring);
          end
          ELSE
          begin
            qrsaida.fieldbyname('IE_CLIENTE').asstring    := 'ISENTO'
          end;

          qrsaida.fieldbyname('UF_IE_CLIENTE').asstring := qrsaida_temp.fieldbyname('uf').asstring;
          qrsaida.fieldbyname('CPF_CLIENTE').asstring   := '';


          qrsaida.fieldbyname('NOTAFISCAL').value := qrsaida_temp.fieldbyname('numero').asstring;

          qrsaida.fieldbyname('VALOR_MERCADORIAS').value := qradiciona_item.fieldbyname('subtotal').value;;


          qrsaida.fieldbyname('BASE_ICMS').value := qrAdiciona_item.FieldByName('base_icms').AsFloat;
          qrsaida.fieldbyname('VALOR_ICMS_CREDITADO').value := qrAdiciona_item.FieldByName('valor_icms').AsFloat;


          qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qradiciona_item.fieldbyname('total_geral').asfloat;

          if qradiciona_item.fieldbyname('valor_ipi').asfloat > 0 then
            qrsaida.fieldbyname('VALOR_CONTABIL').asfloat := qrsaida.fieldbyname('VALOR_CONTABIL').asfloat +qradiciona_item.fieldbyname('valor_ipi').asfloat;

          if qradiciona_item.FieldByName('reducao_base_icms').asfloat > 0 then
             qrsaida.fieldbyname('VALOR_CONTABIL').asfloat :=  qrsaida.fieldbyname('VALOR_CONTABIL').asfloat+qradiciona_item.FieldByName('reducao_base_icms').asfloat;

          if qradiciona_item.FieldByName('outras_icms').asfloat > 0 then
          begin
            qrsaida.fieldbyname('VALOR_CONTABIL').asfloat  :=  qrsaida.fieldbyname('VALOR_CONTABIL').asfloat+qradiciona_item.FieldByName('outras_icms').asfloat;
            if qrAdiciona_item.FieldByName('valor_icms').AsFloat > 0 then
            begin
              qrsaida.fieldbyname('BASE_ICMS').value := qrsaida.fieldbyname('BASE_ICMS').value + qradiciona_item.FieldByName('outras_icms').asfloat;
              qrsaida.fieldbyname('VALOR_ICMS_CREDITADO').value := qrsaida.fieldbyname('BASE_ICMS').value * (qrAdiciona_item.FieldByName('aliquota_icms').AsFloat/100);
            end;
          end;

          if qradiciona_item.FieldByName('fretes').asfloat > 0 then
          begin
             qrsaida.fieldbyname('VALOR_CONTABIL').asfloat :=
             qrsaida.fieldbyname('VALOR_CONTABIL').asfloat +  qradiciona_item.FieldByName('fretes').asfloat;

             if qrAdiciona_item.FieldByName('valor_icms').AsFloat > 0 then
             begin
               qrsaida.fieldbyname('BASE_ICMS').value := qrsaida.fieldbyname('BASE_ICMS').value + qradiciona_item.FieldByName('fretes').asfloat;
               qrsaida.fieldbyname('VALOR_ICMS_CREDITADO').value := qrsaida.fieldbyname('BASE_ICMS').value * (qrAdiciona_item.FieldByName('aliquota_icms').AsFloat/100);
             end;
          end;

          if qradiciona_item.FieldByName('seguro').asfloat > 0 then
          begin
             qrsaida.fieldbyname('VALOR_CONTABIL').asfloat :=
             qrsaida.fieldbyname('VALOR_CONTABIL').asfloat +  qradiciona_item.FieldByName('seguro').asfloat;

          end;


          qrsaida.fieldbyname('DESCONTO').asfloat := qrsaida_temp.fieldbyname('DESCONTO').asfloat;


          qrsaida.fieldbyname('DATA').value := qradiciona_item.fieldbyname('data').value;
          qrsaida.fieldbyname('DATA_ESCRITURACAO').value := qradiciona_item.fieldbyname('data').value;
          qrsaida.fieldbyname('TIPO').value := 'S';

          qrsaida.fieldbyname('MODELO_NF').value := qrsaida_temp.fieldbyname('MODELO_NF').value;
          qrsaida.fieldbyname('SERIE').value := qrsaida_temp.fieldbyname('SERIE_NF').value;
          qrsaida.fieldbyname('especie').value := qrsaida_temp.fieldbyname('sigla').value;

          qrsaida.fieldbyname('CFOP').value := qradiciona_item.fieldbyname('cfop').value;
          if qrsaida_temp.fieldbyname('situacao').asstring = '1' then qrsaida.fieldbyname('NOTA_CANCELADA').value := 'N';
          if qrsaida_temp.fieldbyname('situacao').asstring = '2' then qrsaida.fieldbyname('NOTA_CANCELADA').value := 'S';
          qrsaida.fieldbyname('TIPO_FRETE').value := QRSAIDA_TEMP.FIELDBYNAME('FRETE_CONTA').VALUE;

          {ICMS}

          qrsaida.fieldbyname('ALIQUOTA_ICMS').value := qrAdiciona_item.FieldByName('aliquota_icms').AsFloat;
          qrsaida.fieldbyname('BASE_SUBSTITUICAO').value := qrAdiciona_item.FieldByName('base_icms_subst').AsFloat;
          qrsaida.fieldbyname('VALOR_SUBSTITUICAO').value := qrAdiciona_item.FieldByName('reducao_base_icms').AsFloat;
          qrsaida.fieldbyname('VALOR_ICMS_ISENTAS').value := qrAdiciona_item.FieldByName('isentas_icms').AsFloat;
          qrsaida.fieldbyname('VALOR_ICMS_OUTRAS').value := qrAdiciona_item.FieldByName('outras_icms').AsFloat;

          {IPI}
          qrsaida.fieldbyname('ALIQUOTA_IPI').value := 0;
          qrsaida.fieldbyname('BASE_IPI').value := qrAdiciona_item.FieldByName('base_ipi').AsFloat;
          qrsaida.fieldbyname('VALOR_IPI_CREDITADO').value := qrAdiciona_item.FieldByName('valor_ipi').AsFloat;
          qrsaida.fieldbyname('VALOR_IPI_CREDITADO50').value := 0;
          qrsaida.fieldbyname('VALOR_IPI_ISENTAS').value := qrAdiciona_item.FieldByName('isentas_ipi').AsFloat;
          qrsaida.fieldbyname('VALOR_IPI_OUTRAS').value := qrAdiciona_item.FieldByName('outras_ipi').AsFloat;

          qrsaida.Post;
          QrAdiciona_item.Next;
     end;

end;

procedure TfrmLista_Vendas_Periodo.bt_sintegraClick(Sender: TObject);
var
 Err_Msg: string;
 Qnt_Ok, Qnt_Erro, Total_Ok, Total_Erro: integer;
 vreducao_z : integer;
begin
 Gera_R75      := False;
 quit_sintegra := False;
 Qnt_Ok     := 0;
 Qnt_Erro   := 0;
 Total_Ok   := 0;
 Total_Erro := 0;


 qpart := 100 div 12;
 rchSintegra.Lines.Clear;

 Add_Log('Gera��o de arquivo magn�tico do Sintegra iniciada em ' + datetimetostr(now),
   clblue);


 Inicia_Sintegra;

 if sRegistro10(Err_Msg) then
  begin
   Add_Log('1 Registro tipo 10 gerado com sucesso.', clgreen);
   Total_Ok := Total_Ok + 1;
  end
 else
  begin
   Add_Log('Erro durante cria��o do Registro tipo 10.' + #13 +
     ' Log de Erros: ' + #13 + Err_Msg, clred);
   Total_Erro := Total_Erro + 1;
  end;

 if sintegra_process then
   exit;

 if sRegistro11(Err_Msg) then
  begin
   Add_Log('1 Registro tipo 11 gerado com sucesso.', clgreen);
   Total_Ok := Total_Ok + 1;
  end
 else
  begin
   Add_Log('Erro durante cria��o do Registro tipo 11.' + #13 +
     ' Log de Erros: ' + #13 + Err_Msg, clred);
   Total_Erro := Total_Erro + 1;
  end;

 if sintegra_process then
   exit;




 if sRegistro50(Err_Msg, Qnt_Ok, Qnt_Erro) then
  begin
   if Qnt_Ok > 0 then
    Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 50 gerado(s) com sucesso.', clgreen)
  end
 else
  begin
   if Qnt_Ok > 0 then
    Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 50 gerado(s) com sucesso.', clgreen);

   Add_Log(inttostr(Qnt_Erro) + ' Registro(s) tipo 50 n�o gerado(s) por Erro' + #13 +
     ' Log de Erros: ' + Err_Msg, clred);
  end;

 if sintegra_process then
   exit;



 Total_Ok := Total_Ok + Qnt_Ok;
 Total_Erro := Total_Erro + Qnt_Erro;
 Qnt_Ok := 0;
 Qnt_Erro := 0;


 if sRegistro54(Err_Msg, Qnt_Ok, Qnt_Erro) then
  begin
   if Qnt_Ok > 0 then
    Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 54 gerado(s) com sucesso.', clgreen);
  end
 else
  begin
   if Qnt_Ok > 0 then
    Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 54 gerado(s) com sucesso.', clgreen);

   Add_Log(inttostr(Qnt_Erro) + ' Registro(s) tipo 54 n�o gerado(s) por Erro' + #13 +
     ' Log de Erros: ' + Err_Msg, clred);
  end;

 if sintegra_process then
   exit;




  // registro 60A e 60M
  Total_Ok := Total_Ok + Qnt_Ok;
  Total_Erro := Total_Erro + Qnt_Erro;
  Qnt_Ok := 0;
  Qnt_Erro := 0;

  if sRegistro60(Err_Msg, Qnt_Ok, Qnt_Erro) then
  begin

    if Qnt_Ok > 0 then
    begin
       Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 60 gerado(s) com sucesso.', clgreen);
       Add_Log(inttostr(v60D) + ' Registro(s) tipo 60D gerado(s) com sucesso.', clgreen);
       Add_Log(inttostr(v60I) + ' Registro(s) tipo 60I gerado(s) com sucesso.', clgreen);
    end;
  end
  else
  begin
    if Qnt_Ok > 0 then
    begin
         Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 60 gerado(s) com sucesso.', clgreen);
         Add_Log(inttostr(Qnt_Erro) + ' Registro(s) tipo 60 n�o gerado(s) por Erro' + #13 +
         ' RLog de Erros: ' + Err_Msg, clred);
    end;
  end;



  if sintegra_process then
     exit;







  // registro 60R

            Total_Ok := Total_Ok + Qnt_Ok;
            Total_Erro := Total_Erro + Qnt_Erro;
            Qnt_Ok := 0;
            Qnt_Erro := 0;

            if sRegistro60R(Err_Msg, Qnt_Ok, Qnt_Erro) then
                 begin
                      if Qnt_Ok > 0 then
                           Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 60R gerado(s) com sucesso.', clgreen);
                 end
            else
                 begin
                      if Qnt_Ok > 0 then
                           Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 60R gerado(s) com sucesso.', clgreen);
                           Add_Log(inttostr(Qnt_Erro) + ' Registro(s) tipo 60R n�o gerado(s) por Erro' + #13 +
                           ' RLog de Erros: ' + Err_Msg, clred);
                 end;


  if sintegra_process then
       exit;


  Total_Ok := Total_Ok + Qnt_Ok;
  Total_Erro := Total_Erro + Qnt_Erro;
  Qnt_Ok := 0;
  Qnt_Erro := 0;

 if sRegistro61(Err_Msg, Qnt_Ok, Qnt_Erro) then
  begin
   if Qnt_Ok > 0 then
    Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 61 gerado(s) com sucesso.', clgreen)
  end
 else
  begin
   if Qnt_Ok > 0 then
    Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 61 gerado(s) com sucesso.', clgreen);

   Add_Log(inttostr(Qnt_Erro) + ' Registro(s) tipo 61 n�o gerado(s) por Erro' + #13 +
     ' Log de Erros: ' + Err_Msg, clred);
  end;

 if sintegra_process then
   exit;


// registro 61R
     begin
          Total_Ok := Total_Ok + Qnt_Ok;
          Total_Erro := Total_Erro + Qnt_Erro;
          Qnt_Ok := 0;
          Qnt_Erro := 0;

          if sRegistro61R(Err_Msg, Qnt_Ok, Qnt_Erro) then
               begin
                    if Qnt_Ok > 0 then
                         Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 61R gerado(s) com sucesso.', clgreen);
               end
          else
               begin
                    if Qnt_Ok > 0 then
                         Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 601 gerado(s) com sucesso.', clgreen);
                         Add_Log(inttostr(Qnt_Erro) + ' Registro(s) tipo 61R n�o gerado(s) por Erro' + #13 +
                         ' RLog de Erros: ' + Err_Msg, clred);
               end;
     end;

  if sintegra_process then
     exit;




  if Gera_R75 then
  begin
   Total_Ok := Total_Ok + Qnt_Ok;
   Total_Erro := Total_Erro + Qnt_Erro;
   Qnt_Ok := 0;
   Qnt_Erro := 0;

   if sRegistro75(Err_Msg, Qnt_Ok, Qnt_Erro) then
    begin
     if Qnt_Ok > 0 then
      Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 75 gerado(s) com sucesso.', clgreen);
    end
   else
    begin
     if Qnt_Ok > 0 then
      Add_Log(inttostr(Qnt_Ok) + ' Registro(s) tipo 75 gerado(s) com sucesso.', clgreen);

     Add_Log(inttostr(Qnt_Erro) + ' Registro(s) tipo 75 n�o gerado(s) por Erro' + #13 +
       ' Log de Erros: ' + Err_Msg, clred);
    end;
  end;

 if sintegra_process then
   exit;




 Total_Ok := Total_Ok + Qnt_Ok;
 Total_Erro := Total_Erro + Qnt_Erro;

 if sRegistro90 then
  begin
   Add_Log('1 Registro(s) tipo 90 gerado(s) com sucesso.', clgreen);
   Total_Ok := Total_Ok + 1;
  end
 else
  begin
   Add_Log('Erro durante cria��o do Registro tipo 90', clred);
   Total_Erro := Total_Erro + 1;
  end;

 if sintegra_process then
   exit;

 Finaliza_Sintegra;

 if Total_Ok > 0 then
  Add_Log(inttostr(Total_Ok) + ' Registro(s) gerado(s) com sucesso.', clblue);

 if Total_Erro > 0 then
  Add_Log(inttostr(Total_Erro) + ' Registro(s) n�o gerado(s) por Erro.', clblue);

 Add_Log('Gera��o de arquivo magn�tico do Sintegra conclu�da em ' + datetimetostr(now), clblue);

 QrySintegra.Close;


 ProgressBar1.PartsComplete := progressbar1.TotalParts;


end;



(* PROCEDURES S I N T E G R A*)

//Fun��o que adiciona o texto de Log do RichEdit
procedure tfrmLista_Vendas_Periodo.Add_Log(Log: string; Cor: TColor; Tamanho: byte);
begin
  rchSintegra.SelAttributes.Color := Cor;
  rchSintegra.SelAttributes.Size := 8;
  rchSintegra.Lines.Add(Log);
  application.ProcessMessages;
end;


//Interrompe processamento do Banco de Dados por interven��o do usu�rio.
function tfrmLista_Vendas_Periodo.Sintegra_Process: boolean;
begin
 ProgressBar1.IncParts(qpart);

 Result := quit_sintegra;
 if Result then
  begin
   Add_Log('Gera��o de arquivo interrompida pelo usu�rio em ' + datetimetostr(now), clred);
  end;
end;

//Trata String de Retorno da Sintegra32dll.dll
//Se primeiro caracter da String de retorno � "-" indica que � uma string de erro, deve-se fazer o log.
//Caso contr�rio adiciona a string no arquivo do sintegra
function tfrmLista_Vendas_Periodo.Trata_SIntegra_Str(TempStr: string): boolean;
var
 sFile: TextFile;
begin
 Result := True;

 if TempStr[1] <> '-' then
  begin
   AssignFile(sFile, sArquivoSintegra);

   if not fileexists(sArquivoSintegra) then
    begin
     rewrite(sFile);
     Add_Log('Arquivo de sa�da criado: ' + sArquivoSintegra, clgreen);
    end;

   Reset(sFile);
   Append(sFile);
   try
     WriteLn(sFile, TempStr);
   finally
     CloseFile(sFile);
    end;
  end
 else
  begin
   Add_Log(Copy(TempStr, 6, Length(TempStr)), clred);
   Result := False
  end;
end;


//Registro10 - Mestre do Estabelecimento - Indentifi��o do Estabelecimento informante
function tfrmLista_Vendas_Periodo.sRegistro10(var Err_Msg: string): boolean;
var
     TempStr: string;
begin
     //Executa a sele��o dos registros no banco de dados
     // seleciona a empresa

     //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
     TempStr := Registro10(frmmodulo.qrfilial.FieldByName('cnpj').AsString,    //CGC
     frmmodulo.qrfilial.FieldByName('ie').AsString,                            //IE
     frmmodulo.qrfilial.FieldByName('filial').AsString,                          //Nome_Contribuinte
     frmmodulo.qrfilial.FieldByName('cidade').AsString,                        //Municipio
     frmmodulo.qrfilial.FieldByName('uf').AsString,                            //UF
     frmmodulo.qrfilial.FieldByName('fax').AsString,                           //Fax
     ed_data_ini.text,              //data inicial
     ed_data_fim.text,                //data final

     '3',                                                                  //Conv�nio 31/99
     IntToStr(3),                                    //InterEstaduais - com ou sem Subs. Trib.
     IntToStr(1)                                     //Normal
     );

     //Executa o tratamento da string tempor�ria testando se houve erro
     Result := Trata_SIntegra_Str(TempStr);

     //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
     if not Result then
          begin
               Err_Msg := '    CNPJ: ' + frmmodulo.qrfilial.FieldByName('cnpj').AsString + #13 +
               '    IE: ' + frmmodulo.qrfilial.FieldByName('ie').AsString + #13 +
               '    Nome: ' + frmmodulo.qrfilial.FieldByName('filial').AsString + #13 +
               '    Municipio: ' + frmmodulo.qrfilial.FieldByName('cidade').AsString + #13 +
               '    UF: ' + frmmodulo.qrfilial.FieldByName('uf').AsString + #13 +
               '    Fax: ' + frmmodulo.qrfilial.FieldByName('fax').AsString + #13 +
               '    Data Inicial: ' + ed_data_ini.Text + #13 +
               '    Data Final: ' + ed_data_fim.text + #13 +
               '    Cod. Conv�nio: ' + '3' + #13 +
               '    Cod. Natureza: 3'  + #13 +
               '    Cod. Finalidade: 1';
          end;
end;


//Registro11 - Dados complementares do informante
function tfrmLista_Vendas_Periodo.sRegistro11(var Err_Msg: string): boolean;
var
     TempStr: string;
begin
     //Executa a sele��o dos registros no banco de dados

     //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
     TempStr := Registro11(frmmodulo.qrfilial.FieldByName('endereco').AsString,     //Logradouro
     frmmodulo.qrfilial.FieldByName('numero').AsString,                             //N�mero
     frmmodulo.qrfilial.FieldByName('complemento').AsString,                        //Complemento
     frmmodulo.qrfilial.FieldByName('bairro').AsString,                             //Bairro
     frmmodulo.qrfilial.FieldByName('cep').AsString,                                //Cep
     frmmodulo.qrfilial.FieldByName('responsavel').AsString,                        //Nome do Contato
     frmmodulo.qrfilial.FieldByName('telefone').AsString                            //Telefone
     );

     //Executa o tratamento da string tempor�ria testando se houve erro
     Result := Trata_SIntegra_Str(TempStr);

     //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
     if not Result then
          begin
               Err_Msg := '    Logradouro: ' + frmmodulo.qrfilial.FieldByName('endereco').AsString + #13 +
               '    N�mero: ' + frmmodulo.qrfilial.FieldByName('numero').AsString + #13 +
               '    Complemento: ' + frmmodulo.qrfilial.FieldByName('complemento').AsString + #13 +
               '    Bairro: ' + frmmodulo.qrfilial.FieldByName('bairro').AsString + #13 +
               '    Cep: ' + frmmodulo.qrfilial.FieldByName('cep').AsString + #13 +
               '    Contato: ' + frmmodulo.qrfilial.FieldByName('responsavel').AsString + #13 +
               '    Telefone: ' + frmmodulo.qrfilial.FieldByName('telefone').AsString;
          end;
end;







//Registro50 - Registro de Total de Nota Fiscal
function TfrmLista_Vendas_Periodo.sRegistro50(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
     TempStr, num_nf: string;

begin
     Result := True;

     //Gera��o de Registro50 quanto a Sa�da de Nota Fiscal
     //Executa a sele��o dos registros no banco de dados

     with QrySintegra do
          begin
               Close;
               SQL.Clear;
               SQL.Add('SELECT');
               SQL.Add('NOTAFISCAL,');
               SQL.Add('DATA,');
               SQL.Add('MODELO_NF,');
               SQL.Add('SERIE,');
               SQL.Add('SUBSERIE,');
               SQL.Add('ESPECIE,');
               SQL.Add('CPF_CLIENTE,');
               SQL.Add('CNPJ_CLIENTE,');
               SQL.Add('IE_CLIENTE,');
               SQL.Add('UF_IE_CLIENTE,');
               SQL.Add('CFOP,');
               SQL.Add('NOTA_CANCELADA,');
               SQL.ADD('CODIGO_CLIENTE,');
               SQL.ADD('valor_icms_isentas,');
               SQL.ADD('BASE_SUBSTITUICAO,');
               SQL.ADD('aliquota_icms,');
               SQL.ADD('valor_contabil,');
               SQL.ADD('base_icms,');
               SQL.ADD('valor_icms_creditado,');
               SQL.Add('CODIGO');
               SQL.Add('FROM SINTEGRA_SAIDA');
               SQL.ADD('where (tipo = ''S'') AND (');
               SQL.Add('(data BETWEEN :datahora_ini AND :datahora_fim) AND');
               SQL.Add('(modelo_nf = ''01'') OR');
               SQL.Add('(modelo_nf = ''1A'') OR');
               SQL.Add('(modelo_nf = ''03'') OR');
               SQL.Add('(modelo_nf = ''06'') OR');
               SQL.Add('(modelo_nf = ''04'') OR');
               SQL.Add('(modelo_nf = ''55'') OR');
               SQL.Add('(modelo_nf = ''22''))');
               SQL.Add('GROUP BY ');
               SQL.Add('NOTAFISCAL,');
               SQL.Add('DATA,');
               SQL.Add('MODELO_NF,');
               SQL.Add('SERIE,');
               SQL.Add('SUBSERIE,');
               SQL.Add('ESPECIE,');
               SQL.Add('CPF_CLIENTE,');
               SQL.Add('CNPJ_CLIENTE,');
               SQL.Add('IE_CLIENTE,');
               SQL.Add('UF_IE_CLIENTE,');
               SQL.Add('CFOP,');
               SQL.Add('NOTA_CANCELADA,');
               SQL.ADD('CODIGO_CLIENTE,');
               SQL.ADD('valor_icms_isentas,');
               SQL.ADD('BASE_SUBSTITUICAO,');
               SQL.ADD('aliquota_icms,');
               SQL.ADD('valor_contabil,');
               SQL.ADD('base_icms,');
               SQL.ADD('valor_icms_creditado,');

               SQL.Add('CODIGO');
               SQL.Add('ORDER BY data');
               ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
               ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;
               Open;
          end;

     QrySintegra_D.MasterSource := DtsQrySintegra;
     with QrySintegra_D do
          begin
               Close;
               SQL.Clear;
               SQL.Add('SELECT aliquota_icms, sum(subtotal) subtotal, sum(base_calculo)  base_icms, sum(valor_icms) valor_icms FROM sintegra_saida_item WHERE ');
               SQL.Add('(tipo = ''S'') AND ');
               SQL.Add('(notafiscal = :notafiscal)');
               SQL.Add('GROUP BY aliquota_icms');
               Open;
          end;


     if (QrySintegra.RecordCount > 0) then
     begin
                    while not QrySintegra.EOF do
                    begin

                                   num_nf := QrySintegra.Fields.FieldByName('notafiscal').AsString;
                                   num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 �ltimos digitos da NF
                                   frmmodulo.qrcliente.close;
                                   frmmodulo.qrcliente.sql.clear;
                                   frmmodulo.qrcliente.SQL.Add('select * from c000007 where codigo = '''+zerar(qrysintegra.fields.fieldbyname('codigo_cliente').asstring,6)+'''');
                                   frmmodulo.qrcliente.Open;

                                  //showmessage(QrySintegra.Fields.FieldByName('SERIE').AsString);

                                   //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
                                   TempStr := Registro50(frmmodulo.qrcliente.FieldByName('cpf').AsString,      //CNPJ
                                   QRYSINTEGRA.FIELDS.FIELDBYNAME('IE_CLIENTE').AsString,                             //Insc_Est
                                   datetostr(QrySintegra.Fields.FieldByName('data').AsDateTime),         //Data_Emissao_Recebimento
                                   frmmodulo.qrcliente.FieldByName('uf').AsString,                             //UF,
                                   QrySintegra.Fields.FieldByName('modelo_nf').AsString,                 //Modelo
                                   QrySintegra.Fields.FieldByName('serie').AsString,                  //Serie
                                   num_nf,                                                               //Nro
                                   QrySintegra.Fields.FieldByName('cfop').AsString,                      //CFOP
                                   'P',                                                                  //Emitente - P propio T Terceiros
                                   formatcurr('0.00', QrySintegra.Fields.FieldByName('valor_contabil').AsFloat),  //Valor_Total
                                   formatcurr('0.00', QrySintegra.Fields.FieldByName('BASE_icms').AsFloat), //Base_ICMS
                                   formatcurr('0.00', QrySintegra.Fields.FieldByName('VALOR_ICMS_creditado').AsFloat),//Valor_ICMS
                                   formatcurr('0.00', QrySintegra.FieldByName('valor_icms_isentas').AsFloat),  //Isenta
                                   formatcurr('0.00', QrySintegra.FieldByName('BASE_SUBSTITUICAO').AsFloat),   //Outras
                                   formatcurr('0.00', QrySintegra.Fields.FieldByName('aliquota_icms').AsFloat),      //Aliquota
                                   QrySintegra.Fields.FieldByName('NOTA_CANCELADA').AsString                      //Situacao quanto ao cancelamento
                                   );

                                   //Executa o tratamento da string tempor�ria testando se houve erro
                                   //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
                                        if not Trata_SIntegra_Str(TempStr) then
                                        begin
                                             qnt_erro := qnt_erro + 1;
                                             Result := False;

                                             Err_Msg := Err_Msg + #13 +
                                             '-REGISTRO 50 - Saida----------------------------------------------------------'+#13+
                                             '    Codigo.....: ' + QrySintegra.Fields.FieldByName('codigo').AsString + #13 +
                                             '    Fornecedor.: ' + frmmodulo.qrcliente.fieldbyname('nome').AsString + #13 +
                                             '    Emissao....: ' + datetostr(QrySintegra.Fields.FieldByName('data').AsDateTime) + #13 +
                                             '    Modelo.....: ' + QrySintegra.Fields.FieldByName('modelo_nf').AsString + #13 +
                                             '    Serie......: ' + QrySintegra.Fields.FieldByName('serie').AsString + #13 +
                                             '    Nota Fiscal: ' + num_nf + #13 +
                                             '    CFOP.......: ' + QrySintegra.Fields.FieldByName('cfop').AsString + #13 +
                                             '    Valor_Total: ' + QrySintegra.Fields.FieldByName('valor_contabil').AsString + #13 +
                                             '    Base ICMS..: ' + QrySintegra.Fields.FieldByName('base_ICMS').AsString + #13 +
                                             '    Valor ICMS.: ' + QrySintegra.Fields.FieldByName('valor_icms_creditado').AsString + #13 +
                                             '    Isenta.....: ' + QrySintegra.FieldByName('valor_icms_isentas').AsString + #13 +
                                             '    Outras.....: ' + QrySintegra.FieldByName('BASE_SUBSTITUICAO').AsString + #13 +
                                             '    Aliquota...: ' + floattostr(QrySintegra.Fields.FieldByName('aliquota_icms').AsFloat * 100) + #13 +
                                             '    Situacao...: ' + QrySintegra.Fields.FieldByName('NOTA_CANCELADA').AsString+#13+
                                             '------------------------------------------------------------------------------';

                                        end
                                        else
                                           qnt_ok := qnt_ok + 1;


                              if not QrySintegra.EOF then
                                   QrySintegra.Next;

                              if quit_sintegra then
                                   exit;
                 end;
     end;












     //Gera��o de Registro50 quanto a Entrada  de Nota Fiscal Emitida
     //Executa a sele��o dos registros no banco de dados
     with QrySintegra do
          begin
               Close;
               SQL.Clear;
               SQL.Add('SELECT');
               SQL.Add('NOTAFISCAL,');
               SQL.Add('DATA,');
               SQL.Add('MODELO_NF,');
               SQL.Add('SERIE,');
               SQL.Add('SUBSERIE,');
               SQL.Add('ESPECIE,');
               SQL.Add('CPF_CLIENTE,');
               SQL.Add('CNPJ_CLIENTE,');
               SQL.Add('IE_CLIENTE,');
               SQL.Add('UF_IE_CLIENTE,');
               SQL.Add('CFOP,');
               SQL.Add('NOTA_CANCELADA,');
               SQL.ADD('CODIGO_CLIENTE,');
               SQL.ADD('valor_icms_isentas,');
               SQL.ADD('BASE_SUBSTITUICAO,');
               SQL.ADD('aliquota_icms,');
               SQL.ADD('valor_contabil,');
               SQL.ADD('base_icms,');
               SQL.ADD('valor_icms_creditado,');
               SQL.Add('CODIGO');
               SQL.Add('FROM SINTEGRA_SAIDA');
               SQL.ADD('where (tipo = ''E'') AND (');
               SQL.Add('(data BETWEEN :datahora_ini AND :datahora_fim) AND');
               SQL.Add('(modelo_nf = ''01'') OR');
               SQL.Add('(modelo_nf = ''1A'') OR');
               SQL.Add('(modelo_nf = ''03'') OR');
               SQL.Add('(modelo_nf = ''06'') OR');
               SQL.Add('(modelo_nf = ''04'') OR');
               SQL.Add('(modelo_nf = ''55'') OR');
               SQL.Add('(modelo_nf = ''22''))');
               SQL.Add('GROUP BY ');
               SQL.Add('NOTAFISCAL,');
               SQL.Add('DATA,');
               SQL.Add('MODELO_NF,');
               SQL.Add('SERIE,');
               SQL.Add('SUBSERIE,');
               SQL.Add('ESPECIE,');
               SQL.Add('CPF_CLIENTE,');
               SQL.Add('CNPJ_CLIENTE,');
               SQL.Add('IE_CLIENTE,');
               SQL.Add('UF_IE_CLIENTE,');
               SQL.Add('CFOP,');
               SQL.Add('NOTA_CANCELADA,');
               SQL.ADD('CODIGO_CLIENTE,');
               SQL.ADD('valor_icms_isentas,');
               SQL.ADD('BASE_SUBSTITUICAO,');
               SQL.ADD('aliquota_icms,');
               SQL.ADD('valor_contabil,');
               SQL.ADD('base_icms,');
               SQL.ADD('valor_icms_creditado,');

               SQL.Add('CODIGO');
               SQL.Add('ORDER BY data');
               ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
               ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;
               Open;
          end;





     QrySintegra_D.MasterSource := DtsQrySintegra;
     with QrySintegra_D do
          begin
               Close;
               SQL.Clear;
               SQL.Add('SELECT aliquota_icms, sum(subtotal) subtotal, sum(base_calculo)  base_icms, sum(valor_icms) valor_icms FROM sintegra_saida_item WHERE ');
               SQL.Add('(tipo = ''E'') AND ');
               SQL.Add('(notafiscal = :notafiscal)');
               SQL.Add('GROUP BY aliquota_icms');
               Open;


          end;




     if (QrySintegra.RecordCount > 0) then
     begin
                    while not QrySintegra.EOF do
                    begin

                                   num_nf := QrySintegra.Fields.FieldByName('notafiscal').AsString;
                                   num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 �ltimos digitos da NF
                                   frmmodulo.qrcliente.close;
                                   frmmodulo.qrcliente.sql.clear;
                                   frmmodulo.qrcliente.SQL.Add('select * from c000007 where codigo = '''+zerar(qrysintegra.fields.fieldbyname('codigo_cliente').asstring,6)+'''');
                                   frmmodulo.qrcliente.Open;

                                   //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
                                   TempStr := Registro50(frmmodulo.qrcliente.FieldByName('cpf').AsString,      //CNPJ
                                   QRYSINTEGRA.FIELDS.FIELDBYNAME('IE_CLIENTE').AsString,                             //Insc_Est
                                   datetostr(QrySintegra.Fields.FieldByName('data').AsDateTime),         //Data_Emissao_Recebimento
                                   frmmodulo.qrcliente.FieldByName('uf').AsString,                             //UF,
                                   QrySintegra.Fields.FieldByName('modelo_nf').AsString,                 //Modelo
                                   QrySintegra.Fields.FieldByName('serie').AsString,                  //Serie
                                   num_nf,                                                               //Nro
                                   QrySintegra.Fields.FieldByName('cfop').AsString,                      //CFOP
                                   'P',                                                                  //Emitente - P propio T Terceiros
                                   formatcurr('0.00', QrySintegra.Fields.FieldByName('valor_contabil').AsFloat),  //Valor_Total
                                   formatcurr('0.00', QrySintegra.Fields.FieldByName('BASE_icms').AsFloat), //Base_ICMS
                                   formatcurr('0.00', QrySintegra.Fields.FieldByName('VALOR_ICMS_creditado').AsFloat),//Valor_ICMS
                                   formatcurr('0.00', QrySintegra.FieldByName('valor_icms_isentas').AsFloat),  //Isenta
                                   formatcurr('0.00', QrySintegra.FieldByName('BASE_SUBSTITUICAO').AsFloat),
                                      //Outras
                                   formatcurr('0.00', QrySintegra.Fields.FieldByName('aliquota_icms').AsFloat),      //Aliquota
                                   QrySintegra.Fields.FieldByName('NOTA_CANCELADA').AsString                      //Situacao quanto ao cancelamento
                                   );

                                   //Executa o tratamento da string tempor�ria testando se houve erro
                                   //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
                                        if not Trata_SIntegra_Str(TempStr) then
                                        begin
                                             qnt_erro := qnt_erro + 1;
                                             Result := False;

                                             Err_Msg := Err_Msg + #13 +
                                             '-REGISTRO 50 - Saida----------------------------------------------------------'+#13+
                                             '    Codigo.....: ' + QrySintegra.Fields.FieldByName('codigo').AsString + #13 +
                                             '    Fornecedor.: ' + frmmodulo.qrcliente.fieldbyname('nome').AsString + #13 +
                                             '    Emissao....: ' + datetostr(QrySintegra.Fields.FieldByName('data').AsDateTime) + #13 +
                                             '    Modelo.....: ' + QrySintegra.Fields.FieldByName('modelo_nf').AsString + #13 +
                                             '    Serie......: ' + QrySintegra.Fields.FieldByName('serie').AsString + #13 +
                                             '    Nota Fiscal: ' + num_nf + #13 +
                                             '    CFOP.......: ' + QrySintegra.Fields.FieldByName('cfop').AsString + #13 +
                                             '    Valor_Total: ' + QrySintegra.Fields.FieldByName('valor_contabil').AsString + #13 +
                                             '    Base ICMS..: ' + QrySintegra.Fields.FieldByName('base_ICMS').AsString + #13 +
                                             '    Valor ICMS.: ' + QrySintegra.Fields.FieldByName('valor_icms_creditado').AsString + #13 +
                                             '    Isenta.....: ' + QrySintegra.FieldByName('valor_icms_isentas').AsString + #13 +
                                             '    Outras.....: ' + QrySintegra.FieldByName('BASE_SUBSTITUICAO').AsString + #13 +
                                             '    Aliquota...: ' + floattostr(QrySintegra.Fields.FieldByName('aliquota_icms').AsFloat * 100) + #13 +
                                             '    Situacao...: ' + QrySintegra.Fields.FieldByName('NOTA_CANCELADA').AsString+#13+
                                             '------------------------------------------------------------------------------';

                                        end
                                        else
                                           qnt_ok := qnt_ok + 1;


                              if not QrySintegra.EOF then
                                   QrySintegra.Next;

                              if quit_sintegra then
                                   exit;
                 end;
     end;





























     QrySintegra_D.Close;

     QrySintegra_D.MasterSource := nil;

     QrySintegra.Close;

     //Gera��o de Registro50 quanto a Entrada de Nota Fiscal
     //Executa a sele��o dos registros no banco de dados
     with QrySintegra do
          begin
               Close;
               SQL.Clear;
               SQL.Add('SELECT');
               SQL.Add('NOTAFISCAL,');
               SQL.Add('DATA,');
               SQL.Add('MODELO_NF,');
               SQL.Add('SERIE,');
               SQL.Add('SUBSERIE,');
               SQL.Add('ESPECIE,');
               SQL.Add('CPF_CLIENTE,');
               SQL.Add('CNPJ_CLIENTE,');
               SQL.Add('IE_CLIENTE,');
               SQL.Add('UF_IE_CLIENTE,');
               SQL.Add('CFOP,');
               SQL.Add('NOTA_CANCELADA,');
               SQL.ADD('CODIGO_CLIENTE,');
               SQL.ADD('valor_icms_isentas,');
               SQL.ADD('BASE_SUBSTITUICAO,');
               SQL.ADD('aliquota_icms,');
               SQL.ADD('valor_contabil,');  // aqui 
               SQL.ADD('base_icms,');
               SQL.ADD('valor_icms_creditado,');

               SQL.Add('CODIGO');
               SQL.Add('FROM SINTEGRA_ENTRADA');
               SQL.ADD('where (tipo = ''E'') AND (');
               SQL.Add('(data BETWEEN :datahora_ini AND :datahora_fim) AND');
               SQL.Add('(modelo_nf = ''01'') OR');
               SQL.Add('(modelo_nf = ''1A'') OR');
               SQL.Add('(modelo_nf = ''03'') OR');
               SQL.Add('(modelo_nf = ''06'') OR');
               SQL.Add('(modelo_nf = ''04'') OR');
               SQL.Add('(modelo_nf = ''55'') OR');
               SQL.Add('(modelo_nf = ''22''))');
               SQL.Add('GROUP BY ');
               SQL.Add('NOTAFISCAL,');
               SQL.Add('DATA,');
               SQL.Add('MODELO_NF,');
               SQL.Add('SERIE,');
               SQL.Add('SUBSERIE,');
               SQL.Add('ESPECIE,');
               SQL.Add('CPF_CLIENTE,');
               SQL.Add('CNPJ_CLIENTE,');
               SQL.Add('IE_CLIENTE,');
               SQL.Add('UF_IE_CLIENTE,');
               SQL.Add('CFOP,');
               SQL.Add('NOTA_CANCELADA,');
               SQL.ADD('CODIGO_CLIENTE,');
               SQL.ADD('valor_icms_isentas,');
               SQL.ADD('BASE_SUBSTITUICAO,');
               SQL.ADD('aliquota_icms,');
               SQL.ADD('valor_contabil,');
               SQL.ADD('base_icms,');
               SQL.ADD('valor_icms_creditado,');

               SQL.Add('CODIGO');
               SQL.Add('ORDER BY data');
               ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
               ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;
               Open;
          end;




     if (QrySintegra.RecordCount > 0) then
     begin
                    while not QrySintegra.EOF do
                    begin

                                   num_nf := QrySintegra.Fields.FieldByName('notafiscal').AsString;
                                   num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 �ltimos digitos da NF

                                   //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
                                   frmmodulo.qrfornecedor.close;
                                   frmmodulo.qrfornecedor.sql.Clear;
                                   frmmodulo.qrfornecedor.sql.add('select * from c000009 where codigo = '''+zerar(qrysintegra.Fields.fieldbyname('codigo_cliente').asstring,6)+'''');
                                   frmmodulo.qrfornecedor.open;

                                   vxinscest := somenteNumero(frmmodulo.qrfornecedor.FieldByName('ie').AsString);

                                   TempStr := Registro50(frmmodulo.qrfornecedor.FieldByName('cnpj').AsString,       //CNPJ
                                   vxinscest,                                                                   //Insc_Est
                                   datetostr(QrySintegra.Fields.FieldByName('data').AsDateTime),              //Data_Emissao_Recebimento
                                   frmmodulo.qrfornecedor.FieldByName('UF').AsString,                               //UF
                                   QrySintegra.Fields.FieldByName('modelo_nf').AsString,                      //Modelo
                                   QrySintegra.Fields.FieldByName('serie').AsString,                       //Serie
                                   num_nf,                                                                    //Nro
                                   QrySintegra.Fields.FieldByName('cfop').AsString,                           //CFOP
                                   'T',                                                                       // Emitente - P propio T Terceiros
                                   formatcurr('0.00', QrySintegra.Fields.FieldByName('valor_contabil').AsFloat),  //Valor_Total
                                   formatcurr('0.00', QrySintegra.Fields.FieldByName('BASE_icms').AsFloat), //Base_ICMS
                                   formatcurr('0.00', QrySintegra.Fields.FieldByName('VALOR_ICMS_creditado').AsFloat),//Valor_ICMS
                                   formatcurr('0.00', QrySintegra.FieldByName('valor_icms_isentas').AsFloat),  //Isenta
                                   formatcurr('0.00', QrySintegra.FieldByName('BASE_SUBSTITUICAO').AsFloat),
                                      //Outras
                                   formatcurr('0.00', QrySintegra.Fields.FieldByName('aliquota_icms').AsFloat),      //Aliquota
                                   QrySintegra.Fields.FieldByName('NOTA_CANCELADA').AsString                      //Situacao quanto ao cancelamento
                                   );

                                   //Executa o tratamento da string tempor�ria testando se houve erro
                                   //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
                                        if not Trata_SIntegra_Str(TempStr) then
                                        begin
                                             qnt_erro := qnt_erro + 1;
                                             Result := False;

                                             Err_Msg := Err_Msg + #13 +
                                             '-REGISTRO 50 - Entrada--------------------------------------------------------'+#13+
                                             '    Codigo.....: ' + QrySintegra.Fields.FieldByName('codigo').AsString + #13 +
                                             '    Fornecedor.: ' + frmmodulo.qrfornecedor.fieldbyname('nome').AsString + #13 +
                                             '    Emissao....: ' + datetostr(QrySintegra.Fields.FieldByName('data').AsDateTime) + #13 +
                                             '    Modelo.....: ' + QrySintegra.Fields.FieldByName('modelo_nf').AsString + #13 +
                                             '    Serie......: ' + QrySintegra.Fields.FieldByName('serie').AsString + #13 +
                                             '    Nota Fiscal: ' + num_nf + #13 +
                                             '    CFOP.......: ' + QrySintegra.Fields.FieldByName('cfop').AsString + #13 +
                                             '    Valor_Total: ' + QrySintegra.Fields.FieldByName('valor_contabil').AsString + #13 +
                                             '    Base ICMS..: ' + QrySintegra.Fields.FieldByName('base_ICMS').AsString + #13 +
                                             '    Valor ICMS.: ' + QrySintegra.Fields.FieldByName('valor_icms_creditado').AsString + #13 +
                                             '    Isenta.....: ' + QrySintegra.FieldByName('valor_icms_isentas').AsString + #13 +
                                             '    Outras.....: ' + QrySintegra.FieldByName('BASE_SUBSTITUICAO').AsString + #13 +
                                             '    Aliquota...: ' + floattostr(QrySintegra.Fields.FieldByName('aliquota_icms').AsFloat * 100) + #13 +
                                             '    Situacao...: ' + QrySintegra.Fields.FieldByName('NOTA_CANCELADA').AsString+#13+
                                             '------------------------------------------------------------------------------';

                                        end
                                        else
                                           qnt_ok := qnt_ok + 1;


                              if not QrySintegra.EOF then
                                   QrySintegra.Next;

                              if quit_sintegra then
                                   exit;
                 end;
     end;















     QrySintegra_D.Close;

     QrySintegra_D.MasterSource := nil;
     QrySintegra.Close;

end;




//Registro54 - Registro de Produto (Classifica��o Fiscal)
function TfrmLista_Vendas_Periodo.sRegistro54(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr, num_nf: string;
begin
 Result := True;
 Gera_R75 := True;                              //Setado sempre que Registros 54, 60I, 60R, 74 ou 77 gerados!

 //Gera��o de Registro54 quanto a Sa�da de Nota Fiscal
 //Executa a sele��o dos registros no banco de dados
 with QrySintegra do
  begin
   Close;
   SQL.Clear;
   SQL.Add('SELECT');
               SQL.Add('NOTAFISCAL,');
               SQL.ADD('MAX(valor_ipi_creditado) valor_ipi_creditado,');
               SQL.ADD('MAX(base_substituicao) base_substituicao,');
               SQL.Add('MAX(base_icms) base_icms,');
               SQL.Add('DATA,');
               SQL.Add('MODELO_NF,');
               SQL.Add('SERIE,');
               SQL.Add('SUBSERIE,');
               SQL.Add('ESPECIE,');
               SQL.Add('CPF_CLIENTE,');
               SQL.Add('CNPJ_CLIENTE,');
               SQL.Add('IE_CLIENTE,');
               SQL.Add('UF_IE_CLIENTE,');
//               SQL.Add('CFOP,');
               SQL.Add('NOTA_CANCELADA,');
               SQL.ADD('CODIGO_CLIENTE,');
//               SQL.ADD('valor_icms_isentas,');
               SQL.ADD('valor_despesas,');
               SQL.Add('CODIGO');



   SQL.ADD('FROM SINTEGRA_SAIDA where (tipo = ''S'') AND (');
   SQL.Add('(data BETWEEN :datahora_ini AND :datahora_fim) AND');
   SQL.Add('(modelo_nf = ''01'') OR');
   SQL.Add('(modelo_nf = ''1A'') OR');
   SQL.Add('(modelo_nf = ''03'') OR');
   SQL.Add('(modelo_nf = ''06'') OR');
   SQL.Add('(modelo_nf = ''55'') OR');
   SQL.Add('(modelo_nf = ''22''))');
   SQL.Add('GROUP BY');
               SQL.Add('NOTAFISCAL,');
               SQL.Add('DATA,');
               SQL.Add('MODELO_NF,');
               SQL.Add('SERIE,');
               SQL.Add('SUBSERIE,');
               SQL.Add('ESPECIE,');
               SQL.Add('CPF_CLIENTE,');
               SQL.Add('CNPJ_CLIENTE,');
               SQL.Add('IE_CLIENTE,');
               SQL.Add('UF_IE_CLIENTE,');
//               SQL.Add('CFOP,');
               SQL.Add('NOTA_CANCELADA,');
               SQL.ADD('CODIGO_CLIENTE,');
//               SQL.ADD('valor_icms_isentas,');
               SQL.ADD('valor_despesas,');
               SQL.Add('CODIGO');
   SQL.Add('ORDER BY data');
   ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
   ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;
   Open;
  end;

 QrySintegra_D.MasterSource := DtsQrySintegra;
 with QrySintegra_D do
  begin
   Close;

   SQL.Clear;

   SQL.Add('SELECT * FROM SINTEGRA_SAIDA_ITEM WHERE '); // C000085
   SQL.Add('tipo = ''S'' AND');
   SQL.Add('codnota = :codigo');
   //SQL.Add('notafiscal = "'+qrysintegra.Fields.fieldbyname('notafiscal').AsString+'"');
   SQL.Add('ORDER BY num_item');
   Open;
  end;

 if QrySintegra.RecordCount > 0 then
  begin
   while not QrySintegra.EOF do
    begin
     while not QrySintegra_D.EOF do
      begin

        num_nf := QrySintegra.Fields.FieldByName('notafiscal').AsString;
        num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 �ltimos digitos da NF

       //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
       TempStr := Registro54(QrySintegra.Fields.FieldByName('cnpj_cliente').AsString, //CNPJ
         QrySintegra.Fields.FieldByName('modelo_nf').AsString,                             //Modelo
         QrySintegra.Fields.FieldByName('serie').AsString,                              //Serie
         num_nf,                                                                           //Nro
         QrySintegra_d.Fields.FieldByName('cfop').AsString,                                  //CFOP
         QrySintegra_D.Fields.FieldByName('s_trib').AsString,                              //Codigo da Situacao Tributaria
         QrySintegra_D.Fields.FieldByName('num_item').AsString,                            //N� Item
         QrySintegra_D.Fields.FieldByName('cd_produto').AsString,                        //Codigo Produto
         formatcurr('0.000', QrySintegra_D.Fields.FieldByName('quantidade').AsFloat),       //Quantidade
         formatcurr('0.00', RoundNum(QrySintegra_D.Fields.FieldByName('subtotal').AsFloat,2)),         //Valor Produto
         formatcurr('0.00', RoundNum(QrySintegra_D.Fields.FieldByName('valor_desconto').AsFloat,2)),   //Valor Desconto
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('base_icms').AsFloat),          //Base ICMS
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('base_icms_subst').AsFloat),    //Base ICMS S. Trib.
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('valor_ipi').AsFloat),          //Valor IPI
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('aliquota_icms').AsFloat)       //Aliquota ICMS
         );


       //Executa o tratamento da string tempor�ria testando se houve erro
       //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
       if not Trata_SIntegra_Str(TempStr) then
        begin
         qnt_erro := qnt_erro + 1;
         Result := False;

         Err_Msg := Err_Msg + #13 +
           '-REGISTRO 54 - Saida----------------------------------------------------------'+#13+
           //'    Nota Fiscal......: ' + QrySintegra.Fields.FieldByName('notafiscal').AsString + #13 +
           //'    Fornecedor.......: ' + frmmodulo.qrfornecedor.fieldbyname('nome').AsString + #13 +
           //'    Cod.Nota Fiscal..: ' + QrySintegra_D.Fields.FieldByName('notafiscal').AsString + #13 +
           '    CNPJ.............: ' + QrySintegra.Fields.FieldByName('cnpj_cliente').AsString + #13 +
           '    Modelo...........: ' + QrySintegra.Fields.FieldByName('modelo_nf').AsString + #13 +
           '    Serie............: ' + QrySintegra.Fields.FieldByName('serie').AsString + #13 +
           '    Nota Fiscal......: ' + num_nf + #13 +
           '    CFOP.............: ' + QrySintegra_D.Fields.FieldByName('cfop').AsString + #13 +
           '    CST..............: ' + QrySintegra_D.Fields.FieldByName('s_trib').AsString + #13 +
           '    N� Item..........: ' + QrySintegra_D.Fields.FieldByName('num_item').AsString + #13 +
           '    Codigo Produto...: ' + QrySintegra_D.Fields.FieldByName('cd_produto').AsString + #13 +
           '    Quantidade.......: ' + QrySintegra_D.Fields.FieldByName('quantidade').AsString + #13 +
           '    Valor Produto....: ' + QrySintegra_D.Fields.FieldByName('subtotal').AsString + #13 +
           '    Valor Desconto...: ' + QrySintegra_D.Fields.FieldByName('valor_desconto').AsString + #13 +
           '    Base ICMS........: ' + QrySintegra_D.Fields.FieldByName('base_icms').AsString + #13 +
           '    Base ICMS Subst..: ' + QrySintegra_D.Fields.FieldByName('base_icms_subst').AsString + #13 +
           '    Valor IPI........: ' + QrySintegra_D.Fields.FieldByName('valor_ipi').AsString + #13 +
           '    Aliquota ICMS....: ' + floattostr(QrySintegra_D.Fields.FieldByName('aliquota_icms').AsFloat * 100)+#13+
           '------------------------------------------------------------------------------';

        end
       else
        qnt_ok := qnt_ok + 1;

       if not QrySintegra_D.EOF then
         QrySintegra_D.Next;

       if quit_sintegra then
         exit;
      end;

     if not QrySintegra.EOF then
       QrySintegra.Next;

     if quit_sintegra then
       exit;
    end;
  end;

 QrySintegra_D.Close;

 QrySintegra_D.MasterSource := nil;

 QrySintegra.Close;







 //Gera��o de Registro54 quanto a Sa�da de Nota Fiscal
 //Executa a sele��o dos registros no banco de dados
 with QrySintegra do
  begin
   Close;
   SQL.Clear;
   SQL.Add('SELECT');
               SQL.Add('NOTAFISCAL,');
               SQL.ADD('MAX(valor_ipi_creditado) valor_ipi_creditado,');
               SQL.ADD('MAX(base_substituicao) base_substituicao,');
               SQL.Add('MAX(base_icms) base_icms,');
               SQL.Add('DATA,');
               SQL.Add('MODELO_NF,');
               SQL.Add('SERIE,');
               SQL.Add('SUBSERIE,');
               SQL.Add('ESPECIE,');
               SQL.Add('CPF_CLIENTE,');
               SQL.Add('CNPJ_CLIENTE,');
               SQL.Add('IE_CLIENTE,');
               SQL.Add('UF_IE_CLIENTE,');
//               SQL.Add('CFOP,');
               SQL.Add('NOTA_CANCELADA,');
               SQL.ADD('CODIGO_CLIENTE,');
//               SQL.ADD('valor_icms_isentas,');
               SQL.ADD('valor_despesas,');
               SQL.Add('CODIGO');



   SQL.ADD('FROM SINTEGRA_SAIDA where (tipo = ''E'') AND (');
   SQL.Add('(data BETWEEN :datahora_ini AND :datahora_fim) AND');
   SQL.Add('(modelo_nf = ''01'') OR');
   SQL.Add('(modelo_nf = ''1A'') OR');
   SQL.Add('(modelo_nf = ''03'') OR');
   SQL.Add('(modelo_nf = ''06'') OR');
   SQL.Add('(modelo_nf = ''55'') OR');
   SQL.Add('(modelo_nf = ''22''))');
   SQL.Add('GROUP BY');

               SQL.Add('NOTAFISCAL,');
               SQL.Add('DATA,');
               SQL.Add('MODELO_NF,');
               SQL.Add('SERIE,');
               SQL.Add('SUBSERIE,');
               SQL.Add('ESPECIE,');
               SQL.Add('CPF_CLIENTE,');
               SQL.Add('CNPJ_CLIENTE,');
               SQL.Add('IE_CLIENTE,');
               SQL.Add('UF_IE_CLIENTE,');
//               SQL.Add('CFOP,');
               SQL.Add('NOTA_CANCELADA,');
               SQL.ADD('CODIGO_CLIENTE,');
//               SQL.ADD('valor_icms_isentas,');
               SQL.ADD('valor_despesas,');
               SQL.Add('CODIGO');
   SQL.Add('ORDER BY data');
   ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
   ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;
   Open;
  end;



 QrySintegra_D.MasterSource := DtsQrySintegra;
 with QrySintegra_D do
  begin
   Close;

   SQL.Clear;

   SQL.Add('SELECT * FROM SINTEGRA_SAIDA_ITEM WHERE '); // C000085
   SQL.Add('tipo = ''E'' AND');
   SQL.Add('notafiscal = :notafiscal');
   //SQL.Add('notafiscal = "'+qrysintegra.Fields.fieldbyname('notafiscal').AsString+'"');
   SQL.Add('ORDER BY num_item');
   Open;
  end;

 if QrySintegra.RecordCount > 0 then
  begin
   while not QrySintegra.EOF do
    begin
     while not QrySintegra_D.EOF do
      begin
       num_nf := QrySintegra.Fields.FieldByName('notafiscal').AsString;
       num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 �ltimos digitos da NF

       //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
       TempStr := Registro54(QrySintegra.Fields.FieldByName('cnpj_cliente').AsString, //CNPJ
         QrySintegra.Fields.FieldByName('modelo_nf').AsString,                             //Modelo
         QrySintegra.Fields.FieldByName('serie').AsString,                              //Serie
         num_nf,                                                                           //Nro
         QrySintegra_D.Fields.FieldByName('cfop').AsString,                                  //CFOP
         QrySintegra_D.Fields.FieldByName('s_trib').AsString,                              //Codigo da Situacao Tributaria
         QrySintegra_D.Fields.FieldByName('num_item').AsString,                            //N� Item
         QrySintegra_D.Fields.FieldByName('cd_produto').AsString,                        //Codigo Produto
         formatcurr('0.000', QrySintegra_D.Fields.FieldByName('quantidade').AsFloat),       //Quantidade
         formatcurr('0.00', RoundNum(QrySintegra_D.Fields.FieldByName('TOTAL').AsFloat,2)),         //Valor Produto   DANILO
         formatcurr('0.00', RoundNum(QrySintegra_D.Fields.FieldByName('valor_desconto').AsFloat,2)),   //Valor Desconto
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('base_icms').AsFloat),          //Base ICMS
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('base_icms_subst').AsFloat),    //Base ICMS S. Trib.
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('valor_ipi').AsFloat),          //Valor IPI
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('aliquota_icms').AsFloat)       //Aliquota ICMS
         );
       //Executa o tratamento da string tempor�ria testando se houve erro
       //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
       if not Trata_SIntegra_Str(TempStr) then
        begin
         qnt_erro := qnt_erro + 1;
         Result := False;

         Err_Msg := Err_Msg + #13 +
           '-REGISTRO 54 - Entrada Emitida------------------------------------------------'+#13+
           //'    Nota Fiscal......: ' + QrySintegra.Fields.FieldByName('notafiscal').AsString + #13 +
           //'    Cod.Nota Fiscal..: ' + QrySintegra_D.Fields.FieldByName('notafiscal').AsString + #13 +
           '    CNPJ.............: ' + QrySintegra.Fields.FieldByName('cnpj_cliente').AsString + #13 +
           '    Modelo...........: ' + QrySintegra.Fields.FieldByName('modelo_nf').AsString + #13 +
           '    Serie............: ' + QrySintegra.Fields.FieldByName('serie').AsString + #13 +
           '    Nota Fiscal......: ' + num_nf + #13 +
           '    CFOP.............: ' + QrySintegra_D.Fields.FieldByName('cfop').AsString + #13 +
           '    CST..............: ' + QrySintegra_D.Fields.FieldByName('s_trib').AsString + #13 +
           '    N� Item..........: ' + QrySintegra_D.Fields.FieldByName('num_item').AsString + #13 +
           '    Codigo Produto...: ' + QrySintegra_D.Fields.FieldByName('cd_produto').AsString + #13 +
           '    Quantidade.......: ' + QrySintegra_D.Fields.FieldByName('quantidade').AsString + #13 +
           '    Valor Produto....: ' + QrySintegra_D.Fields.FieldByName('subtotal').AsString + #13 +
           '    Valor Desconto...: ' + QrySintegra_D.Fields.FieldByName('valor_desconto').AsString + #13 +
           '    Base ICMS........: ' + QrySintegra_D.Fields.FieldByName('base_icms').AsString + #13 +
           '    Base ICMS Subst..: ' + QrySintegra_D.Fields.FieldByName('base_icms_subst').AsString + #13 +
           '    Valor IPI........: ' + QrySintegra_D.Fields.FieldByName('valor_ipi').AsString + #13 +
           '    Aliquota ICMS....: ' + floattostr(QrySintegra_D.Fields.FieldByName('aliquota_icms').AsFloat * 100)+#13+
           '------------------------------------------------------------------------------';

        end
       else
        qnt_ok := qnt_ok + 1;

       if not QrySintegra_D.EOF then
         QrySintegra_D.Next;

       if quit_sintegra then
         exit;
      end;

     if not QrySintegra.EOF then
       QrySintegra.Next;

     if quit_sintegra then
       exit;
    end;
  end;

 QrySintegra_D.Close;

 QrySintegra_D.MasterSource := nil;

 QrySintegra.Close;
























 //Gera��o de Registro54 quanto a Entrada de Nota Fiscal
 //Executa a sele��o dos registros no banco de dados
 with QrySintegra do
  begin
   Close;
   SQL.Clear;
   SQL.Add('SELECT');
               SQL.Add('NOTAFISCAL,');
               SQL.ADD('MAX(valor_ipi_creditado) valor_ipi_creditado,');
               SQL.ADD('MAX(base_substituicao) base_substituicao,');
               SQL.Add('MAX(base_icms) base_icms,');
               SQL.Add('DATA,');
               SQL.Add('MODELO_NF,');
               SQL.Add('SERIE,');
               SQL.Add('SUBSERIE,');
               SQL.Add('ESPECIE,');
               SQL.Add('CPF_CLIENTE,');
               SQL.Add('CNPJ_CLIENTE,');
               SQL.Add('IE_CLIENTE,');
               SQL.Add('UF_IE_CLIENTE,');
//               SQL.Add('CFOP,');
               SQL.Add('NOTA_CANCELADA,');
               SQL.ADD('CODIGO_CLIENTE,');
//               SQL.ADD('valor_icms_isentas,');
//               SQL.ADD('valor_despesas,');
               SQL.Add('CODIGO');

               SQL.ADD('FROM SINTEGRA_entrada where (tipo = ''E'') AND (');
               SQL.Add('(data BETWEEN :datahora_ini AND :datahora_fim) AND');
               SQL.Add('(modelo_nf = ''01'') OR');
               SQL.Add('(modelo_nf = ''1A'') OR');
               SQL.Add('(modelo_nf = ''03'') OR');
               SQL.Add('(modelo_nf = ''06'') OR');
               SQL.Add('(modelo_nf = ''55'') OR');
               SQL.Add('(modelo_nf = ''22''))');
               SQL.Add('GROUP BY');

               SQL.Add('NOTAFISCAL,');
               SQL.Add('DATA,');
               SQL.Add('MODELO_NF,');
               SQL.Add('SERIE,');
               SQL.Add('SUBSERIE,');
               SQL.Add('ESPECIE,');
               SQL.Add('CPF_CLIENTE,');
               SQL.Add('CNPJ_CLIENTE,');
               SQL.Add('IE_CLIENTE,');
               SQL.Add('UF_IE_CLIENTE,');
//               SQL.Add('CFOP,');
               SQL.Add('NOTA_CANCELADA,');
               SQL.ADD('CODIGO_CLIENTE,');
//               SQL.ADD('valor_icms_isentas,');
//               SQL.ADD('valor_despesas,');
               SQL.Add('CODIGO');
   SQL.Add('ORDER BY data');
   ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
   ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;
   Open;
  end;



 QrySintegra_D.MasterSource := DtsQrySintegra;
 with QrySintegra_D do
  begin
   Close;

   SQL.Clear;

   SQL.Add('SELECT * FROM SINTEGRA_ENTRADA_ITEM WHERE ');
   SQL.Add('tipo = ''E'' AND ');
//   SQL.Add('notafiscal = :notafiscal');
   SQL.Add('CODNOTA = :CODIGO');
   SQL.Add('ORDER BY num_item');
   Open;
  end;




 if (QrySintegra.RecordCount > 0) then
  begin
   while not QrySintegra.EOF do
    begin


     while not QrySintegra_D.EOF do
      begin
          num_nf := QrySintegra.Fields.FieldByName('notafiscal').AsString;
          num_nf := trim(copy(num_nf, length(num_nf) - 6, length(num_nf)));        //utilizando apenas 6 �ltimos digitos da NF

          //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
          frmmodulo.qrfornecedor.close;
          frmmodulo.qrfornecedor.sql.Clear;
          frmmodulo.qrfornecedor.sql.add('select * from c000009 where codigo = '''+zerar(qrysintegra.Fields.fieldbyname('codigo_cliente').asstring,6)+'''');
          frmmodulo.qrfornecedor.open;

          vxinscest := somenteNumero(frmmodulo.qrfornecedor.FieldByName('ie').AsString);

       //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
       TempStr := Registro54(frmmodulo.qrfornecedor.FieldByName('cnpj').AsString,           //CNPJ
         QrySintegra.Fields.FieldByName('modelo_nf').AsString,                           //Modelo
         QrySintegra.Fields.FieldByName('serie').AsString,                            //Serie
         num_nf,                                                                         //Nro
         QrySintegra_D.Fields.FieldByName('cfop').AsString,                                //CFOP
         QrySintegra_D.Fields.FieldByName('s_trib').AsString,                            //Codigo da Situacao Tributaria
         QrySintegra_D.Fields.FieldByName('num_item').AsString,                          //N� Item
         QrySintegra_D.Fields.FieldByName('cd_produto').AsString,                      //Codigo Produto
         formatcurr('0.000', QrySintegra_D.Fields.FieldByName('quantidade').AsFloat),     //Quantidade
         formatcurr('0.00', RoundNum(QrySintegra_D.Fields.FieldByName('subtotal').AsFloat-QrySintegra_D.Fields.FieldByName('valor_desconto').AsFloat,2)),       //Valor Produto
         formatcurr('0.00', RoundNum(QrySintegra_D.Fields.FieldByName('valor_desconto').AsFloat,2)), //Valor Desconto
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('base_icms').AsFloat),        //Base ICMS
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('base_icms_subst').AsFloat),  //Base ICMS S. Trib.
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('valor_ipi').AsFloat),        //Valor IPI
         formatcurr('0.00', QrySintegra_D.Fields.FieldByName('aliquota_icms').AsFloat)   //Aliquota ICMS
         );

       //Executa o tratamento da string tempor�ria testando se houve erro
       //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
       if not Trata_SIntegra_Str(TempStr) then
        begin
         qnt_erro := qnt_erro + 1;
         Result := False;

         Err_Msg := Err_Msg + #13 +
           '-REGISTRO 54 - Entrada--------------------------------------------------------'+#13+
           //'    Nota Fiscal......: ' + QrySintegra.Fields.FieldByName('notafiscal').AsString + #13 +
           '    Fornecedor.......: ' + frmmodulo.qrfornecedor.fieldbyname('nome').AsString + #13 +
           //'    Cod.Nota Fiscal..: ' + QrySintegra_D.Fields.FieldByName('notafiscal').AsString + #13 +
           '    CNPJ.............: ' + QrySintegra.Fields.FieldByName('cnpj_cliente').AsString + #13 +
           '    Modelo...........: ' + QrySintegra.Fields.FieldByName('modelo_nf').AsString + #13 +
           '    Serie............: ' + QrySintegra.Fields.FieldByName('serie').AsString + #13 +
           '    Nota Fiscal......: ' + num_nf + #13 +
           '    CFOP.............: ' + QrySintegra_D.Fields.FieldByName('cfop').AsString + #13 +
           '    CST..............: ' + QrySintegra_D.Fields.FieldByName('s_trib').AsString + #13 +
           '    N� Item..........: ' + QrySintegra_D.Fields.FieldByName('num_item').AsString + #13 +
           '    Codigo Produto...: ' + QrySintegra_D.Fields.FieldByName('cd_produto').AsString + #13 +
           '    Quantidade.......: ' + QrySintegra_D.Fields.FieldByName('quantidade').AsString + #13 +
           '    Valor Produto....: ' + QrySintegra_D.Fields.FieldByName('total').AsString + #13 +
           '    Valor Desconto...: ' + QrySintegra_D.Fields.FieldByName('valor_desconto').AsString + #13 +
           '    Base ICMS........: ' + QrySintegra_D.Fields.FieldByName('base_icms').AsString + #13 +
           '    Base ICMS Subst..: ' + QrySintegra_D.Fields.FieldByName('base_icms_subst').AsString + #13 +
           '    Valor IPI........: ' + QrySintegra_D.Fields.FieldByName('valor_ipi').AsString + #13 +
           '    Aliquota ICMS....: ' + floattostr(QrySintegra_D.Fields.FieldByName('aliquota_icms').AsFloat * 100)+#13+
           '------------------------------------------------------------------------------';

        end
       else
        qnt_ok := qnt_ok + 1;

       if not QrySintegra_D.EOF then
         QrySintegra_D.Next;

       if quit_sintegra then
         exit;
      end;

     if not QrySintegra.EOF then
       QrySintegra.Next;

     if quit_sintegra then
       exit;
    end;
  end;

 QrySintegra_D.Close;

 QrySintegra_D.MasterSource := nil;

 QrySintegra.Close;
end;



//Registro60
function TfrmLista_Vendas_Periodo.sRegistro60(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
  ALIQUOTA, TempStr: string;
  i: integer;
  BASE_ICMS, VALOR_ICMS, icms : real;
  data_atual : TDateTime;
  dia_atual : boolean;
begin
 Result := True;

 //Executa a sele��o dos registros no banco de dados
 with QrySintegra do
  begin
   Close;
   SQL.Clear;
   SQL.Add('SELECT * FROM sintegra_rEG60');
   SQL.Add('where (data_emissao BETWEEN :datahora_ini AND :datahora_fim)');
   SQL.Add('ORDER BY data_emissao,nro_serie_eqp ');
   ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
   ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;
   Open;


   if RecordCount > 0 then
    begin
      v60d := 0;
      v60i := 0;



     while not EOF do
      begin

        dia_atual := true;
        data_atual := QrySIntegra.FieldByName('data_emissao').AsDateTime;

       //Registro60Mestre - Registro de informa��o de opera��es/presta��es realizadas
       //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
       TempStr := Registro60M(Fields.FieldByName('data_emissao').AsString,      //Data_Emissao
         Fields.FieldByName('nro_serie_eqp').AsString,                          //Nro_Serie_Eqp
         Fields.FieldByName('nro_ordem_eqp').AsString,                          //Nro_Ordem_Eqp
         Fields.FieldByName('modelo_doc').AsString,                             //Modelo_Doc
         Fields.FieldByName('nro_contador_inicio').AsString,                    //Nro_Contador_Inicio
         Fields.FieldByName('nro_contador_fim').AsString,                       //Nro_Contador_Fim
         Fields.FieldByName('nro_contador_z').AsString,                         //Nro_Contador_Z
         Fields.FieldByName('contador_reinicio').AsString,                      //Contador_Reinicio
         Formatcurr('0.00', Fields.FieldByName('valor_venda_bruta').AsFloat),   //Valor_Venda_Bruta
         formatcurr('0.00', Fields.FieldByName('valor_total_geral').AsFloat),   //Valor_Total_Geral
         Fields.FieldByName('brancos').AsString                                 //Brancos
         );

       //Executa o tratamento da string tempor�ria testando se houve erro
       //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
       if not Trata_SIntegra_Str(TempStr) then
        begin
         qnt_erro := qnt_erro + 1;
         Result := False;

         Err_Msg := Err_Msg + #13 +
           '    Cod_Sintegra_R60M: ' +
           Fields.FieldByName('cod_sintegra_r60').AsString + #13 +
           '    Emissao...........: ' + Fields.FieldByName('data_emissao').AsString + #13 +
           '    N� Serie..........: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
           '    N� Ordem..........: ' + Fields.FieldByName('nro_ordem_eqp').AsString + #13 +
           '    Modelo............: ' + Fields.FieldByName('modelo_doc').AsString + #13 +
           '    N� Contador Inicio: ' + Fields.FieldByName('nro_contador_inicio').AsString + #13 +
           '    N� Contador Fim...: ' + Fields.FieldByName('nro_contador_fim').AsString + #13 +
           '    N� Contador Z.....: ' + Fields.FieldByName('nro_contador_z').AsString + #13 +
           '    Contador Reinicio.: ' + Fields.FieldByName('contador_reinicio').AsString + #13 +
           '    Venda Bruta.......: ' + Fields.FieldByName('valor_venda_bruta').AsString + #13 +
           '    Total Geral.......: ' + Fields.FieldByName('total_final_dia').AsString + #13 +
           '    Brancos...........: ' + Fields.FieldByName('brancos').AsString;
        end
       else
        qnt_ok := qnt_ok + 1;

       //Registro60Analitico - Registro de informa��o de opera��es/presta��es realizadas com ECF
       //Quanto ao Cancelamento
       if Fields.FieldByName('cancelamento').asfloat > 0 then
        begin
         //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
         TempStr := Registro60A(Fields.FieldByName('data_emissao').AsString,      //Data_Emissao
           Fields.FieldByName('nro_serie_eqp').AsString,                          //Nro_PDV
           'CANC',                                                                //S_Trib_Aliquota
           formatcurr('0.00', Fields.FieldByName('cancelamento').asFloat),        //Valor_TParcial
           Fields.FieldByName('brancos').AsString                                 //Brancos
           );

         //Executa o tratamento da string tempor�ria testando se houve erro
         //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_Sintegra_R60: ' + Fields.FieldByName('cod_sintegra_r60').AsString + #13 +
             '    Emissao.........: ' + Fields.FieldByName('data_emissao').AsString + #13 +
             '    N� PDV..........: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
             '    Aliquota........: ' + 'CANC' + #13 +
             '    Total Parcial...: ' + Fields.FieldByName('cancelamento').AsString + #13 +
             '    Brancos.........: ' + Fields.FieldByName('brancos').AsString;
          end
         else
          qnt_ok := qnt_ok + 1;
        end;

       //Registro60Analitico - Registro de informa��o de opera��es/presta��es realizadas com ECF
       //Quanto ao Desconto
       if Fields.FieldByName('desconto').asfloat > 0 then
        begin
         //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
         TempStr := Registro60A(Fields.FieldByName('data_emissao').AsString,      //Data_Emissao
           Fields.FieldByName('nro_serie_eqp').AsString,                          //Nro_PDV
           'DESC',                                                                //S_Trib_Aliquota
           formatcurr('0.00', Fields.FieldByName('desconto').AsFloat),            //Valor_TParcial
           Fields.FieldByName('brancos').AsString                                 //Brancos
           );

         //Executa o tratamento da string tempor�ria testando se houve erro
         //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_Sintegra_R60: ' + Fields.FieldByName('cod_sintegra_r60').AsString + #13 +
             '    Emissao.........: ' + Fields.FieldByName('data_emissao').AsString + #13 +
             '    N� PDV..........: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
             '    Aliquota........: ' + 'DESC' + #13 +
             '    Total Parcial...: ' + Fields.FieldByName('desconto').AsString + #13 +
             '    Brancos.........: ' + Fields.FieldByName('brancos').AsString
          end
         else
          qnt_ok := qnt_ok + 1;
        end;

       //Registro60Analitico - Registro de informa��o de opera��es/presta��es realizadas com ECF
       //Quanto ao ISS
       if Fields.FieldByName('issqn').asfloat > 0 then
        begin
         //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
         TempStr := Registro60A(Fields.FieldByName('data_emissao').AsString,      //Data_Emissao
           Fields.FieldByName('nro_serie_eqp').AsString,                          //Nro_PDV
           'ISS',                                                                 //S_Trib_Aliquota
           formatcurr('0.00', Fields.FieldByName('issqn').AsFloat),               //Valor_TParcial
           Fields.FieldByName('brancos').AsString                                 //Brancos
           );

         //Executa o tratamento da string tempor�ria testando se houve erro
         //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_Sintegra_R60: ' + Fields.FieldByName('cod_sintegra_r60').AsString + #13 +
             '    Emissao.........: ' + Fields.FieldByName('data_emissao').AsString + #13 +
             '    N� PDV..........: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
             '    Aliquota........: ' + 'ISS' + #13 +
             '    Total Parcial...: ' + Fields.FieldByName('issqn').AsString + #13 +
             '    Brancos.........: ' + Fields.FieldByName('brancos').AsString;
          end
         else
          qnt_ok := qnt_ok + 1;
        end;

       //Registro60Analitico - Registro de informa��o de opera��es/presta��es realizadas com ECF
       //Quanto a Substitui��o Tributaria
       if Fields.FieldByName('substituicao_tributaria').asfloat > 0 then
        begin
         //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
         TempStr := Registro60A(Fields.FieldByName('data_emissao').AsString,          //Data_Emissao
           Fields.FieldByName('nro_serie_eqp').AsString,                              //Nro_PDV
           'F',                                                                       //S_Trib_Aliquota
           formatcurr('0.00', Fields.FieldByName('substituicao_tributaria').AsFloat), //Valor_TParcial
           Fields.FieldByName('brancos').AsString                                     //Brancos
           );

         //Executa o tratamento da string tempor�ria testando se houve erro
         //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_Sintegra_R60: ' + Fields.FieldByName('cod_sintegra_r60').AsString + #13 +
             '    Emissao.........: ' + Fields.FieldByName('data_emissao').AsString + #13 +
             '    N� PDV..........: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
             '    Aliquota........: ' + 'F' + #13 +
             '    Total Parcial...: ' + Fields.FieldByName('substituicao_tributaria').AsString + #13 +
             '    Brancos.........: ' + Fields.FieldByName('brancos').AsString
          end
         else
          qnt_ok := qnt_ok + 1;
        end;

       //Registro60Analitico - Registro de informa��o de opera��es/presta��es realizadas com ECF
       //Quanto a Isen��o
       if Fields.FieldByName('isento').asfloat > 0 then
        begin
         //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
         TempStr := Registro60A(Fields.FieldByName('data_emissao').AsString,      //Data_Emissao
           Fields.FieldByName('nro_serie_eqp').AsString,                          //Nro_PDV
           'I',                                                                   //S_Trib_Aliquota
           formatcurr('0.00', Fields.FieldByName('isento').AsFloat),              //Valor_TParcial
           Fields.FieldByName('brancos').AsString                                 //Brancos
           );

         //Executa o tratamento da string tempor�ria testando se houve erro
         //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_Sintegra_R60: ' + Fields.FieldByName('cod_sintegra_r60').AsString + #13 +
             '    Emissao.........: ' + Fields.FieldByName('data_emissao').AsString + #13 +
             '    N� PDV..........: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
             '    Aliquota........: ' + 'I' + #13 +
             '    Total Parcial...: ' + Fields.FieldByName('isento').AsString + #13 +
             '    Brancos.........: ' + Fields.FieldByName('brancos').AsString;
          end
         else
          qnt_ok := qnt_ok + 1;
        end;

       //Registro60Analitico - Registro de informa��o de opera��es/presta��es realizadas com ECF
       //Quanto a N�o Tributa��o
       if Fields.FieldByName('nao_incidencia').asfloat > 0 then
        begin
         //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
         TempStr := Registro60A(Fields.FieldByName('data_emissao').AsString,      //Data_Emissao
           Fields.FieldByName('nro_serie_eqp').AsString,                          //Nro_PDV
           'N',                                                                   //S_Trib_Aliquota
           formatcurr('0.00', Fields.FieldByName('nao_incidencia').AsFloat),      //Valor_TParcial
           Fields.FieldByName('brancos').AsString                                 //Brancos
           );

         //Executa o tratamento da string tempor�ria testando se houve erro
         //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
         if not Trata_SIntegra_Str(TempStr) then
          begin
           qnt_erro := qnt_erro + 1;
           Result := False;

           Err_Msg := Err_Msg + #13 +
             '    Cod_Sintegra_R60: ' + Fields.FieldByName('cod_sintegra_r60').AsString + #13 +
             '    Emissao.........: ' + Fields.FieldByName('data_emissao').AsString + #13 +
             '    N� PDV..........: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
             '    Aliquota........: ' + 'N' + #13 +
             '    Total Parcial...: ' + Fields.FieldByName('nao_incidencia').AsString + #13 +
             '    Brancos.........: ' + Fields.FieldByName('brancos').AsString
          end
         else
          qnt_ok := qnt_ok + 1;
        end;

       for i := 1 to 5 do
        begin
         if (Fields.FieldByName('aliquota0' + IntToStr(i)).AsFloat > 0) and
            (Fields.FieldByName('base0' + IntToStr(i)).AsFloat > 0) then
            //(Fields.FieldByName('valor_tparcial0' + IntToStr(i)).asFloat > 0) then
          begin
           //Registro60Analitico - Registro de informa��o de opera��es/presta��es realizadas com ECF
           //Quanto a N�o Tributa��o
           //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
           TempStr := Registro60A(Fields.FieldByName('data_emissao').AsString,                //Data_Emissao
             Fields.FieldByName('nro_serie_eqp').AsString,                                    //Nro_PDV
             FormatCurr('0000', Fields.FieldByName('aliquota0' + IntToStr(i)).AsFloat*100),       //S_Trib_Aliquota
             //formatcurr('0.00', Fields.FieldByName('valor_tparcial0' + IntToStr(i)).AsFloat), //Valor_TParcial
             formatcurr('0.00', Fields.FieldByName('base0' + IntToStr(i)).AsFloat), //Valor_TParcial
             Fields.FieldByName('brancos_60A0' + IntToStr(i)).AsString                        //Brancos
             );

           //Executa o tratamento da string tempor�ria testando se houve erro
           //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
           if not Trata_SIntegra_Str(TempStr) then
            begin
             qnt_erro := qnt_erro + 1;
             Result := False;

             Err_Msg := Err_Msg + #13 +
               '    Cod_Sintegra_R60: ' + Fields.FieldByName('cod_sintegra_r60').AsString + #13 +
               '    Emissao.........: ' + Fields.FieldByName('data_emissao').AsString + #13 +
               '    N� PDV..........: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
               '    Aliquota........: ' + Fields.FieldByName('aliquota0' + IntToStr(i)).AsString + #13 +
               '    Total Parcial...: ' + Fields.FieldByName('base0' + IntToStr(i)).AsString + #13 +
               '    Brancos.........: ' + Fields.FieldByName('brancos_60A0' + IntToStr(i)).AsString
            end
           else
            qnt_ok := qnt_ok + 1;
          end;
        end;



        if dia_atual = true then
        begin

        // registro 60D
        //Executa a sele��o dos registros no banco de dados

        query.Close;
        query.SQL.Clear;
        query.SQL.Add('select sum(QTDE) quantidade,');
        query.sql.add('sum(total) subtotal,');
        query.sql.add('CODPRODUTO cd_produto,');
        query.sql.add('ALIQUOTA aliquota_icms,');
        query.SQL.ADD('CST CST,');
        query.sql.add('ECF_SERIE nro_serie_eqp,');
        query.sql.add('DATA datahora_emissao');
        query.sql.add('from c000032');
        query.sql.add('where');
        query.sql.add('data = :vdat and ');
        query.sql.add('ECF_SERIE = '''+Fields.FieldByName('nro_serie_eqp').AsString+'''');
        query.sql.add('AND CUPOM_NUMERO IS NOT NULL');
        query.sql.add('and qtde > 0 and '); //> 0 and');
        query.sql.add('cupom_item between ''000'' and ''999'' and');
        query.sql.add('ecf_caixa  between ''000'' and ''999'' and');
        query.sql.add('CUPOM_NUMERO BETWEEN ''000000'' and ''999999''');
        query.SQL.add('group by');
        query.sql.add('cd_produto,');
        query.sql.add('aliquota_icms,');
        query.SQL.ADD('CST,');
        query.sql.add('nro_serie_eqp,');
        query.sql.add('datahora_emissao');
        query.sql.add('order by DATA,ECF_SERIE');
        query.Params.ParamByName('vdat').asdatetime := data_atual;
        query.Open;






        if query.RecordCount > 0 then
          begin
            while not query.EOF do
              begin
                if query.FieldByName('subtotal').Asfloat > 0 then
                  begin
                    if (query.FieldByName('aliquota_icms').Asstring = null) or
                       (query.FieldByName('aliquota_icms').Asstring = '') then
                      icms := 0
                    else
                      icms := strtofloat(query.FieldByName('aliquota_icms').AsString);

                    base_icms := query.FieldByName('subtotal').AsFloat;

                    IF (query.FieldByName('CST').ASSTRING = '060') OR (query.FieldByName('CST').ASSTRING = '010') OR (query.FieldByName('CST').ASSTRING = '070') THEN ALIQUOTA := 'F' ELSE
                    IF (query.FieldByName('CST').ASSTRING = '040') OR (query.FieldByName('CST').ASSTRING = '030') THEN ALIQUOTA := 'I' ELSE
                    IF (query.FieldByName('CST').ASSTRING = '041') OR (query.FieldByName('CST').ASSTRING = '050') OR (query.FieldByName('CST').ASSTRING = '051') OR (query.FieldByName('CST').ASSTRING = '090') THEN ALIQUOTA := 'N' ELSE
                    BEGIN
                      aliquota := formatfloat('00.00',query.FieldByName('aliquota_icms').AsFloat);
                      aliquota := somenteNumero(ALIQUOTA);
                    end;


                    if icms > 0 then
                      valor_icms := base_icms * (icms/100)
                    else
                      valor_icms := 0;


                      //showmessage(query.FieldByName('datahora_emissao').AsString+' '+query.FieldByName('nro_serie_eqp').AsString);
                      //lreg.Caption := query.FieldByName('datahora_emissao').AsString+' ' +query.FieldByName('nro_serie_eqp').AsString;
                      //Application.ProcessMessages;

                    //Registro60D - resumo diario
                    //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
                    TempStr := Registro60D(query.FieldByName('datahora_emissao').AsString,    //Data_Emissao
                    query.FieldByName('nro_serie_eqp').AsString,                              //Nro_Serie_Eqp
                    query.FieldByName('cd_produto').AsString,                                 //codigo do produto
                    formatcurr('0.000', query.FieldByName('quantidade').AsFloat),             //quantidade
                    formatcurr('0.00', query.FieldByName('subtotal').AsFloat),                //valor do produto
                    formatcurr('0.00', BASE_ICMS),               //base de calculo icms
                    //formatcurr('0.00', Fields.FieldByName('aliquota_icms').AsFloat),           //situacao tributaria/aliquota
                    aliquota,                                 //situacao tributaria/aliquota

                    formatcurr('0.00', VALOR_ICMS),             //valor icms
                    '                   '                                                      //Brancos
                    );

                    //Executa o tratamento da string tempor�ria testando se houve erro
                    //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
                    if not Trata_SIntegra_Str(TempStr) then
                      begin
                        qnt_erro := qnt_erro + 1;
                        Result := False;

                        Err_Msg := Err_Msg + #13 +
                        'Emissao..........: ' + query.FieldByName('datahora_emissao').AsString + #13 +
                        'N� Serie.........: ' + query.FieldByName('nro_serie_eqp').AsString + #13 +
                        'C�d Produto......: ' + query.FieldByName('cd_produto').AsString + #13 +
                        'Quantidade.......: ' + formatcurr('0.000', query.FieldByName('quantidade').AsFloat)+ #13 +
                        'Valor do Produto.: ' + formatcurr('0.00', query.FieldByName('subtotal').AsFloat)+ #13 +
                        'Base de C�lc ICMS: ' + formatcurr('0.00', BASE_ICMS)+ #13 +
                        'Al�quota ICMS....: ' + formatcurr('0.00', ICMS)+ #13 +
                        'Valor ICMS.......: ' + formatcurr('0.00', VALOR_ICMS)+ #13 +
                        'Brancos..........: ' + '';
                      end;
                  end;
                  if not query.EOF then
                    begin
                      query.Next;
                      v60d := v60d + 1;
                    end;
                  if quit_sintegra then
                    exit;
                end;
            end;

        // registro 60I

        //Executa a sele��o dos registros no banco de dados

        query.Close;
        query.SQL.Clear;
        query.SQL.Add('select sum(QTDE) quantidade,');
        query.sql.add('sum(TOTAL) subtotal,');

        query.sql.add('CODPRODUTO cd_produto,');
        query.sql.add('ALIQUOTA aliquota_icms,');
        query.sql.add('cst cst,');
        query.sql.add('ECF_SERIE nro_serie_eqp,');
        query.sql.add('DATA datahora_emissao,');
        query.sql.add('CUPOM_NUMERO notafiscal,');
        query.sql.add('CUPOM_ITEM num_item,');
        query.sql.add('CUPOM_MODELO modelo_doc');
        query.sql.add('from c000032');

        query.sql.add('where');
        query.sql.add('data = :vdat and');
        query.sql.add('cupom_numero is not null and');
        query.sql.add('cupom_numero <> '''' and');
        query.sql.add('ECF_SERIE = '''+Fields.FieldByName('nro_serie_eqp').AsString+''' AND');
        query.sql.add('cupom_item between ''000'' and ''999'' and');
        query.sql.add('ecf_caixa  between ''000'' and ''999'' and');
        query.sql.add('CUPOM_NUMERO BETWEEN ''000000'' and ''999999''');
        query.sql.add('and qtde > 0'); //> 0 and');
        //query.sql.add('and qtde > 0');
        query.SQL.add('group by');

        query.sql.add('cd_produto,');
        query.sql.add('aliquota_icms,');
        query.sql.add('cst,');
        query.sql.add('nro_serie_eqp,');
        query.sql.add('datahora_emissao,');
        query.sql.add('notafiscal,');
        query.sql.add('num_item,');
        query.sql.add('modelo_doc');

        query.sql.add('order by DATA,ECF_SERIE');
        query.Params.ParamByName('vdat').asdatetime := data_atual;
        query.Open;





        if query.RecordCount > 0 then
          begin
            while not query.EOF do
              begin
                if (query.FieldByName('aliquota_icms').Asstring = null) or
                                     (query.FieldByName('aliquota_icms').Asstring = '') then
                  icms := 0
                else
                  icms := strtofloat(query.FieldByName('aliquota_icms').AsString);
                base_icms := query.FieldByName('subtotal').AsFloat;

                IF (query.FieldByName('CST').ASSTRING = '060') OR (query.FieldByName('CST').ASSTRING = '010') OR (query.FieldByName('CST').ASSTRING = '070') THEN ALIQUOTA := 'F' ELSE
                IF (query.FieldByName('CST').ASSTRING = '040') OR (query.FieldByName('CST').ASSTRING = '030') THEN ALIQUOTA := 'I' ELSE
                IF (query.FieldByName('CST').ASSTRING = '041') OR (query.FieldByName('CST').ASSTRING = '050') OR (query.FieldByName('CST').ASSTRING = '051') OR (query.FieldByName('CST').ASSTRING = '090') THEN ALIQUOTA := 'N' ELSE
                BEGIN
                  aliquota := formatfloat('00.00',query.FieldByName('aliquota_icms').AsFloat);
                  aliquota := somenteNumero(ALIQUOTA);
                end;
                if icms > 0 then
                  valor_icms := base_icms * (icms/100)
                else
                  valor_icms := 0;

                //Registro60I - Itens
                //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria

                TempStr := Registro60I(query.FieldByName('datahora_emissao').AsString,    //Data_Emissao
                query.FieldByName('nro_serie_eqp').AsString,                              //Nro_Serie_Eqp
                query.FieldByName('modelo_doc').AsString,                                 //codigo do produto
                query.FieldByName('notafiscal').AsString,                                 //codigo do produto
                query.FieldByName('num_item').AsString,                                   //codigo do produto
                query.FieldByName('cd_produto').AsString,                                 //codigo do produto
                formatcurr('0.000', query.FieldByName('quantidade').AsFloat),             //quantidade
                formatcurr('0.00', query.FieldByName('subtotal').AsFloat),                //valor do produto
                formatcurr('0.00', base_icms),               //base de calculo icms
                //formatcurr('0.00', Fields.FieldByName('aliquota_icms').AsFloat),           //situacao tributaria/aliquota
                aliquota,                                                                      //situacao tributaria/aliquota
                formatcurr('0.00', valor_icms),             //valor icms
                '                   '                                                      //Brancos
                );

                //Executa o tratamento da string tempor�ria testando se houve erro
                //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
                if not Trata_SIntegra_Str(TempStr) then
                  begin
                    qnt_erro := qnt_erro + 1;
                    Result := False;

                    Err_Msg := Err_Msg + #13 +
                    '    Cod_Sintegra_R60I: ' +#13+
                    '    Emissao: ' + query.FieldByName('datahora_emissao').AsString + #13 +
                    '    N� Serie: ' + query.FieldByName('nro_serie_eqp').AsString + #13 +
                    '    Modelo NF: ' + query.FieldByName('modelo_doc').AsString + #13 +
                    '    Cupom : ' + query.FieldByName('notafiscal').AsString + #13 +
                    '    N.Item: ' + query.FieldByName('num_item').AsString + #13 +
                    ' C�d Produto: ' + query.FieldByName('cd_produto').AsString + #13 +
                    '  Quantidade: ' + formatcurr('0.000', query.FieldByName('quantidade').AsFloat)+ #13 +
                    '    Valor do Produto: ' + formatcurr('0.00', query.FieldByName('subtotal').AsFloat)+ #13 +
                    '    Base de C�lc ICMS: ' + formatcurr('0.00', base_icms)+ #13 +
                    '    Al�quota ICMS: ' + formatcurr('0.00', ICMS)+ #13 +
                    '    Valor ICMS: ' + formatcurr('0.00', valor_icms)+ #13 +
                    '    Brancos: ' + '';
                end;
              if not query.EOF then
                begin
                  query.Next;
                  v60i := v60i + 1;
                end;
              if quit_sintegra then
                exit;
            end;
        end;
      end;

      dia_atual := false;

       if not QrySintegra.EOF then
         QrySintegra.Next;




       if quit_sintegra then
         exit;
      end;
    end;
  end;


end;


//Registro60D - resumo diario
function TfrmLista_Vendas_Periodo.sRegistro60D(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 aliquota, TempStr: string;
 i: integer;
  BASE_ICMS, VALOR_ICMS, icms : real;

begin
     Result := True;

     //Executa a sele��o dos registros no banco de dados
     with QrySintegra do
          begin

               Close;
               SQL.Clear;
               SQL.Add('select sum(QTDE) quantidade,');
               sql.add('sum(total) subtotal,');

               sql.add('CODPRODUTO cd_produto,');
               sql.add('ALIQUOTA aliquota_icms,');
               SQL.ADD('CST CST,');
               sql.add('ECF_SERIE nro_serie_eqp,');
               sql.add('DATA datahora_emissao');


               sql.add('from c000032');
               sql.add('where');
               sql.add('data >= :datahora_ini and');
               sql.add('data <= :datahora_fim and');
               sql.add('cupom_item between ''000'' and ''999'' and');
               sql.add('ecf_caixa  between ''000'' and ''999'' and');
               sql.add('ECF_SERIE is not null and ECF_SERIE <> '''' and ECF_SERIE <> ''000000'' AND  qtde > 0');
               sql.add('AND CUPOM_NUMERO BETWEEN ''000000'' and ''999999''');

               SQL.add('group by');

               sql.add('cd_produto,');
               sql.add('aliquota_icms,');
               SQL.ADD('CST,');
               sql.add('nro_serie_eqp,');
               sql.add('datahora_emissao');

               sql.add('order by cd_produto');
               ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
               ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;
               Open;











//               if RecordCount = 0 then
//                    showmessage('N�o h� itens de venda na ECF, verifique...');

               if RecordCount > 0 then
                    begin
                         while not EOF do
                              begin
                                 if Fields.FieldByName('subtotal').Asfloat > 0 then
                                 begin


                                   if (Fields.FieldByName('aliquota_icms').Asstring = null) or
                                      (Fields.FieldByName('aliquota_icms').Asstring = '') then
                                      icms := 0
                                   else
                                     icms := strtofloat(Fields.FieldByName('aliquota_icms').AsString);


                                   base_icms := Fields.FieldByName('subtotal').AsFloat;

                                   IF (FIELDS.FieldByName('CST').ASSTRING = '060') OR (FIELDS.FieldByName('CST').ASSTRING = '010') OR (FIELDS.FieldByName('CST').ASSTRING = '070') THEN ALIQUOTA := 'F' ELSE
                                   IF (FIELDS.FieldByName('CST').ASSTRING = '040') OR (FIELDS.FieldByName('CST').ASSTRING = '030') THEN ALIQUOTA := 'I' ELSE
                                   IF (FIELDS.FieldByName('CST').ASSTRING = '041') OR (FIELDS.FieldByName('CST').ASSTRING = '050') OR (FIELDS.FieldByName('CST').ASSTRING = '051') OR (FIELDS.FieldByName('CST').ASSTRING = '090') THEN ALIQUOTA := 'N' ELSE
                                   BEGIN
                                     aliquota := formatfloat('00.00',Fields.FieldByName('aliquota_icms').AsFloat);
                                     aliquota := somenteNumero(ALIQUOTA);
                                   end;

                                   IF (FIELDS.FIELDBYNAME('CST').ASSTRING = '000') AND
                                      (FIELDS.FIELDBYNAME('ALIQUOTA_ICMS').ASFLOAT < 0.01) THEN
                                   BEGIN
                                      ALIQUOTA :='I';
                                   END;


                                   if icms > 0 then
                                   valor_icms := base_icms * (icms/100)
                                   else
                                   valor_icms := 0;



                                   //Registro60D - resumo diario
                                   //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
                                   TempStr := Registro60D(Fields.FieldByName('datahora_emissao').AsString,    //Data_Emissao
                                   Fields.FieldByName('nro_serie_eqp').AsString,                              //Nro_Serie_Eqp
                                   Fields.FieldByName('cd_produto').AsString,                                 //codigo do produto
                                   formatcurr('0.000', Fields.FieldByName('quantidade').AsFloat),             //quantidade
                                   formatcurr('0.00', Fields.FieldByName('subtotal').AsFloat),                //valor do produto
                                   formatcurr('0.00', BASE_ICMS),               //base de calculo icms
                                   //formatcurr('0.00', Fields.FieldByName('aliquota_icms').AsFloat),           //situacao tributaria/aliquota
                                   aliquota,                                 //situacao tributaria/aliquota

                                   formatcurr('0.00', VALOR_ICMS),             //valor icms
                                   '                   '                                                      //Brancos
                                   );

                                   //Executa o tratamento da string tempor�ria testando se houve erro
                                   //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
                                   if not Trata_SIntegra_Str(TempStr) then
                                        begin
                                             qnt_erro := qnt_erro + 1;
                                             Result := False;

                                             Err_Msg := Err_Msg + #13 +
                                             'Emissao..........: ' + Fields.FieldByName('datahora_emissao').AsString + #13 +
                                             'N� Serie.........: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
                                             'C�d Produto......: ' + Fields.FieldByName('cd_produto').AsString + #13 +
                                             'Quantidade.......: ' + formatcurr('0.000', Fields.FieldByName('quantidade').AsFloat)+ #13 +
                                             'Valor do Produto.: ' + formatcurr('0.00', Fields.FieldByName('subtotal').AsFloat)+ #13 +
                                             'Base de C�lc ICMS: ' + formatcurr('0.00', BASE_ICMS)+ #13 +
                                             'Al�quota ICMS....: ' + formatcurr('0.00', ICMS)+ #13 +
                                             'Valor ICMS.......: ' + formatcurr('0.00', VALOR_ICMS)+ #13 +
                                             'Brancos..........: ' + '';
                                        end
                                   else
                                        qnt_ok := qnt_ok + 1;

                                   end;
                                        if not QrySintegra.EOF then
                                             QrySintegra.Next;

                                        if quit_sintegra then
                                             exit;
                              end;
                         end;
                    end;
end;

//Registro60I - Itens
function TfrmLista_Vendas_Periodo.sRegistro60I(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr: string;
 i: integer;
 BASE_ICMS, VALOR_ICMS, icms : real;
 aliquota : string;
begin
     Result := True;

     //Executa a sele��o dos registros no banco de dados
     with QrySintegra do
          begin



               Close;
               SQL.Clear;
               SQL.Add('select sum(QTDE) quantidade,');
               sql.add('sum(TOTAL) subtotal,');

               sql.add('CODPRODUTO cd_produto,');
               sql.add('ALIQUOTA aliquota_icms,');
               sql.add('cst cst,');
               sql.add('ECF_SERIE nro_serie_eqp,');
               sql.add('DATA datahora_emissao,');
               sql.add('CUPOM_NUMERO notafiscal,');
               sql.add('CUPOM_ITEM num_item,');
               sql.add('CUPOM_MODELO modelo_doc');
               sql.add('from c000032');

               sql.add('where');
               sql.add('data >= :datahora_ini and');
               sql.add('data <= :datahora_fim and');
               sql.add('cupom_item between ''000'' and ''999'' and');
               sql.add('ecf_caixa  between ''000'' and ''999'' and');
               sql.add('ECF_SERIE is not null and ECF_SERIE <> '''' and ECF_SERIE <> ''000000'' AND  qtde > 0');
               sql.add('AND CUPOM_NUMERO BETWEEN ''000000'' and ''999999''');
               SQL.add('group by');

               sql.add('cd_produto,');
               sql.add('aliquota_icms,');
               sql.add('cst,');
               sql.add('nro_serie_eqp,');
               sql.add('datahora_emissao,');
               sql.add('notafiscal,');
               sql.add('num_item,');
               sql.add('modelo_doc');
               sql.add('order by notafiscal,num_item');
               ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
               ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;
               Open;








               if RecordCount > 0 then
                    begin
                         while not EOF do
                              begin

                                   if (Fields.FieldByName('aliquota_icms').Asstring = null) or
                                      (Fields.FieldByName('aliquota_icms').Asstring = '') then
                                      icms := 0
                                   else
                                     icms := strtofloat(Fields.FieldByName('aliquota_icms').AsString);


                                   base_icms := Fields.FieldByName('subtotal').AsFloat;

                                   IF (FIELDS.FieldByName('CST').ASSTRING = '060') OR (FIELDS.FieldByName('CST').ASSTRING = '010') OR (FIELDS.FieldByName('CST').ASSTRING = '070') THEN ALIQUOTA := 'F' ELSE
                                   IF (FIELDS.FieldByName('CST').ASSTRING = '040') OR (FIELDS.FieldByName('CST').ASSTRING = '030') THEN ALIQUOTA := 'I' ELSE
                                   IF (FIELDS.FieldByName('CST').ASSTRING = '041') OR (FIELDS.FieldByName('CST').ASSTRING = '050') OR (FIELDS.FieldByName('CST').ASSTRING = '051') OR (FIELDS.FieldByName('CST').ASSTRING = '090') THEN ALIQUOTA := 'N' ELSE
                                   BEGIN
                                     aliquota := formatfloat('00.00',Fields.FieldByName('aliquota_icms').AsFloat);
                                     aliquota := somenteNumero(ALIQUOTA);
                                   end;

                                   IF (FIELDS.FIELDBYNAME('CST').ASSTRING = '000') AND
                                      (FIELDS.FIELDBYNAME('ALIQUOTA_ICMS').ASFLOAT < 0.01) THEN
                                   BEGIN
                                      ALIQUOTA :='I';
                                   END;


                                   if icms > 0 then
                                   valor_icms := base_icms * (icms/100)
                                   else
                                   valor_icms := 0;

                                   //Registro60I - Itens
                                   //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria

                                   TempStr := Registro60I(Fields.FieldByName('datahora_emissao').AsString,    //Data_Emissao
                                   Fields.FieldByName('nro_serie_eqp').AsString,                              //Nro_Serie_Eqp
                                   Fields.FieldByName('modelo_doc').AsString,                                 //codigo do produto
                                   Fields.FieldByName('notafiscal').AsString,                                 //codigo do produto
                                   Fields.FieldByName('num_item').AsString,                                   //codigo do produto
                                   Fields.FieldByName('cd_produto').AsString,                                 //codigo do produto
                                   formatcurr('0.000', Fields.FieldByName('quantidade').AsFloat),             //quantidade
                                   formatcurr('0.00', Fields.FieldByName('subtotal').AsFloat),                //valor do produto
                                   formatcurr('0.00', base_icms),               //base de calculo icms
                                   //formatcurr('0.00', Fields.FieldByName('aliquota_icms').AsFloat),           //situacao tributaria/aliquota
                                   aliquota,                                                                      //situacao tributaria/aliquota
                                   formatcurr('0.00', valor_icms),             //valor icms
                                   '                   '                                                      //Brancos
                                   );

                                   //Executa o tratamento da string tempor�ria testando se houve erro
                                   //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
                                   if not Trata_SIntegra_Str(TempStr) then
                                        begin
                                             qnt_erro := qnt_erro + 1;
                                             Result := False;

                                             Err_Msg := Err_Msg + #13 +
                                             '    Cod_Sintegra_R60I: ' +
                                             Fields.FieldByName('cod_sintegra_r60I').AsString + #13 +
                                             '    Emissao: ' + Fields.FieldByName('datahora_emissao').AsString + #13 +
                                             '    N� Serie: ' + Fields.FieldByName('nro_serie_eqp').AsString + #13 +
                                             '    Modelo NF: ' + Fields.FieldByName('modelo_doc').AsString + #13 +
                                             '    Cupom : ' + Fields.FieldByName('notafiscal').AsString + #13 +
                                             '    N.Item: ' + Fields.FieldByName('num_item').AsString + #13 +
                                             ' C�d Produto: ' + Fields.FieldByName('cd_produto').AsString + #13 +
                                             '  Quantidade: ' + formatcurr('0.000', Fields.FieldByName('quantidade').AsFloat)+ #13 +
                                             '    Valor do Produto: ' + formatcurr('0.00', Fields.FieldByName('subtotal').AsFloat)+ #13 +
                                             '    Base de C�lc ICMS: ' + formatcurr('0.00', base_icms)+ #13 +
                                             '    Al�quota ICMS: ' + formatcurr('0.00', ICMS)+ #13 +
                                             '    Valor ICMS: ' + formatcurr('0.00', valor_icms)+ #13 +
                                             '    Brancos: ' + '';
                                        end
                                   else
                                        qnt_ok := qnt_ok + 1;
                                        if not QrySintegra.EOF then
                                             QrySintegra.Next;

                                        if quit_sintegra then
                                             exit;
                              end;
                         end;
                    end;
end;

//Registro60R - resumo mensal
function TfrmLista_Vendas_Periodo.sRegistro60R(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr: string;
 i: integer;
  BASE_ICMS, VALOR_ICMS, icms : real;
   aliquota : string;
begin

     Result := True;

     //Executa a sele��o dos registros no banco de dados
     with QrySintegra do
          begin
               Close;
               SQL.Clear;
               SQL.Add('select sum(QTDE) quantidade,');
               sql.add('sum(total) subtotal,');
               sql.add('sum(base_calculo) base,');

               sql.add('CODPRODUTO cd_produto,');
               sql.add('ALIQUOTA aliquota_icms,');
               SQL.ADD('CST CST,');
               sql.add('ECF_SERIE nro_serie_eqp,');
               sql.add('DATA datahora_emissao');

               sql.add('from c000032');
               sql.add('where');
               sql.add('data >= :datahora_ini and');
               sql.add('data <= :datahora_fim and');
               sql.add('qtde between 1 and 1000 and '); //> 0 and');
               sql.add('cupom_item between ''000'' and ''999'' and');
               sql.add('ecf_caixa  between ''000'' and ''999'' and');
               sql.add('ECF_SERIE is not null and ECF_SERIE <> '''' and ECF_SERIE <> ''000000'' AND  qtde > 0');
               sql.add('AND CUPOM_NUMERO BETWEEN ''000000'' and ''999999''');
               SQL.add('group by');


               sql.add('cd_produto,');
               sql.add('aliquota_icms,');
               SQL.ADD('CST,');
               sql.add('nro_serie_eqp,');
               sql.add('datahora_emissao');

               sql.add('order by cd_produto');
               ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
               ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;
               Open;



               if RecordCount > 0 then
               begin
                 while not EOF do
                 begin
                    if Fields.fieldbyname('base').asfloat = null then
                      base_icms := 0
                    else
                      base_icms := Fields.fieldbyname('base').asfloat;


                                   if (Fields.FieldByName('aliquota_icms').Asstring = null) or
                                      (Fields.FieldByName('aliquota_icms').Asstring = '') then
                                      icms := 0
                                   else
                                     icms := strtofloat(Fields.FieldByName('aliquota_icms').AsString);



                                   IF (FIELDS.FieldByName('CST').ASSTRING = '060') OR (FIELDS.FieldByName('CST').ASSTRING = '010') OR (FIELDS.FieldByName('CST').ASSTRING = '070') THEN ALIQUOTA := 'F' ELSE
                                   IF (FIELDS.FieldByName('CST').ASSTRING = '040') OR (FIELDS.FieldByName('CST').ASSTRING = '030') THEN ALIQUOTA := 'I' ELSE
                                   IF (FIELDS.FieldByName('CST').ASSTRING = '041') OR (FIELDS.FieldByName('CST').ASSTRING = '050') OR (FIELDS.FieldByName('CST').ASSTRING = '051') OR (FIELDS.FieldByName('CST').ASSTRING = '090') THEN ALIQUOTA := 'N' ELSE
                                   BEGIN
                                     aliquota := formatfloat('00.00',Fields.FieldByName('aliquota_icms').AsFloat);
                                     aliquota := somenteNumero(ALIQUOTA);
                                   end;

                                   if icms > 0 then
                                     valor_icms := base_icms * (icms/100)
                                   else
                                     valor_icms := 0;

                                   IF (FIELDS.FIELDBYNAME('CST').ASSTRING = '000') AND
                                      (FIELDS.FIELDBYNAME('ALIQUOTA_ICMS').ASFLOAT < 0.01) THEN
                                   BEGIN
                                      ALIQUOTA :='I';
                                   END;


                                   if base_icms = 0 then base_icms := Fields.FieldByName('subtotal').AsFloat;


                                   TempStr := Registro60R(COPY(Fields.FieldByName('datahora_emissao').AsString,4,2)+COPY(Fields.FieldByName('datahora_emissao').AsString,7,4),    //Data_Emissao
                                   Fields.FieldByName('cd_produto').AsString,                                 //codigo do produto
                                   formatcurr('0.000', Fields.FieldByName('quantidade').AsFloat),             //quantidade
                                   formatcurr('0.00', Fields.FieldByName('subtotal').AsFloat),                //valor do produto
                                   formatcurr('0.00', BASE_ICMS),               //base de calculo icms
                                   aliquota,                                                                      //situacao tributaria/aliquota
                                   '                   '                              //Brancos
                                   );

                                   //Executa o tratamento da string tempor�ria testando se houve erro
                                   //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
                                   if not Trata_SIntegra_Str(TempStr) then
                                        begin
                                             qnt_erro := qnt_erro + 1;
                                             Result := False;

                                             Err_Msg := Err_Msg + #13 +
                                             ' Cod_Sintegra_R60R: ' +
                                             ' Emissao..........: ' + Fields.FieldByName('dataHORA_emissao').AsString + #13 +
                                             ' C�d Produto......: ' + Fields.FieldByName('cd_produto').AsString + #13 +
                                             ' Quantidade.......: ' + formatcurr('0.000', Fields.FieldByName('quantidade').AsFloat)+ #13 +
                                             ' Valor do Produto.: ' + formatcurr('0.00', Fields.FieldByName('subtotal').AsFloat)+ #13 +
                                             ' Base de C�lc ICMS: ' + formatcurr('0.00', BASE_ICMS)+ #13 +
                                             ' Al�quota ICMS....: ' + formatcurr('0.00', ICMS)+ #13 +
                                             ' Brancos..........: ' + '';
                                        end
                                   else
                                        qnt_ok := qnt_ok + 1;
                                        if not QrySintegra.EOF then
                                             QrySintegra.Next;

                                        if quit_sintegra then
                                             exit;
                              end;
                         end;
                    end;
end;

//Registro61 - Registro de Total de Nota de Passagens e N.Fiscal modelo 02
function TfrmLista_Vendas_Periodo.sRegistro61(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
     TempStr, num_nf: string;
     vcod_inicial,vcod_final: string;
     vdata: tdatetime;
     vnf,vmodelo,vserie, vsubserie: string;
     vcontabil,vbase_icms,vvalor_icms,vvalor_isentas,vvalor_outras,valq_icms: double;

begin
  Result := True;

  //Gera��o de Registro61 quanto a Sa�da de Nota Fiscal
  //Executa a sele��o dos registros no banco de dados

  with QrySintegra do
    begin
      Close;
      SQL.Clear;
      SQL.ADD(' SELECT ');
      SQL.Add('DATA,');
      SQL.Add('MODELO_NF,');
      SQL.Add('SERIE,');
      SQL.Add('SUBSERIE,');
      SQL.ADD('valor_icms_isentas,');
      SQL.ADD('BASE_SUBSTITUICAO,');
      SQL.ADD('aliquota_icms,');
      SQL.ADD('valor_contabil,');
      SQL.ADD('base_icms,');
      SQL.ADD('valor_icms_creditado,');
      SQL.Add('NOTAFISCAL ');

      SQL.Add('FROM SINTEGRA_SAIDA');
      SQL.ADD('where (tipo = ''S'') AND (');
      SQL.Add('(data BETWEEN :datahora_ini AND :datahora_fim) AND');
      SQL.Add('(modelo_nf = ''14'') OR');
      SQL.Add('(modelo_nf = ''15'') OR');
      SQL.Add('(modelo_nf = ''16'') OR');
      SQL.Add('(modelo_nf = ''13'') OR');
      SQL.Add('(modelo_nf = ''02''))');
      SQL.Add('ORDER BY data,notafiscal,modelo_nf,serie,subserie');
      ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
      ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;

      Open;
  end;

  QrySintegra_D.MasterSource := DtsQrySintegra;

  if (QrySintegra.RecordCount > 0) then
    begin
      vcod_inicial := QrySintegra.Fields.FieldByName('notafiscal').AsString;
      vcod_FINAL := QrySintegra.Fields.FieldByName('notafiscal').AsString;
      vcontabil := 0;
      vbase_icms := 0;
      vvalor_icms := 0;
      vvalor_isentas := 0;
      vvalor_outras := 0;
      valq_icms  := 0;

      while not QrySintegra.EOF do begin


        vdata := QrySintegra.Fields.FieldByName('data').AsDateTime;
        vMODELO := QrySintegra.Fields.FieldByName('modelo_nf').AsString;

        while QrySintegra.Fields.FieldByName('data').AsDateTime = vdata do begin
          if QrySintegra.Fields.FieldByName('modelo_nf').AsString = vmodelo then
            begin
              vnf  := QrySintegra.Fields.FieldByName('notafiscal').AsString;
              vserie := QrySintegra.Fields.FieldByName('serie').AsString;
              vcod_final := QrySintegra.Fields.FieldByName('notafiscal').AsString;
              vcontabil := vcontabil+QrySintegra.Fields.FieldByName('valor_contabil').AsFloat;
              vbase_icms := vbase_icms+QrySintegra.Fields.FieldByName('BASE_icms').AsFloat;
              vvalor_icms := vvalor_icms+QrySintegra.Fields.FieldByName('VALOR_ICMS_creditado').AsFloat;
              //vvalor_isentas := vvalor_isentas+QrySintegra.FieldByName('valor_icms_isentas').AsFloat;
              vvalor_outras := vvalor_outras+QrySintegra.FieldByName('base_substituicao').AsFloat;
              valq_icms := QrySintegra.Fields.FieldByName('aliquota_icms').AsFloat;
            end;
         QrySintegra.Next;
         if (QrySintegra.Fields.FieldByName('data').AsDateTime <> vdata) or (QrySintegra.Eof) then
           begin

             vcod_inicial := trim(copy(vcod_inicial, length(vcod_inicial) - 6, length(vcod_inicial)));        //utilizando apenas 6 �ltimos digitos da NF
             vcod_final   := trim(copy(vcod_final, length(vcod_final) - 6, length(vcod_final)));        //utilizando apenas 6 �ltimos digitos da NF
             TempStr := Registro61('              ','              ',               // brancos
             datetostr(vdata),         //Data_Emissao_Recebimento
             vmodelo,                 //Modelo
             vserie,                  //Serie
             vsubserie,               //sub-Serie
             vcod_inicial,                                                            // N.Ordem Inicial
             vcod_final,                                                             // N.Ordem FInal
             formatcurr('0.00',vcontabil),  //Valor_Total
             formatcurr('0.00',vbase_icms), //Base_ICMS
             formatcurr('0.00',vvalor_icms),//Valor_ICMS
             formatcurr('0.00',vvalor_isentas),  //Isenta
             formatcurr('0.00',vvalor_outras),  //Outras
             formatcurr('0.00',valq_icms),      //Aliquota
             ' '                                                                             //Brancos
             );
             //Executa o tratamento da string tempor�ria testando se houve erro
             //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
             if not Trata_SIntegra_Str(TempStr) then
               begin
                 qnt_erro := qnt_erro + 1;
                 Result := False;
                 Err_Msg := Err_Msg + #13 +
                 '-REGISTRO 61 - Saida----------------------------------------------------------'+#13+
                 '    Emissao....: ' + datetostr(QrySintegra.Fields.FieldByName('data').AsDateTime) + #13 +
                 '    Modelo.....: ' + QrySintegra.Fields.FieldByName('modelo_nf').AsString + #13 +
                 '    Serie......: ' + QrySintegra.Fields.FieldByName('serie').AsString + #13 +
                 '    Sub-Serie..: ' + QrySintegra.Fields.FieldByName('subserie').AsString + #13 +
                 '    NF Inicial.: ' + vcod_inicial + #13 +
                 '    NF Final...: ' + vcod_final + #13 +
                 '    Valor_Total: ' + QrySintegra.Fields.FieldByName('valor_contabil').AsString + #13 +
                 '    Base ICMS..: ' + QrySintegra.Fields.FieldByName('base_ICMS').AsString + #13 +
                 '    Valor ICMS.: ' + QrySintegra.Fields.FieldByName('valor_icms_creditado').AsString + #13 +
                 '    Isenta.....: ' + QrySintegra.FieldByName('valor_icms_isentas').AsString + #13 +
                 '    Outras.....: ' + QrySintegra.FieldByName('BASE_SUBSTITUICAO').AsString + #13 +
                 '    Aliquota...: ' + floattostr(QrySintegra.Fields.FieldByName('aliquota_icms').AsFloat * 100) + #13 +
                 '------------------------------------------------------------------------------';
               end
            else
              begin
                qnt_ok := qnt_ok + 1;
                vcontabil := 0;
                vbase_icms := 0;
                vvalor_icms := 0;
                vvalor_isentas := 0;
                vvalor_outras := 0;
                valq_icms  := 0;
                vcod_inicial := QrySintegra.Fields.FieldByName('notafiscal').AsString;
                //break;
              end;
           end;
           //break;
           if QrySintegra.EOF then
             exit;
           end;
           if quit_sintegra then
             exit;
           if QrySintegra.EOF then
             begin
               break;
             end;
          end;
     end;

     QrySintegra_D.Close;

     QrySintegra_D.MasterSource := nil;
     QrySintegra.Close;

end;

//Registro61R - resumo mensal
function TfrmLista_Vendas_Periodo.sRegistro61R(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr: string;
 i: integer;
  BASE_ICMS, VALOR_ICMS, icms : real;
   aliquota : string;
begin
     Result := True;

     //Executa a sele��o dos registros no banco de dados
     with QrySintegra do
          begin
               Close;
               SQL.Clear;
               SQL.Add('select sum(QUANTIDADE) quantidade,');
               sql.add('sum(TOTAL) subtotal,');

               sql.add('cd_produto,');
               sql.add('aliquota_icms,');
               sql.add('S_TRIB,');
               sql.add('modelo_nf,');
               sql.add('data_EMISSAO ');

               sql.add('from SINTEGRA_SAIDA_ITEM ');
               sql.add('where ');
               SQL.Add('(data_emissao BETWEEN :datahora_ini AND :datahora_fim) AND');
               sql.add('(QUANTIDADE > 0) AND');
               SQL.Add('(modelo_nf = ''14'') OR');
               SQL.Add('(modelo_nf = ''15'') OR');
               SQL.Add('(modelo_nf = ''16'') OR');
               SQL.Add('(modelo_nf = ''13'') OR');
               SQL.Add('(modelo_nf = ''02'')');
               SQL.add('group by ');


               sql.add('cd_produto,');
               sql.add('aliquota_icms,');
               sql.add('S_TRIB,');
               sql.add('modelo_nf,');
               sql.add('data_EMISSAO');

               sql.add('order by cd_produto');

               ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
               ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;
               Open;

                    begin
                         while not EOF do
                              begin
                                   if (Fields.FieldByName('aliquota_icms').Asstring = null) or
                                      (Fields.FieldByName('aliquota_icms').Asstring = '') then
                                      icms := 0
                                   else
                                     icms := strtofloat(Fields.FieldByName('aliquota_icms').AsString);



                                   IF (FIELDS.FieldByName('S_TRIB').ASSTRING = '060') OR (FIELDS.FieldByName('S_TRIB').ASSTRING = '010') OR (FIELDS.FieldByName('S_TRIB').ASSTRING = '070') THEN ALIQUOTA := 'F' ELSE
                                   IF (FIELDS.FieldByName('S_TRIB').ASSTRING = '040') OR (FIELDS.FieldByName('S_TRIB').ASSTRING = '030') THEN ALIQUOTA := 'I' ELSE
                                   IF (FIELDS.FieldByName('S_TRIB').ASSTRING = '041') OR (FIELDS.FieldByName('S_TRIB').ASSTRING = '050') OR (FIELDS.FieldByName('S_TRIB').ASSTRING = '051') OR (FIELDS.FieldByName('S_TRIB').ASSTRING = '090') THEN ALIQUOTA := 'N' ELSE
                                   BEGIN
                                     aliquota := formatfloat('00.00',Fields.FieldByName('aliquota_icms').AsFloat);
                                     aliquota := somenteNumero(ALIQUOTA);
                                   end;
                                   if icms > 0 then
                                   valor_icms := base_icms * (icms/100)
                                   else
                                   valor_icms := 0;


                                   TempStr := Registro61R(Fields.FieldByName('data_EMISSAO').AsString,    //Data_Emissao
                                   Fields.FieldByName('cd_produto').AsString,                                 //codigo do produto
                                   formatcurr('0.000', Fields.FieldByName('quantidade').AsFloat),             //quantidade
                                   formatcurr('0.00', Fields.FieldByName('subtotal').AsFloat),                //valor do produto
                                   formatcurr('0.00', BASE_ICMS),               //base de calculo icms
                                   aliquota,                                                                      //situacao tributaria/aliquota
                                   '                   '                              //Brancos
                                   );

                                   //Executa o tratamento da string tempor�ria testando se houve erro
                                   //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
                                   if not Trata_SIntegra_Str(TempStr) then
                                        begin
                                             qnt_erro := qnt_erro + 1;
                                             Result := False;

                                             Err_Msg := Err_Msg + #13 +
                                             '    Cod_Sintegra_R61R: ' +
                                             '?' + #13 +
                                             '    Emissao: ' + Fields.FieldByName('data_emissao').AsString + #13 +
                                             ' C�d Produto: ' + Fields.FieldByName('cd_produto').AsString + #13 +
                                             '  Quantidade: ' + formatcurr('0.000', Fields.FieldByName('quantidade').AsFloat)+ #13 +
                                             '    Valor do Produto: ' + formatcurr('0.00', Fields.FieldByName('subtotal').AsFloat)+ #13 +
                                             '    Base de C�lc ICMS: ' + formatcurr('0.00', BASE_ICMS)+ #13 +
                                             '    Al�quota ICMS: ' + formatcurr('0.00', ICMS)+ #13 +
                                             '    Brancos: ' + '';
                                        end
                                   else
                                        qnt_ok := qnt_ok + 1;
                                        if not QrySintegra.EOF then
                                             QrySintegra.Next;

                                        if quit_sintegra then
                                             exit;
                              end;
                         end;
                    end;
end;









//Registro75 - Registro de C�digo de Produto e Servi�o
function Tfrmlista_vendas_periodo.sRegistro75(var Err_Msg: string; var qnt_ok, qnt_erro: integer): boolean;
var
 TempStr: string;
 unidade : string;
begin
 Result := True;

 //Executa a sele��o dos registros no banco de dados
 with QrySintegra do
  begin


     Close;
     SQL.Clear;
     SQL.Add('SELECT distinct');
     SQL.Add('cd_produto,');
     SQL.Add('cl_fis,');
     SQL.Add('produto');
     SQL.ADD('FROM (SELECT DISTINCT');
     SQL.Add('  S.cd_produto AS CD_PRODUTO,');
     SQL.Add('  PR.CLASSIFICACAO_FISCAL AS CL_FIS,');
     SQL.Add('  PR.produto AS PRODUTO');
     SQL.Add('  FROM SINTEGRA_ENTRADA_ITEM S, C000025 PR');
     sql.add('       WHERE');
     SQL.ADD('       S.CD_PRODUTO = PR.CODIGO AND');
     sql.add('       modelo_nf in ( ''01'',''1A'',''03'',''06'',''22'',''2D'',''55'')');
     SQL.ADD('       AND');
     SQL.Add('       datahora >= :datahora_ini AND DATAHORA <=  :datahora_fim');
     SQL.ADD('  UNION');
     SQL.ADD('       SELECT DISTINCT');
     SQL.Add('         M.codproduto AS CD_PRODUTO,');
     SQL.Add('         P.CLASSIFICACAO_FISCAL AS   CL_FIS,');
     SQL.Add('         P.produto AS PRODUTO');
     SQL.ADD('         FROM C000032 M, C000025 P');
     sql.add('         where m.codproduto = p.codigo and');
     sql.add('         cupom_modelo = ''2D''');
     sql.add('         and (m.ECF_SERIE is not null and m.ecf_serie <> '''')');
     sql.add('         AND (m.CUPOM_NUMERO between ''000000'' and ''999999'')');
     sql.add('         AND (m.cupom_item between   ''000''    and ''999'')');
     sql.add('         AND (m.ecf_caixa between    ''000''    and ''999'')');
     SQL.ADD('         AND');
     SQL.ADD('         m.qtde > 0 and');
     SQL.Add('         data >= :datahora_ini AND DATA <=  :datahora_fim');
     SQL.ADD(' UNION');
     SQL.ADD(' SELECT DISTINCT');
     SQL.Add('  S.cd_produto AS CD_PRODUTO,');
     SQL.Add('  PR.CLASSIFICACAO_FISCAL AS CL_FIS,');
     SQL.Add('  PR.produto AS PRODUTO');
     SQL.Add('  FROM SINTEGRA_SAIDA_ITEM S, C000025 PR');
     sql.add('       WHERE');
     SQL.ADD('       S.CD_PRODUTO = PR.CODIGO AND');
     sql.add('       modelo_nf in ( ''01'',''1A'',''02'',''03'',''06'',''22'',''2D'',''55'')');
     SQL.ADD('       AND');
     SQL.Add('       datahora >= :datahora_ini AND DATAHORA <=  :datahora_fim ) as tmp');
     SQL.ADD(' GROUP BY');
     SQL.Add('cd_produto,');
     SQL.Add('cl_fis,');
     SQL.Add('produto');
     ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
     ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;
     Open;









   if RecordCount > 0 then
    begin
    //QrySintegra.First;
     while not QrySintegra.EOF do
     begin

     //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
       frmmodulo.qrproduto.close;
       frmmodulo.qrproduto.sql.Clear;
       frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+zerar(Fields.FieldByName('cd_produto').AsString,6)+'''');
       frmmodulo.qrproduto.open;

       //unidade := Fields.FieldByName('apr_und').AsString;
       unidade := frmmodulo.qrproduto.FieldByName('unidade').AsString;   //UND_Medida

       if (unidade = '') or (unidade = null) then
       BEGIN
         unidade := 'PC';

       END;


       //Faz a chamada da dll passando as informa��es do banco de dados e armazena numa string tempor�ria
       TempStr := Registro75(ed_data_ini.TEXT,                        //Data Inicial
         ed_data_fim.Text,                                             //Data_Final
         Fields.FieldByName('cd_produto').AsString,                           //Cod_Produto_Servico
         Fields.FieldByName('cl_fis').AsString ,                                 //Cod_NCM
         Fields.FieldByName('produto').AsString,                                //Descricao
         unidade,                                //UND_Medida

         //formatcurr('0.00', Fields.FieldByName('aliquota_ipi').AsFloat),        //Aliquota_IPI
         //formatcurr('0.00', Fields.FieldByName('aliquota_icms').AsFloat),       //Aliquota_ICMS
         //formatcurr('0.00', Fields.FieldByName('reducao_base_icms').AsFloat),   //Reducao_Base_ICMS
         //Fields.FieldByName('base_icms_subst').AsString                         //Base_ICMS_Subst

         formatcurr('0.00', frmmodulo.qrproduto.FieldByName('ipi').AsFloat),        //Aliquota_IPI
         formatcurr('0.00', frmmodulo.qrproduto.FieldByName('aliquota').AsFloat),       //Aliquota_ICMS
         formatcurr('0.00', 0),   //Reducao_Base_ICMS
         formatcurr('0.00', 0)    //Base_ICMS_Subst
         );
       //Executa o tratamento da string tempor�ria testando se houve erro
       //Caso haja erro, executa o log das informa��es inconsistentes no RichEdit
       if not Trata_SIntegra_Str(TempStr) then
        begin
         qnt_erro := qnt_erro + 1;
         Result := False;

         Err_Msg := Err_Msg + #13 +
           'Data Inicial.....: ' + datetostr(ed_data_ini.DATE) + #13 +
           'Data Final.......: ' + DateToStr(ed_data_fim.DATE) + #13 +//datetostr(DataHora_Final) + #13 +
           'Codigo Produto...: ' + Fields.FieldByName('cd_produto').AsString + #13 +
           'NCM..............: ' + Fields.FieldByName('cl_fis').AsString + #13 +
           'Descricao........: ' + Fields.FieldByName('produto').AsString + #13 +
           'Unidade..........: ' + unidade + #13 +
           'Aliquota IPI.....: ' + //floattostr(Fields.FieldByName('aliquota_ipi').AsFloat * 100) + #13 +
           'Aliquota ICMS....: ' + //floattostr(Fields.FieldByName('aliquota_icms').AsFloat * 100) + #13 +
           'Reducao Base ICMS: ' + //floattostr(Fields.FieldByName('reducao_base_icms').AsFloat * 100) + #13 +
           'Base ICMS Subst..: ';  //Fields.FieldByName('base_icms_subst').AsString;
        end

        else
        qnt_ok := qnt_ok + 1;

       if not EOF then
         Next;

       if quit_sintegra then
         exit;
      end;
    end;
  end;
end;









               

//Registro90 - Registro de Totaliza��o do Arquivo
function TfrmLista_Vendas_Periodo.sRegistro90: boolean;
var
 TempStr: string;
begin
 //Faz a chamada da dll
 TempStr := Registro90(0);

 //Executa o tratamento da string tempor�ria testando se houve erro
 Result := Trata_SIntegra_Str(TempStr);
end;


function TfrmLista_Vendas_Periodo.RoundNum(Valor:Extended;Decimais:Integer):Extended;
{Quando houver,Arredonda uma possivel terceira casa decimal em uma vari�vel}
var
  I:Integer;
  Multiplicador:Integer;
begin
  if Decimais > 15 then
  begin
  Decimais := 15;
  end
  else if Decimais < 0 then
  begin
  Decimais := 0;
  end;
  Multiplicador := 1;
  for I:=1 to Decimais do
  begin
  Multiplicador := Multiplicador*10;
  end;
Result := round(Valor*Multiplicador)/Multiplicador;
end;






procedure TfrmLista_Vendas_Periodo.bt_spedClick(Sender: TObject);
var
 TempInt: integer;
begin
 if FileExists(sPasta_sistema+'\txt\erro.txt') then
   DeleteFile(sPasta_sistema+'\txt\erro.txt');

 rDebito_icms := 0;

 // Bloco 0
 Bloco_0_AberturaClick(frmlista_vendas_periodo);
 Bloco_0_Reg_0190Click(frmLista_Vendas_Periodo);
 Bloco_0_Reg_0200Click(frmLista_Vendas_Periodo);
 Bloco_0_FechamentoClick(frmLista_Vendas_Periodo);
 // Bloco C
 Bloco_C_AberturaClick(frmLista_Vendas_Periodo);
 Bloco_C_FechamentoClick(frmLista_Vendas_Periodo);
 // Bloco D
 Bloco_DClick(frmLista_Vendas_Periodo);
 // bloco E
 Bloco_EClick(frmLista_Vendas_Periodo);
 // bloco h
 Bloco_HClick(frmLista_Vendas_Periodo);
 // bloco 1
 Bloco_1Click(frmLista_Vendas_Periodo);
 // Bloco 9
 Bloco_9Click(frmLista_Vendas_Periodo);



end;

procedure TfrmLista_Vendas_Periodo.Bloco_0_AberturaClick(Sender: TObject);
var
 TempInt: integer;
begin
 //if Inicia_SPED(sPasta_sistema+'\txt', sPasta_sistema+'\cfg') = -1 then
 // application.MessageBox('Erro durante chamada da fun��o Inicia_SPED.',
  //                       'Aten��o', mb_iconerror);

// ABERTURA DO ARQUIVO DIGITAL E IDENTIFICA��O DO CONTRIBUINTE

{ TempInt := Registro0000('002',                           //Layout
                         '0',                            //Finalidade do arquivo: Normal
                         ed_data_ini.text,                    //Data inicial
                         ed_data_fim.text,                    //Data final
                         sEmpresa_Nome,          //Nome empresarial do contribuinte:
                         sEmpresa_CNPJ,                            //N�mero de inscri��o do contribuinte:
                         '',                             //N�mero de inscri��o do contribuinte:
                         sEmpresa_UF,                              //Sigla da unidade da federa��o:
                         somenteNumero(sempresa_ie),                              //Inscri��o Estadual do contribuinte:
                         sempresa_ibge,                       //C�digo do munic�pio do domic�lio fiscal:
                         '',                           //Inscri��o Municipal do contribuinte:
                         '',                     //Suframa
                         'A',                             //Perfil de apresenta��o do arquivo fiscal:
                         '1'                              //Indicador de tipo de atividade: 1 - Outros
                         );

 Trata_SPED_Int(sender, TempInt);

 // Registro0001 - ABERTURA DO ARQUIVO DIGITAL E IDENTIFICA��O DO CONTRIBUINTE
 TempInt := Registro0001('0'                            //Indicador de movimento  - 0 = Dados informados
                        );
 Trata_SPED_Int(sender, TempInt);

  // Registro0005 - DADOS COMPLEMENTARES DO CONTRIBUINTE
  try
   TempInt := Registro0005(sempresa_nome,        //Nome de fantasia associado:
                           sempresa_cep,              //C�digo de Endere�amento Postal:
                           sEmpresa_rua,              //Logradouro e endere�o do im�vel:
                           sempresa_numero,                     //N�mero do im�vel:
                           sempresa_complemento,             //Dados complementares do endere�o:
                           sempresa_bairro,                  //Bairro em que o im�vel est� situado:
                           sempresa_telefone,              //N�mero do telefone:
                           sempresa_fax,              //N�mero do fax:
                           sempresa_email         //Endere�o do correio eletr�nico:
                           );

   Trata_SPED_Int(sender, TempInt);
  except
   showmessage('Erro no Registro 0005!');
  end;
  // Registro0100 - DADOS DO CONTABILISTA
  TempInt := Registro0100(frmmodulo.qrfilial.fieldbyname('contador_nome').asstring,    //Nome do contabilista/escrit�rio:
                          frmmodulo.qrfilial.fieldbyname('contador_cpf').asstring,                       //N�mero de inscri��o no CPF:
                          frmmodulo.qrfilial.fieldbyname('contador_crc').asstring,                   //N�mero de inscri��o no Conselho Regional:
                          frmmodulo.qrfilial.fieldbyname('contador_cnpj').asstring,                      //CNPJ do escrit�rio de contabilidade, se houver:
                          frmmodulo.qrfilial.fieldbyname('contador_cep').asstring,                       //C�digo de Endere�amento Postal:
                          frmmodulo.qrfilial.fieldbyname('contador_endereco').asstring,              //Logradouro e endere�o do im�vel:
                          frmmodulo.qrfilial.fieldbyname('contador_numero').asstring,                     //N�mero do im�vel:
                          frmmodulo.qrfilial.fieldbyname('contador_complemento').asstring,             //Dados complementares do endere�o:
                          frmmodulo.qrfilial.fieldbyname('contador_bairro').asstring,                  //Bairro em que o im�vel est� situado:
                          frmmodulo.qrfilial.fieldbyname('contador_fone').asstring,              //N�mero do telefone:
                          frmmodulo.qrfilial.fieldbyname('contador_fax').asstring,              //N�mero do fax:
                          frmmodulo.qrfilial.fieldbyname('contador_email').asstring,        //Endere�o do correio eletr�nico:
                          frmmodulo.qrfilial.fieldbyname('CONTADOR_COD_MUNICIPIO_IBGE').asstring                   //C�digo do munic�pio, conforme tabela IBGE:
                          );

   Trata_SPED_Int(sender, TempInt);

       }
end;

procedure TfrmLista_Vendas_Periodo.Bloco_0_FechamentoClick(
  Sender: TObject);
var
 TempInt: Integer;
begin
  // Registro0990 - ENCERRAMENTO DO BLOCO 0
 // TempInt := Registro0990;
 //  Trata_SPED_Int(sender, TempInt);
end;

procedure TfrmLista_Vendas_Periodo.Bloco_0_Reg_0190Click(Sender: TObject);
var
 TempInt: Integer;
begin
  {
  // unidades de medidas
  query.Close;
  query.sql.clear;
  query.sql.add('select count(*), upper(unidade) as Unidade');
  query.sql.add('from c000025');
  query.sql.add('where unidade <> '''' or unidade is not null');
  query.sql.add('group by Unidade');
  query.Open;

  if query.RecordCount > 0 then
  begin
    query.first;
    while not query.eof do
    begin
      //--- Registro0190 -  ---
       TempInt := Registro0190(query.fieldbyname('unidade').asstring,        // C�digo da unidade de medida:
                              'UNIDADE'+' em '+query.fieldbyname('unidade').asstring         // Descri��o da unidade de medida:
                              );
       Trata_SPED_Int(sender, TempInt);
       query.next;
    end;
  end;  }
end;

procedure TfrmLista_Vendas_Periodo.Bloco_9Click(Sender: TObject);
var
 TempInt: integer;
begin
  {(* FINALIZACAO DO SPED*)



  //--- Registro9001 - ABERTURA DO BLOCO 9 ---
  TempInt := Registro9001('0'           //Indicador de movimento
                          );
  Trata_SPED_Int(sender, TempInt);

  //--- Registro9900 - REGISTROS DO ARQUIVO ---
  TempInt := Registro9900;                              //Registro que ser� totalizado no pr�ximo campo
                                                       //Total de registros do tipo informado no campo anterior

  Trata_SPED_Int(sender, TempInt);


  //--- Registro9990 - ENCERRAMENTO DO BLOCO 9 ---
  TempInt := Registro9990;
   Trata_SPED_Int(sender, TempInt);


  //--- Registro9999 - ENCERRAMENTO DO ARQUIVO DIGITAL ---
   TempInt := Registro9999;
   Trata_SPED_Int(sender, TempInt);

  Finaliza_SPED;

  if FileExists(sPasta_sistema+'\txt\sped.txt') then
  begin
    RenameFile(sPasta_sistema+'\txt\sped.txt', sArquivoSped);
  end;
  if FileExists(sPasta_sistema+'\txt\erro.txt') then
  begin
    rchSped.Lines.LoadFromFile(sPasta_sistema+'\txt\erro.txt');
  end;   }
end;

procedure TfrmLista_Vendas_Periodo.Bloco_0_Reg_0200Click(Sender: TObject);
var
 TempInt: Integer;
begin
 { // tabela de produtos
  query.close;
  query.sql.clear;
  query.sql.add('select codigo, produto, upper(unidade) as unidade,');
  query.sql.add('codbarra,aliquota');
  query.sql.add('from c000025');
  query.SQL.add('order by codigo');
  query.open;

  if query.RecordCount > 0 then
  begin
    query.first;
    while not query.eof do
    begin
      // Registro0200 - TABELA DE IDENTIFICA��O DO ITEM
      TempInt := Registro0200(query.fieldbyname('codigo').asstring,                       //C�digo do item:
                              query.fieldbyname('produto').asstring,                       //Descri��o do item:
                              query.fieldbyname('codbarra').asstring,                   //C�digo de barra do produto, se houver:
                              query.fieldbyname('codigo').asstring,                     //C�digo anterior do item (ultima apresentado):
                              query.fieldbyname('unidade').asstring,                        //Unidade de medida do estoque:
                              '00',                        //Tipo Item - Ativ. Ind, Com e Servi�os:
                              '',                        //C�digo da Nomenclatura Comum do Mercosul:
                              '',                        //C�digo EX, conforme a TIPI:
                              '',                        //C�digo g�nero item, tabela indicada item 4.2.1:
                              '',                        //C�digo servi�o Anexo I - Lei n�116/03:
                              query.fieldbyname('aliquota').asstring   //Al�quota ICMS aplic�vel (opera��es internas):
                              );
      Trata_SPED_Int(sender, TempInt);
      query.next;
    end;

  end;   }
end;

procedure TfrmLista_Vendas_Periodo.Bloco_DClick(Sender: TObject);
var
 TempInt: Integer;
begin
 { // RegistroD001 - ABERTURA DO BLOCO D
  TempInt := RegistroD001('1'             //Indicador de movimento
                          );
  Trata_SPED_Int(sender, TempInt);




  //--- RegistroD990 - ENCERRAMENTO DO BLOCO D ---
  TempInt := RegistroD990;
  Trata_SPED_Int(sender, TempInt);
         }
end;

procedure TfrmLista_Vendas_Periodo.Bloco_1Click(Sender: TObject);
var
 TempInt: Integer;
begin
 { // Registro1001 - ABERTURA DO BLOCO 1
  TempInt := Registro1001('1'              // Indicador de movimento:
                        );
  Trata_SPED_Int(sender, TempInt);

  // Registro1990 - ENCERRAMENTO DO BLOCO 1
  TempInt := Registro1990;
  Trata_SPED_Int(sender, TempInt);  }
end;

procedure TfrmLista_Vendas_Periodo.Bloco_HClick(Sender: TObject);
var
 TempInt: Integer;
 sQtde, stotal : string;
begin
 { // I N V E N T A R I O

  // //--- RegistroH001 - ABERTURA DO BLOCO H ---
  TempInt := RegistroH001('0'    //Indicador de movimento
                        );
  Trata_SPED_Int(sender, TempInt);

  query.close;
  query.sql.clear;
  query.sql.add('select sum(iif(c000100.estoque_atual>0,c000100.estoque_atual * c000025.precocusto,0)) as total');
  query.sql.add('from');
  query.sql.add('c000025,');
  query.sql.add('c000100');
  query.sql.add('where c000025.codigo = c000100.codproduto');
  query.open;




  //--- RegistroH005 - TOTAIS DO INVENT�RIO ---
  TempInt := RegistroH005(ed_data_fim.Text,           // Data do invent�rio
                          query.fieldbyname('total').asstring                     // Valor total do estoque
  );

   Trata_SPED_Int(sender, TempInt);



  // tabela de produtos
  query.close;
  query.sql.clear;
  query.sql.add('select c000025.codigo, upper(c000025.unidade) as unidade,');
  query.sql.add('c000025.precocusto,');
  query.sql.add('c000100.estoque_atual as qtde');
  query.sql.add('from c000025, c000100');
  query.sql.add('where c000025.codigo = c000100.codproduto');
  query.SQL.add('order by codigo');
  query.open;

  if query.RecordCount > 0 then
  begin
    query.first;
    while not query.eof do
    begin
       if query.fieldbyname('qtde').asfloat < 0 then
       begin
         sQtde := '0';
         stotal := '0';
       end
       else
       begin
         sqtde := query.fieldbyname('qtde').asstring;
         stotal := floattostr(query.fieldbyname('qtde').asfloat * query.fieldbyname('precocusto').asfloat);
       end;

       TempInt := RegistroH010(
                               query.fieldbyname('codigo').asstring,                     // C�digo do item (campo 02 do Registro 0200)
                               query.fieldbyname('unidade').asstring,                      // Unidade do item
                               sqtde,                      // Quantidade do item
                               query.fieldbyname('precocusto').asstring,                      // Valor unit�rio do item
                               stotal,                      // Valor do item
                               '0',                      // Indicador de propriedade/posse do item: 0- Item de propriedade do informante e em seu poder; 1- Item de propriedade do informante em posse de terceiros; 2- Item de propriedade de terceiros em posse do informante
                               '',                   // C�digo do participante (campo 02 do Registro 0150): propriet�rio/possuidor que n�o seja o informante do arquivo
                               '',                       // Descri��o complementar.
                               '1'                    // C�digo da conta anal�tica cont�bil debitada/creditada
        );




      Trata_SPED_Int(sender, TempInt);
      query.next;
    end;  }

 // end;



  //--- RegistroH990 - ENCERRAMENTO DO BLOCO H ---
//  TempInt := RegistroH990;
//   Trata_SPED_Int(sender, TempInt);
end;

procedure TfrmLista_Vendas_Periodo.Bloco_C_AberturaClick(Sender: TObject);
var
 TempInt: Integer;
begin
 {  // verificar se existem cupons fiscais
   QrySintegra.Close;
   QrySintegra.SQL.Clear;
   QrySintegra.SQL.Add('SELECT * FROM sintegra_rEG60');
   QrySintegra.SQL.Add('where (data_emissao BETWEEN :datahora_ini AND :datahora_fim)');
   QrySintegra.SQL.Add('ORDER BY data_emissao,nro_serie_eqp ');
   QrySintegra.ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
   QrySintegra.ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;
   QrySintegra.Open;

   if QrySintegra.RecordCount = 0 then
   begin
     with QrySintegra do
     begin
       Close;
       SQL.Clear;
       SQL.ADD(' SELECT ');
       SQL.Add('DATA,');
       SQL.Add('MODELO_NF,');
       SQL.Add('SERIE,');
       SQL.Add('SUBSERIE,');
       SQL.ADD('valor_icms_isentas,');
       SQL.ADD('BASE_SUBSTITUICAO,');
       SQL.ADD('aliquota_icms,');
       SQL.ADD('valor_contabil,');
       SQL.ADD('base_icms,');
       SQL.ADD('valor_icms_creditado,');
       SQL.Add('NOTAFISCAL ');
       SQL.Add('FROM SINTEGRA_SAIDA');
       SQL.ADD('where (tipo = ''S'') AND (');
       SQL.Add('(data BETWEEN :datahora_ini AND :datahora_fim) AND');
       SQL.Add('(modelo_nf = ''14'') OR');
       SQL.Add('(modelo_nf = ''15'') OR');
       SQL.Add('(modelo_nf = ''16'') OR');
       SQL.Add('(modelo_nf = ''13'') OR');
       SQL.Add('(modelo_nf = ''02''))');
       SQL.Add('ORDER BY data,notafiscal,modelo_nf,serie,subserie');
       ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
       ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;
       Open;
       if QrySIntegra.RecordCount = 0 then
       begin
        // RegistroC001 - ABERTURA DO BLOCO C
        //----> SEM MOVIMENTO
//        TempInt := RegistroC001('1'                           //Indicador de movimento
                               );
//        Trata_SPED_Int(sender, TempInt);


       end
       else
       begin
          // RegistroC001 - ABERTURA DO BLOCO C
          //----> COM MOVIMENTO
          TempInt := RegistroC001('0'                           //Indicador de movimento
                                 );
          Trata_SPED_Int(sender, TempInt);
          // EXECUTAR O BLOCO 300 - NOTAS FISCAIS MOD 02
          Bloco_C_Reg_C300Click(frmLista_Vendas_Periodo);


      end;
     end;
  end
  else
  begin
    // RegistroC001 - ABERTURA DO BLOCO C
    //----> COM MOVIMENTO
    TempInt := RegistroC001('0'                           //Indicador de movimento
                           );

    Trata_SPED_Int(sender, TempInt);
     // EXECUTAR OS BLOCOS 300 E 400
     Bloco_C_Reg_C300Click(frmLista_Vendas_Periodo);
     Bloco_C_Reg_C400Click(frmLista_Vendas_Periodo);
  end;

 }

end;

procedure TfrmLista_Vendas_Periodo.Bloco_C_FechamentoClick(
  Sender: TObject);
var
 TempInt: integer;
BEGIN
  // RegistroC990 - ENCERRAMENTO DO BLOCO C
 // TempInt := RegistroC990;
//  Trata_SPED_Int(sender, TempInt);

end;

procedure TfrmLista_Vendas_Periodo.Bloco_C_Reg_C300Click(Sender: TObject);
var
 TempInt: integer;

     TempStr, num_nf: string;
     vcod_inicial,vcod_final: string;
     vdata: tdatetime;
     vnf,vmodelo,vserie, vsubserie: string;
     vcontabil,vbase_icms,vvalor_icms,vvalor_isentas,vvalor_outras,valq_icms: double;

begin
{  // selecao das notas fiscais  - agrupar
  with qrySintegra do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('SELECT ');
    SQL.Add('DATA,');
    SQL.Add('SERIE,');
    SQL.Add('SUBSERIE,');
    SQL.Add('NOTAFISCAL,');
    sql.add('codigo,');
    SQL.ADD('sum(valor_contabil) as valor_contabil');
    SQL.Add('FROM SINTEGRA_SAIDA');
    SQL.ADD('where (tipo = ''S'') AND (');
    SQL.Add('(data BETWEEN :datahora_ini AND :datahora_fim) AND');
    SQL.Add('(modelo_nf = ''02''))');
    sql.add('group by data, serie, subserie, notafiscal, codigo');
    SQL.Add('ORDER BY data,notafiscal');
    ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
    ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;

    Open;
  end;


  IF qrySintegra.RecordCount > 0 THEN
  BEGIN
    qrySintegra.first;
    while not qrySintegra.eof do
    begin
       //NOTA FISCAL DE VENDA A CONSUMIDOR (C�DIGO 02)
       // N I V E L   2
       TempInt := RegistroC350(
                               qrySintegra.fieldbyname('serie').asstring,                       //  S�rie do documento fiscal
                               qrysintegra.fieldbyname('subserie').asstring,                       //  Subs�rie do documento fiscal
                               qrySintegra.fieldbyname('notafiscal').asstring,                       //  N�mero do documento fiscal
                               qrySintegra.fieldbyname('data').asstring,                 //  Data da emiss�o do documento fiscal
                               '',                       //  CNPJ ou CPF do destinat�rio
                               qrysintegra.fieldbyname('valor_contabil').asstring,                       //  Valor das mercadorias constantes no documento fiscal
                               qrysintegra.fieldbyname('valor_contabil').asstring,                       //  Valor total do documento fiscal
                               '0',                       //  Valor total do desconto
                               '0',                       //  Valor total do PIS
                               '0',                       //  Valor total da COFINS
                               ''                        //  C�digo da conta anal�tica cont�bil debitada/creditada
                              );
       Trata_SPED_Int(sender, TempInt);


       // filtrar os itens

       query.close;
       query.sql.clear;
       query.sql.add('select * from sintegra_saida_item where codnota = '''+qrySintegra.fieldbyname('codigo').asstring+'''');
       query.open;
       query.first;
       while not query.eof do
       begin
            //ITENS DO DOCUMENTO (C�DIGO 02)
            // N I V E L 3
             TempInt := RegistroC370(
                                     query.fieldbyname('num_item').asstring,                       //  N�mero seq�encial do item no documento fiscal
                                     query.fieldbyname('cd_produto').asstring,                       //  C�digo do Item (campo 02 do registro 0200)
                                     query.fieldbyname('quantidade').asstring,                       //  Quantidade do item
                                     ansiuppercase(query.fieldbyname('apr_und').asstring),                       //  Unidade do item (campo 02 do registro 0190)
                                     query.fieldbyname('total').asstring,                       //  Valor total do item
                                     query.fieldbyname('valor_desconto').asstring                        //  Valor total do desconto no item
            );

             Trata_SPED_Int(sender, TempInt);
            query.next;
       end;

       // resumo por cst, cfop, aliquota

       query.Close;
       query.SQL.Clear;
       query.SQL.Add('SELECT');
       query.SQL.Add('cfop,');
       query.SQL.Add('aliquota_icms,');
       query.sql.add('s_trib,');
       query.sql.add('sum(valor_total_geral) total_geral,');
       query.SQL.Add('sum(base_icms) base_icms,');
       query.sql.add('sum(valor_icms) valor_icms ');
       query.SQL.Add('FROM sintegra_saida_item ');
       query.sql.add('where codnota = '''+qrySintegra.fieldbyname('codigo').asstring+'''');
       query.SQL.Add('GROUP BY cfop,');
       query.SQL.Add('aliquota_icms,');
       query.sql.add('s_trib');
       query.SQL.Add('order by s_trib, cfop, aliquota_icms');
       query.Open;

       query.First;
       while not query.eof do
       begin

          //- REGISTRO ANAL�TICO DAS NOTAS FISCAIS DE VENDA A CONSUMIDOR (C�DIGO 02)
           // N I V E L 3
           TempInt := RegistroC390(
                                   query.fieldbyname('s_trib').asstring,                       //  C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1
                                   query.fieldbyname('cfop').asstring,                       //  C�digo Fiscal de Opera��o e Presta��o
                                   query.fieldbyname('aliquota_icms').asstring,                       //  Al�quota do ICMS
                                   query.fieldbyname('total_geral').asstring,                       //  Valor total acumulado das opera��es correspondentes � combina��o de CST_ICMS, CFOP e al�quota do ICMS, inclu�das as despesas acess�rias e acr�scimos.
                                   query.fieldbyname('base_icms').asstring,                       //  Valor acumulado da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.
                                   query.fieldbyname('valor_icms').asstring,                       //  Valor acumulado do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.
                                   '0',                       //  Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.
                                   ''                        //  C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)
          );

           Trata_SPED_Int(sender, TempInt);

           rDebito_icms := rdebito_icms + query.fieldbyname('valor_icms').asfloat;


          query.next;
       end;
       qrySintegra.next;
    end;
  END;  }
end;

procedure TfrmLista_Vendas_Periodo.Bloco_C_Reg_C400Click(Sender: TObject);
VAR
 TempInt: Integer;
begin
   {

  with qrECF do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Count(sintegra_reg60.ID),');
    sql.add('c000081.equipamento as ecf_modelo, c000081.serie_empresa as ecf_caixa,');
    sql.add('c000081.serie_equipamento as ecf_serial');
    sql.add('from sintegra_reg60, c000081');
    SQL.Add('where');
    sql.add('sintegra_reg60.NRO_SERIE_EQP = c000081.serie_equipamento');
    sql.add('and (sintegra_reg60.data_emissao BETWEEN :datahora_ini AND :datahora_fim)');
    sql.add('GROUP BY c000081.equipamento, c000081.serie_empresa,');
    sql.add('c000081.serie_equipamento');
    SQL.Add('ORDER BY c000081.serie_empresa ');
    ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
    ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;
    Open;
  end;

  if qrECF.RecordCount > 0 then
  begin
    qrECF.first;
    while not qrECF.eof do
    begin

      (********* E C F **********)
      // N I V E L  2
      //EQUIPAMENTO ECF (C�DIGO 02 e 2D)

       TempInt := RegistroC400(
                               '2D',                     //  C�digo   do   modelo   do   documento   fiscal, conforme a Tabela 4.1.1
                               qrECF.fieldbyname('ecf_modelo').asstring,                       //  Modelo do equipamento
                               qrECF.fieldbyname('ecf_serial').asstring,                       //  N�mero de s�rie de fabrica��o do ECF
                               qrECF.fieldbyname('ecf_caixa').asstring                        //  N�mero do caixa atribu�do ao ECF
                               );


           (* REDUCAO Z*)
           qrreducao.close;
           qrreducao.sql.clear;
           qrreducao.sql.add('select * from sintegra_reg60');
           qrreducao.sql.add('where nro_serie_eqp = '''+qrECF.fieldbyname('ecf_serial').asstring+'''');
           qrreducao.sql.add('and data_emissao BETWEEN :datahora_ini AND :datahora_fim');
           qrreducao.sql.add('order by data_emissao,nro_contador_fim');
           qrreducao.ParamByName('datahora_ini').asdatetime := ed_data_ini.DATE;
           qrreducao.ParamByName('datahora_fim').asdatetime := ed_data_fim.DATE;
           qrreducao.open;
           qrreducao.First;
           while not qrreducao.Eof do
           begin
             // N I V E L 3
             //REDU��O Z (C�DIGO 02 e 2D)
             TempInt := RegistroC405(
                                     qrreducao.fieldbyname('data_emissao').asstring,               //  Data do movimento a que se refere a Redu��o Z
                                     qrreducao.fieldbyname('contador_reinicio').asstring,                       //  Posi��o do Contador de Rein�cio de Opera��o
                                     qrreducao.fieldbyname('nro_contador_z').asstring,                       //  Posi��o do Contador de Redu��o Z
                                     qrreducao.fieldbyname('nro_contador_fim').asstring,                       //  N�mero do Contador de Ordem de Opera��o do �ltimo documento emitido no dia. (N�mero do COO na Redu��o Z)
                                     qrreducao.fieldbyname('VALOR_TOTAL_GERAL').asstring,                       //  Valor do Grande Total final
                                     qrreducao.fieldbyname('valor_venda_bruta').asstring                        //  Valor da venda bruta
                                     );

             Trata_SPED_Int(sender, TempInt);

             (* TOTALIZADORES DA REDUCAO Z *)


             // N I V E L 4
             //REGISTRO DOS TOTALIZADORES PARCIAIS DA REDU��O Z (COD 02 e 2D) - TOTAL POR ALIQUOTA
             IF qrreducao.fieldbyname('base01').asfloat > 0 then
             begin
               TempInt := RegistroC420(
                                       '01T'+somenteNumero(formatfloat('00.00',qrreducao.fieldbyname('aliquota01').asfloat)), //  C�digo do totalizador, conforme Tabela 4.4.6
                                       qrreducao.fieldbyname('base01').asstring,   //  Valor acumulado no totalizador, relativo � respectiva Redu��o Z.
                                       '01',                       //  N�mero do totalizador quando ocorrer mais de uma situa��o com a mesma carga tribut�ria efetiva.
                                       ''                        //  Descri��o da situa��o tribut�ria relativa ao totalizador parcial, quando houver mais de um com a mesma carga tribut�ria efetiva.
                                       );
               Trata_SPED_Int(sender, TempInt);
             end;

             IF qrreducao.fieldbyname('BASE02').asfloat > 0 then
             begin
               TempInt := RegistroC420(
                                       '02T'+somenteNumero(formatfloat('00.00',qrreducao.fieldbyname('aliquota02').asfloat)), //  C�digo do totalizador, conforme Tabela 4.4.6
                                       qrreducao.fieldbyname('BASE02').asstring,   //  Valor acumulado no totalizador, relativo � respectiva Redu��o Z.
                                       '02',                       //  N�mero do totalizador quando ocorrer mais de uma situa��o com a mesma carga tribut�ria efetiva.
                                       ''                        //  Descri��o da situa��o tribut�ria relativa ao totalizador parcial, quando houver mais de um com a mesma carga tribut�ria efetiva.
                                       );
               Trata_SPED_Int(sender, TempInt);
             end;


             IF qrreducao.fieldbyname('BASE03').asfloat > 0 then
             begin
               TempInt := RegistroC420(
                                       '03T'+somenteNumero(formatfloat('00.00',qrreducao.fieldbyname('aliquota03').asfloat)), //  C�digo do totalizador, conforme Tabela 4.4.6
                                       qrreducao.fieldbyname('BASE03').asstring,   //  Valor acumulado no totalizador, relativo � respectiva Redu��o Z.
                                       '03',                       //  N�mero do totalizador quando ocorrer mais de uma situa��o com a mesma carga tribut�ria efetiva.
                                       ''                        //  Descri��o da situa��o tribut�ria relativa ao totalizador parcial, quando houver mais de um com a mesma carga tribut�ria efetiva.
                                       );
               Trata_SPED_Int(sender, TempInt);
             end;

             IF qrreducao.fieldbyname('BASE04').asfloat > 0 then
             begin
               TempInt := RegistroC420(
                                       '04T'+somenteNumero(formatfloat('00.00',qrreducao.fieldbyname('aliquota04').asfloat)), //  C�digo do totalizador, conforme Tabela 4.4.6
                                       qrreducao.fieldbyname('BASE04').asstring,   //  Valor acumulado no totalizador, relativo � respectiva Redu��o Z.
                                       '04',                       //  N�mero do totalizador quando ocorrer mais de uma situa��o com a mesma carga tribut�ria efetiva.
                                       ''                        //  Descri��o da situa��o tribut�ria relativa ao totalizador parcial, quando houver mais de um com a mesma carga tribut�ria efetiva.
                                       );
               Trata_SPED_Int(sender, TempInt);
             end;

             IF qrreducao.fieldbyname('BASE05').asfloat > 0 then
             begin
               TempInt := RegistroC420(
                                       '05T'+somenteNumero(formatfloat('00.00',qrreducao.fieldbyname('aliquota05').asfloat)), //  C�digo do totalizador, conforme Tabela 4.4.6
                                       qrreducao.fieldbyname('BASE05').asstring,   //  Valor acumulado no totalizador, relativo � respectiva Redu��o Z.
                                       '05',                       //  N�mero do totalizador quando ocorrer mais de uma situa��o com a mesma carga tribut�ria efetiva.
                                       ''                        //  Descri��o da situa��o tribut�ria relativa ao totalizador parcial, quando houver mais de um com a mesma carga tribut�ria efetiva.
                                       );
               Trata_SPED_Int(sender, TempInt);
             end;

             // SUBSTITUICAO TRIBUTARIA
             IF qrreducao.fieldbyname('SUBSTITUICAO_TRIBUTARIA').asfloat > 0 then
             begin
               TempInt := RegistroC420(
                                       'F1', //  C�digo do totalizador, conforme Tabela 4.4.6
                                       qrreducao.fieldbyname('SUBSTITUICAO_TRIBUTARIA').asstring,   //  Valor acumulado no totalizador, relativo � respectiva Redu��o Z.
                                       '',                       //  N�mero do totalizador quando ocorrer mais de uma situa��o com a mesma carga tribut�ria efetiva.
                                       ''                        //  Descri��o da situa��o tribut�ria relativa ao totalizador parcial, quando houver mais de um com a mesma carga tribut�ria efetiva.
                                       );
               Trata_SPED_Int(sender, TempInt);
             end;
             // ISENTO
             IF qrreducao.fieldbyname('isento').asfloat > 0 then
             begin
               TempInt := RegistroC420(
                                       'I1', //  C�digo do totalizador, conforme Tabela 4.4.6
                                       qrreducao.fieldbyname('isento').asstring,   //  Valor acumulado no totalizador, relativo � respectiva Redu��o Z.
                                       '',                       //  N�mero do totalizador quando ocorrer mais de uma situa��o com a mesma carga tribut�ria efetiva.
                                       ''                        //  Descri��o da situa��o tribut�ria relativa ao totalizador parcial, quando houver mais de um com a mesma carga tribut�ria efetiva.
                                       );
               Trata_SPED_Int(sender, TempInt);
             end;


             // NAO TRIBUTADO

             IF qrreducao.fieldbyname('nao_incidencia').asfloat > 0 then
             begin
               TempInt := RegistroC420(
                                       'N1', //  C�digo do totalizador, conforme Tabela 4.4.6
                                       qrreducao.fieldbyname('nao_incidencia').asstring,   //  Valor acumulado no totalizador, relativo � respectiva Redu��o Z.
                                       '',                       //  N�mero do totalizador quando ocorrer mais de uma situa��o com a mesma carga tribut�ria efetiva.
                                       ''                        //  Descri��o da situa��o tribut�ria relativa ao totalizador parcial, quando houver mais de um com a mesma carga tribut�ria efetiva.
                                       );
               Trata_SPED_Int(sender, TempInt);
             end;


             /////  CANCELAMENTOS

             if qrreducao.fieldbyname('cancelamento').asfloat > 0 then
             begin
               TempInt := RegistroC420(
                                       'Can-T',                       //  C�digo do totalizador, conforme Tabela 4.4.6
                                       qrreducao.fieldbyname('cancelamento').asstring,                       //  Valor acumulado no totalizador, relativo � respectiva Redu��o Z.
                                       '',                       //  N�mero do totalizador quando ocorrer mais de uma situa��o com a mesma carga tribut�ria efetiva.
                                       ''                        //  Descri��o da situa��o tribut�ria relativa ao totalizador parcial, quando houver mais de um com a mesma carga tribut�ria efetiva.
                                       );
               Trata_SPED_Int(sender, TempInt);
             end;

             /// DESCONTO

             if qrreducao.fieldbyname('desconto').asfloat > 0 then
             begin
               TempInt := RegistroC420(
                                       'DT',                       //  C�digo do totalizador, conforme Tabela 4.4.6
                                       qrreducao.fieldbyname('desconto').asstring,                       //  Valor acumulado no totalizador, relativo � respectiva Redu��o Z.
                                       '',                       //  N�mero do totalizador quando ocorrer mais de uma situa��o com a mesma carga tribut�ria efetiva.
                                       ''                        //  Descri��o da situa��o tribut�ria relativa ao totalizador parcial, quando houver mais de um com a mesma carga tribut�ria efetiva.
                                       );
               Trata_SPED_Int(sender, TempInt);
             end;

             /// CUPONS FISCAIS


             qrCupom.close;
             qrcupom.sql.clear;
             qrcupom.SQL.add('select * from c000048');
             qrcupom.sql.add('where ecf_serial = '''+qrReducao.fieldbyname('nro_serie_eqp').asstring+'''');
             qrcupom.sql.add('and data = :data_reducao');
             qrcupom.sql.add('order by numero_cupom_fiscal');
             qrcupom.parambyname('data_reducao').asdatetime := qrReducao.fieldbyname('data_emissao').asdatetime;
             qrcupom.open;
             // NIVEL 4
             qrcupom.first;
             while not qrcupom.eof do
             begin
                if qrcupom.fieldbyname('situacao').asinteger = 1 then
                begin

                  //DOCUMENTO FISCAL EMITIDO POR ECF (C�DIGO 02 e 2D) - CUPOM FISCAL
                   TempInt := RegistroC460(
                                           '2D',                     //  C�digo   do   modelo   do   documento   fiscal, conforme a Tabela 4.1.1    --> 00 - OK 02 - CANCELADO
                                           '00',                       //  C�digo   da   situa��o   do   documento   fiscal, conforme a Tabela 4.1.2
                                           qrcupom.fieldbyname('numero_cupom_fiscal').asstring,                       //  N�mero do documento fiscal (COO)
                                           qrcupom.fieldbyname('data').asstring,               //  Data da emiss�o do documento fiscal
                                           floattostr(qrcupom.fieldbyname('total').asfloat),                       //  Valor total do documento fiscal
                                           '0',                       //  Valor do PIS
                                           '0',                       //  Valor da COFINS
                                           '',                     //  CPF ou CNPJ do adquirente
                                           ''                        //  Nome do adquirente
                                           );
                     Trata_SPED_Int(sender, TempInt);

                     qrcupom_item.close;
                     qrcupom_item.sql.clear;
                     qrcupom_item.sql.add('select * from c000032');
                     qrcupom_item.SQL.add('where codnota = '''+qrcupom.fieldbyname('codigo').asstring+'''');
                     qrcupom_item.SQL.add('order by codigo');
                     qrcupom_item.open;

                     qrcupom_item.First;
                     while not qrcupom_item.eof do
                     begin
                                                // N I V E L 5
                      //ITENS DO DOCUMENTO FISCAL EMITIDO POR ECF (C�DIGO 02 e 2D)

                       TempInt := RegistroC470(
                                               qrcupom_item.fieldbyname('codproduto').asstring,                       //  C�digo do item (campo 02 do Registro 0200)
                                               qrcupom_item.fieldbyname('qtde').asstring,                       //  Quantidade do item
                                               '0',                       //  Quantidade cancelada,  no caso de cancelamento parcial de item
                                               qrcupom_item.fieldbyname('unidade').asstring,                       //  Unidade do item (Campo 02 do registro 0190)
                                               qrcupom_item.fieldbyname('total').asstring,                       //  Valor total do item
                                               qrcupom_item.fieldbyname('cst').asstring,                       //  C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1.
                                               '5102',                     //  C�digo Fiscal de Opera��o e Presta��o
                                               qrcupom_item.fieldbyname('aliquota').asstring,                       //  Al�quota do ICMS - Carga tribut�ria efetiva em percentual
                                               '0',                       //  Valor do PIS
                                               '0'                        //  Valor da COFINS
                      );

                       Trata_SPED_Int(sender, TempInt);
                       qrcupom_item.next;
                     end;
                end
                else
                begin
                   TempInt := RegistroC460(
                                           '2D',                     //  C�digo   do   modelo   do   documento   fiscal, conforme a Tabela 4.1.1    --> 00 - OK 02 - CANCELADO
                                           '02',                       //  C�digo   da   situa��o   do   documento   fiscal, conforme a Tabela 4.1.2
                                           qrcupom.fieldbyname('numero_cupom_fiscal').asstring,                       //  N�mero do documento fiscal (COO)
                                           '',               //  Data da emiss�o do documento fiscal
                                           '',                       //  Valor total do documento fiscal
                                           '',                       //  Valor do PIS
                                           '',                       //  Valor da COFINS
                                           '',                     //  CPF ou CNPJ do adquirente
                                           ''                        //  Nome do adquirente
                  );

                   Trata_SPED_Int(sender, TempInt);
                end;
                qrcupom.next;
             end;
             // N I V E L 4
             qrcupom_item.close;
             qrcupom_item.sql.clear;
             qrcupom_item.sql.add('select');
             qrcupom_item.sql.add('sum(base_calculo) as base_icms,');
             qrcupom_item.sql.add('sum(valor_icms) as valor_icms,');
             qrcupom_item.sql.add('sum(total) as valor_total,');
             qrcupom_item.sql.add('cst, aliquota');
             qrcupom_item.sql.add('from c000032');
             qrcupom_item.SQL.add('where ecf_serie = '''+qrReducao.fieldbyname('nro_serie_eqp').asstring+''' and');
             qrcupom_item.sql.add('data = :data_reducao');
             qrcupom_item.sql.add('group by cst, aliquota');
             qrcupom_item.SQL.add('order by cst, aliquota');
             qrcupom_item.ParamByName('data_reducao').asdatetime := qrReducao.fieldbyname('data_emissao').asdatetime;
             qrcupom_item.open;

             qrcupom_item.first;
             while not qrcupom_item.eof do
             begin
                //REGISTRO ANAL�TICO DO MOVIMENTO DI�RIO (C�DIGO 02 E 2D)

                 TempInt := RegistroC490(
                                         qrcupom_item.fieldbyname('cst').asstring,                       //  C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1
                                         '5102',                       //  C�digo Fiscal de Opera��o e Presta��o
                                         qrcupom_item.fieldbyname('aliquota').asstring,                       //  Al�quota do ICMS
                                         qrcupom_item.fieldbyname('valor_total').asstring,                       //  Valor da opera��o correspondente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS, inclu�das as despesas acess�rias e acr�scimos
                                         qrcupom_item.fieldbyname('base_icms').asstring,                       //  Valor acumulado da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.
                                         qrcupom_item.fieldbyname('valor_icms').asstring,                       //  Valor acumulado do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.
                                         ''                        //  C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)
                );

                 Trata_SPED_Int(sender, TempInt);

                if qrcupom_item.fieldbyname('valor_icms').asfloat > 0 then
                begin
                  rDebito_icms := rDebito_icms + qrcupom_item.fieldbyname('valor_icms').asfloat;
                end;
                qrcupom_item.next;
             end;
             qrreducao.Next;
           end;
      qrECF.next;
    end;
  end;      }
end;

procedure TfrmLista_Vendas_Periodo.Bloco_EClick(Sender: TObject);
var
 TempInt: Integer;
begin
 { //--- RegistroE001 - ABERTURA DO BLOCO E ---
  TempInt := RegistroE001('0'            //Indicador de movimento
                          );

  //--- RegistroE100 - PERIODO DE APURACAO DO ICMS
  TempInt := RegistroE100(
                        ed_data_ini.text,       // Data inicial a que a apura��o se refere:
                        ed_data_fim.text        // Data final a que a apura��o se refere:
                        );

 //--- RegistroE110 - APURACAO DO ICMS - OPERACOES PROPRIAS ---
  TempInt := RegistroE110(floattostr(rDebito_Icms),    //Valor total dos d�bitos por "Sa�das e presta��es com d�bito do imposto"
                          '0',    //Valor total dos ajustes a d�bito decorrentes do documento fiscal.
                          '0',    //Valor total de "Ajustes a d�bito"
                          '0',    //Valor total de Ajustes �Estornos de cr�ditos�
                          '0',    //Valor total dos cr�ditos por "Entradas e aquisi��es com cr�dito do imposto"
                          '0',    //Valor total dos ajustes a cr�dito decorrentes do documento fiscal.
                          '0',    //Valor total de "Ajustes a cr�dito"
                          floattostr(rDebito_Icms),    //Valor total de Ajustes �Estornos de D�bitos�
                          '0',    //Valor total de "Saldo credor do per�odo anterior"
                          '0',    //Valor total de "Saldo devedor (02+03+04+05-06-07-08-09-10) antes das dedu��es"
                          '0',    //Valor total de "Dedu��es"
                          '0',    //Valor total de "ICMS a recolher (11-12)
                          '0',    //Valor total de "Saldo credor a transportar para o per�odo seguinte�
                          '0'     //Valores recolhidos ou a recolher, extra-apura��o.
                           );


    (********** USAR O REGISTRO E111 SOMENTE QDO HOUVER ESTORNO DE DEBITO DE ICMS ******)
    //AJUSTE/BENEF�CIO/INCENTIVO DA APURA��O DO ICMS

    if rDebito_icms > 0 then
    begin
       TempInt := RegistroE111(
                               'ES039999',                       //  C�digo do ajuste da apura��o e dedu��o, conforme a Tabela indicada no item 5.1.1.
                               'DEBITO ESPECIAL DE ICMS PARA ES',                       //  Descri��o complementar do ajuste da apura��o.
                               floattostr(rDebito_Icms)                        //  Valor do ajuste da apura��o
      );

       Trata_SPED_Int(sender, TempInt);
    end;

  //--- RegistroE990 - ENCERRAMENTO DO BLOCO E ---
  TempInt := RegistroE990;
   Trata_SPED_Int(sender, TempInt);
     }
end;

end.
