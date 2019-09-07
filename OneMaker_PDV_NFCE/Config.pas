unit Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, ACBrNFeDANFEFRDM, ACBrNFeDANFEClass, ACBrNFeDANFEFR, ACBrBase,
  ACBrDFe, ACBrNFe, Data.DB, DBAccess, Uni, MemDS, Vcl.Dialogs, Vcl.ExtDlgs,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalc, Vcl.Samples.Spin, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls, dxGDIPlusClasses, AdvEdit, AdvEdBtn,
  AdvDirectoryEdit, Vcl.Mask, Vcl.DBCtrls, PageView, AdvGlowButton,Printers,
  system.IniFiles, pcnConversao, JvBaseDlg, JvSelectDirectory, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TfrmConfig = class(TForm)

    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    pageview1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    GroupBox4: TGroupBox;
    chkVendedor: TCheckBox;
    GroupBox5: TGroupBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    GroupBox3: TGroupBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    CheckHabilitaFotoProduto: TCheckBox;
    Label5: TLabel;
    EditImgProdutos: TAdvDirectoryEdit;
    GroupBox6: TGroupBox;
    Label7: TLabel;
    CheckLogoMarca: TCheckBox;
    EditLogoMarca: TAdvEditBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    GroupBox7: TGroupBox;
    Combo_Usuario: TComboBox;
    Label8: TLabel;
    EditSenhaUsuario: TEdit;
    Label10: TLabel;
    GroupBox8: TGroupBox;
    Label11: TLabel;
    Label9: TLabel;
    Combo_Tesouraria: TComboBox;
    Combo_Caixa: TComboBox;
    btn1: TAdvGlowButton;
    btn2: TAdvGlowButton;
    PageSheet4: TPageSheet;
    Image1: TImage;
    Panel2: TPanel;
    bttconf001: TAdvGlowButton;
    bttconf002: TAdvGlowButton;
    bttconf003: TAdvGlowButton;
    qrconfig: TUniQuery;
    dsconfig: TUniDataSource;
    btnNFCe: TAdvGlowButton;
    PageSheet5: TPageSheet;
    grp1: TGroupBox;
    pgc1: TPageControl;
    ts1: TTabSheet;
    grp2: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    lbl3: TLabel;
    btnGetCert: TSpeedButton;
    lbl4: TLabel;
    lbl5: TLabel;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    edtNumSerie: TEdit;
    edtIdToken: TEdit;
    edtNumeroToken: TEdit;
    ts2: TTabSheet;
    grp3: TGroupBox;
    btnPathSalvar: TSpeedButton;
    edtPathLogs: TEdit;
    ckSalvar: TCheckBox;
    rgTipoDanfe: TRadioGroup;
    rgFormaEmissao: TRadioGroup;
    ts3: TTabSheet;
    grp4: TGroupBox;
    lbl7: TLabel;
    ckVisualizar: TCheckBox;
    cbUF: TComboBox;
    rgTipoAmb: TRadioGroup;
    grpProxy: TGroupBox;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    ts4: TTabSheet;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    edtEmitCNPJ: TEdit;
    edtEmitIE: TEdit;
    edtEmitRazao: TEdit;
    edtEmitFantasia: TEdit;
    edtEmitFone: TEdit;
    edtEmitCEP: TEdit;
    edtEmitLogradouro: TEdit;
    edtEmitNumero: TEdit;
    edtEmitComp: TEdit;
    edtEmitBairro: TEdit;
    edtEmitCodCidade: TEdit;
    edtEmitCidade: TEdit;
    edtEmitUF: TEdit;
    ts5: TTabSheet;
    grp5: TGroupBox;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    edtSmtpHost: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    ACBrNFe1: TACBrNFe;
    dlgOpen1: TOpenDialog;
    OpenDialog1: TOpenDialog;
    TabSheet1: TTabSheet;
    edImpressora: TComboBox;
    Label13: TLabel;
    ACBRDANFENFCe: TACBrNFeDANFEFR;
    edDescEsta: TEdit;
    Label14: TLabel;
    edPreview: TCheckBox;
    edMargem: TSpinEdit;
    Label16: TLabel;
    GroupBox9: TGroupBox;
    Label15: TLabel;
    edMargDir: TcxCalcEdit;
    edMargEsq: TcxCalcEdit;
    Label17: TLabel;
    edMargSup: TcxCalcEdit;
    Label18: TLabel;
    Label19: TLabel;
    edMarginf: TcxCalcEdit;
    SpeedButton1: TSpeedButton;
    edSchemas: TEdit;
    Label20: TLabel;
    edSequencia: TEdit;
    Label21: TLabel;
    edSerie: TEdit;
    Label22: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckHabilitaFotoProdutoClick(Sender: TObject);
    procedure EditLogoMarcaClickBtn(Sender: TObject);
    procedure CheckLogoMarcaClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bttconf001Click(Sender: TObject);
    procedure bttconf002Click(Sender: TObject);
    procedure bttconf003Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure btnNFCeClick(Sender: TObject);
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure btnGetCertClick(Sender: TObject);
    procedure btnPathSalvarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure GravaConfiguracoesLocais;
    procedure LerConfiguracoes;
    procedure LerCaixa;

    procedure GravarConfiguracao;
    procedure LerConfiguracao;
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

