unit Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, DBAccess, Buttons,
  ExtCtrls, EditBtn, PageView, AdvEdit, AdvEdBtn, AdvDirectoryEdit, ExtDlgs,
  pngimage, Spin, wwdbedit, Wwdotdot, Wwdbcomb, XPMan, AdvReflectionImage,
  AdvGlowButton, acPNG, dxGDIPlusClasses, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, Uni, MemDS, inifiles;

type
  TfrmConfig = class(TForm)
//    qrconfig: TIBCQuery;
  //  dsconfig: TIBCDataSource;
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
    XPManifest1: TXPManifest;
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
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    PageSheet5: TPageSheet;
    edtnfe: TEdit;
    Label17: TLabel;
    mmEmailMsg: TMemo;
    Label36: TLabel;
    Label32: TLabel;
    edtSmtpPort: TEdit;
    edtSmtpHost: TEdit;
    Label31: TLabel;
    Label33: TLabel;
    edtSmtpUser: TEdit;
    Label34: TLabel;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    Label35: TLabel;
    cbEmailSSL: TCheckBox;
    cbEmailTSL: TCheckBox;
    edtSSL: TEdit;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
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
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure GravaConfiguracoesLocais;
    procedure LerConfiguracoes;
    procedure LerCaixa;
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

implementation

uses modulo, Funcoes, UFuncoes, principal, ZipNfe;

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
begin
  chkVendedor.Checked := LerParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', False);
  qrconfig.open;

  LerConfiguracoes;
end;

procedure TfrmConfig.AdvGlowButton1Click(Sender: TObject);
begin
  FrmZipNfe := TFrmZipNfe.Create(Self);
  FrmZipNfe.ShowModal;
end;

procedure TfrmConfig.AdvGlowButton2Click(Sender: TObject);
begin
  pageview1.ActivePageIndex := 4;
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
var
  StreamMemo: TMemoryStream;
  ini: TIniFile;
  IniFile: string;
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

  {:SAT}
  GravaINI(sConfiguracoes, 'SAT', 'Ativar_Sat', BoolToStr(CheckBox3.Checked));
  GravaINI(sConfiguracoes, 'SAT', 'Ativar_Cartao',
    BoolToStr(CheckBox4.Checked));

  { :Email }
  GravaINI(sConfiguracoes, 'email', 'CFe_Host', edtSmtpHost.Text);
  GravaINI(sConfiguracoes, 'email', 'CFe_Port', edtSmtpPort.Text);
  GravaINI(sConfiguracoes, 'email', 'CFe_User', edtSmtpUser.Text);
  GravaINI(sConfiguracoes, 'email', 'CFe_Pass', edtSmtpPass.Text);
  // GravaINI(sConfiguracoes,'email','CFe_Assunto',mmEmailMsg);
  GravaINI(sConfiguracoes, 'email', 'CFe_Padrao', edtEmailAssunto.Text);
  GravaINI(sConfiguracoes, 'email', 'CFe_ssl', BoolToStr(cbEmailSSL.Checked));
  IniFile := sConfiguracoes;
  ini := TIniFile.Create(IniFile);
  StreamMemo := TMemoryStream.Create;
  mmEmailMsg.Lines.SaveToStream(StreamMemo);
  StreamMemo.Seek(0, soFromBeginning);
  ini.WriteBinaryStream('Email', 'assunto', StreamMemo);
  StreamMemo.Free;


end;

procedure TfrmConfig.LerConfiguracoes;
var
  StreamMemo: TMemoryStream;
  ini: TIniFile;
  IniFile: string;
begin

  {: FOTO PRODUTOS}
  CheckHabilitaFotoProduto.Checked := StrToBool( LerINI(sConfiguracoes,'PDV','HAB_IMG', BoolToStr(false)) );
  EditImgProdutos.Text  := LerINI(sConfiguracoes,'PDV','CAMINHO_IMG',ExtractFilePath(Application.ExeName) + '\img\produtos\');

  {: LOGO MARCA}
  CheckLogoMarca.Checked := StrToBool( LerINI(sConfiguracoes,'PDV','HAB_LOGO', BoolToStr(false)) );
  EditLogoMarca.Text  := LerINI(sConfiguracoes,'PDV','CAMINHO_LOGO', '');

  { :SAT }
  CheckBox3.Checked := StrToBool(LerINI(sConfiguracoes, 'SAT', 'Ativar_Sat',
    BoolToStr(False)));
  CheckBox4.Checked := StrToBool(LerINI(sConfiguracoes, 'SAT', 'Ativar_cartao',
    BoolToStr(False)));

  { :Email }
  edtSmtpHost.Text := LerINI(sConfiguracoes, 'email', 'CFe_Host', '');
  edtSmtpPort.Text := LerINI(sConfiguracoes, 'email', 'CFe_Port', '');
  edtSmtpUser.Text := LerINI(sConfiguracoes, 'email', 'CFe_User', '');
  edtSmtpPass.Text := LerINI(sConfiguracoes, 'email', 'CFe_Pass', '');
  edtEmailAssunto.Text := LerINI(sConfiguracoes, 'email', 'CFe_Padrao', '');
  cbEmailSSL.Checked := StrToBool(LerINI(sConfiguracoes, 'email', 'CFe_ssl',
    BoolToStr(False)));
  IniFile := sConfiguracoes;
  ini := TIniFile.Create(IniFile);
  StreamMemo := TMemoryStream.Create;
  ini.ReadBinaryStream('Email', 'Assunto', StreamMemo);
  mmEmailMsg.Lines.LoadFromStream(StreamMemo);
  StreamMemo.Free;

  LerCaixa;

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
