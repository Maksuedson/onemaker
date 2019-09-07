unit Gerador;

interface

uses
  Classes, SysUtils, Forms, Windows,
  Controls, Graphics, Dialogs, StdCtrls, ActnList, Menus, ExtCtrls, Buttons,
  ComCtrls, Spin, ACBrSAT, ACBrSATClass, ACBrSATExtratoESCPOS,
  ACBrSATExtratoFortesFr, ACBrBase, ACBrSATExtratoClass, OleCtrls, SHDocVw,
  ACBrPosPrinter, RLConsts, DBCtrls, Mask,
  AdvGlowButton, sEdit, sSpinEdit, RLReport, Wwdbigrd, Wwdbgrid, MemDS,
  DBAccess, Messages, DB, Grids, RxToolEdit, ACBrSATExtratoReportClass,
  Uni, frxClass, System.Actions, dxGDIPlusClasses;

const
  cAssinatura =
    '9d4c4eef8c515e2c1269c2e4fff0719d526c5096422bf1defa20df50ba06469' +
    'a28adb25ba0447befbced7c0f805a5cc58496b7b23497af9a04f69c77f17c0c' +
    'e68161f8e4ca7e3a94c827b6c563ca6f47aea05fa90a8ce3e4327853bb2d664' +
    'ba226728fff1e2c6275ecc9b20129e1c1d2671a837aa1d265b36809501b519d' +
    'bc08129e1c1d2671a837aa1d265b36809501b519dbc08129e1c1d2671a837aa' +
    '1d265b36809501b519dbc08129e1c';

  InputBoxMessage = WM_USER + 200;