implementation

uses modulo, Funcoes, UFuncoes, principal;

{$R *.dfm}

procedure TfrmConfig.FormActivate(Sender: TObject);
begin
  pageview1.ActivePageIndex := 3;
end;

procedure TfrmConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConfig.BitBtn2Click(Sender: TObject);
begin
  if qrconfig.state = dsedit then qrconfig.cancel;
  close;
end;

procedure TfrmConfig.FormShow(Sender: TObject);
var
  I:integer;
begin
  chkVendedor.Checked := LerParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', False);
  qrconfig.open;
  edImpressora.items.clear;
  for I := 1 to Printer.Printers.Count do begin
    edImpressora.items.add(Printer.Printers.Strings[I-1]);
  end;
  with frmModulo do begin
    qradic_mestre.open;
    qradic_mestre.Refresh;
    if qradic_mestre.Locate('codigo', '888888', [loCaseInsensitive]) then
      edSequencia.Text := qradic_mestre.FieldByName('sequencia').Text
    else
      edSequencia.Clear;
  end;
  LerConfiguracoes;
  LerConfiguracao;
end;

procedure TfrmConfig.AdvMetroButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmConfig.BitBtn1Click(Sender: TObject);
begin
  GravarParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', chkVendedor.Checked);

  if qrconfig.state = dsedit then
    qrconfig.post;

  application.messagebox('É necessário reiniciar o sistema para atualizar as novas configurações!',
    'Aviso', mb_ok+MB_ICONINFORMATION);

   GravaConfiguracoesLocais;

  Close;

end;

procedure TfrmConfig.CheckHabilitaFotoProdutoClick(Sender: TObject);
begin
  EditimgProdutos.Enabled := CheckHabilitaFotoProduto.Checked;
end;

procedure TfrmConfig.GravaConfiguracoesLocais;
begin
  {: FOTO PRODUTOS}
  GravaINI(sConfiguracoes,'PDV','HAB_IMG', BoolToStr(CheckHabilitaFotoProduto.Checked));
  GravaINI(sConfiguracoes,'PDV','CAMINHO_IMG', EditImgProdutos.Text);

  {: LOGO MARCA}
  GravaINI(sConfiguracoes,'PDV','HAB_LOGO', BoolToStr(CheckLogoMarca.Checked));
  GravaINI(sConfiguracoes,'PDV','CAMINHO_LOGO', EditLogoMarca.Text);

  {: USUARIO}
  GravaINI(sConfiguracoes,'LOGIN','USUARIO', Combo_Usuario.Text);
  GravaINI(sConfiguracoes,'LOGIN','SENHA', Cript('C',EditSenhaUsuario.Text));

  {: CAIXA}
  GravaINI(sConfiguracoes,'CAIXA','NUMERO', Combo_Caixa.Text);
  GravaINI(sConfiguracoes,'CAIXA','TESOURARIA', Combo_Tesouraria.Text);

