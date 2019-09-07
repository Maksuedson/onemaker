unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
  ExtCtrls, AdvShapeButton, Mask, RzEdit, RzBtnEdt, XPMan, IniFiles, Registry,
  RzPanel, DB, MemDS, DBAccess, VirtualTable, ADODB, Grids, DBGrids,
  ACBrBase, ACBrValidador, AdvOfficePager, AdvOfficePagerStylers,
  AdvGlowButton, AdvReflectionImage, Buttons,
  Spin, Printers, GravaIni, sSkinManager, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, Uni, UniProvider, InterBaseUniProvider;

type
  TfrmPrincipal = class(TForm)
    pn1: TPanel;
    Panel1: TPanel;
    XPManifest1: TXPManifest;
    Label31: TLabel;
    ed_diretorio: TEdit;
//    conexao: TIBCConnection;
  //  qrpaf: TIBCQuery;
    OpenDialog1: TOpenDialog;
    conexao_ecf: TADOConnection;
    qrECF: TADOQuery;
    validador: TACBrValidador;
    TabECF: TAdvOfficePage;
    TabBD: TAdvOfficePage;
    AdvOfficePager13: TAdvOfficePage;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    TabFuncionalidades: TAdvOfficePage;
    abas: TAdvOfficePager;
    TabEmpresa: TAdvOfficePage;
    btnAvancar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnVoltar: TAdvGlowButton;
    cpGravaINI: TGravaIni;
    Panel2: TPanel;
    Panel3: TPanel;
    Label8: TLabel;
    cb_ecf_marca: TComboBox;
    cb_ecf_modelo: TComboBox;
    Label12: TLabel;
    cb_ecf_tipo: TComboBox;
    Label9: TLabel;
    CB_PORTA: TComboBox;
    Label7: TLabel;
    Button6: TAdvGlowButton;
    Panel4: TPanel;
    Panel5: TPanel;
    rdLocalGaveta: TRadioGroup;
    Label42: TLabel;
    ComboPortaGaveta: TComboBox;
    AdvGlowButton1: TAdvGlowButton;
    Panel6: TPanel;
    Panel7: TPanel;
    Label10: TLabel;
    ed_ecf_serial: TEdit;
    Label11: TLabel;
    ed_ecf_numero: TEdit;
    Label20: TLabel;
    ed_usuario: TEdit;
    Label41: TLabel;
    cb_versao: TComboBox;
    Label13: TLabel;
    ed_ecf_cnif: TEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    Label26: TLabel;
    cb_desconto_iss: TComboBox;
    Panel10: TPanel;
    Panel11: TPanel;
    Label21: TLabel;
    Label23: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    ed_indice_crediario: TEdit;
    ed_indice_suprimento: TEdit;
    Label19: TLabel;
    Label25: TLabel;
    ed_nome_crediario: TEdit;
    Label6: TLabel;
    ed_indice_sangria: TEdit;
    Panel12: TPanel;
    Panel13: TPanel;
    ed_total_geral: TEdit;
    Panel14: TPanel;
    Panel15: TPanel;
    lbl1: TLabel;
    ComboImpressora: TComboBox;
    Label44: TLabel;
    ComboGuilhotina: TComboBox;
    lbl2: TLabel;
    EditQtdLinhas: TSpinEdit;
    CheckHabGuilhotina: TCheckBox;
    btn1: TAdvGlowButton;
    Panel16: TPanel;
    pnl1: TPanel;
    Label3: TLabel;
    ed_base_local: TRzButtonEdit;
    Label4: TLabel;
    ed_server: TRzEdit;
    ed_base: TRzButtonEdit;
    Label5: TLabel;
    Panel18: TPanel;
    Panel19: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label38: TLabel;
    cb_bal_modelo: TComboBox;
    cb_bal_baudrate: TComboBox;
    cb_bal_stop: TComboBox;
    Label27: TLabel;
    Label37: TLabel;
    Label40: TLabel;
    cb_bal_porta: TComboBox;
    cb_bal_hand: TComboBox;
    cb_parity: TComboBox;
    Label30: TLabel;
    Label39: TLabel;
    cb_bal_databits: TComboBox;
    cb_bal_time_out: TEdit;
    Panel20: TPanel;
    Panel21: TPanel;
    Label43: TLabel;
    EditQtdDigitos: TSpinEdit;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    rb_tef: TCheckBox;
    rb_tef_tecban: TCheckBox;
    rb_tef_hipercard: TCheckBox;
    rb_alt_unitario: TCheckBox;
    rb_alt_qtde: TCheckBox;
    rb_alt_total: TCheckBox;
    rdgColunaConsultaProdutos: TRadioGroup;
    chkVendedor: TCheckBox;
    Panel30: TPanel;
    Panel31: TPanel;
    Label17: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label36: TLabel;
    Label34: TLabel;
    Label33: TLabel;
    Label32: TLabel;
    Label14: TLabel;
    ed_cliente_nome: TEdit;
    ed_cliente_endereco: TEdit;
    ed_cliente_bairro: TEdit;
    ed_cliente_cidade: TEdit;
    ed_cliente_cep: TEdit;
    ed_cliente_cnpj: TEdit;
    ed_cliente_ie: TEdit;
    ed_cliente_im: TEdit;
    Label35: TLabel;
    ed_cliente_uf: TEdit;
    Panel32: TPanel;
    Panel33: TPanel;
    rb_varejo: TRadioButton;
    rb_auto: TRadioButton;
    rb_posto: TRadioButton;
    rb_restaurante: TRadioButton;
    Panel34: TPanel;
    Panel35: TPanel;
    Check_HabPreVenda: TCheckBox;
    Check_HabOS: TCheckBox;
    Panel36: TPanel;
    Label24: TLabel;
    Panel37: TPanel;
    conexao: TUniConnection;
    qrpaf: TUniQuery;
    InterBaseUniProvider1: TInterBaseUniProvider;
    satCompart: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure pn2_cancelarClick(Sender: TObject);
    procedure ed_base_localButtonClick(Sender: TObject);
    procedure ed_baseButtonClick(Sender: TObject);
    procedure Button61Click(Sender: TObject);
    procedure cb_ecf_marcaChange(Sender: TObject);
    procedure cb_versaoChange(Sender: TObject);
    procedure ed_cliente_cnpjExit(Sender: TObject);
    procedure ed_cliente_ieExit(Sender: TObject);
    procedure ed_cliente_cepExit(Sender: TObject);
    procedure TabEmpresaChanging(Sender: TObject; FromPage, ToPage: Integer; var AllowChange: Boolean);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure abasChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GravarConfig;
    procedure CarregaConfig;
    procedure FormCreate(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure rdLocalGavetaClick(Sender: TObject);
    procedure CheckHabGuilhotinaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvMetroButton2Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure alimenta_tabela_ecf();
  public
    { Public declarations }
    procedure GravaIni(sArquivo, Secao, Linha, Valor: String);
    Function LerIni(sArquivo, Secao, Linha: String; Def: String): String;
  end;

var
  frmPrincipal: TfrmPrincipal;
  bContinua: Boolean;
  iECF_Modelo: Integer;
  sECF_porta, smsg: string;
  sECF_usuario: string;
  dData_Sistema: tdatetime;

implementation

uses cnif, funcoes, unECF, Math;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.AdvGlowButton2Click(Sender: TObject);
begin
  abas.ActivePageIndex := 0;
end;

procedure TfrmPrincipal.AdvGlowButton3Click(Sender: TObject);
begin
  abas.ActivePageIndex := 1;
end;

procedure TfrmPrincipal.AdvGlowButton4Click(Sender: TObject);
begin
  abas.ActivePageIndex := 2;
end;

procedure TfrmPrincipal.AdvGlowButton5Click(Sender: TObject);
begin
  abas.ActivePageIndex := 3;
end;

procedure TfrmPrincipal.AdvGlowButton6Click(Sender: TObject);
begin
  abas.ActivePageIndex := 4;
end;

procedure TfrmPrincipal.AdvMetroButton1Click(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TfrmPrincipal.AdvMetroButton2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.alimenta_tabela_ecf();
VAR
  TXT: TEXTFILE;
  stipo: string;

begin

  // verificar se o separador eh ; ou ,

  try
    AssignFile(TXT, 'C:\ECF.TXT');
    rewrite(TXT);
    writeln(TXT, 'CODIGO;MARCA;MODELO;VERSAO');
    writeln(TXT, '"381001";"SWEDA";"IF S-7000 III";"V02"');
    closefile(TXT);

    qrECF.close;
    qrECF.sql.clear;
    qrECF.sql.add('select marca from ecf#txt');
    qrECF.open;

    stipo := ';';

  except
    AssignFile(TXT, 'C:\ECF.TXT');
    rewrite(TXT);
    writeln(TXT, 'CODIGO,MARCA,MODELO,VERSAO');
    writeln(TXT, '"381001","SWEDA","IF S-7000 III","V02"');
    closefile(TXT);

    qrECF.close;
    qrECF.sql.clear;
    qrECF.sql.add('select marca from ecf#txt');
    qrECF.open;

    stipo := ',';
  end;

  AssignFile(TXT, 'C:\ECF.TXT');
  rewrite(TXT);
  writeln(TXT, 'CODIGO' + stipo + 'MARCA' + stipo + 'MODELO' + stipo + 'VERSAO');
  writeln(TXT, '"381001"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 III"' + stipo + '"V02"');
  writeln(TXT, '"382201"' + stipo + '"SWEDA"' + stipo + '"IF ST2500"' + stipo + '"01.00.05"');
  writeln(TXT, '"382101"' + stipo + '"SWEDA"' + stipo + '"IF ST2000"' + stipo + '"01.00.01"');
  writeln(TXT, '"382002"' + stipo + '"SWEDA"' + stipo + '"IF ST120"' + stipo + '"01.00.05"');
  writeln(TXT, '"382001"' + stipo + '"SWEDA"' + stipo + '"IF ST120"' + stipo + '"01.00.01"');
  writeln(TXT, '"381902"' + stipo + '"SWEDA"' + stipo + '"IF ST200"' + stipo + '"01.00.05"');
  writeln(TXT, '"381901"' + stipo + '"SWEDA"' + stipo + '"IF ST200"' + stipo + '"01.00.01"');
  writeln(TXT, '"381802"' + stipo + '"SWEDA"' + stipo + '"IF ST1000"' + stipo + '"01.00.04"');
  writeln(TXT, '"381801"' + stipo + '"SWEDA"' + stipo + '"IF ST1000"' + stipo + '"01.00.03"');
  writeln(TXT, '"381704"' + stipo + '"SWEDA"' + stipo + '"IF ST100"' + stipo + '"02.00.01"');
  writeln(TXT, '"381703"' + stipo + '"SWEDA"' + stipo + '"IF ST100"' + stipo + '"02.00.00"');
  writeln(TXT, '"381702"' + stipo + '"SWEDA"' + stipo + '"IF ST100"' + stipo + '"01.00.04"');
  writeln(TXT, '"381701"' + stipo + '"SWEDA"' + stipo + '"IF ST100"' + stipo + '"01.00.03"');
  writeln(TXT, '"381601"' + stipo + '"SWEDA"' + stipo + '"IF S-9000 PR"' + stipo + '"1.10"');
  writeln(TXT, '"381502"' + stipo + '"SWEDA"' + stipo + '"IF S-9000 IIIE"' + stipo + '"1.7"');
  writeln(TXT, '"381501"' + stipo + '"SWEDA"' + stipo + '"IF S-9000 IIIE"' + stipo + '"1.0"');
  writeln(TXT, '"381401"' + stipo + '"SWEDA"' + stipo + '"IF S-9000 IIE"' + stipo + '"1.1"');
  writeln(TXT, '"381302"' + stipo + '"SWEDA"' + stipo + '"IF S-9000 II"' + stipo + '"1.1"');
  writeln(TXT, '"381301"' + stipo + '"SWEDA"' + stipo + '"IF S-9000 II"' + stipo + '"1.0"');
  writeln(TXT, '"381202"' + stipo + '"SWEDA"' + stipo + '"IF S-9000 IE"' + stipo + '"1.7"');
  writeln(TXT, '"381201"' + stipo + '"SWEDA"' + stipo + '"IF S-9000 IE"' + stipo + '"1.1"');
  writeln(TXT, '"381102"' + stipo + '"SWEDA"' + stipo + '"IF S-9000 I"' + stipo + '"1.7"');
  writeln(TXT, '"381101"' + stipo + '"SWEDA"' + stipo + '"IF S-9000 I"' + stipo + '"1.1"');
  writeln(TXT, '"380906"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 II"' + stipo + '"1.6"');
  writeln(TXT, '"380905"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 II"' + stipo + '"1.5"');
  writeln(TXT, '"380904"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 II"' + stipo + '"1.0"');
  writeln(TXT, '"380903"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 II"' + stipo + '"V04"');
  writeln(TXT, '"380902"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 II"' + stipo + '"V03"');
  writeln(TXT, '"380901"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 II"' + stipo + '"V02"');
  writeln(TXT, '"380806"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 IE"' + stipo + '"1.6"');
  writeln(TXT, '"380805"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 IE"' + stipo + '"1.5"');
  writeln(TXT, '"380804"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 IE"' + stipo + '"1.A"');
  writeln(TXT, '"380803"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 IE"' + stipo + '"1.0"');
  writeln(TXT, '"380802"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 IE"' + stipo + '"V04"');
  writeln(TXT, '"380801"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 IE"' + stipo + '"V03"');
  writeln(TXT, '"380706"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 I"' + stipo + '"1.6"');
  writeln(TXT, '"380705"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 I"' + stipo + '"1.5"');
  writeln(TXT, '"380704"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 I"' + stipo + '"1.0"');
  writeln(TXT, '"380703"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 I"' + stipo + '"V04"');
  writeln(TXT, '"380702"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 I"' + stipo + '"V03"');
  writeln(TXT, '"380701"' + stipo + '"SWEDA"' + stipo + '"IF S-7000 I"' + stipo + '"V02"');
  writeln(TXT, '"380602"' + stipo + '"SWEDA"' + stipo + '"S-2070"' + stipo + '"1.0"');
  writeln(TXT, '"380601"' + stipo + '"SWEDA"' + stipo + '"S-2070"' + stipo + '"V01"');
  writeln(TXT, '"380502"' + stipo + '"SWEDA"' + stipo + '"S-2050"' + stipo + '"V03"');
  writeln(TXT, '"380501"' + stipo + '"SWEDA"' + stipo + '"S-2050"' + stipo + '"V02"');
  writeln(TXT, '"380402"' + stipo + '"SWEDA"' + stipo + '"MR-2590"' + stipo + '"1.18"');
  writeln(TXT, '"380401"' + stipo + '"SWEDA"' + stipo + '"MR-2590"' + stipo + '"1.02"');
  writeln(TXT, '"380302"' + stipo + '"SWEDA"' + stipo + '"MR-2571"' + stipo + '"B"');
  writeln(TXT, '"380301"' + stipo + '"SWEDA"' + stipo + '"MR-2571"' + stipo + '"A"');
  writeln(TXT, '"380203"' + stipo + '"SWEDA"' + stipo + '"MR 2570"' + stipo + '"A"');
  writeln(TXT, '"380202"' + stipo + '"SWEDA"' + stipo + '"MR 2570"' + stipo + '"C"');
  writeln(TXT, '"380201"' + stipo + '"SWEDA"' + stipo + '"MR 2570"' + stipo + '"B"');
  writeln(TXT, '"380102"' + stipo + '"SWEDA"' + stipo + '"MR 2550"' + stipo + '"V.3065"');
  writeln(TXT, '"380101"' + stipo + '"SWEDA"' + stipo + '"MR 2550"' + stipo + '"V.0036"');
  writeln(TXT, '"081201"' + stipo + '"DARUMA"' + stipo + '"FS-700H"' + stipo + '"01.01.00"');
  writeln(TXT, '"081101"' + stipo + '"DARUMA"' + stipo + '"FS-700M"' + stipo + '"01.01.00"');
  writeln(TXT, '"081001"' + stipo + '"DARUMA"' + stipo + '"FS-700L"' + stipo + '"01.00.00"');
  writeln(TXT, '"080901"' + stipo + '"DARUMA"' + stipo + '"FS-600 USB"' + stipo + '"01.00.00"');
  writeln(TXT, '"080805"' + stipo + '"DARUMA"' + stipo + '"FS-600"' + stipo + '"01.05.00"');
  writeln(TXT, '"080804"' + stipo + '"DARUMA"' + stipo + '"FS-600"' + stipo + '"01.04.00"');
  writeln(TXT, '"080803"' + stipo + '"DARUMA"' + stipo + '"FS-600"' + stipo + '"01.03.00"');
  writeln(TXT, '"080802"' + stipo + '"DARUMA"' + stipo + '"FS-600"' + stipo + '"01.02.00"');
  writeln(TXT, '"080801"' + stipo + '"DARUMA"' + stipo + '"FS-600"' + stipo + '"01.01.00"');
  writeln(TXT, '"080701"' + stipo + '"DARUMA"' + stipo + '"FS-500"' + stipo + '"1.00"');
  writeln(TXT, '"080604"' + stipo + '"DARUMA"' + stipo + '"FS-420"' + stipo + '"1.30"');
  writeln(TXT, '"080603"' + stipo + '"DARUMA"' + stipo + '"FS-420"' + stipo + '"1.21"');
  writeln(TXT, '"080602"' + stipo + '"DARUMA"' + stipo + '"FS-420"' + stipo + '"V1.10"');
  writeln(TXT, '"080601"' + stipo + '"DARUMA"' + stipo + '"FS-420"' + stipo + '"1.00"');
  writeln(TXT, '"080505"' + stipo + '"DARUMA"' + stipo + '"FS-345"' + stipo + '"1.22"');
  writeln(TXT, '"080504"' + stipo + '"DARUMA"' + stipo + '"FS-345"' + stipo + '"1.20"');
  writeln(TXT, '"080503"' + stipo + '"DARUMA"' + stipo + '"FS-345"' + stipo + '"1.11"');
  writeln(TXT, '"080502"' + stipo + '"DARUMA"' + stipo + '"FS-345"' + stipo + '"V1.10"');
  writeln(TXT, '"080501"' + stipo + '"DARUMA"' + stipo + '"FS-345"' + stipo + '"1.00"');
  writeln(TXT, '"080401"' + stipo + '"DARUMA"' + stipo + '"FS-335"' + stipo + '"1.00"');
  writeln(TXT, '"080303"' + stipo + '"DARUMA"' + stipo + '"FS-318"' + stipo + '"1.20"');
  writeln(TXT, '"080302"' + stipo + '"DARUMA"' + stipo + '"FS-318"' + stipo + '"1.10"');
  writeln(TXT, '"080301"' + stipo + '"DARUMA"' + stipo + '"FS-318"' + stipo + '"V1.00"');
  writeln(TXT, '"080205"' + stipo + '"DARUMA"' + stipo + '"FS-2100T"' + stipo + '"01.05.00"');
  writeln(TXT, '"080204"' + stipo + '"DARUMA"' + stipo + '"FS-2100T"' + stipo + '"01.04.00"');
  writeln(TXT, '"080203"' + stipo + '"DARUMA"' + stipo + '"FS-2100T"' + stipo + '"01.03.00"');
  writeln(TXT, '"080202"' + stipo + '"DARUMA"' + stipo + '"FS-2100T"' + stipo + '"01.02.00"');
  writeln(TXT, '"080201"' + stipo + '"DARUMA"' + stipo + '"FS-2100T"' + stipo + '"01.00.00"');
  writeln(TXT, '"080103"' + stipo + '"DARUMA"' + stipo + '"FS-2000"' + stipo + '"1.02"');
  writeln(TXT, '"080102"' + stipo + '"DARUMA"' + stipo + '"FS-2000"' + stipo + '"1.01"');
  writeln(TXT, '"080101"' + stipo + '"DARUMA"' + stipo + '"FS-2000"' + stipo + '"1.00"');
  writeln(TXT, '"032102"' + stipo + '"BEMATECH"' + stipo + '"MP-4000 TH FI"' + stipo + '"01.00.02"');
  writeln(TXT, '"032101"' + stipo + '"BEMATECH"' + stipo + '"MP-4000 TH FI"' + stipo + '"01.00.01"');
  writeln(TXT, '"032001"' + stipo + '"BEMATECH"' + stipo + '"MP-7000 TH FI"' + stipo + '"01.00.01"');
  writeln(TXT, '"031903"' + stipo + '"BEMATECH"' + stipo + '"MP-3000 TH FI"' + stipo + '"01.01.01"');
  writeln(TXT, '"031902"' + stipo + '"BEMATECH"' + stipo + '"MP-3000 TH FI"' + stipo + '"01.01.00"');
  writeln(TXT, '"031901"' + stipo + '"BEMATECH"' + stipo + '"MP-3000 TH FI"' + stipo + '"01.00.00"');
  writeln(TXT, '"031802"' + stipo + '"BEMATECH"' + stipo + '"MP-6100 TH FI"' + stipo + '"01.03.02"');
  writeln(TXT, '"031801"' + stipo + '"BEMATECH"' + stipo + '"MP-6100 TH FI"' + stipo + '"01.01.02"');
  writeln(TXT, '"031705"' + stipo + '"BEMATECH"' + stipo + '"MP-6000 TH FI"' + stipo + '"01.03.03"');
  writeln(TXT, '"031704"' + stipo + '"BEMATECH"' + stipo + '"MP-6000 TH FI"' + stipo + '"01.03.02"');
  writeln(TXT, '"031703"' + stipo + '"BEMATECH"' + stipo + '"MP-6000 TH FI"' + stipo + '"01.02.02"');
  writeln(TXT, '"031702"' + stipo + '"BEMATECH"' + stipo + '"MP-6000 TH FI"' + stipo + '"01.01.01"');
  writeln(TXT, '"031701"' + stipo + '"BEMATECH"' + stipo + '"MP-6000 TH FI"' + stipo + '"01.00.00"');
  writeln(TXT, '"031602"' + stipo + '"BEMATECH"' + stipo + '"MP-50 FI"' + stipo + '"01.00.00"');
  writeln(TXT, '"031601"' + stipo + '"BEMATECH"' + stipo + '"MP-50 FI"' + stipo + '"2.12"');
  writeln(TXT, '"031501"' + stipo + '"BEMATECH"' + stipo + '"MP-45 FI"' + stipo + '"VER03.21"');
  writeln(TXT, '"031402"' + stipo + '"BEMATECH"' + stipo + '"MP-40 FI II R"' + stipo + '"03.10"');
  writeln(TXT, '"031401"' + stipo + '"BEMATECH"' + stipo + '"MP-40 FI II R"' + stipo + '"03.00"');
  writeln(TXT, '"031304"' + stipo + '"BEMATECH"' + stipo + '"MP-40 FI II"' + stipo + '"VER03.21"');
  writeln(TXT, '"031303"' + stipo + '"BEMATECH"' + stipo + '"MP-40 FI II"' + stipo + '"03.10"');
  writeln(TXT, '"031302"' + stipo + '"BEMATECH"' + stipo + '"MP-40 FI II"' + stipo + '"03.05"');
  writeln(TXT, '"031301"' + stipo + '"BEMATECH"' + stipo + '"MP-40 FI II"' + stipo + '"VER.03.00"');
  writeln(TXT, '"031202"' + stipo + '"BEMATECH"' + stipo + '"MP-40 FI"' + stipo + '"2.13"');
  writeln(TXT, '"031201"' + stipo + '"BEMATECH"' + stipo + '"MP-40 FI"' + stipo + '"2.12"');
  writeln(TXT, '"031101"' + stipo + '"BEMATECH"' + stipo + '"MP-30 FI"' + stipo + '"2.12"');
  writeln(TXT, '"031005"' + stipo + '"BEMATECH"' + stipo + '"MP-25 FI"' + stipo + '"01.01.02"');
  writeln(TXT, '"031004"' + stipo + '"BEMATECH"' + stipo + '"MP-25 FI"' + stipo + '"01.03.02"');
  writeln(TXT, '"031003"' + stipo + '"BEMATECH"' + stipo + '"MP-25 FI"' + stipo + '"01.02.02"');
  writeln(TXT, '"031002"' + stipo + '"BEMATECH"' + stipo + '"MP-25 FI"' + stipo + '"01.01.01"');
  writeln(TXT, '"031001"' + stipo + '"BEMATECH"' + stipo + '"MP-25 FI"' + stipo + '"01.00.00"');
  writeln(TXT, '"030904"' + stipo + '"BEMATECH"' + stipo + '"MP-2100 TH FI"' + stipo + '"01.01.01"');
  writeln(TXT, '"030903"' + stipo + '"BEMATECH"' + stipo + '"MP-2100 TH FI"' + stipo + '"01.00.01"');
  writeln(TXT, '"030902"' + stipo + '"BEMATECH"' + stipo + '"MP-2100 TH FI"' + stipo + '"01.01.00"');
  writeln(TXT, '"030901"' + stipo + '"BEMATECH"' + stipo + '"MP-2100 TH FI"' + stipo + '"01.00.00"');
  writeln(TXT, '"030806"' + stipo + '"BEMATECH"' + stipo + '"MP-2000 TH FI"' + stipo + '"01.03.03"');
  writeln(TXT, '"030805"' + stipo + '"BEMATECH"' + stipo + '"MP-2000 TH FI"' + stipo + '"01.03.02"');
  writeln(TXT, '"030804"' + stipo + '"BEMATECH"' + stipo + '"MP-2000 TH FI"' + stipo + '"01.02.02"');
  writeln(TXT, '"030803"' + stipo + '"BEMATECH"' + stipo + '"MP-2000 TH FI"' + stipo + '"01.01.01"');
  writeln(TXT, '"030802"' + stipo + '"BEMATECH"' + stipo + '"MP-2000 TH FI"' + stipo + '"01.00.01"');
  writeln(TXT, '"030801"' + stipo + '"BEMATECH"' + stipo + '"MP-2000 TH FI"' + stipo + '"01.00.00"');
  writeln(TXT, '"030701"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI R"' + stipo + '"1.10"');
  writeln(TXT, '"030603"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI II R"' + stipo + '"VER03.20"');
  writeln(TXT, '"030602"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI II R"' + stipo + '"03.10"');
  writeln(TXT, '"030601"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI II R"' + stipo + '"03.00"');
  writeln(TXT, '"030508"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI II"' + stipo + '"VER03.31"');
  writeln(TXT, '"030507"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI II"' + stipo + '"VER03.26"');
  writeln(TXT, '"030506"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI II"' + stipo + '"VER03.25"');
  writeln(TXT, '"030505"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI II"' + stipo + '"VER03.22"');
  writeln(TXT, '"030504"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI II"' + stipo + '"VER03.15"');
  writeln(TXT, '"030503"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI II"' + stipo + '"03.10"');
  writeln(TXT, '"030502"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI II"' + stipo + '"03.05"');
  writeln(TXT, '"030501"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI II"' + stipo + '"VER.03.00"');
  writeln(TXT, '"030401"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI DUAL R"' + stipo + '"VER03.21"');
  writeln(TXT, '"030301"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI DUAL"' + stipo + '"VER03.15"');
  writeln(TXT, '"030203"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI"' + stipo + '"2.12"');
  writeln(TXT, '"030202"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI"' + stipo + '"2.10"');
  writeln(TXT, '"030201"' + stipo + '"BEMATECH"' + stipo + '"MP-20 FI"' + stipo + '"2.0"');
  writeln(TXT, '"030101"' + stipo + '"BEMATECH	Kit FM-20 FI"' + stipo + '"2.12"');
  writeln(TXT, '"150101"' + stipo + '"EPSON"' + stipo + '"TM-H6000 FB"' + stipo + '"01.00.00"');
  writeln(TXT, '"150102"' + stipo + '"EPSON"' + stipo + '"TM-H6000 FB"' + stipo + '"01.01.01"');
  writeln(TXT, '"150103"' + stipo + '"EPSON"' + stipo + '"TM-H6000 FB"' + stipo + '"01.02.00"');
  writeln(TXT, '"150104"' + stipo + '"EPSON"' + stipo + '"TM-H6000 FB"' + stipo + '"01.06.00"');
  writeln(TXT, '"150501"' + stipo + '"EPSON"' + stipo + '"TM-H6000 FBII"' + stipo + '"01.02.00"');
  writeln(TXT, '"150502"' + stipo + '"EPSON"' + stipo + '"TM-H6000 FBII"' + stipo + '"01.03.00"');
  writeln(TXT, '"150503"' + stipo + '"EPSON"' + stipo + '"TM-H6000 FBII"' + stipo + '"01.05.00"');
  writeln(TXT, '"150504"' + stipo + '"EPSON"' + stipo + '"TM-H6000 FBII"' + stipo + '"01.07.00"');
  writeln(TXT, '"150901"' + stipo + '"EPSON"' + stipo + '"TM-H6000 FBIII"' + stipo + '"01.00.01"');
  writeln(TXT, '"150401"' + stipo + '"EPSON"' + stipo + '"TM-T81 FBII"' + stipo + '"01.00.00"');
  writeln(TXT, '"150402"' + stipo + '"EPSON"' + stipo + '"TM-T81 FBII"' + stipo + '"01.00.04"');
  writeln(TXT, '"150403"' + stipo + '"EPSON"' + stipo + '"TM-T81 FBII"' + stipo + '"01.02.00"');
  writeln(TXT, '"150404"' + stipo + '"EPSON"' + stipo + '"TM-T81 FBII"' + stipo + '"01.03.00"');
  writeln(TXT, '"150405"' + stipo + '"EPSON"' + stipo + '"TM-T81 FBII"' + stipo + '"01.05.00"');
  writeln(TXT, '"150406"' + stipo + '"EPSON"' + stipo + '"TM-T81 FBII"' + stipo + '"01.07.00"');
  writeln(TXT, '"150801"' + stipo + '"EPSON"' + stipo + '"TM-T81 FBIII"' + stipo + '"01.00.01"');
  writeln(TXT, '"150201"' + stipo + '"EPSON"' + stipo + '"TM-T88 FB"' + stipo + '"01.00.00"');
  writeln(TXT, '"150202"' + stipo + '"EPSON"' + stipo + '"TM-T88 FB"' + stipo + '"01.01.00"');
  writeln(TXT, '"150203"' + stipo + '"EPSON"' + stipo + '"TM-T88 FB"' + stipo + '"01.06.00"');
  writeln(TXT, '"150601"' + stipo + '"EPSON"' + stipo + '"TM-T88 FBII"' + stipo + '"01.02.00"');
  writeln(TXT, '"150602"' + stipo + '"EPSON"' + stipo + '"TM-T88 FBII"' + stipo + '"01.03.00"');
  writeln(TXT, '"150603"' + stipo + '"EPSON"' + stipo + '"TM-T88 FBII"' + stipo + '"01.05.00"');
  writeln(TXT, '"150604"' + stipo + '"EPSON"' + stipo + '"TM-T88 FBII"' + stipo + '"01.07.00"');
  writeln(TXT, '"150701"' + stipo + '"EPSON"' + stipo + '"TM-T88 FBIII"' + stipo + '"01.00.01"');
  closefile(TXT);

  conexao_ecf.close;
  conexao_ecf.open;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not bContinua then
  begin
    if application.messagebox('Tem certeza que deseja abandonar o processo de configuração da ' + 'instalação do sistema?', 'Atenção',
      mb_yesno + mb_iconwarning + MB_DEFBUTTON2) = idNo then
      abort;
  end
  else
  BEGIN
    cECF_Fecha(iECF_Modelo);
    Action := cafree;
  END;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  Arq: TEXTFILE;
  sNomeArq: String;
  sLinha: String;

begin
  Abas.ActivePage := TabECF;

 // CarregaConfig;

  dData_Sistema := date;
  bContinua := false;

  alimenta_tabela_ecf;

  // CGT: Apenas para facilitar os testes no laboratório
  sNomeArq := Cript('D', '63F33CF428') + '.' + Cript('D', 'AC59F416');

  if FileExists(sNomeArq) then
  begin
    AssignFile(Arq, sNomeArq);

    try
      Reset(Arq);

      ReadLn(Arq, sLinha);
      ed_cliente_nome.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_endereco.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_bairro.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_cidade.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_uf.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_cep.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_cnpj.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_ie.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_im.Text := sLinha;

    finally
      closefile(Arq);
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.pn2_cancelarClick(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_base_localButtonClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    ed_base_local.Text := OpenDialog1.FileName;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_baseButtonClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    ed_base.Text := OpenDialog1.FileName;
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Button61Click(Sender: TObject);
begin
  if cb_ecf_marca.ItemIndex <= 0 then
  begin
    application.messagebox('Favor escolher a marca do equipamento!', 'Erro', MB_OK + mb_iconerror);
    cb_ecf_marca.setfocus;
    exit;
  end;
  if cb_ecf_modelo.ItemIndex < 0 then
  begin
    application.messagebox('Favor escolher o modelo do equipamento!', 'Erro', MB_OK + mb_iconerror);
    cb_ecf_modelo.setfocus;
    exit;
  end;
  if cb_ecf_tipo.ItemIndex < 0 then
  begin
    application.messagebox('Favor escolher o tipo de Equipamento!', 'Erro', MB_OK + mb_iconerror);
    cb_ecf_tipo.setfocus;
    exit;
  end;
  if CB_PORTA.ItemIndex < 0 then
  begin
    application.messagebox('Favor escolher a porta de comunicação!', 'Erro', MB_OK + mb_iconerror);
    CB_PORTA.setfocus;
    exit;
  end;

  iECF_Modelo := cb_ecf_marca.ItemIndex;
  sECF_porta := CB_PORTA.Text;

  // antes de iniciar a tela venda, verificar as configuracoes necessarias

  // VERIFICAR ECF
  // abrir porta serial
  bContinua := false;

  repeat
    smsg := cECF_Abre(iECF_Modelo, sECF_porta);
    if smsg <> 'OK' then
    begin
          if application.messagebox(pwidechar('Erro ao tentar abrir a porta - ' + sECF_porta + #13 + 'Deseja tentar outra vez?'),
            'ECF', mb_yesno + MB_ICONERROR) = idno then
      begin
        exit;
      end;

    end;
  until smsg = 'OK';

  if smsg = 'OK' then
  begin
    // verificando se o ECF esta ligado
    repeat
      smsg := cECF_Ligada(iECF_Modelo);
      if smsg <> 'OK' then
      begin
           if application.messagebox(pwidechar('ECF desligado ou não conectado!' + #13 + 'Mensagem: ' + smsg + #13 + 'Deseja tentar outra vez?'),
            'ECF', mb_yesno + MB_ICONERROR) = idno then

        begin
          break;
        end
        else
        begin
          //
        end;
      end;
    until smsg = 'OK';
  end;

  if smsg = 'OK' then
  begin
    repeat
      smsg := cECF_Numero_Serie(iECF_Modelo);
      if smsg = 'ERRO' then
      begin
        if application.messagebox('Erro ao tentar obter o número de série do ECF!' + #13 + 'Deseja tentar outra vez?', 'ECF',
          mb_yesno + mb_iconerror) = idNo then
        begin
          break;
        end
        else
        begin
          //
        end;
      end
      else
      begin
        ed_ecf_serial.Text := copy(smsg, 1, 30);
      end;
    UNTIL smsg <> 'ERRO';

    bContinua := false;

    // atualizar o totalizador geral do PAF com a do ECF
    REPEAT
      smsg := cECF_Grande_Total(iECF_Modelo);
      iF smsg = 'ERRO' then
      begin
          if application.messagebox(pwidechar('Erro ao verificar totalizador do ECF!' + #13 + 'Mensagem: ' + smsg + #13 +
          'Deseja tentar outra vez?'),
            'Erro', mb_yesno + MB_ICONERROR) = idno then
          break;

      end
      else
        ed_total_geral.Text := smsg;
    UNTIL smsg <> 'ERRO';

    // Numero do caixa do ECF
    if smsg <> 'ERRO' then
    begin
      repeat
        smsg := cECF_Numero_Caixa(iECF_Modelo);
        if smsg = 'ERRO' then
        begin
          if application.messagebox('Erro ao tentar obter o número do caixa do ECF!' + #13 + 'Deseja tentar outra vez?', 'ECF',
            mb_yesno + mb_iconerror) = idNo then
          begin
            bContinua := false;
            break;
          end
          else
          begin
            //
          end;

        end
        else
        begin
          ed_ecf_numero.Text := smsg;

          application.messagebox('O sistema emitirá uma leitura X para que possa configurar os demais campos!', 'Leitura X',
            MB_OK + mb_iconInformation);

          case cb_ecf_marca.ItemIndex of
            1:
              begin
                ed_indice_crediario.Text := '01';
                ed_nome_crediario.Text := 'CREDIARIO';
                ed_indice_suprimento.Text := '30';
                ed_indice_sangria.Text := '29';
              end;
            2:
              begin
                ed_indice_crediario.Text := '03';
                ed_nome_crediario.Text := 'CREDIARIO';
                ed_indice_suprimento.Text := '02';
                ed_indice_sangria.Text := '01';
              end;
            3:
              begin
                ed_indice_crediario.Text := '03';
                ed_nome_crediario.Text := 'CREDIARIO';
                ed_indice_suprimento.Text := '01';
                ed_indice_sangria.Text := '02';
              end;
            4:
              begin
                ed_indice_crediario.Text := '03';
                ed_nome_crediario.Text := 'CREDIARIO';
                ed_indice_suprimento.Text := '02';
                ed_indice_sangria.Text := '01';
              end;
          end;

          ed_usuario.Text := '01';

          smsg := cECF_LeituraX(iECF_Modelo);
          bContinua := true;
        end;
      until smsg <> 'ERRO';
    end;
  end
  else
  begin
    application.messagebox('Não foi possível detectar o ECF!' + #13 + 'Favor verificar os cabos e conexões!', 'Erro', MB_OK);
    bContinua := false;
    exit;
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.cb_ecf_marcaChange(Sender: TObject);
begin
  case cb_ecf_marca.ItemIndex of
    1:
      begin
        cb_ecf_modelo.clear;

        cb_ecf_modelo.items.add('MP-4000 TH FI');
        cb_ecf_modelo.items.add('MP-7000 TH FI');
        cb_ecf_modelo.items.add('MP-3000 TH FI');
        cb_ecf_modelo.items.add('MP-6100 TH FI');
        cb_ecf_modelo.items.add('MP-6000 TH FI');
        cb_ecf_modelo.items.add('MP-50 FI');
        cb_ecf_modelo.items.add('MP-45 FI');
        cb_ecf_modelo.items.add('MP-40 FI II R');
        cb_ecf_modelo.items.add('MP-40 FI II');
        cb_ecf_modelo.items.add('MP-40 FI');
        cb_ecf_modelo.items.add('MP-30 FI');
        cb_ecf_modelo.items.add('MP-25 FI');
        cb_ecf_modelo.items.add('MP-2100 TH FI');
        cb_ecf_modelo.items.add('MP-2000 TH FI');
        cb_ecf_modelo.items.add('MP-20 FI R');
        cb_ecf_modelo.items.add('MP-20 FI II R');
        cb_ecf_modelo.items.add('MP-20 FI II');
        cb_ecf_modelo.items.add('MP-20 FI DUAL R');
        cb_ecf_modelo.items.add('MP-20 FI DUAL');
        cb_ecf_modelo.items.add('MP-20 FI');
        cb_ecf_modelo.items.add('Kit FM-20 FI  2.12');

        cb_versao.clear;
        cb_versao.items.add('01.00.00');
        cb_versao.items.add('01.00.01');
        cb_versao.items.add('01.00.02');

        cb_versao.items.add('01.01.00');
        cb_versao.items.add('01.01.01');
        cb_versao.items.add('01.01.02');
        cb_versao.items.add('01.03.02');
        cb_versao.items.add('01.03.03');
        cb_versao.items.add('01.02.02');
        cb_versao.items.add('1.10');
        cb_versao.items.add('2.12');
        cb_versao.items.add('2.13');
        cb_versao.items.add('03.10');
        cb_versao.items.add('03.00');
        cb_versao.items.add('03.05');
        cb_versao.items.add('VER.03.00');
        cb_versao.items.add('VER03.21');
        cb_versao.items.add('VER03.20');
        cb_versao.items.add('VER03.31');
        cb_versao.items.add('VER03.26');
        cb_versao.items.add('VER03.25');
        cb_versao.items.add('VER03.22');
        cb_versao.items.add('VER03.15');
        cb_versao.items.add('2.12');
        cb_versao.items.add('2.10');
        cb_versao.items.add('2.0');

      end;
    2:
      begin
        cb_ecf_modelo.clear;
        cb_ecf_modelo.items.add('FS-700H');
        cb_ecf_modelo.items.add('FS-700M');
        cb_ecf_modelo.items.add('FS-700L');
        cb_ecf_modelo.items.add('FS-600 USB');
        cb_ecf_modelo.items.add('FS-600');
        cb_ecf_modelo.items.add('FS-500');
        cb_ecf_modelo.items.add('FS-420');
        cb_ecf_modelo.items.add('FS-345');
        cb_ecf_modelo.items.add('FS-345');
        cb_ecf_modelo.items.add('FS-335');
        cb_ecf_modelo.items.add('FS-318');
        cb_ecf_modelo.items.add('FS-2100T');
        cb_ecf_modelo.items.add('FS-2000');

        cb_versao.clear;

        cb_versao.items.add('01.05.00');
        cb_versao.items.add('01.04.00');
        cb_versao.items.add('01.03.00');
        cb_versao.items.add('01.02.00');
        cb_versao.items.add('01.01.00');
        cb_versao.items.add('01.00.00');

        cb_versao.items.add('1.00');
        cb_versao.items.add('1.01');
        cb_versao.items.add('1.02');
        cb_versao.items.add('1.10');
        cb_versao.items.add('1.11');
        cb_versao.items.add('1.20');
        cb_versao.items.add('1.21');
        cb_versao.items.add('1.22');
        cb_versao.items.add('1.30');
        cb_versao.items.add('V1.00');
        cb_versao.items.add('V1.10');

      end;
    3:
      begin
        cb_ecf_modelo.clear;
        cb_ecf_modelo.items.add('IF ST2500');
        cb_ecf_modelo.items.add('IF ST2000');
        cb_ecf_modelo.items.add('IF ST120');
        cb_ecf_modelo.items.add('IF ST200');
        cb_ecf_modelo.items.add('IF ST1000');
        cb_ecf_modelo.items.add('IF ST100');
        cb_ecf_modelo.items.add('IF S-9000 PR');
        cb_ecf_modelo.items.add('IF S-9000 IIIE');
        cb_ecf_modelo.items.add('IF S-9000 IIE');
        cb_ecf_modelo.items.add('IF S-9000 II');
        cb_ecf_modelo.items.add('IF S-9000 IE');
        cb_ecf_modelo.items.add('IF S-9000 I');
        cb_ecf_modelo.items.add('IF S-7000 III');
        cb_ecf_modelo.items.add('IF S-7000 II');
        cb_ecf_modelo.items.add('IF S-7000 IE');
        cb_ecf_modelo.items.add('IF S-7000 I');
        cb_ecf_modelo.items.add('S-2070');
        cb_ecf_modelo.items.add('S-2050');
        cb_ecf_modelo.items.add('MR 2550');
        cb_ecf_modelo.items.add('MR 2570');
        cb_ecf_modelo.items.add('MR-2571');
        cb_ecf_modelo.items.add('MR-2590');

        cb_versao.clear;
        cb_versao.items.add('01.00.05');
        cb_versao.items.add('01.00.01');
        cb_versao.items.add('01.00.05');
        cb_versao.items.add('01.00.01');
        cb_versao.items.add('01.00.05');
        cb_versao.items.add('01.00.01');
        cb_versao.items.add('01.00.04');
        cb_versao.items.add('01.00.03');
        cb_versao.items.add('02.00.01');
        cb_versao.items.add('02.00.00');
        cb_versao.items.add('01.00.04');
        cb_versao.items.add('01.00.03');
        cb_versao.items.add('1.0');
        cb_versao.items.add('1.1');
        cb_versao.items.add('1.6');
        cb_versao.items.add('1.5');
        cb_versao.items.add('1.7');
        cb_versao.items.add('1.02');
        cb_versao.items.add('1.10');
        cb_versao.items.add('1.18');
        cb_versao.items.add('1.A');
        cb_versao.items.add('V01');
        cb_versao.items.add('V02');
        cb_versao.items.add('V03');
        cb_versao.items.add('V04');
        cb_versao.items.add('A');
        cb_versao.items.add('B');
        cb_versao.items.add('C');
        cb_versao.items.add('V.3065');
        cb_versao.items.add('V.0036');
      end;
    4:
      begin
        cb_ecf_modelo.clear;

        cb_ecf_modelo.items.add('TM-H6000 FB');
        cb_ecf_modelo.items.add('TM-H6000 FBII');
        cb_ecf_modelo.items.add('TM-H6000 FBIII');
        cb_ecf_modelo.items.add('TM-T81 FBII');
        cb_ecf_modelo.items.add('TM-T81 FBIII');
        cb_ecf_modelo.items.add('TM-T88 FB');
        cb_ecf_modelo.items.add('TM-T88 FBII');
        cb_ecf_modelo.items.add('TM-T88 FBIII');

        cb_versao.clear;
        cb_versao.items.add('01.00.00');
        cb_versao.items.add('01.00.01');
        cb_versao.items.add('01.00.04');
        cb_versao.items.add('01.01.00');
        cb_versao.items.add('01.01.01');
        cb_versao.items.add('01.02.00');
        cb_versao.items.add('01.03.00');
        cb_versao.items.add('01.03.00');
        cb_versao.items.add('01.05.00');
        cb_versao.items.add('01.06.00');
        cb_versao.items.add('01.07.00');

      end;
      5 : begin
        CB_ECF_MODELO.Clear;
        cb_ecf_modelo.items.add('IF MFD 6000 TH 2E');
        cb_ecf_modelo.items.add('IF MFD FIT 1E');
        cb_ecf_modelo.items.add('X5');
        cb_ecf_modelo.items.add('ZP-200');
        cb_ecf_modelo.items.add('ZP-300');
        cb_ecf_modelo.items.add('K');
        cb_ecf_modelo.items.add('Wind Serial Paralela');

        cb_versao.clear;
        cb_versao.items.add('01.00.08');
      end;
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.cb_versaoChange(Sender: TObject);
begin
  if cb_versao.Text <> '' then
  begin
    qrECF.close;
    qrECF.sql.clear;
    qrECF.sql.add('select * from ecf#txt');
    qrECF.sql.add('where marca = "' + cb_ecf_marca.Text + '" and');
    qrECF.sql.add('modelo = "' + cb_ecf_modelo.Text + '" and');
    qrECF.sql.add('versao = "' + cb_versao.Text + '"');
    qrECF.open;
    if qrECF.RecordCount > 0 then
    begin
      ed_ecf_cnif.Text := qrECF.fieldbyname('codigo').asstring;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_cliente_cnpjExit(Sender: TObject);
begin
  if ed_cliente_cnpj.Text <> '' then
  begin
    validador.TipoDocto := docCNPJ;
    validador.Complemento := ed_cliente_uf.Text;
    validador.Documento := ed_cliente_cnpj.Text;
    if not validador.Validar then
    begin
      application.messagebox('CNPJ inválido!', 'Erro', MB_OK + mb_iconerror);
      ed_cliente_cnpj.setfocus;
      exit;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_cliente_ieExit(Sender: TObject);
begin
  if ed_cliente_ie.Text <> '' then
  begin
    validador.TipoDocto := docInscEst;
    validador.Complemento := ed_cliente_uf.Text;
    validador.Documento := ed_cliente_ie.Text;
    if not validador.Validar then
    begin
      application.messagebox('IE inválida!', 'Erro', MB_OK + mb_iconerror);
      ed_cliente_ie.setfocus;
      exit;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_cliente_cepExit(Sender: TObject);
begin
  if ed_cliente_cep.Text <> '' then
  begin
    validador.TipoDocto := docCEP;
    validador.Documento := ed_cliente_cep.Text;
    validador.Complemento := ed_cliente_uf.Text;
    if not validador.Validar then
    begin
      application.messagebox('CEP inválido!', 'Erro', MB_OK + mb_iconerror);
      ed_cliente_cep.setfocus;
      exit;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.TabEmpresaChanging(Sender: TObject; FromPage, ToPage: Integer; var AllowChange: Boolean);
begin
  bContinua := true;

  if Abas.ActivePage = TabECF then
  begin
    if not bContinua then
    begin
      application.messagebox('ECF não configurado!' + #13 + 'Configure Por Favor!!', 'Erro', MB_OK + mb_iconerror);

      AllowChange := false;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.btnAvancarClick(Sender: TObject);
begin
  bContinua := true;
  if Abas.ActivePage = TabEmpresa then
    GravarConfig
  else
    Abas.SelectNextPage(true);
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.btnCancelarClick(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.btnVoltarClick(Sender: TObject);
begin
  Abas.SelectNextPage(false);
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.abasChange(Sender: TObject);
begin
  if Abas.ActivePage = TabECF then
    btnVoltar.Visible := false
  else
    btnVoltar.Visible := true;

  if Abas.ActivePage = TabEmpresa then
    btnAvancar.Caption := 'Gravar'
  else
    btnAvancar.Caption := 'Avançar >';
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    btnCancelarClick(nil);
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.GravarConfig;
var
  Arquivo_ini: TIniFile;
  Registro: TRegistry;
  TXT: TEXTFILE;
begin

  cpGravaIni.Grava(Self);

  if ed_cliente_nome.Text = '' then
  begin
    application.messagebox('Favor informar o nome da Empresa!', 'Erro', MB_OK + mb_iconerror);
    ed_cliente_nome.setfocus;
    exit;
  end;
  if ed_cliente_endereco.Text = '' then
  begin
    application.messagebox('Favor informar o endereço da Empresa!', 'Erro', MB_OK + mb_iconerror);
    ed_cliente_endereco.setfocus;
    exit;
  end;

  if ed_cliente_cnpj.Text = '' then
  begin
    application.messagebox('Favor informar o CNPJ da Empresa!', 'Erro', MB_OK + mb_iconerror);
    ed_cliente_cnpj.setfocus;
    exit;
  end;
  if ed_cliente_ie.Text = '' then
  begin
    application.messagebox('Favor informar a IE da Empresa!', 'Erro', MB_OK + mb_iconerror);
    ed_cliente_ie.setfocus;
    exit;
  end;
  if ed_cliente_cidade.Text = '' then
  begin
    application.messagebox('Favor informar a Cidade da Empresa!', 'Erro', MB_OK + mb_iconerror);
    ed_cliente_nome.setfocus;
    exit;
  end;
  if ed_cliente_uf.Text = '' then
  begin
    application.messagebox('Favor informar a UF da Empresa!', 'Erro', MB_OK + mb_iconerror);
    ed_cliente_uf.setfocus;
    exit;
  end;

  if ed_cliente_cep.Text = '' then
  begin
    application.messagebox('Favor informar o CEP da Empresa!', 'Erro', MB_OK + mb_iconerror);
    ed_cliente_cep.setfocus;
    exit;
  end;

  // abrir arquivo .ini
  Arquivo_ini := TIniFile.Create(ExtractFilePath(application.ExeName) + '\cfg\Paf.ini');

  // [ECF]
  // MARCA
  Arquivo_ini.WriteString('B9A7BF57', '13392FD058AB', Cript('C', cb_ecf_marca.Text));
  // COD DO ECF
  Arquivo_ini.WriteString('B9A7BF57', '13392FD058AC', Cript('C', inttostr(cb_ecf_marca.ItemIndex)));
  // MODELO
  Arquivo_ini.WriteString('B9A7BF57', 'A4A8A2B7B0CE2D', Cript('C', cb_ecf_modelo.Text));
  // TIPO
  Arquivo_ini.WriteString('B9A7BF57', '6E9BB153EE', Cript('C', cb_ecf_tipo.Text));
  // SERIAL
  Arquivo_ini.WriteString('B9A7BF57', 'D875EF1310639C', Cript('C', ed_ecf_serial.Text));
  // NUMERO
  Arquivo_ini.WriteString('B9A7BF57', '7299BB58D11656', Cript('C', ed_ecf_numero.Text));
  // CNIF
  Arquivo_ini.WriteString('B9A7BF57', '5CC640D853', Cript('C', ed_ecf_cnif.Text));
  // USUARIO
  Arquivo_ini.WriteString('B9A7BF57', 'B655FD020F53AFB5', Cript('C', ed_usuario.Text));
  // PERMITE_ISSQN
  Arquivo_ini.WriteString('B9A7BF57', 'B058C84ADB1758D607001A38CF27', Cript('C', cb_desconto_iss.Text));
  // DIRETORIO_ARQUIVO_FISCAL
  Arquivo_ini.WriteString('B9A7BF57', 'BC58F41617599BA6DE7E948094DC020A2526D354D36AE6609C', Cript('C', ed_diretorio.Text));
  // TOTALIZADOR_GERAL
  Arquivo_ini.WriteString('B9A7BF57', '68E560E56B85FD1365F90007205E93A4A0BE', Cript('C', ed_total_geral.Text));

  // [USUARIO]
  // NOME
  Arquivo_ini.WriteString('4CF8193FCC2D45DF', '5EF5100C1D', Cript('C', ed_cliente_nome.Text));
  // CNPJ
  Arquivo_ini.WriteString('4CF8193FCC2D45DF', 'C855F6162C', Cript('C', ed_cliente_cnpj.Text));
  // IE
  Arquivo_ini.WriteString('4CF8193FCC2D45DF', '292B25', Cript('C', ed_cliente_ie.Text));
  // IM
  Arquivo_ini.WriteString('4CF8193FCC2D45DF', '3ADA7D', Cript('C', ed_cliente_im.Text));
  // Endereco
  Arquivo_ini.WriteString('4CF8193FCC2D45DF', '3ADA7E', Cript('C', ed_cliente_endereco.Text));
  // Bairro
  Arquivo_ini.WriteString('4CF8193FCC2D45DF', '3ADA7F', Cript('C', ed_cliente_bairro.Text));
  // Cidade
  Arquivo_ini.WriteString('4CF8193FCC2D45DF', '3ADA7G', Cript('C', ed_cliente_cidade.Text));
  // UF
  Arquivo_ini.WriteString('4CF8193FCC2D45DF', '3ADA7H', Cript('C', ed_cliente_uf.Text));
  // CEP
  Arquivo_ini.WriteString('4CF8193FCC2D45DF', '3ADA7I', Cript('C', ed_cliente_cep.Text));

  // ramo
  if rb_varejo.Checked then
    Arquivo_ini.WriteString('4CF8193FCC2D45DF', '3ADA80', Cript('C', '1'));

  if rb_auto.Checked then
    Arquivo_ini.WriteString('4CF8193FCC2D45DF', '3ADA80', Cript('C', '2'));

  if rb_posto.Checked then
    Arquivo_ini.WriteString('4CF8193FCC2D45DF', '3ADA80', Cript('C', '3'));

  if rb_restaurante.Checked then
    Arquivo_ini.WriteString('4CF8193FCC2D45DF', '3ADA80', Cript('C', '4'));

  // [ FUNCOES ]
  if Check_HabPreVenda.Checked then
    Arquivo_ini.WriteString('43CB7499A7DA1D76F41511353CB6', 'D67E859B84E81D2055C6', Cript('C','ATIVADO'));

  if Check_HabOS.Checked then
    Arquivo_ini.WriteString('43CB7499A7DA1D76F41511353CB6', '6AF76C93BE3FB7', Cript('C','ATIVADO'));    

  // liberar arquivo ini da memoria
  Arquivo_ini.Free;

  qrpaf.close;
  qrpaf.sql.clear;
  qrpaf.sql.add('update config set');
  qrpaf.sql.add('nome_totalizador_nf_crediario = ''' + ed_nome_crediario.Text + ''',');
  qrpaf.sql.add('totalizador_nf_crediario = ''' + ed_indice_crediario.Text + ''',');
  qrpaf.sql.add('totalizador_sangria = ''' + ed_indice_sangria.Text + ''',');
  qrpaf.sql.add('totalizador_suprimento = ''' + ed_indice_suprimento.Text + ''',');

  if rb_alt_qtde.Checked then
    qrpaf.sql.add('muda_qtde = 1,')
  else
    qrpaf.sql.add('muda_qtde = 0,');
  if rb_alt_unitario.Checked then
    qrpaf.sql.add('muda_unitario = 1,')
  else
    qrpaf.sql.add('muda_unitario = 0,');
  if rb_alt_total.Checked then
    qrpaf.sql.add('muda_total = 1,')
  else
    qrpaf.sql.add('muda_total = 0,');

  if rb_tef.Checked then
    qrpaf.sql.add('usa_tef = 1,')
  else
    qrpaf.sql.add('usa_tef = 0,');
  if rb_tef_tecban.Checked then
    qrpaf.sql.add('usa_tef_tecban = 1,')
  else
    qrpaf.sql.add('usa_tef_tecban = 0,');
  if rb_tef_hipercard.Checked then
    qrpaf.sql.add('usa_tef_hipercard = 1')
  else
    qrpaf.sql.add('usa_tef_hipercard = 0');
  qrpaf.sql.add('where codigo = 0');
  qrpaf.ExecSQL;

  GravarParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', chkVendedor.Checked);
  GravarParametro('COLUNA_CONSULTA_PRODUTOS', 'I', rdgColunaConsultaProdutos.ItemIndex);

  // lancar no regedit o caminho do banco de dados

  // Abrindo Registro do Windows para buscar configuracoes
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  if Registro.OpenKey('SOFTWARE', false) then
  begin
    Registro.CreateKey('S7');
    Registro.OpenKey('S7', true);
    Registro.CreateKey('PDV');
    Registro.OpenKey('PDV', true);
    Registro.CreateKey('Dados');
    Registro.CreateKey('Balanca');
    Registro.CreateKey('Teclado');
    Registro.CreateKey('ECF');

    if Registro.OpenKey('Dados', true) then
    begin
      Registro.WriteString('Local_Base', ed_base_local.Text);
      Registro.WriteString('Servidor_Ativo', 'SIM');
      Registro.WriteString('Servidor_Base', ed_base.Text);
      Registro.WriteString('Servidor_Host', ed_server.Text);
    end;
    Registro.CloseKey;
    Registro.OpenKey('SOFTWARE', false);
    Registro.OpenKey('S7', false);
    Registro.OpenKey('PDV', false);
    if Registro.OpenKey('Balanca', true) then
    begin
      Registro.WriteString('Modelo', inttostr(cb_bal_modelo.ItemIndex));
      Registro.WriteString('Handshaking', inttostr(cb_bal_hand.ItemIndex));
      Registro.WriteString('Parity', inttostr(cb_parity.ItemIndex));
      Registro.WriteString('Stopbits', inttostr(cb_parity.ItemIndex));
      Registro.WriteString('Porta', cb_bal_porta.Text);
      Registro.WriteString('Databits', cb_bal_databits.Text);
      Registro.WriteString('Baudrate', cb_bal_baudrate.Text);
      Registro.WriteString('Timeout', cb_bal_time_out.Text);
    end;
    Registro.CloseKey;
    Registro.OpenKey('SOFTWARE', false);
    Registro.OpenKey('S7', false);
    Registro.OpenKey('PDV', false);
    if Registro.OpenKey('Teclado', true) then
    begin
      Registro.WriteString('Modelo', '0');
      Registro.WriteString('Porta', 'COM10');

    end;
    Registro.CloseKey;
    Registro.OpenKey('SOFTWARE', false);
    Registro.OpenKey('S7', false);
    Registro.OpenKey('PDV', false);
    if Registro.OpenKey('ECF', true) then
    begin
      Registro.WriteString('Porta', CB_PORTA.Text);
    end;
  END;
  Registro.Free;


  // - arquivo de configuracao
  {: CONFIGURAÇÕES}
  GravaIni('.\Cfg\cfg.ini','CONFIGURACOES','SERVIDOR',ed_server.Text);
  GravaIni('.\Cfg\cfg.ini','CONFIGURACOES','BDSERVIDOR',ed_base.Text);
  GravaIni('.\Cfg\cfg.ini','CONFIGURACOES','BDLOCAL',ed_base_local.Text);
  GravaIni('.\Cfg\cfg.ini','CONFIGURACOES','sis-ven','1');
  GravaIni('.\Cfg\cfg.ini','CONFIGURACOES','ver_deb','1');
  GravaIni('.\Cfg\cfg.ini','CONFIGURACOES','pdv-sen','1');
  GravaIni('.\Cfg\cfg.ini','CONFIGURACOES','ven-avi','1');

  {: IMPRESSORA NAO FISCAL }
  GravaIni('.\Cfg\cfg.ini','IMPRESSORA','impnaof',ComboImpressora.Text);
  GravaIni('.\Cfg\cfg.ini','IMPRESSORA','qtdlfin',EditQtdLinhas.Text);

  {: GAVETA }
  GravaIni('.\Cfg\cfg.ini','GAVETA','gavnaof',ComboPortaGaveta.Text);
  GravaIni('.\Cfg\cfg.ini','GAVETA','LOCAL',IntToStr(rdLocalGaveta.ItemIndex));

  {: BALANCA RETAGUARDA}
  GravaIni('.\Cfg\cfg.ini','BALANCA','NDIGITOS',EditQtdDigitos.Text);

  {: sat}
  GravaIni('.\Cfg\cfg.ini','SAT','COMPARTILHAMENTO',BoolToStr(satCompart.Checked));

  {: GUILHOTINA - CORTE DE PAPEL }
  GravaIni('.\Cfg\cfg.ini','GUILHOTINA','HABILITA',BoolToStr(CheckHabGuilhotina.Checked));
  GravaIni('.\Cfg\cfg.ini','GUILHOTINA','MODELO',ComboGuilhotina.Text);
  
  bContinua := true;
  close;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  I: Integer;
begin

  conexao.close;
  conexao.Database := ExtractFilePath(Application.ExeName) + '\BD\DATPDV.FDB';
  conexao.open;

  //**************** IMPRESSORA NAO FISCAL
  ComboImpressora.items.clear;
  For I := 1 to Printer.Printers.Count do
  Begin
    if Pos('LPT', Printer.Printers.Strings[I - 1]) > 0 Then
      ComboImpressora.items.add('LPT1')
    Else if Pos('\', Printer.Printers.Strings[I - 1]) > 0 Then
      ComboImpressora.items.add(copy(Printer.Printers.Strings[I - 1], Pos('\', Printer.Printers.Strings[I - 1]),
        length(Printer.Printers.Strings[I - 1]) - Pos('\', Printer.Printers.Strings[I - 1]) + 1));
  End;

  // ComboImpressora.Items.Assign(Printer.Printers); {: Captura todas as impressoras}

  ComboImpressora.items.add('COM1');
  ComboImpressora.items.add('COM2');
  ComboImpressora.items.add('COM3');
  ComboImpressora.items.add('COM4');
  ComboImpressora.items.add('COM5');
  ComboImpressora.items.add('COM6');
  ComboImpressora.items.add('LPT1');
  ComboImpressora.items.add('LPT2');
  ComboImpressora.items.add('LPT3');
  ComboImpressora.items.add('LPT4');
  ComboImpressora.items.add('LPT5');
  ComboImpressora.items.add('LPT6');

  ComboPortaGaveta.Items.AddStrings(ComboImpressora.Items);

  cpGravaIni.Nome_Arquivo := ExtractFilePath(application.ExeName) + 'CFG\dados.ini';
  cpGravaIni.Le(Self);
  CarregaConfig;

end;

procedure TfrmPrincipal.btn11Click(Sender: TObject);
var
  I: Integer;
  F: TEXTFILE;
begin

  AssignFile(F, ComboImpressora.Text);
  rewrite(F);
  writeln(F, 'OneMaker - IMPRESSAO - 1');
  writeln(F, 'OneMaker - IMPRESSAO - 2');
  writeln(F, 'OneMaker - IMPRESSAO - 3');
  writeln(F, 'OneMaker - IMPRESSAO - 4');

  for I := 0 to EditQtdLinhas.Value do
  begin
    writeln(F, '');
  end;

  closefile(F);

end;

procedure TfrmPrincipal.rdLocalGavetaClick(Sender: TObject);
begin

  ComboPortaGaveta.Enabled := rdLocalGaveta.ItemIndex = 1;

end;

procedure TfrmPrincipal.GravaIni(sArquivo, Secao, Linha, Valor: String);
var
  Ini: TIniFile;
  Arquivo: String;
begin

  Arquivo := sArquivo;
  Ini := TIniFile.Create(Arquivo);
  Ini.WriteString(Secao, Linha, Valor);
  Ini.Free;

end;

function TfrmPrincipal.LerIni(sArquivo, Secao, Linha, Def: String): String;
var
  Ini: TIniFile;
begin

  Ini := TIniFile.Create(sArquivo);
  Result := Ini.ReadString(Secao, Linha, Def);
  Ini.Free;


end;

procedure TfrmPrincipal.CarregaConfig;
begin
  rdLocalGaveta.ItemIndex := StrToInt( LerIni('.\Cfg\cfg.ini','GAVETA','LOCAL','0'));
  ComboImpressora.Text  := LerIni(  '.\Cfg\cfg.ini','IMPRESSORA','impnaof','LPT1');
  ComboPortaGaveta.Text := LerIni('.\Cfg\cfg.ini','GAVETA','gavnaof','LPT1');


end;

procedure TfrmPrincipal.CheckHabGuilhotinaClick(Sender: TObject);
begin
  ComboGuilhotina.Enabled := CheckHabGuilhotina.Checked;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
var
  I: Integer;
  F: TEXTFILE;
begin

  AssignFile(F, ComboImpressora.Text);
  rewrite(F);
  

   if (ComboGuilhotina.Text = 'PADRÃO') or
      (ComboGuilhotina.Text = 'BEMATECH') then
   Write(f, #27 + #118 + #140); // BEMATEH E PADRAO

   if (ComboGuilhotina.Text = 'DARUMA') then
   Write(f, #27 + #112);  // DARUMA

  closefile(F);


end;

end.