type

  { TForm1 }

  TFrmSat = class(TForm)
    ACBrSAT1: TACBrSAT;
    ACBrSATExtratoESCPOS1: TACBrSATExtratoESCPOS;
    bImpressora1: TButton;
    bInicializar1: TButton;
    btLerParams1: TButton;
    btSalvarParams1: TButton;
    btSerial: TBitBtn;
    cbUsarEscPos: TRadioButton;
    cbUsarFortes: TRadioButton;
    cbxSalvarCFe: TCheckBox;
    cbxModelo: TComboBox;
    cbxAmbiente: TComboBox;
    cbxIndRatISSQN: TComboBox;
    cbxRegTribISSQN: TComboBox;
    cbxRegTributario: TComboBox;
    cbxUTF8: TCheckBox;
    cbxFormatXML: TCheckBox;
    cbPreview: TCheckBox;
    edLog: TEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label6: TLabel;
    lImpressora: TLabel;
    miGerarXMLCancelamento: TMenuItem;
    miEnviarCancelamento: TMenuItem;
    MenuItem12: TMenuItem;
    miImprimirExtratoCancelamento: TMenuItem;
    PrintDialog1: TPrintDialog;
    sfeVersaoEnt: TEdit;
    Label13: TLabel;
    Label17: TLabel;
    Label8: TLabel;
    mLimpar: TMenuItem;
    mImprimirExtratoVendaResumido: TMenuItem;
    mImprimirExtratoVenda: TMenuItem;
    edNomeDLL: TEdit;
    edtEmitCNPJ: TEdit;
    edtEmitIE: TEdit;
    edtEmitIM: TEdit;
    edtSwHAssinatura: TEdit;
    edtSwHCNPJ: TEdit;
    edtCodigoAtivacao: TEdit;
    edtCodUF: TEdit;
    GroupBox1: TGroupBox;
    gpOperacao: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    mAtivarSAT: TMenuItem;
    mComunicarCertificado: TMenuItem;
    mAssociarAssinatura: TMenuItem;
    mBloquearSAT: TMenuItem;
    MenuItem3: TMenuItem;
    mDesbloquearSAT: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    mConsultarStatusOperacional: TMenuItem;
    mConsultarSAT: TMenuItem;
    mConsultarNumeroSessao: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    mAtaulizarSoftwareSAT: TMenuItem;
    mConfigurarInterfaceRede: TMenuItem;
    mExtrairLogs: TMenuItem;
    mTesteFimAFim: TMenuItem;
    mEnviarVenda: TMenuItem;
    mGerarVenda: TMenuItem;
    OpenDialog1: TOpenDialog;
    PageControl2: TPageControl;
    Panel1: TPanel;
    SbArqLog: TSpeedButton;
    Impressao: TTabSheet;
    tsDadosEmit: TTabSheet;
    tsDadosSAT: TTabSheet;
    tsDadosSwHouse: TTabSheet;
    tsRede: TTabSheet;
    gbPPPoE: TGroupBox;
    lSSID7: TLabel;
    edRedeUsuario: TEdit;
    lSSID8: TLabel;
    edRedeSenha: TEdit;
    gbIPFix: TGroupBox;
    lSSID2: TLabel;
    edRedeIP: TEdit;
    lSSID3: TLabel;
    edRedeMask: TEdit;
    lSSID4: TLabel;
    edRedeGW: TEdit;
    lSSID5: TLabel;
    lSSID6: TLabel;
    edRedeDNS1: TEdit;
    edRedeDNS2: TEdit;
    rgRedeTipoInter: TRadioGroup;
    gbWiFi: TGroupBox;
    lSSID: TLabel;
    edRedeSSID: TEdit;
    Label24: TLabel;
    cbxRedeSeg: TComboBox;
    lSSID1: TLabel;
    edRedeCodigo: TEdit;
    rgRedeTipoLan: TRadioGroup;
    gbProxy: TGroupBox;
    cbxRedeProxy: TComboBox;
    lSSID9: TLabel;
    edRedeProxyIP: TEdit;
    lSSID10: TLabel;
    lSSID11: TLabel;
    edRedeProxyUser: TEdit;
    lSSID12: TLabel;
    edRedeProxySenha: TEdit;
    N1: TMenuItem;
    N2: TMenuItem;
    LerXMLinterfaceRede1: TMenuItem;
    GerarXMLInterfaceRede1: TMenuItem;
    SaveDialog1: TSaveDialog;
    cbxSalvarCFeCanc: TCheckBox;
    cbxSalvarEnvio: TCheckBox;
    cbxSepararPorCNPJ: TCheckBox;
    cbxSepararPorMES: TCheckBox;
    ACBrPosPrinter1: TACBrPosPrinter;
    cbxModeloPosPrinter: TComboBox;
    Label25: TLabel;
    Label26: TLabel;
    cbxPorta: TComboBox;
    Label7: TLabel;
    cbxPagCodigo: TComboBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    cbImprimir1Linha: TCheckBox;
    N3: TMenuItem;
    G1: TMenuItem;
    TabSheet1: TTabSheet;
    Label30: TLabel;
    RBindFPG: TComboBox;
    Label31: TLabel;
    RBOperadora: TComboBox;
    Label32: TLabel;
    EditCNPJ: TMaskEdit;
    Label33: TLabel;
    EditCPF: TMaskEdit;
    Label34: TLabel;
    EditNomeCL: TEdit;
    gbCliente: TPanel;
    LblNome: TLabel;
    LblCidade: TLabel;
    Label35: TLabel;
    EditCliente: TDBEdit;
    EditCidade: TDBEdit;
    EditUF: TDBEdit;
    DisplayCNPJ: TDBEdit;
    DisplayCPF: TDBEdit;
    ActionList1: TActionList;
    Sair: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    bInicializar: TAdvGlowButton;
    btLerParams: TAdvGlowButton;
    btSalvarParams: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    bImpressora: TAdvGlowButton;
    sePagCod: TsSpinEdit;
    seNumeroCaixa: TsSpinEdit;
    edRedeProxyPorta: TsSpinEdit;
    seLargura: TsSpinEdit;
    seMargemTopo: TsSpinEdit;
    seMargemFundo: TsSpinEdit;
    seMargemEsquerda: TsSpinEdit;
    seMargemDireita: TsSpinEdit;
    seColunas: TsSpinEdit;
    seEspLinhas: TsSpinEdit;
    seLinhasPular: TsSpinEdit;
    ACBrSATExtratoFortes1: TACBrSATExtratoFortes;
    PageControl1: TPageControl;
    tsLog: TTabSheet;
    mLog: TMemo;
    tsGerado: TTabSheet;
    mVendaEnviar: TMemo;
    tsRecebido: TTabSheet;
    mRecebido: TWebBrowser;
    tsCancelamento: TTabSheet;
    mCancelamentoEnviar: TMemo;
    Panel2: TPanel;
    Label18: TLabel;
    edChaveCancelamento: TEdit;
    tsRedeXML: TTabSheet;
    mRede: TWebBrowser;
    TabSheet2: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    AdvGlowButton5: TAdvGlowButton;
    dscupom: TDataSource;
    BitNFe: TBitBtn;
    configurar: TAdvGlowButton;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label36: TLabel;
    Label37: TLabel;
    btfiltrar: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    frxReport1: TfrxReport;
    qr_cupom: TUniQuery;
    qrcli: TUniQuery;
    query1: TUniQuery;
    Image1: TImage;
    procedure ACBrSAT1GetcodigoDeAtivacao(var Chave: AnsiString);
    procedure ACBrSAT1GetsignAC(var Chave: AnsiString);
    procedure ACBrSAT1Log(const AString: String);
    procedure bImpressora1Click(Sender: TObject);
    procedure bInicializar1Click(Sender: TObject);
    procedure btLerParams1Click(Sender: TObject);
    procedure btSalvarParams1Click(Sender: TObject);
    procedure cbUsarEscPosClick(Sender: TObject);
    procedure cbUsarFortesClick(Sender: TObject);
    procedure cbxModeloChange(Sender: TObject);
    procedure cbxUTF8Change(Sender: TObject);
    procedure miGerarXMLCancelamentoClick(Sender: TObject);
    procedure miEnviarCancelamentoClick(Sender: TObject);
    procedure miImprimirExtratoCancelamentoClick(Sender: TObject);
    procedure mTesteFimAFimClick(Sender: TObject);
    procedure sfeVersaoEntChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mAssociarAssinaturaClick(Sender: TObject);
    procedure mAtaulizarSoftwareSATClick(Sender: TObject);
    procedure mAtivarSATClick(Sender: TObject);
    procedure mBloquearSATClick(Sender: TObject);
    procedure mComunicarCertificadoClick(Sender: TObject);
    procedure mConfigurarInterfaceRedeClick(Sender: TObject);
    procedure mConsultarNumeroSessaoClick(Sender: TObject);
    procedure mConsultarSATClick(Sender: TObject);
    procedure mConsultarStatusOperacionalClick(Sender: TObject);
    procedure mDesbloquearSATClick(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure mExtrairLogsClick(Sender: TObject);
    procedure mGerarVendaClick(Sender: TObject);
    procedure mImprimirExtratoVendaClick(Sender: TObject);
    procedure mImprimirExtratoVendaResumidoClick(Sender: TObject);
    procedure mLimparClick(Sender: TObject);
    procedure SbArqLogClick(Sender: TObject);
    procedure sePagCodChange(Sender: TObject);
    procedure rgRedeTipoInterClick(Sender: TObject);
    procedure rgRedeTipoLanClick(Sender: TObject);
    procedure cbxRedeProxyChange(Sender: TObject);
    procedure LerXMLinterfaceRede1Click(Sender: TObject);
    procedure GerarXMLInterfaceRede1Click(Sender: TObject);
    procedure ACBrSAT1GravarLog(const ALogLine: String; var Tratado: Boolean);
    procedure cbxSalvarCFeCancChange(Sender: TObject);
    procedure cbxSalvarCFeChange(Sender: TObject);
    procedure cbxSalvarEnvioChange(Sender: TObject);
    procedure cbxSepararPorCNPJChange(Sender: TObject);
    procedure cbxSepararPorMESChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditNomeCLKeyPress(Sender: TObject; var Key: Char);
    procedure SairExecute(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure configurarClick(Sender: TObject);
    procedure btFiltrar1Click(Sender: TObject);
    procedure btfiltrarClick(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
  private
    { private declarations }

    procedure ConfiguraRedeSAT;
    procedure LeDadosRedeSAT;
    procedure PrepararImpressao;
    procedure TrataErros(Sender: TObject; E: Exception);
    procedure AjustaACBrSAT;
    procedure LoadXML(AXML: String; MyWebBrowser: TWebBrowser);
    procedure InputBoxSetPasswordChar(var Msg: TMessage);
      message InputBoxMessage;

  public

    { public declarations }
  end;

var
  FrmSat: TFrmSat;

implementation

Uses typinfo, ACBrUtil, pcnConversao, pcnRede, synacode, IniFiles,
  // ConfiguraSerial,
  RLPrinters, Printers, Modulo, Identifica, mensagem; // UCFe,

{$R *.dfm}
{ TForm1 }

procedure TFrmSat.InputBoxSetPasswordChar(var Msg: TMessage);
var
  hInputForm, hEdit, hButton: HWND;
begin
  hInputForm := Screen.Forms[0].Handle;
  if (hInputForm <> 0) then
  begin
    hEdit := FindWindowEx(hInputForm, 0, 'TEdit', nil);
    SendMessage(hEdit, EM_SETPASSWORDCHAR, Ord('*'), 0);
  end;
end;

procedure TFrmSat.FormCreate(Sender: TObject);
var
  I: TACBrSATModelo;
  J: TpcnTipoAmbiente;
  K: TpcnRegTribISSQN;
  L: TpcnindRatISSQN;
  M: TpcnRegTrib;
  N: TACBrPosPrinterModelo;
  O: TACBrPosPaginaCodigo;
begin

  cbxModelo.Items.Clear;
  For I := Low(TACBrSATModelo) to High(TACBrSATModelo) do
    cbxModelo.Items.Add(GetEnumName(TypeInfo(TACBrSATModelo), integer(I)));

  cbxAmbiente.Items.Clear;
  For J := Low(TpcnTipoAmbiente) to High(TpcnTipoAmbiente) do
    cbxAmbiente.Items.Add(GetEnumName(TypeInfo(TpcnTipoAmbiente), integer(J)));

  cbxRegTribISSQN.Items.Clear;
  For K := Low(TpcnRegTribISSQN) to High(TpcnRegTribISSQN) do
    cbxRegTribISSQN.Items.Add(GetEnumName(TypeInfo(TpcnRegTribISSQN),
      integer(K)));

  cbxIndRatISSQN.Items.Clear;
  For L := Low(TpcnindRatISSQN) to High(TpcnindRatISSQN) do
    cbxIndRatISSQN.Items.Add(GetEnumName(TypeInfo(TpcnindRatISSQN),
      integer(L)));

  cbxRegTributario.Items.Clear;
  For M := Low(TpcnRegTrib) to High(TpcnRegTrib) do
    cbxRegTributario.Items.Add(GetEnumName(TypeInfo(TpcnRegTrib), integer(M)));

  cbxModeloPosPrinter.Items.Clear;
  For N := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
    cbxModeloPosPrinter.Items.Add(GetEnumName(TypeInfo(TACBrPosPrinterModelo),
      integer(N)));

  cbxPagCodigo.Items.Clear;
  For O := Low(TACBrPosPaginaCodigo) to High(TACBrPosPaginaCodigo) do
    cbxPagCodigo.Items.Add(GetEnumName(TypeInfo(TACBrPosPaginaCodigo),
      integer(O)));

  cbxPorta.Items.Clear;
  ACBrPosPrinter1.Device.AcharPortasSeriais(cbxPorta.Items);
  cbxPorta.Items.Add('LPT1');
  cbxPorta.Items.Add('LPT2');
  cbxPorta.Items.Add('USB');
  cbxPorta.Items.Add('/dev/ttyS0');
  cbxPorta.Items.Add('/dev/ttyS1');
  cbxPorta.Items.Add('/dev/ttyUSB0');
  cbxPorta.Items.Add('/dev/ttyUSB1');
  cbxPorta.Items.Add('\\localhost\Epson');
  cbxPorta.Items.Add('c:\temp\ecf.txt');
  cbxPorta.Items.Add('/tmp/ecf.txt');

  Application.OnException := TrataErros;

  // PageControl1.ActivePageIndex := 0;
  PageControl2.ActivePageIndex := 5;
  if PageControl2.ActivePageIndex = 5 then
  begin
    DateEdit1.Date := Now;
    DateEdit2.Date := Now;

  end;

  btLerParams.Click;

  bInicializar.Click;
  btfiltrarClick(Self);
end;

procedure TFrmSat.mAssociarAssinaturaClick(Sender: TObject);
begin
  ACBrSAT1.AssociarAssinatura(edtSwHCNPJ.Text + edtEmitCNPJ.Text,
    edtSwHAssinatura.Text);
end;

procedure TFrmSat.mAtaulizarSoftwareSATClick(Sender: TObject);
begin
  ACBrSAT1.AtualizarSoftwareSAT;
end;

procedure TFrmSat.TrataErros(Sender: TObject; E: Exception);
var
  Erro: String;
begin
  Erro := Trim(E.Message);
  ACBrSAT1.DoLog(E.ClassName + ' - ' + Erro);
end;

procedure TFrmSat.wwDBGrid1DblClick(Sender: TObject);
begin
  AdvGlowButton5.Visible := True;
end;

procedure TFrmSat.AjustaACBrSAT;
begin
  with ACBrSAT1 do
  begin
    Modelo := TACBrSATModelo(cbxModelo.ItemIndex);
    ArqLOG := edLog.Text;
    NomeDLL := edNomeDLL.Text;
    Config.ide_numeroCaixa := seNumeroCaixa.Value;
    Config.ide_tpAmb := TpcnTipoAmbiente(cbxAmbiente.ItemIndex);
    Config.ide_CNPJ := edtSwHCNPJ.Text;
    Config.emit_CNPJ := edtEmitCNPJ.Text;
    Config.emit_IE := edtEmitIE.Text;
    Config.emit_IM := edtEmitIM.Text;
    Config.emit_cRegTrib := TpcnRegTrib(cbxRegTributario.ItemIndex);
    Config.emit_cRegTribISSQN := TpcnRegTribISSQN(cbxRegTribISSQN.ItemIndex);
    Config.emit_indRatISSQN := TpcnindRatISSQN(cbxIndRatISSQN.ItemIndex);
    Config.PaginaDeCodigo := sePagCod.Value;
    Config.EhUTF8 := cbxUTF8.Checked;
    Config.infCFe_versaoDadosEnt := StringToFloat(sfeVersaoEnt.Text);

    ConfigArquivos.SalvarCFe := cbxSalvarCFe.Checked;
    ConfigArquivos.SalvarCFeCanc := cbxSalvarCFeCanc.Checked;
    ConfigArquivos.SalvarEnvio := cbxSalvarEnvio.Checked;
    ConfigArquivos.SepararPorCNPJ := cbxSepararPorCNPJ.Checked;
    ConfigArquivos.SepararPorMes := cbxSepararPorMES.Checked;
  end
end;

procedure TFrmSat.ACBrSAT1GetcodigoDeAtivacao(var Chave: AnsiString);
begin
  Chave := edtCodigoAtivacao.Text;
end;

procedure TFrmSat.ACBrSAT1GetsignAC(var Chave: AnsiString);
begin
  Chave := edtSwHAssinatura.Text;
end;

procedure TFrmSat.ACBrSAT1Log(const AString: String);
begin
  mLog.Lines.Add(AString);
//  StatusBar1.Panels[0].Text := IntToStr(ACBrSAT1.Resposta.numeroSessao);
//  StatusBar1.Panels[1].Text := IntToStr(ACBrSAT1.Resposta.codigoDeRetorno);
end;

procedure TFrmSat.AdvGlowButton3Click(Sender: TObject);
begin
  // frmReimpressaoSat := tfrmReimpressaoSat.Create(Self);
  // frmReimpressaoSat.ShowModal
end;

procedure TFrmSat.AdvGlowButton5Click(Sender: TObject);
var
  TotalItem: Double;
  tGeralCup: Currency;
  ctItem: integer;
  ST, teste: string;
  cfOP, cpf: string;
  Origem: string;
  noPro: string;
  Ncm: string;
  TributosEST: Currency;
  TributosFED: Currency;
  itTributosEST: Currency;
  itTributosFED: Currency;
  desctotal: Currency;
  cMsg, forma: string;
  UMprod: string;
  edtPathCFe: string;
  // Variaveis para checar o CPF e o CNPJ
  Tm: array [1 .. 14] of integer;
  Tn: array [1 .. 14] of integer;

  Dgt1, Dgt2: integer;
  Soma1, Soma2: integer;
  EditCPFCNPJ, Nome: string;
  numero_cupom: string;
  erroenvio: string;
begin

  if EditCPF.Text <> '' then
  begin
    EditCPFCNPJ := EditCPF.Text
  end
  else
  begin
    EditCPFCNPJ := '';
  end;

  if RBindFPG.Text = '' then
  begin
    ShowMessage('ATENÇÃO!!! FORMA DE PAGAMENTO OBRIGATÓRIO');
    RBindFPG.SetFocus;
    exit;
  end;

  if (Copy(RBindFPG.Text, 1, 2) = '03') or (Copy(RBindFPG.Text, 1, 2) = '04')
  then
  begin
    if RBOperadora.Text = '' then
    begin
      ShowMessage('ATENÇÃO!!! CREDENCIADORA DE CARTÃO OBRIGATÓRIO');
      RBOperadora.SetFocus;
      exit;
    end;
  end;

  PageControl1.ActivePage := tsLog;

  ACBrSAT1.CFe.IdentarXML := cbxFormatXML.Checked;
  ACBrSAT1.CFe.TamanhoIdentacao := 3;

  // Limpar
  mVendaEnviar.Clear;
  mRecebido.Navigate('about:blank');

  // Trasnferindo Informações de Config para o CFe //
  AjustaACBrSAT;
  ACBrSAT1.InicializaCFe;

  with frmModulo do
  begin
    // CdsTabPedDetalhe.First;
    // qrCupom.Open;
    with ACBrSAT1.CFe do
    begin
      ide.numeroCaixa := seNumeroCaixa.Value;

      QrCupom_Item.Close;
      QrCupom_Item.SQL.Clear;
      QrCupom_Item.SQL.Add('select * from cupom_item                 ');
      QrCupom_Item.SQL.Add
        ('inner join estoque on estoque.codigo=cupom_item.cod_produto');
      QrCupom_Item.SQL.Add
        ('inner join cupom  on cupom.codigo=cupom_item.cod_cupom     ');
      QrCupom_Item.SQL.Add
        ('where ccf = numero                                         ');
      QrCupom_Item.SQL.Add
        ('and sat = 0                                                ');
      QrCupom_Item.SQL.Add
        ('and cupom_item.cancelado <> 1                              ');
      QrCupom_Item.SQL.Add('and cod_cupom=' +
        QuotedStr(qr_cupom.fieldbyname('codigo').asstring) + '');
      QrCupom_Item.Open;

      qrcli.Close;
      qrcli.SQL.Clear;
      qrcli.SQL.Add('select nome from cliente where cpf =''' +
        QrCupom_Item.fieldbyname('cpf_consumidor').asstring + '''');
      qrcli.Open;

      teste := QrCupom_Item.fieldbyname('cpf_consumidor').asstring;

      if teste = '' then
      begin
        if Application.MessageBox('Deseja colocar o CPF ou CNPJ?', 'Atenção',
          mb_yesno + MB_ICONQUESTION) = ID_YES then
        begin
          cpf := inputbox('CPF', 'CPF/CNPJ', '');
          Dest.CNPJCPF := cpf;
        end;
      end
      else
        Dest.CNPJCPF := teste;

      if qrcli.fieldbyname('nome').asstring <> '' then
        Dest.xNome := qrcli.fieldbyname('nome').asstring
      else
        Dest.xNome := '';

      ctItem := QrCupom_Item.fieldbyname('item').AsInteger;
      tGeralCup := 0;

      QrCupom_Item.First;
      while not QrCupom_Item.Eof do
      begin
        if QrCupom_Item.fieldbyname('sat').AsInteger = 0 then
        begin
          with Det.Add do
          begin
            noPro := QrCupom_Item.fieldbyname('NOME').asstring;
            UMprod := QrCupom_Item.fieldbyname('Unidade').asstring;
            Ncm := QrCupom_Item.fieldbyname('NCM').asstring;

            if QrCupom_Item.fieldbyname('ORIGEM').AsInteger > 0 then
              Origem := IntToStr(QrCupom_Item.fieldbyname('ORIGEM').AsInteger)
            else
              Origem := '0';

            if (QrCupom_Item.fieldbyname('csosn').asstring = '') then
              ST := '102';

            if qrfilial.fieldbyname('optante_simples').asstring = 'S' then
            begin
              if (QrCupom_Item.fieldbyname('csosn').asstring = '201') or
                (QrCupom_Item.fieldbyname('csosn').asstring = '202') or
                (QrCupom_Item.fieldbyname('csosn').asstring = '203') or
                (QrCupom_Item.fieldbyname('csosn').asstring = '500') then
              begin
                ST := '500';
                cfOP := '5405';
              end
              else
              begin
                if (QrCupom_Item.fieldbyname('csosn').asstring = '400') then
                begin
                  ST := '400';
                  cfOP := '5102';
                end
                else
                begin
                  ST := '102';
                  cfOP := '5102';
                end;

              end;
            end;

            if qrfilial.fieldbyname('optante_simples').asstring = 'N' then
            begin
              if (QrCupom_Item.fieldbyname('cst').asstring = '010') or
                (QrCupom_Item.fieldbyname('cst').asstring = '030') or
                (QrCupom_Item.fieldbyname('cst').asstring = '060') or
                (QrCupom_Item.fieldbyname('cst').asstring = '070') then
              begin
                ST := '060';
                cfOP := '5405';
              end
              else
              begin
                ST := '000';
                cfOP := '5102';
              end
            end;

            nItem := ctItem;
            Prod.cProd := frmModulo.QrCupom_Item.fieldbyname
              ('cod_produto').asstring;
            Prod.cEAN := ' ';
            Prod.xProd := noPro;
            Prod.Ncm := Ncm;
            Prod.cfOP := cfOP;
            Prod.uCom := UMprod;
            Prod.qCom := QrCupom_Item.fieldbyname('qtde').AsFloat;
            Prod.vUnCom := QrCupom_Item.fieldbyname('valor_Unitario').AsFloat;
            Prod.indRegra := irTruncamento;

            // Prod.vDesc           := QrCupom_Item.fieldbyname('valor_desconto').AsFloat;

            TotalItem := Prod.qCom * Prod.vUnCom;
            tGeralCup := tGeralCup + TotalItem;

            if Ncm <> '' then
            begin
              if (Origem = '0') or (Origem = '3') or (Origem = '4') or
                (Origem = '5') or (Origem = '8') then
              begin
                if (QrCupom_Item.RecordCount > 0) and
                  (QrCupom_Item.fieldbyname('ALIQNACIONAL').AsFloat > 0) then
                begin
                  TributosFED :=
                    RoundABNT(TributosFED +
                    (TotalItem * QrCupom_Item.fieldbyname('ALIQNACIONAL')
                    .AsFloat / 100), 2);
                  itTributosFED :=
                    RoundABNT((TotalItem * QrCupom_Item.fieldbyname
                    ('ALIQNACIONAL').AsFloat / 100), 2);
                end;
              end
              else
              begin
                if (QrCupom_Item.RecordCount > 0) and
                  (QrCupom_Item.fieldbyname('ALIQIMPOTADO').AsFloat > 0) then
                begin
                  TributosFED :=
                    RoundABNT(TributosFED +
                    (TotalItem * QrCupom_Item.fieldbyname('ALIQIMPOTADO')
                    .AsFloat / 100), 2);
                  itTributosFED :=
                    RoundABNT((TotalItem * QrCupom_Item.fieldbyname
                    ('ALIQIMPOTADO').AsFloat / 100), 2);
                end;
              end;
              TributosEST :=
                RoundABNT(TributosEST +
                (TotalItem * QrCupom_Item.fieldbyname('ALIQEST').AsFloat
                / 100), 2);
              itTributosEST :=
                RoundABNT((TotalItem * QrCupom_Item.fieldbyname('ALIQEST')
                .AsFloat / 100), 2);
            end
            else
            begin
              // ShowMessage('Produto sem Ncm, favor verificar');
              // Exit;
            end;

            Imposto.vItem12741 := itTributosEST + itTributosFED;

            if Origem = '0' then
              Imposto.ICMS.orig := oeNacional;

            if Origem = '1' then
              Imposto.ICMS.orig := oeEstrangeiraImportacaoDireta;

            if Origem = '2' then
              Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasil;

            if Origem = '3' then
              Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior40;

            if Origem = '4' then
              Imposto.ICMS.orig := oeNacionalProcessosBasicos;

            if Origem = '5' then
              Imposto.ICMS.orig := oeNacionalConteudoImportacaoInferiorIgual40;

            if Origem = '6' then
              Imposto.ICMS.orig := oeEstrangeiraImportacaoDiretaSemSimilar;

            if Origem = '7' then
              Imposto.ICMS.orig := oeEstrangeiraAdquiridaBrasilSemSimilar;

            if Origem = '8' then
              Imposto.ICMS.orig := oeNacionalConteudoImportacaoSuperior70;

            // Localiza informações sobre a ST
            qrfilial.Locate('optante_simples', ST, []);

            // CST ou CSOSN
            if qrfilial.fieldbyname('optante_simples').asstring = 'N' then
            // Regime normal
            begin
              if ST = '000' then
              begin
                Imposto.ICMS.CST := cst00;
                Imposto.ICMS.pICMS := 18;
              end;

              if ST = '020' then
                Imposto.ICMS.CST := cst20;

              if ST = '090' then
              begin
                Imposto.ICMS.CST := cst90;
                Imposto.ICMS.pICMS := 18;
              end;

              if ST = '040' then
                Imposto.ICMS.CST := cst40;

              if ST = '041' then
                Imposto.ICMS.CST := cst41;

              if ST = '050' then
                Imposto.ICMS.CST := cst50;

              if ST = '060' then
                Imposto.ICMS.CST := cst60;
            end
            else if qrfilial.fieldbyname('optante_simples').asstring = 'S' then
            // Regime simples nacional
            begin

              if ST = '102' then
                Imposto.ICMS.CSOSN := csosn102;

              if ST = '300' then
                Imposto.ICMS.CSOSN := csosn300;

              if ST = '400' then
                Imposto.ICMS.CSOSN := csosn400;

              if ST = '500' then
                Imposto.ICMS.CSOSN := csosn500;

              if ST = '900' then
              begin
                Imposto.ICMS.CSOSN := csosn900;
                Imposto.ICMS.pICMS := QrCupom_Item.fieldbyname
                  ('ALIQUOTA').AsFloat;
              end;
            end;
            // PIS
            if qrfilial.fieldbyname('optante_simples').asstring = 'N' then
              Imposto.PIS.CST := pis99
            else if qrfilial.fieldbyname('optante_simples').asstring = 'S' then
              Imposto.PIS.CST := pis49;

            // Imposto.PIS.vBC := TotalItem;
            // Imposto.PIS.pPIS := 0.0065;
            // COFINS
            if qrfilial.fieldbyname('optante_simples').asstring = 'N' then
              Imposto.COFINS.CST := cof99
            else if qrfilial.fieldbyname('optante_simples').asstring = 'S' then
              Imposto.COFINS.CST := cof49;

          end;
          QrCupom_Item.Next;
          ctItem := ctItem + 1;
        end;
      end;

      Total.DescAcrEntr.vDescSubtot :=
        qr_cupom.fieldbyname('VALOR_DESCONTO').AsFloat;
      Total.DescAcrEntr.vAcresSubtot := qr_cupom.fieldbyname('VALOR_ACRESCIMO')
        .AsFloat; // frmmodulo.Query1.fieldbyname('valor_acrescimo').AsFloat;
      Total.vCFeLei12741 := TributosEST + TributosFED;

      frmModulo.qrcupom_forma.Close;
      frmModulo.qrcupom_forma.SQL.Clear;
      frmModulo.qrcupom_forma.SQL.Add('select forma, valor from cupom_forma');
      frmModulo.qrcupom_forma.SQL.Add('where cod_cupom =''' +
        qr_cupom.fieldbyname('codigo').asstring + '''');
      frmModulo.qrcupom_forma.Open;
      frmModulo.qrcupom_forma.First;

      while not frmModulo.qrcupom_forma.Eof do
      begin
        forma := frmModulo.qrcupom_forma.fieldbyname('forma').asstring;

        if forma = 'Dinheiro' then
          RBindFPG.ItemIndex := 0;

        if forma = 'Cartão Crédito' then
        begin
          RBindFPG.ItemIndex := 2;
          RBOperadora.ItemIndex := 11;
        end;
        if forma = 'Cartão Débito' then
        begin
          RBindFPG.ItemIndex := 3;
          RBOperadora.ItemIndex := 11;
        end;
        if forma = ('Cheque') then
        begin
          RBindFPG.ItemIndex := 1;
        end;

        if RBindFPG.Text = '01-DINHEIRO' then
        begin
          with Pagto.Add do
          begin
            cMP := mpDinheiro;
            vMP := frmModulo.qrcupom_forma.fieldbyname('valor').AsFloat;
          end;
        end;
        if RBindFPG.Text = '02-CHEQUE' then
        begin
          with Pagto.Add do
          begin
            cMP := mpCheque;
            vMP := tGeralCup;
          end;
        end;
        if RBindFPG.Text = '03-CARTAO DE CREDITO' then
        begin
          with Pagto.Add do
          begin
            cMP := mpCartaodeCredito;
            vMP := frmModulo.qrcupom_forma.fieldbyname('valor').AsFloat;
            // tGeralCup;
            cAdmC := StrToInt(Copy(RBOperadora.Text, 1, 3));
          end;
        end;
        if RBindFPG.Text = '04-CARTAO DE DEBITO' then
        begin
          with Pagto.Add do
          begin
            cMP := mpCartaodeDebito;
            vMP := frmModulo.qrcupom_forma.fieldbyname('valor').AsFloat;
            // tGeralCup;
            cAdmC := StrToInt(Copy(RBOperadora.Text, 1, 3));
          end;
        end;
        if RBindFPG.Text = '05-CREDITO LOJA' then
        begin
          with Pagto.Add do
          begin
            cMP := mpCreditoLoja;
            vMP := tGeralCup;
          end;
        end;
        if RBindFPG.Text = '10-VALE ALIMENTACAO' then
        begin
          with Pagto.Add do
          begin
            cMP := mpValeAlimentacao;
            vMP := frmModulo.qrcupom_forma.fieldbyname('valor').AsFloat;
            // tGeralCup;
          end;
        end;
        if RBindFPG.Text = '11-VALE REFEICAO' then
        begin
          with Pagto.Add do
          begin
            cMP := mpValeAlimentacao;
            vMP := frmModulo.qrcupom_forma.fieldbyname('valor').AsFloat;
            // tGeralCup;
          end;
        end;
        if RBindFPG.Text = '12-VALE PRESENTE' then
        begin
          with Pagto.Add do
          begin
            cMP := mpValePresente;
            vMP := tGeralCup;
          end;
        end;
        if RBindFPG.Text = '13-VALE COMBUSTIVEL' then
        begin
          with Pagto.Add do
          begin
            cMP := mpValeCombustivel;
            vMP := tGeralCup;
          end;
        end;
        if RBindFPG.Text = '99-OUTROS' then
        begin
          with Pagto.Add do
          begin
            cMP := mpOutros;
            vMP := frmModulo.qrcupom_forma.fieldbyname('valor').AsFloat;
            // tGeralCup;
          end;
        end;
        frmModulo.qrcupom_forma.Next;
      end;
      cMsg := 'Obrigado Volte Sempre!!!';

      if qrfilial.fieldbyname('optante_simples').asstring = 'S' then
        cMsg := cMsg + ' Optante pelo simples nacional';

      InfAdic.infCpl := 'Valor Aproximado dos Impostos R$' +
        FormatFloat('0.00', TributosEST) + ' ( EST )' + ' R$ ' +
        FormatFloat('0.00', TributosFED) + ' ( FED )' +
        '                                                 ' + cMsg;

      mVendaEnviar.Lines.Text := ACBrSAT1.CFe.GerarXML(True);
      // True = Gera apenas as TAGs da aplicação

      mLog.Lines.Add('Venda Gerada');

      if mVendaEnviar.Text = '' then
        Close;

      ACBrSAT1.EnviarDadosVenda(mVendaEnviar.Text);

      if ACBrSAT1.Resposta.codigoDeRetorno = 6000 then
      begin
        LoadXML(ACBrSAT1.CFe.AsXMLString, mRecebido);
        PageControl1.ActivePage := tsRecebido;

        PrepararImpressao;
        ACBrSAT1.ImprimirExtrato;

        ACBrSATExtratoFortes1.Filtro := fiPDF;
        ACBrSATExtratoFortes1.NomeArquivo := 'C:\OneMaker\PDV\CFesPDF' +
          '\PDF\' + 'CFe' + ACBrSAT1.CFe.infCFe.ID + '.pdf';

        PrepararImpressao;
        ACBrSAT1.ImprimirExtrato;

        // ACBrSATExtratoFortes1.Filtro := fiNenhum;
        // ACBrSATExtratoFortes1.NomeArquivo := '';

        // numero_cupom := FormatFloat('000000',ACBrSAT1.CFe.ide.nCFe);

        QrCupom_Item.Close;
        QrCupom_Item.SQL.Clear;
        QrCupom_Item.SQL.Add('update cupom set sat = 1,');
        QrCupom_Item.SQL.Add('cod_cliente =''' + '000001' + ''',');
        QrCupom_Item.SQL.Add('numero= ''' + numero_cupom + '''');
        QrCupom_Item.SQL.Add('where codigo=' +
          QuotedStr(qr_cupom.fieldbyname('codigo').asstring) + '');
        QrCupom_Item.ExecSQL;

      end
      else
      begin
        erroenvio := IntToStr(ACBrSAT1.Resposta.codigoDeErro);
        erroenvio := Copy(erroenvio, 2, Length(erroenvio));
        ShowMessage('ERRO =' + ACBrSAT.MotivocStat(StrToInt(erroenvio)));
      end;
      EditCNPJ.Text := '';
      EditCPF.Text := '';
      RBindFPG.ItemIndex := 0;

    end;
  end;

  AdvGlowButton5.Visible := False;
  qr_cupom.Refresh;
  Close;
end;

procedure TFrmSat.bImpressora1Click(Sender: TObject);
begin
  if PrintDialog1.Execute then
    lImpressora.Caption := Printer.Printers[Printer.PrinterIndex];
end;

procedure TFrmSat.bInicializar1Click(Sender: TObject);
begin
  AjustaACBrSAT;
  ACBrSAT1.Inicializado := not ACBrSAT1.Inicializado;

  if ACBrSAT1.Inicializado then
    bInicializar.Caption := 'DesInicializar'
  else
    bInicializar.Caption := 'Inicializar';
end;

procedure TFrmSat.btLerParams1Click(Sender: TObject);
Var
  ArqINI: String;
  INI: TIniFile;
begin
  ArqINI := ChangeFileExt(Application.ExeName, '.ini');

  INI := TIniFile.Create(ArqINI);
  try
    cbxModelo.ItemIndex := INI.ReadInteger('SAT', 'Modelo', 0);
    edLog.Text := INI.ReadString('SAT', 'ArqLog', 'ACBrSAT.log');
    edNomeDLL.Text := INI.ReadString('SAT', 'NomeDLL', '');
    edtCodigoAtivacao.Text := INI.ReadString('SAT', 'CodigoAtivacao', '123456');
    edtCodUF.Text := INI.ReadString('SAT', 'CodigoUF', '35');
    seNumeroCaixa.Value := INI.ReadInteger('SAT', 'NumeroCaixa', 1);
    cbxAmbiente.ItemIndex := INI.ReadInteger('SAT', 'Ambiente', 1);
    sePagCod.Value := INI.ReadInteger('SAT', 'PaginaDeCodigo', 0);
    sfeVersaoEnt.Text := FloatToString(INI.ReadFloat('SAT', 'versaoDadosEnt',
      cversaoDadosEnt));
    cbxFormatXML.Checked := INI.ReadBool('SAT', 'FormatarXML', True);
    cbxSalvarCFe.Checked := INI.ReadBool('SAT', 'SalvarCFe', True);
    cbxSalvarCFeCanc.Checked := INI.ReadBool('SAT', 'SalvarCFeCanc', True);
    cbxSalvarEnvio.Checked := INI.ReadBool('SAT', 'SalvarEnvio', True);
    cbxSepararPorCNPJ.Checked := INI.ReadBool('SAT', 'SepararPorCNPJ', True);
    cbxSepararPorMES.Checked := INI.ReadBool('SAT', 'SepararPorMES', True);
    sePagCodChange(Sender);

    cbxModeloPosPrinter.ItemIndex := INI.ReadInteger('PosPrinter', 'Modelo',
      integer(ACBrPosPrinter1.Modelo));
    cbxPorta.Text := INI.ReadString('PosPrinter', 'Porta',
      ACBrPosPrinter1.Porta);
    cbxPagCodigo.ItemIndex := INI.ReadInteger('PosPrinter', 'PaginaDeCodigo',
      integer(ACBrPosPrinter1.PaginaDeCodigo));
    ACBrPosPrinter1.Device.ParamsString := INI.ReadString('PosPrinter',
      'ParamsString', '');
    seColunas.Value := INI.ReadInteger('PosPrinter', 'Colunas',
      ACBrPosPrinter1.ColunasFonteNormal);
    seEspLinhas.Value := INI.ReadInteger('PosPrinter', 'EspacoLinhas',
      ACBrPosPrinter1.EspacoEntreLinhas);
    seLinhasPular.Value := INI.ReadInteger('PosPrinter', 'LinhasEntreCupons',
      ACBrPosPrinter1.LinhasEntreCupons);

    edtEmitCNPJ.Text := INI.ReadString('Emit', 'CNPJ', '');
    edtEmitIE.Text := INI.ReadString('Emit', 'IE', '');
    edtEmitIM.Text := INI.ReadString('Emit', 'IM', '');
    cbxRegTributario.ItemIndex := INI.ReadInteger('Emit', 'RegTributario', 0);
    cbxRegTribISSQN.ItemIndex := INI.ReadInteger('Emit', 'RegTribISSQN', 0);
    cbxIndRatISSQN.ItemIndex := INI.ReadInteger('Emit', 'IndRatISSQN', 0);

    edtSwHCNPJ.Text := INI.ReadString('SwH', 'CNPJ', '11111111111111');
    edtSwHAssinatura.Text := INI.ReadString('SwH', 'Assinatura', cAssinatura);

    cbUsarFortes.Checked := INI.ReadBool('Fortes', 'UsarFortes', True);
    cbUsarEscPos.Checked := not cbUsarFortes.Checked;
    seLargura.Value := INI.ReadInteger('Fortes', 'Largura',
      ACBrSATExtratoFortes1.LarguraBobina);
    seMargemTopo.Value := INI.ReadInteger('Fortes', 'MargemTopo',
      ACBrSATExtratoFortes1.Margens.Topo);
    seMargemFundo.Value := INI.ReadInteger('Fortes', 'MargemFundo',
      ACBrSATExtratoFortes1.Margens.Fundo);
    seMargemEsquerda.Value := INI.ReadInteger('Fortes', 'MargemEsquerda',
      ACBrSATExtratoFortes1.Margens.Esquerda);
    seMargemDireita.Value := INI.ReadInteger('Fortes', 'MargemDireita',
      ACBrSATExtratoFortes1.Margens.Direita);
    cbPreview.Checked := INI.ReadBool('Fortes', 'Preview', True);

    lImpressora.Caption := INI.ReadString('Printer', 'Name', '');
    cbImprimir1Linha.Checked := INI.ReadBool('EscPos', 'ImprimirItemUmaLinha',
      cbImprimir1Linha.Checked);

    rgRedeTipoInter.ItemIndex := INI.ReadInteger('Rede', 'tipoInter', 0);
    rgRedeTipoLan.ItemIndex := INI.ReadInteger('Rede', 'tipoLan', 0);
    edRedeSSID.Text := INI.ReadString('Rede', 'SSID', '');
    cbxRedeSeg.ItemIndex := INI.ReadInteger('Rede', 'seg', 0);
    edRedeCodigo.Text := INI.ReadString('Rede', 'codigo', '');
    edRedeIP.Text := INI.ReadString('Rede', 'lanIP', '');
    edRedeMask.Text := INI.ReadString('Rede', 'lanMask', '');
    edRedeGW.Text := INI.ReadString('Rede', 'lanGW', '');
    edRedeDNS1.Text := INI.ReadString('Rede', 'lanDNS1', '');
    edRedeDNS2.Text := INI.ReadString('Rede', 'lanDNS2', '');
    edRedeUsuario.Text := INI.ReadString('Rede', 'usuario', '');
    edRedeSenha.Text := INI.ReadString('Rede', 'senha', '');
    cbxRedeProxy.ItemIndex := INI.ReadInteger('Rede', 'proxy', 0);
    edRedeProxyIP.Text := INI.ReadString('Rede', 'proxy_ip', '');
    edRedeProxyPorta.Value := INI.ReadInteger('Rede', 'proxy_porta', 0);
    edRedeProxyUser.Text := INI.ReadString('Rede', 'proxy_user', '');
    edRedeProxySenha.Text := INI.ReadString('Rede', 'proxy_senha', '');

  finally
    INI.Free;
  end;
end;

procedure TFrmSat.btSalvarParams1Click(Sender: TObject);
Var
  ArqINI: String;
  INI: TIniFile;
begin
  ArqINI := ChangeFileExt(Application.ExeName, '.ini');

  INI := TIniFile.Create(ArqINI);
  try
    INI.WriteInteger('SAT', 'Modelo', cbxModelo.ItemIndex);
    INI.WriteString('SAT', 'ArqLog', edLog.Text);
    INI.WriteString('SAT', 'NomeDLL', edNomeDLL.Text);
    INI.WriteString('SAT', 'CodigoAtivacao', edtCodigoAtivacao.Text);
    INI.WriteString('SAT', 'CodigoUF', edtCodUF.Text);
    INI.WriteInteger('SAT', 'NumeroCaixa', seNumeroCaixa.Value);
    INI.WriteInteger('SAT', 'Ambiente', cbxAmbiente.ItemIndex);
    INI.WriteInteger('SAT', 'PaginaDeCodigo', sePagCod.Value);
    INI.WriteFloat('SAT', 'versaoDadosEnt', StringToFloatDef(sfeVersaoEnt.Text,
      cversaoDadosEnt));
    INI.WriteBool('SAT', 'FormatarXML', cbxFormatXML.Checked);
    INI.WriteBool('SAT', 'SalvarCFe', cbxSalvarCFe.Checked);
    INI.WriteBool('SAT', 'SalvarCFeCanc', cbxSalvarCFeCanc.Checked);
    INI.WriteBool('SAT', 'SalvarEnvio', cbxSalvarEnvio.Checked);
    INI.WriteBool('SAT', 'SepararPorCNPJ', cbxSepararPorCNPJ.Checked);
    INI.WriteBool('SAT', 'SepararPorMES', cbxSepararPorMES.Checked);

    INI.WriteInteger('PosPrinter', 'Modelo', cbxModeloPosPrinter.ItemIndex);
    INI.WriteString('PosPrinter', 'Porta', cbxPorta.Text);
    INI.WriteInteger('PosPrinter', 'PaginaDeCodigo', cbxPagCodigo.ItemIndex);
    INI.WriteString('PosPrinter', 'ParamsString',
      ACBrPosPrinter1.Device.ParamsString);
    INI.WriteInteger('PosPrinter', 'Colunas', seColunas.Value);
    INI.WriteInteger('PosPrinter', 'EspacoLinhas', seEspLinhas.Value);
    INI.WriteInteger('PosPrinter', 'LinhasEntreCupons', seLinhasPular.Value);

    INI.WriteString('Emit', 'CNPJ', edtEmitCNPJ.Text);
    INI.WriteString('Emit', 'IE', edtEmitIE.Text);
    INI.WriteString('Emit', 'IM', edtEmitIM.Text);
    INI.WriteInteger('Emit', 'RegTributario', cbxRegTributario.ItemIndex);
    INI.WriteInteger('Emit', 'RegTribISSQN', cbxRegTribISSQN.ItemIndex);
    INI.WriteInteger('Emit', 'IndRatISSQN', cbxIndRatISSQN.ItemIndex);

    INI.WriteString('SwH', 'CNPJ', edtSwHCNPJ.Text);
    INI.WriteString('SwH', 'Assinatura', edtSwHAssinatura.Text);

    INI.WriteBool('Fortes', 'UsarFortes', cbUsarFortes.Checked);
    INI.WriteInteger('Fortes', 'Largura', seLargura.Value);
    INI.WriteInteger('Fortes', 'MargemTopo', seMargemTopo.Value);
    INI.WriteInteger('Fortes', 'MargemFundo', seMargemFundo.Value);
    INI.WriteInteger('Fortes', 'MargemEsquerda', seMargemEsquerda.Value);
    INI.WriteInteger('Fortes', 'MargemDireita', seMargemDireita.Value);
    INI.WriteBool('Fortes', 'Preview', cbPreview.Checked);

    INI.WriteString('Printer', 'Name', lImpressora.Caption);
    INI.WriteBool('EscPos', 'ImprimirItemUmaLinha', cbImprimir1Linha.Checked);

    INI.WriteInteger('Rede', 'tipoInter', rgRedeTipoInter.ItemIndex);
    INI.WriteInteger('Rede', 'tipoLan', rgRedeTipoLan.ItemIndex);
    INI.WriteString('Rede', 'SSID', edRedeSSID.Text);
    INI.WriteInteger('Rede', 'seg', cbxRedeSeg.ItemIndex);
    INI.WriteString('Rede', 'codigo', edRedeCodigo.Text);
    INI.WriteString('Rede', 'lanIP', edRedeIP.Text);
    INI.WriteString('Rede', 'lanMask', edRedeMask.Text);
    INI.WriteString('Rede', 'lanGW', edRedeGW.Text);
    INI.WriteString('Rede', 'lanDNS1', edRedeDNS1.Text);
    INI.WriteString('Rede', 'lanDNS2', edRedeDNS2.Text);
    INI.WriteString('Rede', 'usuario', edRedeUsuario.Text);
    INI.WriteString('Rede', 'senha', edRedeSenha.Text);
    INI.WriteInteger('Rede', 'proxy', cbxRedeProxy.ItemIndex);
    INI.WriteString('Rede', 'proxy_ip', edRedeProxyIP.Text);
    INI.WriteInteger('Rede', 'proxy_porta', edRedeProxyPorta.Value);
    INI.WriteString('Rede', 'proxy_user', edRedeProxyUser.Text);
    INI.WriteString('Rede', 'proxy_senha', edRedeProxySenha.Text);

  finally
    INI.Free;
  end;
end;

procedure TFrmSat.cbUsarEscPosClick(Sender: TObject);
begin
  cbUsarFortes.Checked := False;
  ACBrSAT1.Extrato := ACBrSATExtratoESCPOS1;
end;

procedure TFrmSat.cbUsarFortesClick(Sender: TObject);
begin
  cbUsarEscPos.Checked := False;
  ACBrSAT1.Extrato := ACBrSATExtratoFortes1
end;

procedure TFrmSat.cbxModeloChange(Sender: TObject);
begin
  try
    ACBrSAT1.Modelo := TACBrSATModelo(cbxModelo.ItemIndex);
  except
    cbxModelo.ItemIndex := integer(ACBrSAT1.Modelo);
    raise;
  end;
end;

procedure TFrmSat.cbxUTF8Change(Sender: TObject);
begin
  ACBrSAT1.Config.EhUTF8 := cbxUTF8.Checked;
  sePagCod.Value := ACBrSAT1.Config.PaginaDeCodigo;
end;

procedure TFrmSat.configurarClick(Sender: TObject);
var
  senha, conf: string;
  InputString: string;
begin
  senha := '1234';

  PostMessage(Handle, InputBoxMessage, 0, 0);
  InputString := inputbox('Atenção', 'Senha', '');

  if InputString = senha then
  begin
    tsDadosSAT.TabVisible := True;
    tsDadosEmit.TabVisible := True;
    tsDadosSwHouse.TabVisible := True;
    tsRede.TabVisible := True;
    Impressao.TabVisible := True;
  end
  else
    ShowMessage('Voce não tem acesso a estas informações');
end;

procedure TFrmSat.miGerarXMLCancelamentoClick(Sender: TObject);
begin
  OpenDialog1.Filter := 'Arquivo XML|*.xml';
  if OpenDialog1.Execute then
  begin
    ACBrSAT1.CFe.LoadFromFile(OpenDialog1.FileName);
    ACBrSAT1.CFe2CFeCanc;

    mCancelamentoEnviar.Lines.Text := ACBrSAT1.CFeCanc.GerarXML(True);
    // True = Gera apenas as TAGs da aplicação
    edChaveCancelamento.Text := ACBrSAT1.CFeCanc.infCFe.chCanc;
    PageControl1.ActivePage := tsCancelamento;
  end;
  miEnviarCancelamentoClick(Self);
end;

procedure TFrmSat.miEnviarCancelamentoClick(Sender: TObject);
begin
  PageControl1.ActivePage := tsLog;
  if mCancelamentoEnviar.Lines.Count < 1 then
  begin
    ACBrSAT1.CancelarUltimaVenda;
    mCancelamentoEnviar.Lines.Text := ACBrSAT1.CFeCanc.GerarXML(True);
  end
  else
  begin
    if edChaveCancelamento.Text = '' then
    begin
      ACBrSAT1.CFeCanc.AsXMLString := mCancelamentoEnviar.Lines.Text;
      edChaveCancelamento.Text := ACBrSAT1.CFeCanc.infCFe.chCanc;
    end;

    ACBrSAT1.CancelarUltimaVenda(edChaveCancelamento.Text,
      mCancelamentoEnviar.Lines.Text);
  end;

  if ACBrSAT1.Resposta.codigoDeRetorno = 7000 then
  begin
    LoadXML(ACBrSAT1.CFeCanc.AsXMLString, mRecebido);
    PageControl1.ActivePage := tsRecebido;
    miImprimirExtratoCancelamentoClick(Self);
  end
  else
    ShowMessage('CF-e já cancelado!');

  Close;
end;

procedure TFrmSat.miImprimirExtratoCancelamentoClick(Sender: TObject);
begin
  PrepararImpressao;
  ACBrSAT1.ImprimirExtratoCancelamento;
end;

procedure TFrmSat.mTesteFimAFimClick(Sender: TObject);
begin
  if mVendaEnviar.Text = '' then
    mGerarVenda.Click;

  PageControl1.ActivePage := tsLog;

  ACBrSAT1.TesteFimAFim(mVendaEnviar.Text);

  if ACBrSAT1.Resposta.codigoDeRetorno = 9000 then
  begin
    LoadXML(ACBrSAT1.CFe.AsXMLString, mRecebido);
    PageControl1.ActivePage := tsRecebido;
  end;
end;

procedure TFrmSat.sfeVersaoEntChange(Sender: TObject);
begin
  ACBrSAT1.Config.infCFe_versaoDadosEnt := StringToFloatDef(sfeVersaoEnt.Text,
    cversaoDadosEnt);
end;

procedure TFrmSat.mAtivarSATClick(Sender: TObject);
begin
  ACBrSAT1.AtivarSAT(1, edtEmitCNPJ.Text, StrToInt(edtCodUF.Text));
end;

procedure TFrmSat.mBloquearSATClick(Sender: TObject);
begin
  ACBrSAT1.BloquearSAT;
end;

procedure TFrmSat.mComunicarCertificadoClick(Sender: TObject);
Var
  SL: TStringList;
begin
  OpenDialog1.Filter := 'Certificado|*.cer|Arquivo Texto|*.txt';
  if OpenDialog1.Execute then
  begin
    SL := TStringList.Create;
    try
      SL.LoadFromFile(OpenDialog1.FileName);

      ACBrSAT1.ComunicarCertificadoICPBRASIL(SL.Text);
    finally
      SL.Free;
    end;
  end;
end;

procedure TFrmSat.mConfigurarInterfaceRedeClick(Sender: TObject);
begin
  ConfiguraRedeSAT;
  LoadXML(ACBrSAT1.Rede.AsXMLString, mRede);

  ACBrSAT1.ConfigurarInterfaceDeRede();
end;

procedure TFrmSat.mConsultarNumeroSessaoClick(Sender: TObject);
Var
  strSessao: String;
  nSessao: integer;
begin
  strSessao := '';
  if not InputQuery('Consultar Número de Sessão',
    'Entre com o Número de Sessão a ser consultada:', strSessao) then
    exit;

  nSessao := StrToIntDef(strSessao, 0);
  if nSessao <= 0 then
    raise Exception.Create('Numero de sessão informado é inválido');

  ACBrSAT1.ConsultarNumeroSessao(nSessao);
end;

procedure TFrmSat.mConsultarSATClick(Sender: TObject);
begin
  ACBrSAT1.ConsultarSAT;
end;

procedure TFrmSat.mConsultarStatusOperacionalClick(Sender: TObject);
begin
  ACBrSAT1.ConsultarStatusOperacional;

  with ACBrSAT1.Status do
  begin
    mLog.Lines.Add('NSERIE.........: ' + NSERIE);
    mLog.Lines.Add('LAN_MAC........: ' + LAN_MAC);
    mLog.Lines.Add('STATUS_LAN.....: ' + StatusLanToStr(STATUS_LAN));
    mLog.Lines.Add('NIVEL_BATERIA..: ' + NivelBateriaToStr(NIVEL_BATERIA));
    mLog.Lines.Add('MT_TOTAL.......: ' + MT_TOTAL);
    mLog.Lines.Add('MT_USADA.......: ' + MT_USADA);
    mLog.Lines.Add('DH_ATUAL.......: ' + DateTimeToStr(DH_ATUAL));
    mLog.Lines.Add('VER_SB.........: ' + VER_SB);
    mLog.Lines.Add('VER_LAYOUT.....: ' + VER_LAYOUT);
    mLog.Lines.Add('ULTIMO_CFe.....: ' + ULTIMO_CFe);
    mLog.Lines.Add('LISTA_INICIAL..: ' + LISTA_INICIAL);
    mLog.Lines.Add('LISTA_FINAL....: ' + LISTA_FINAL);
    mLog.Lines.Add('DH_CFe.........: ' + DateTimeToStr(DH_CFe));
    mLog.Lines.Add('DH_ULTIMA......: ' + DateTimeToStr(DH_CFe));
    mLog.Lines.Add('CERT_EMISSAO...: ' + DateToStr(CERT_EMISSAO));
    mLog.Lines.Add('CERT_VENCIMENTO: ' + DateToStr(CERT_VENCIMENTO));
    mLog.Lines.Add('ESTADO_OPERACAO: ' + EstadoOperacaoToStr(ESTADO_OPERACAO));
  end;

  LeDadosRedeSAT;
end;

procedure TFrmSat.mDesbloquearSATClick(Sender: TObject);
begin
  ACBrSAT1.DesbloquearSAT;
end;

procedure TFrmSat.MenuItem5Click(Sender: TObject);
Var
  CodNovo, CodAtual, tipoCodigo: String;
begin
  CodNovo := '';
  CodAtual := edtCodigoAtivacao.Text;
  tipoCodigo := '1';

  if not InputQuery('Trocar Código de Ativação',
    'Entre com o Código de Ativação ou de Emergência:', CodAtual) then
    exit;

  if not InputQuery('Trocar Código de Ativação',
    'Qual o Tipo do Código Informado anteriormente ?' + sLineBreak +
    '1 – Código de Ativação' + sLineBreak +
    '2 – Código de Ativação de Emergência' + sLineBreak, tipoCodigo) then
    exit;

  if not InputQuery('Trocar Código de Ativação',
    'Entre com o Número do Novo Código de Ativação:', CodNovo) then
    exit;

  ACBrSAT1.TrocarCodigoDeAtivacao(CodAtual, StrToInt(tipoCodigo), CodNovo);

  if ACBrSAT1.Resposta.codigoDeRetorno = 1800 then
  begin
    edtCodigoAtivacao.Text := CodNovo;
    mLog.Lines.Add('Código de Ativação trocado com sucesso');
    btSalvarParams.Click;
  end;
end;

procedure TFrmSat.mExtrairLogsClick(Sender: TObject);
Var
  NomeArquivo: String;
begin
  NomeArquivo := ExtractFilePath(Application.ExeName) + 'SAT.LOG';
  if not InputQuery('ExtrairLogs',
    'Informe o nome para criação do Arquivo de Log:', NomeArquivo) then
    exit;

  ACBrSAT1.ExtrairLogs(NomeArquivo);
end;

procedure TFrmSat.mGerarVendaClick(Sender: TObject);
var
  TotalItem: Double;
  A: integer;
  TotalProdutos, TotalImpostoAprox: Double;
begin
  PageControl1.ActivePage := tsGerado;

  ACBrSAT1.CFe.IdentarXML := cbxFormatXML.Checked;
  ACBrSAT1.CFe.TamanhoIdentacao := 3;

  mVendaEnviar.Clear;

  // Trasnferindo Informações de Config para o CFe //
  AjustaACBrSAT;
  ACBrSAT1.InicializaCFe;

  // Montando uma Venda //
  with ACBrSAT1.CFe do
  begin
    ide.numeroCaixa := 1;

    Dest.CNPJCPF := '05481336000137';
    Dest.xNome := 'D.J. SYSTEM';

    Entrega.xLgr := 'logradouro';
    Entrega.nro := '112233';
    Entrega.xCpl := 'complemento';
    Entrega.xBairro := 'bairro';
    Entrega.xMun := 'municipio';
    Entrega.UF := 'RJ';

    TotalProdutos := 0;
    TotalImpostoAprox := 0;
    for A := 1 to 1 do
    begin
      with Det.Add do
      begin
        nItem := A;
        Prod.cProd := 'ACBR' + Format('%3.3d', [A]);
        Prod.cEAN := '6291041500213';
        Prod.xProd := 'DESCRICAO DO PRODUTO GIGANTE ' + Format('%3.3d', [A]);
        Prod.Ncm := '99';
        Prod.cfOP := '5120';
        Prod.uCom := 'UN';
        Prod.indRegra := irTruncamento;
        Prod.qCom := 1;
        Prod.vUnCom := 10;
        Prod.vDesc := 0;
        Prod.vOutro := 0;

        // with Prod.obsFiscoDet.Add do
        // begin
        // xCampoDet := 'campo';
        // xTextoDet := 'texto';
        // end;

        Imposto.ICMS.orig := oeNacional;
        if ACBrSAT1.Config.emit_cRegTrib = RTRegimeNormal then
        begin
          Imposto.ICMS.CST := cst00;
          Imposto.ICMS.pICMS := 18;
        end
        else
        begin
          Imposto.ICMS.CSOSN := csosn102;
        end;

        Imposto.PIS.CST := pis49;
        Imposto.PIS.vBC := 0;
        Imposto.PIS.pPIS := 0;

        Imposto.COFINS.CST := cof49;
        Imposto.COFINS.vBC := 0;
        Imposto.COFINS.pCOFINS := 0;

        infAdProd := 'Informacoes adicionais';

        // imposto aproximado
        TotalItem := (Prod.qCom * Prod.vUnCom);
        Imposto.vItem12741 := TotalItem * 0.12;

        TotalProdutos := TotalProdutos + TotalItem;
        TotalImpostoAprox := TotalImpostoAprox + Imposto.vItem12741;
      end;
    end;

    Total.DescAcrEntr.vDescSubtot := 0;
    Total.vCFeLei12741 := TotalImpostoAprox;

    with Pagto.Add do
    begin
      cMP := mpDinheiro;
      vMP := 100;
    end;

    // with Pagto.Add do
    // begin
    // cMP   := mpCartaodeCredito;
    // vMP   := 50;
    // cAdmC := 999;
    // end;

    InfAdic.infCpl :=
      'Acesse www.projetoacbr.com.br para obter mais;informações sobre o componente ACBrSAT;'
      + 'Precisa de um PAF-ECF homologado?;Conheça o DJPDV - www.djpdv.com.br'
  end;

  mVendaEnviar.Lines.Text := ACBrSAT1.CFe.GerarXML(True);
  // True = Gera apenas as TAGs da aplicação

  mLog.Lines.Add('Venda Gerada');
end;

procedure TFrmSat.mImprimirExtratoVendaClick(Sender: TObject);
begin
  PrepararImpressao;
  ACBrSAT1.ImprimirExtrato;
end;

procedure TFrmSat.mImprimirExtratoVendaResumidoClick(Sender: TObject);
begin
  PrepararImpressao;
  ACBrSAT1.ImprimirExtratoResumido;
end;

procedure TFrmSat.mLimparClick(Sender: TObject);
begin
  mVendaEnviar.Clear;
  LoadXML('', mRecebido);
  mCancelamentoEnviar.Clear;
end;

procedure TFrmSat.SbArqLogClick(Sender: TObject);
begin
  OpenURL(ExtractFilePath(Application.ExeName) + edLog.Text);
end;

procedure TFrmSat.sePagCodChange(Sender: TObject);
begin
  ACBrSAT1.Config.PaginaDeCodigo := sePagCod.Value;
  cbxUTF8.Checked := ACBrSAT1.Config.EhUTF8;
end;

procedure TFrmSat.PrepararImpressao;
begin
  if ACBrSAT1.Extrato = ACBrSATExtratoESCPOS1 then
  begin
    ACBrPosPrinter1.Desativar;
    ACBrPosPrinter1.Modelo := TACBrPosPrinterModelo
      (cbxModeloPosPrinter.ItemIndex);
    ACBrPosPrinter1.PaginaDeCodigo :=
      TACBrPosPaginaCodigo(cbxPagCodigo.ItemIndex);
    ACBrPosPrinter1.Porta := cbxPorta.Text;
    ACBrPosPrinter1.ColunasFonteNormal := seColunas.Value;
    ACBrPosPrinter1.LinhasEntreCupons := seLinhasPular.Value;
    ACBrPosPrinter1.EspacoEntreLinhas := seEspLinhas.Value;
    ACBrSATExtratoESCPOS1.ImprimeQRCode := True;
    ACBrSATExtratoESCPOS1.ImprimeEmUmaLinha := cbImprimir1Linha.Checked;
  end
  else
  begin
    ACBrSATExtratoFortes1.LarguraBobina := seLargura.Value;
    ACBrSATExtratoFortes1.Margens.Topo := seMargemTopo.Value;
    ACBrSATExtratoFortes1.Margens.Fundo := seMargemFundo.Value;
    ACBrSATExtratoFortes1.Margens.Esquerda := seMargemEsquerda.Value;
    ACBrSATExtratoFortes1.Margens.Direita := seMargemDireita.Value;
    ACBrSATExtratoFortes1.MostrarPreview := cbPreview.Checked;

    try
      if lImpressora.Caption <> '' then
        ACBrSATExtratoFortes1.PrinterName := lImpressora.Caption;
    except
    end;
  end;
end;

procedure TFrmSat.LoadXML(AXML: String; MyWebBrowser: TWebBrowser);
begin
  WriteToTXT(PathWithDelim(ExtractFileDir(Application.ExeName)) +
    MyWebBrowser.Name + '-temp.xml', AXML, False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(Application.ExeName)) +
    MyWebBrowser.Name + '-temp.xml');
end;

procedure TFrmSat.rgRedeTipoInterClick(Sender: TObject);
begin
  gbWiFi.Visible := (rgRedeTipoInter.ItemIndex = 1);
end;

procedure TFrmSat.rgRedeTipoLanClick(Sender: TObject);
begin
  gbPPPoE.Visible := (rgRedeTipoLan.ItemIndex = 1);
  gbIPFix.Visible := (rgRedeTipoLan.ItemIndex = 2);
end;

procedure TFrmSat.cbxRedeProxyChange(Sender: TObject);
begin
  edRedeProxyIP.Enabled := (cbxRedeProxy.ItemIndex > 0);
  edRedeProxyPorta.Enabled := edRedeProxyIP.Enabled;
  edRedeProxyUser.Enabled := edRedeProxyIP.Enabled;
  edRedeProxySenha.Enabled := edRedeProxyIP.Enabled;
end;

procedure TFrmSat.LerXMLinterfaceRede1Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'Arquivo XML|*.xml';
  if OpenDialog1.Execute then
  begin
    ACBrSAT1.Rede.LoadFromFile(OpenDialog1.FileName);

    LeDadosRedeSAT;
    ACBrSAT1.ConfigurarInterfaceDeRede();
  end;
end;

procedure TFrmSat.GerarXMLInterfaceRede1Click(Sender: TObject);
begin
  ConfiguraRedeSAT;
  LoadXML(ACBrSAT1.Rede.AsXMLString, mRede);

  PageControl1.ActivePage := tsRedeXML;

  SaveDialog1.Filter := 'Arquivo XML|*.xml';
  SaveDialog1.FileName := 'Rede.xml';
  if SaveDialog1.Execute then
  begin
    ACBrSAT1.Rede.SaveToFile(SaveDialog1.FileName);
  end;
end;

procedure TFrmSat.ConfiguraRedeSAT;
begin
  with ACBrSAT1.Rede do
  begin
    tipoInter := TTipoInterface(rgRedeTipoInter.ItemIndex);
    SSID := edRedeSSID.Text;
    seg := TSegSemFio(cbxRedeSeg.ItemIndex);
    codigo := edRedeCodigo.Text;
    tipoLan := TTipoLan(rgRedeTipoLan.ItemIndex);
    lanIP := edRedeIP.Text;
    lanMask := edRedeMask.Text;
    lanGW := edRedeGW.Text;
    lanDNS1 := edRedeDNS1.Text;
    lanDNS2 := edRedeDNS2.Text;
    usuario := edRedeUsuario.Text;
    senha := edRedeSenha.Text;
    proxy := cbxRedeProxy.ItemIndex;
    proxy_ip := edRedeProxyIP.Text;
    proxy_porta := edRedeProxyPorta.Value;
    proxy_user := edRedeProxyUser.Text;
    proxy_senha := edRedeProxySenha.Text;
  end;
end;

procedure TFrmSat.btFiltrar1Click(Sender: TObject);
begin
  frmModulo.qrCupom.Close;
  frmModulo.qrCupom.SQL.Clear;
  frmModulo.qrCupom.SQL.Add
    ('select cpf_consumidor, nome_consumidor from cupom');
  frmModulo.qrCupom.SQL.Add
    ('where  codigo = (select  max(cupom.codigo) from cupom)');
  frmModulo.qrCupom.SQL.Add('and data between data= datai and data = dataf)');
  frmModulo.qrCupom.SQL.Add('and sat = 0');
  frmModulo.qrCupom.ParamByName('datai').AsDate := DateEdit1.Date;
  frmModulo.qrCupom.ParamByName('dataf').AsDate := DateEdit2.Date;
  frmModulo.qrCupom.Open;
end;

procedure TFrmSat.btfiltrarClick(Sender: TObject);
begin
  qr_cupom.Close;
  qr_cupom.SQL.Clear;
  qr_cupom.SQL.Add
    (' select numero, hora, valor_desconto, valor_acrescimo, valor_pago, valor_troco, cpf_consumidor, nome_consumidor, sat, codigo, data,(qtde_item)ITENS, (cpf_consumidor)CPF,');
  qr_cupom.SQL.Add('(valor_total)TOTAL, sat from cupom  where sat = 0');
  qr_cupom.SQL.Add('and data between :datai and :dataf');
  qr_cupom.ParamByName('datai').AsDate := DateEdit1.Date;
  qr_cupom.ParamByName('dataf').AsDate := DateEdit2.Date;
  qr_cupom.Open;
end;

procedure TFrmSat.ACBrSAT1GravarLog(const ALogLine: String;
  var Tratado: Boolean);
begin
  mLog.Lines.Add(ALogLine);
//  StatusBar1.Panels[0].Text := IntToStr(ACBrSAT1.Resposta.numeroSessao);
//  StatusBar1.Panels[1].Text := IntToStr(ACBrSAT1.Resposta.codigoDeRetorno);
  Tratado := False;
end;

procedure TFrmSat.LeDadosRedeSAT;
begin
  with ACBrSAT1.Rede do
  begin
    rgRedeTipoInter.ItemIndex := integer(tipoInter);
    edRedeSSID.Text := SSID;
    cbxRedeSeg.ItemIndex := integer(seg);
    edRedeCodigo.Text := codigo;
    rgRedeTipoLan.ItemIndex := integer(tipoLan);
    edRedeIP.Text := lanIP;
    edRedeMask.Text := lanMask;
    edRedeGW.Text := lanGW;
    edRedeDNS1.Text := lanDNS1;
    edRedeDNS2.Text := lanDNS2;
    edRedeUsuario.Text := usuario;
    edRedeSenha.Text := senha;
    cbxRedeProxy.ItemIndex := proxy;
    edRedeProxyIP.Text := proxy_ip;
    edRedeProxyPorta.Value := proxy_porta;
    edRedeProxyUser.Text := proxy_user;
    edRedeProxySenha.Text := proxy_senha;
  end;
end;

procedure TFrmSat.cbxSalvarCFeCancChange(Sender: TObject);
begin
  ACBrSAT1.ConfigArquivos.SalvarCFeCanc := cbxSalvarCFeCanc.Checked;
end;

procedure TFrmSat.cbxSalvarCFeChange(Sender: TObject);
begin
  ACBrSAT1.ConfigArquivos.SalvarCFe := cbxSalvarCFe.Checked;
end;

procedure TFrmSat.cbxSalvarEnvioChange(Sender: TObject);
begin
  ACBrSAT1.ConfigArquivos.SalvarEnvio := cbxSalvarEnvio.Checked;
end;

procedure TFrmSat.cbxSepararPorCNPJChange(Sender: TObject);
begin
  ACBrSAT1.ConfigArquivos.SepararPorCNPJ := cbxSepararPorCNPJ.Checked;
end;

procedure TFrmSat.cbxSepararPorMESChange(Sender: TObject);
begin
  ACBrSAT1.ConfigArquivos.SepararPorMes := cbxSepararPorMES.Checked;
end;

procedure TFrmSat.FormShow(Sender: TObject);
var
  forma: string;
begin

  tsDadosSAT.TabVisible := False;
  tsDadosEmit.TabVisible := False;
  tsDadosSwHouse.TabVisible := False;
  tsRede.TabVisible := False;
  Impressao.TabVisible := False;

  with frmModulo do
  begin
    QrEmitente.Open;
    qrfilial.Open;
  end;
  // BitNFe.SetFocus;
  frmModulo.qrCupom.Close;
  frmModulo.qrCupom.SQL.Clear;
  frmModulo.qrCupom.SQL.Add
    ('select cpf_consumidor, nome_consumidor from cupom');
  frmModulo.qrCupom.SQL.Add
    ('where  codigo = (select  max(cupom.codigo) from cupom)');
  frmModulo.qrCupom.SQL.Add('and sat = 0');
  frmModulo.qrCupom.Open;

  if frmModulo.qrCupom.fieldbyname('cpf_consumidor').asstring <> '' then
  begin
    EditCPF.Text := frmModulo.qrCupom.fieldbyname('cpf_consumidor').asstring;
  end;

  if frmModulo.qrCupom.fieldbyname('nome_consumidor').asstring <> '' then
  begin
    EditNomeCL.Text := frmModulo.qrCupom.fieldbyname('nome_consumidor')
      .asstring;
  end;

  frmModulo.qrcupom_forma.Close;
  frmModulo.qrcupom_forma.SQL.Clear;
  frmModulo.qrcupom_forma.SQL.Add('select forma from cupom_forma');
  frmModulo.qrcupom_forma.SQL.Add
    ('where cod_cupom = (select  max(cupom.codigo) from cupom)');
  frmModulo.qrcupom_forma.Open;

  forma := frmModulo.qrcupom_forma.fieldbyname('forma').asstring;

  if forma = 'dinheiro' then
    RBindFPG.ItemIndex := 0;

  if forma = 'Cartão Crédito' then
  begin
    RBindFPG.ItemIndex := 2;
    RBOperadora.ItemIndex := 11;
  end;

  if forma = 'Cartão Débito' then
  begin
    RBindFPG.ItemIndex := 3;
    RBOperadora.ItemIndex := 11;
  end;
  with frmModulo do
  begin
    qrCupom.Close;
    qrCupom.SQL.Clear;
    qrCupom.SQL.Add('select sat from cupom');
    qrCupom.SQL.Add('where codigo = (select  max(cupom.codigo)from cupom)');
    qrCupom.Open;

    if qrCupom.fieldbyname('sat').AsInteger = 0 then
    begin
      // BitNFeClick(self);
    end
    else
      AdvGlowButton5.Visible := False;

  end;

  qr_cupom.Close;
  qr_cupom.SQL.Clear;
  qr_cupom.SQL.Add
    (' select numero, hora, valor_desconto, valor_acrescimo, valor_pago, valor_troco, cpf_consumidor, nome_consumidor, sat, codigo, data,(qtde_item)ITENS, (cpf_consumidor)CPF,');
  qr_cupom.SQL.Add('(valor_total)TOTAL, sat from cupom  where sat = 0');
  qr_cupom.SQL.Add('and data = (select  max(cupom.data) from cupom)');
  qr_cupom.Open;

  btfiltrarClick(Self);

  // Close;
end;

procedure TFrmSat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with frmModulo do
  begin
    QrEmitente.Open;
    qrfilial.Open;
  end;
end;

procedure TFrmSat.EditNomeCLKeyPress(Sender: TObject; var Key: Char);
begin
  BitNFe.SetFocus;
end;

procedure TFrmSat.SairExecute(Sender: TObject);
begin
  Close;
end;

initialization

// RLConsts.SetVersion(3,72,'B');
end.