end;

procedure TfrmConfig.GravarConfiguracao;
Var
  IniFile: String;
  Ini: TIniFile;
  StreamMemo: TMemoryStream;
begin
    if (edSchemas.Text = '') or not(DirectoryExists(edSchemas.Text)) then begin
      Application.MessageBox('A Pasta e Schemas informada no Config é inválida!','Atenção!',MB_ICONINFORMATION);
      Exit;
    end;

  IniFile := sConfiguracoes;

  Ini := TIniFile.Create(IniFile);
  try
    Ini.WriteString('Certificado', 'Caminho', edtCaminho.Text);
    Ini.WriteString('Certificado', 'Senha', edtSenha.Text);
    Ini.WriteString('Certificado', 'NumSerie', edtNumSerie.Text);
    Ini.WriteString('Certificado', 'IDToken', edtIdToken.Text);
    Ini.WriteString('Certificado', 'TokenNumero', edtNumeroToken.Text);

    Ini.WriteInteger('Geral', 'DANFE', rgTipoDanfe.ItemIndex);
    Ini.WriteInteger('Geral', 'FormaEmissao', rgFormaEmissao.ItemIndex);
    Ini.WriteBool('Geral', 'Salvar', ckSalvar.Checked);
    Ini.WriteString('Geral', 'PathSalvar', edtPathLogs.Text);
    Ini.WriteString('Geral', 'PathSchemas', edSchemas.Text);


    Ini.WriteString('WebService', 'UF', cbUF.Text);
    Ini.WriteInteger('WebService', 'Ambiente', rgTipoAmb.ItemIndex);
    Ini.WriteBool('WebService', 'Visualizar', ckVisualizar.Checked);

    Ini.WriteString('Proxy', 'Host', edtProxyHost.Text);
    Ini.WriteString('Proxy', 'Porta', edtProxyPorta.Text);
    Ini.WriteString('Proxy', 'User', edtProxyUser.Text);
    Ini.WriteString('Proxy', 'Pass', edtProxySenha.Text);

    Ini.WriteString('Emitente', 'CNPJ', edtEmitCNPJ.Text);
    Ini.WriteString('Emitente', 'IE', edtEmitIE.Text);
    Ini.WriteString('Emitente', 'RazaoSocial', edtEmitRazao.Text);
    Ini.WriteString('Emitente', 'Fantasia', edtEmitFantasia.Text);
    Ini.WriteString('Emitente', 'Fone', edtEmitFone.Text);
    Ini.WriteString('Emitente', 'CEP', edtEmitCEP.Text);
    Ini.WriteString('Emitente', 'Logradouro', edtEmitLogradouro.Text);
    Ini.WriteString('Emitente', 'Numero', edtEmitNumero.Text);
    Ini.WriteString('Emitente', 'Complemento', edtEmitComp.Text);
    Ini.WriteString('Emitente', 'Bairro', edtEmitBairro.Text);
    Ini.WriteString('Emitente', 'CodCidade', edtEmitCodCidade.Text);
    Ini.WriteString('Emitente', 'Cidade', edtEmitCidade.Text);
    Ini.WriteString('Emitente', 'UF', edtEmitUF.Text);
    Ini.WriteString('Emitente', 'Serie', edSerie.Text);

    Ini.WriteString('Email', 'Host', edtSmtpHost.Text);
    Ini.WriteString('Email', 'Port', edtSmtpPort.Text);
    Ini.WriteString('Email', 'User', edtSmtpUser.Text);
    Ini.WriteString('Email', 'Pass', edtSmtpPass.Text);
    Ini.WriteString('Email', 'Assunto', edtEmailAssunto.Text);
    Ini.WriteBool('Email', 'SSL', cbEmailSSL.Checked);

    Ini.WriteString('Impressao', 'Impressora', edImpressora.Text);
    Ini.WriteString('Impressao', 'Descricao via estabelecimento', edDescEsta.Text);
    Ini.WriteBool('Impressao', 'Preview', edPreview.Checked);
    Ini.WriteInteger('Impressao', 'Espessura Margem', edMargem.Value);
    Ini.WriteFloat('Impressao', 'Margem Esquerda', edMargEsq.Value);
    Ini.WriteFloat('Impressao', 'Margem Direita', edMargDir.Value);
    Ini.WriteFloat('Impressao', 'Margem Superior', edMargSup.Value);
    Ini.WriteFloat('Impressao', 'Margem Inferior', edMarginf.Value);

    StreamMemo := TMemoryStream.Create;
    mmEmailMsg.Lines.SaveToStream(StreamMemo);
    StreamMemo.Seek(0, soFromBeginning);
    Ini.WriteBinaryStream('Email', 'Mensagem', StreamMemo);
    StreamMemo.Free;
  finally
    Ini.Free;
  end;

end;

procedure TfrmConfig.LerConfiguracao;
Var
  IniFile: String;
  Ini: TIniFile;
  Ok: Boolean;
  StreamMemo: TMemoryStream;
begin
  IniFile := sConfiguracoes;

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
    edtIdToken.Text := Ini.ReadString('Certificado', 'IDToken', '');
    edtNumeroToken.Text := Ini.ReadString('Certificado', 'TokenNumero', '');
    rgFormaEmissao.ItemIndex := Ini.ReadInteger('Geral', 'FormaEmissao', 0);
    ckSalvar.Checked := Ini.ReadBool('Geral', 'Salvar', True);
    edtPathLogs.Text := Ini.ReadString('Geral', 'PathSalvar', '');
    edSchemas.Text := Ini.ReadString('Geral', 'PathSchemas', '');
    ACBrNFe1.Configuracoes.Geral.Salvar := ckSalvar.Checked;
    ACBrNFe1.Configuracoes.Arquivos.PathSalvar := edtPathLogs.Text;

    cbUF.ItemIndex := cbUF.Items.IndexOf(Ini.ReadString('WebService',
      'UF', 'SP'));
    rgTipoAmb.ItemIndex := Ini.ReadInteger('WebService', 'Ambiente', 0);
    ACBrNFe1.Configuracoes.WebServices.UF := cbUF.Text;
    ACBrNFe1.Configuracoes.WebServices.Ambiente :=
      StrToTpAmb(Ok, IntToStr(rgTipoAmb.ItemIndex + 1));
    ckVisualizar.Checked := Ini.ReadBool('WebService', 'Visualizar', False);
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

    edtEmitCNPJ.Text := Ini.ReadString('Emitente', 'CNPJ', '');
    edtEmitIE.Text := Ini.ReadString('Emitente', 'IE', '');
    edtEmitRazao.Text := Ini.ReadString('Emitente', 'RazaoSocial', '');
    edtEmitFantasia.Text := Ini.ReadString('Emitente', 'Fantasia', '');
    edtEmitFone.Text := Ini.ReadString('Emitente', 'Fone', '');
    edtEmitCEP.Text := Ini.ReadString('Emitente', 'CEP', '');
    edtEmitLogradouro.Text := Ini.ReadString('Emitente', 'Logradouro', '');
    edtEmitNumero.Text := Ini.ReadString('Emitente', 'Numero', '');
    edtEmitComp.Text := Ini.ReadString('Emitente', 'Complemento', '');
    edtEmitBairro.Text := Ini.ReadString('Emitente', 'Bairro', '');
    edtEmitCodCidade.Text := Ini.ReadString('Emitente', 'CodCidade', '');
    edtEmitCidade.Text := Ini.ReadString('Emitente', 'Cidade', '');
    edtEmitUF.Text := Ini.ReadString('Emitente', 'UF', '');
    edSerie.Text := Ini.ReadString('Emitente', 'Serie', '1');

    edtSmtpHost.Text := Ini.ReadString('Email', 'Host', '');
    edtSmtpPort.Text := Ini.ReadString('Email', 'Port', '');
    edtSmtpUser.Text := Ini.ReadString('Email', 'User', '');
    edtSmtpPass.Text := Ini.ReadString('Email', 'Pass', '');
    edtEmailAssunto.Text := Ini.ReadString('Email', 'Assunto', '');
    cbEmailSSL.Checked := Ini.ReadBool('Email', 'SSL', False);
    StreamMemo := TMemoryStream.Create;
    Ini.ReadBinaryStream('Email', 'Mensagem', StreamMemo);
    mmEmailMsg.Lines.LoadFromStream(StreamMemo);
    StreamMemo.Free;

    edImpressora.Text := Ini.ReadString('Impressao', 'Impressora', '');
    edDescEsta.Text := Ini.ReadString('Impressao', 'Descricao via estabelecimento', 'Via do Consumidor');
    edPreview.Checked := Ini.ReadBool('Impressao', 'Preview', True);
    edMargem.Value := Ini.ReadInteger('Impressao', 'Espessura Margem', 1);
    edMargEsq.Value := Ini.ReadFloat('Impressao', 'Margem Esquerda', 0.6);
    edMargDir.Value := Ini.ReadFloat('Impressao', 'Margem Direita', 0.51);
    edMargSup.Value := Ini.ReadFloat('Impressao', 'Margem Superior', 0.8);
    edMarginf.Value := Ini.ReadFloat('Impressao', 'Margem Inferior', 0.8);

  finally
    Ini.Free;
  end;


end;

procedure TfrmConfig.LerConfiguracoes;
begin

  {: FOTO PRODUTOS}
  CheckHabilitaFotoProduto.Checked := StrToBool( LerINI(sConfiguracoes,'PDV','HAB_IMG', BoolToStr(false)) );
  EditImgProdutos.Text  := LerINI(sConfiguracoes,'PDV','CAMINHO_IMG',ExtractFilePath(Application.ExeName) + '\img\produtos\');

  {: LOGO MARCA}
  CheckLogoMarca.Checked := StrToBool( LerINI(sConfiguracoes,'PDV','HAB_LOGO', BoolToStr(false)) );
  EditLogoMarca.Text  := LerINI(sConfiguracoes,'PDV','CAMINHO_LOGO', '');

  LerCaixa;

end;

procedure TfrmConfig.sbtnCaminhoCertClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Certificado';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter :=
    'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtCaminho.Text := OpenDialog1.FileName;
  end;
end;

procedure TfrmConfig.SpeedButton1Click(Sender: TObject);
var
  Dir: string;
begin
  if length(edSchemas.Text) <= 0 then
    Dir := ExtractFileDir(application.ExeName)
  else
    Dir := edSchemas.Text;
   //PathClick(edtPathLogs);
  if frmPrincipal.DIretorio.Execute then
    edSchemas.Text := frmPrincipal.DIretorio.Directory;
end;

procedure TfrmConfig.EditLogoMarcaClickBtn(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
    EditLogoMarca.Text := OpenPictureDialog1.FileName;
end;

procedure TfrmConfig.CheckLogoMarcaClick(Sender: TObject);
begin
  EditLogoMarca.Enabled := CheckLogoMarca.Checked;
end;

procedure TfrmConfig.LerCaixa;
begin

   frmmodulo.query.close;
   frmmodulo.query.sql.clear;
   frmmodulo.query.sql.add('select * from adm');
   frmmodulo.query.sql.add('where codigo < ' + QuotedStr('100'));
   frmmodulo.query.sql.add('order by codigo');
   frmmodulo.query.open;

   Combo_Usuario.Items.Clear;

   Combo_Caixa.Items.Clear;
   Combo_Tesouraria.Items.Clear;
   Combo_Tesouraria.Items.Add('DESATIVADO');

   while not frmmodulo.query.Eof do
   begin
     IF frmmodulo.query.Fieldbyname('INFO1').AsString <> 'DELPHOS_1' THEN
     Combo_Usuario.Items.Add(frmmodulo.query.Fieldbyname('INFO1').AsString);

     Combo_Caixa.Items.Add(frmmodulo.query.Fieldbyname('CODIGO').AsString);

     Combo_Tesouraria.Items.Add(frmmodulo.query.Fieldbyname('CODIGO').AsString);
     frmmodulo.query.Next;
     Application.ProcessMessages;
   end;

  Combo_Usuario.Text :=  LerIni(sConfiguracoes,'LOGIN','USUARIO', '');
  EditSenhaUsuario.Text := Cript('D',LerIni(sConfiguracoes,'LOGIN','SENHA', ''));

  Combo_Tesouraria.Text := LerIni(sConfiguracoes,'CAIXA','TESOURARIA', '');
  Combo_Caixa.Text := LerIni(sConfiguracoes,'CAIXA','NUMERO', '99') ;
  iNumCaixa := frmPrincipal.IsInteger(Combo_Caixa.Text);


end;

procedure TfrmConfig.btn1Click(Sender: TObject);
begin
  if Trim(edtEmitCNPJ.Text) = '' then begin
    Application.MessageBox('Informe o CNPJ do Emitente','Atenção!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := ts4;
    edtEmitCNPJ.SetFocus;
    exit;
  end;
  if Trim(edtEmitRazao.Text) = '' then begin
    Application.MessageBox('Informe a Razão do Emitente','Atenção!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := ts4;
    edtEmitRazao.SetFocus;
    exit;
  end;
  if Trim(edtEmitFantasia.Text) = '' then begin
    Application.MessageBox('Informe o Nome Fantasia  do Emitente','Atenção!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := ts4;
    edtEmitFantasia.SetFocus;
    exit;
  end;
  if Trim(edtEmitCodCidade.Text) = '' then begin
    Application.MessageBox('Informe o Código da Cidade do Emitente','Atenção!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := ts4;
    edtEmitCodCidade.SetFocus;
    exit;
  end;
  if Trim(edtEmitCodCidade.Text) = '' then begin
    Application.MessageBox('Informe o Código da Cidade do Emitente','Atenção!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := ts4;
    edtEmitCodCidade.SetFocus;
    exit;
  end;
  if Trim(edtEmitCidade.Text) = '' then begin
    Application.MessageBox('Informe o a Cidade do Emitente','Atenção!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := ts4;
    edtEmitCidade.SetFocus;
    exit;
  end;

  if Trim(edtNumSerie.Text) = '' then begin
    Application.MessageBox('Informe o Número de Série do Certificado clicando no Botão na frente do campos','Atenção!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := ts1;
    edtNumSerie.SetFocus;
    exit;
  end;

  if (rgTipoAmb.ItemIndex = 0) and  (Trim(edtNumeroToken.Text) = '') then begin
    Application.MessageBox('Informe o Número CSC para emissão em Produção','Atenção!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := ts1;
    edtNumeroToken.SetFocus;
    exit;
  end;

  if (rgTipoAmb.ItemIndex = 0) and  (Trim(edtIdToken.Text) = '') then begin
    Application.MessageBox('Informe o ID CSC para emissão em Produção','Atenção!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := ts1;
    edtIdToken.SetFocus;
    exit;
  end;

  if (ckSalvar.Checked) and  (Trim(edtPathLogs.Text) = '') then begin
    Application.MessageBox('Informe o Caminho para salvar os XMLs','Atenção!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := ts2;
    edtPathLogs.SetFocus;
    exit;
  end;

  if (ckSalvar.Checked) and  not(DirectoryExists(Trim(edtPathLogs.Text))) then begin
    Application.MessageBox('Informe um Caminho valido para salvar os XMLs','Atenção!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := ts2;
    edtPathLogs.SetFocus;
    exit;
  end;

  if (Trim(edSchemas.Text) = '') or not(DirectoryExists(Trim(edSchemas.Text))) then begin
    Application.MessageBox('Informe um Caminho valido de localização do Schemas','Atenção!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := ts2;
    edSchemas.SetFocus;
    exit;
  end;


  if Trim(edtEmitUF.Text) = '' then begin
    Application.MessageBox('Informe o UF do Emitente','Atenção!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := ts4;
    edtEmitUF.SetFocus;
    exit;
  end;

  if Trim(edSequencia.Text) = '' then begin
    Application.MessageBox('Informe a Sequencia da NFC-e','Atenção!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := ts4;
    edSequencia.SetFocus;
    exit;
  end;
  if Trim(edSerie.Text) = '' then begin
    Application.MessageBox('Informe a Série da NFC-e','Atenção!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := ts4;
    edSerie.SetFocus;
    exit;
  end;

  try
    StrToInt(edSequencia.Text);
  except
    Application.MessageBox('Informe uma Sequencia da NFC-e Válida','Atenção!',MB_ICONINFORMATION);
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := ts4;
    edSequencia.SetFocus;
    exit;
  end;
  if edImpressora.Text = '' then begin
    pageview1.ActivePage := PageSheet5;
    pgc1.ActivePage := TabSheet1;
    edImpressora.SetFocus;
    exit;
  end;

  GravarConfiguracao;
  LerConfiguracao;

  with frmModulo do begin
    qradic_mestre.open;
    qradic_mestre.Refresh;
    if qradic_mestre.Locate('codigo', '888888', [loCaseInsensitive]) then begin
      if qradic_mestre.FIELDBYNAME('sequencia').AsInteger <> StrToInt(edSequencia.Text) then begin
        qradic_mestre.Edit;
        qradic_mestre.FIELDBYNAME('sequencia').AsInteger := StrToInt(edSequencia.Text);
        qradic_mestre.Post;
      end;
      Conexao.Commit;
    end else begin
      qradic_mestre.Insert;
      qradic_mestre.FIELDBYNAME('CODIGO').AsString := '888888';
      qradic_mestre.FIELDBYNAME('TABELA').AsString := 'Sequencia da NFC-e';
      qradic_mestre.FIELDBYNAME('sequencia').AsInteger := StrToInt(edSequencia.Text);
      qradic_mestre.Post;
    end;
  end;



  GravarParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', chkVendedor.Checked);

  if qrconfig.state = dsedit then
    qrconfig.post;

  application.messagebox('É necessário reiniciar o sistema para atualizar as novas configurações!',
    'Aviso', mb_ok+MB_ICONINFORMATION);

   GravaConfiguracoesLocais;

  Close;

end;

procedure TfrmConfig.btn2Click(Sender: TObject);
begin
  if qrconfig.state = dsedit then qrconfig.cancel;
  close;

end;

procedure TfrmConfig.btnGetCertClick(Sender: TObject);
begin
//{$IFNDEF ACBrNFeOpenSSL}
  edtNumSerie.Text := ACBrNFe1.SSL.SelecionarCertificado;//ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
//{$ENDIF}
end;

procedure TfrmConfig.btnNFCeClick(Sender: TObject);
begin
  pageview1.ActivePageIndex := 4;
end;

procedure TfrmConfig.btnPathSalvarClick(Sender: TObject);
var
  Dir: string;
begin
  if length(edtPathLogs.Text) <= 0 then
    Dir := ExtractFileDir(application.ExeName)
  else
    Dir := edtPathLogs.Text;
   //PathClick(edtPathLogs);
  if frmPrincipal.DIretorio.Execute then
    edtPathLogs.Text := frmPrincipal.DIretorio.Directory;
end;

procedure TfrmConfig.bttconf001Click(Sender: TObject);
begin
  pageview1.ActivePageIndex := 0;
end;

procedure TfrmConfig.bttconf002Click(Sender: TObject);
begin
  pageview1.ActivePageIndex := 1;
end;

procedure TfrmConfig.bttconf003Click(Sender: TObject);
begin
  pageview1.ActivePageIndex := 2;
end;

end.
