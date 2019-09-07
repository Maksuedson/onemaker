unit Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, DBAccess, IBC, MemDS, Buttons,
  ExtCtrls, EditBtn, PageView, AdvEdit, AdvEdBtn, AdvDirectoryEdit, ExtDlgs,
  pngimage, Spin, wwdbedit, Wwdotdot, Wwdbcomb, XPMan, AdvReflectionImage,
  AdvGlowButton, ActnList, ZipMstr, Vcl.FileCtrl, System.IniFiles;

type
  TfrmConfig1 = class(TForm)
    qrconfig: TIBCQuery;
    dsconfig: TIBCDataSource;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageView1: TPageView;
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
    pnTitulo: TPanel;
    Image5: TImage;
    GroupBox8: TGroupBox;
    Label11: TLabel;
    Label9: TLabel;
    Combo_Tesouraria: TComboBox;
    Combo_Caixa: TComboBox;
    XPManifest1: TXPManifest;
    btn1: TAdvGlowButton;
    btn2: TAdvGlowButton;
    AdvReflectionImage1: TAdvReflectionImage;
    img1: TAdvReflectionImage;
    img2: TAdvReflectionImage;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button1: TButton;
    ActionList1: TActionList;
    Action1: TAction;
    CheckBox3: TCheckBox;
    GroupBox9: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Ed_Producao: TEdit;
    Cb_Senha: TCheckBox;
    PageSheet4: TPageSheet;
    Panel2: TPanel;
    mmEmailMsg: TMemo;
    Label36: TLabel;
    edtnfe: TEdit;
    Label17: TLabel;
    edtSSL: TEdit;
    cbEmailTSL: TCheckBox;
    cbEmailSSL: TCheckBox;
    edtEmailAssunto: TEdit;
    Label35: TLabel;
    edtSmtpUser: TEdit;
    Label33: TLabel;
    Label34: TLabel;
    edtSmtpPass: TEdit;
    Label32: TLabel;
    edtSmtpPort: TEdit;
    edtSmtpHost: TEdit;
    Label31: TLabel;
    Enviaemail: TDBAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    CheckBox4: TCheckBox;
    cbsat: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckHabilitaFotoProdutoClick(Sender: TObject);
    procedure EditLogoMarcaClickBtn(Sender: TObject);
    procedure CheckLogoMarcaClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure EnviaemailClick(Sender: TObject);
    procedure DBAdvGlowButton1Click(Sender: TObject);

  private
    { Private declarations }
    procedure GravaConfiguracoesLocais;
    procedure LerConfiguracoes;
    procedure LerCaixa;
  public
    { Public declarations }
  end;

var
  frmConfig1: TfrmConfig1;

implementation

uses modulo, Funcoes, UFuncoes, principal, Gerador, ZipNfe;

{$R *.dfm}

procedure TfrmConfig1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConfig1.BitBtn2Click(Sender: TObject);
begin
  if qrconfig.state = dsedit then
    qrconfig.cancel;
  close;
end;

procedure TfrmConfig1.FormShow(Sender: TObject);
begin
  chkVendedor.Checked := LerParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', False);
  qrconfig.open;

  LerConfiguracoes;
end;

procedure TfrmConfig1.BitBtn1Click(Sender: TObject);
begin
  GravarParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', chkVendedor.Checked);

  if qrconfig.state = dsedit then
    qrconfig.post;

  application.messagebox
    ('É necessário reiniciar o sistema para atualizar as novas configurações!',
    'Aviso', mb_ok + MB_ICONINFORMATION);

  GravaConfiguracoesLocais;

  close;

end;

procedure TfrmConfig1.CheckHabilitaFotoProdutoClick(Sender: TObject);
begin
  EditImgProdutos.Enabled := CheckHabilitaFotoProduto.Checked;
end;

procedure TfrmConfig1.GravaConfiguracoesLocais;
var
  StreamMemo: TMemoryStream;
  ini: TIniFile;
  IniFile: string;
begin
  { : FOTO PRODUTOS }
  GravaINI(sConfiguracoes, 'PDV', 'HAB_IMG',
    BoolToStr(CheckHabilitaFotoProduto.Checked));
  GravaINI(sConfiguracoes, 'PDV', 'CAMINHO_IMG', EditImgProdutos.Text);

  { : LOGO MARCA }
  GravaINI(sConfiguracoes, 'PDV', 'HAB_LOGO',
    BoolToStr(CheckLogoMarca.Checked));
  GravaINI(sConfiguracoes, 'PDV', 'CAMINHO_LOGO', EditLogoMarca.Text);

  { : DESABILITAR CONSUMIDOR }
  GravaINI(sConfiguracoes, 'PDV', 'DES_CONSUMIDOR',
    BoolToStr(CheckBox1.Checked));

  { : IMPRESSÃO CONCOMITANTE }
  GravaINI(sConfiguracoes, 'PDV', 'IMP_CONCOMITANTE',
    BoolToStr(CheckBox2.Checked));

  { : USUARIO }
  GravaINI(sConfiguracoes, 'LOGIN', 'USUARIO', Combo_Usuario.Text);
  GravaINI(sConfiguracoes, 'LOGIN', 'SENHA', Cript('C', EditSenhaUsuario.Text));

  { : CAIXA }
  GravaINI(sConfiguracoes, 'CAIXA', 'NUMERO', Combo_Caixa.Text);
  GravaINI(sConfiguracoes, 'CAIXA', 'TESOURARIA', Combo_Tesouraria.Text);

  { : SAT }
  GravaINI(sConfiguracoes, 'SAT', 'Ativar_Sat', BoolToStr(CheckBox3.Checked));
  GravaINI(sConfiguracoes, 'SAT', 'Ativar_Cartao',
    BoolToStr(CheckBox4.Checked));

  { : PRODUCAO }
  GravaINI(sConfiguracoes, 'PRODUCAO', 'caminho', Ed_Producao.Text);
  GravaINI(sConfiguracoes, 'PRODUCAO', 'Senha', BoolToStr(Cb_Senha.Checked));
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

procedure TfrmConfig1.LerConfiguracoes;
var
  StreamMemo: TMemoryStream;
  ini: TIniFile;
  IniFile: string;
begin

  { : FOTO PRODUTOS }
  CheckHabilitaFotoProduto.Checked :=
    StrToBool(LerINI(sConfiguracoes, 'PDV', 'HAB_IMG', BoolToStr(False)));
  EditImgProdutos.Text := LerINI(sConfiguracoes, 'PDV', 'CAMINHO_IMG',
    ExtractFilePath(application.ExeName) + '\img\produtos\');

  { : LOGO MARCA }
  CheckLogoMarca.Checked := StrToBool(LerINI(sConfiguracoes, 'PDV', 'HAB_LOGO',
    BoolToStr(False)));
  EditLogoMarca.Text := LerINI(sConfiguracoes, 'PDV', 'CAMINHO_LOGO', '');

  { : DESABILITAR CONSUMIDOR }
  CheckBox1.Checked := StrToBool(LerINI(sConfiguracoes, 'PDV', 'DES_CONSUMIDOR',
    BoolToStr(False)));

  { : IMPRESSÃO NÃO CONCOMITANTE }
  CheckBox2.Checked := StrToBool(LerINI(sConfiguracoes, 'PDV',
    'IMP_CONCOMITANTE', BoolToStr(False)));

  { :SAT }
  CheckBox3.Checked := StrToBool(LerINI(sConfiguracoes, 'SAT', 'Ativar_Sat',
    BoolToStr(False)));
  CheckBox4.Checked := StrToBool(LerINI(sConfiguracoes, 'SAT', 'Ativar_cartao',
    BoolToStr(False)));
//  cbsat.Checked := StrToBool(LerINI(sConfiguracoes, 'SAT', 'Compartilhamento',
//    BoolToStr(False)));

  { : PRODUCAO }
  Ed_Producao.Text := LerINI(sConfiguracoes, 'PRODUCAO', 'caminho', '');
  Cb_Senha.Checked := StrToBool(LerINI(sConfiguracoes, 'PRODUCAO', 'senha',
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

procedure TfrmConfig1.EditLogoMarcaClickBtn(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
    EditLogoMarca.Text := OpenPictureDialog1.FileName;
end;

procedure TfrmConfig1.EnviaemailClick(Sender: TObject);
begin
  FrmZipNfe := TFrmZipNfe.Create(Self);
  FrmZipNfe.ShowModal;
end;

procedure TfrmConfig1.CheckLogoMarcaClick(Sender: TObject);
begin
  EditLogoMarca.Enabled := CheckLogoMarca.Checked;
end;

procedure TfrmConfig1.DBAdvGlowButton1Click(Sender: TObject);
begin
  //
end;

procedure TfrmConfig1.LerCaixa;
begin

  frmmodulo.query.close;
  frmmodulo.query.sql.clear;
  frmmodulo.query.sql.add('select * from adm');
  frmmodulo.query.sql.add('where codigo < ' + QuotedStr('100'));
  frmmodulo.query.sql.add('order by codigo');
  frmmodulo.query.open;

  Combo_Usuario.Items.clear;

  Combo_Caixa.Items.clear;
  Combo_Tesouraria.Items.clear;
  Combo_Tesouraria.Items.add('DESATIVADO');

  while not frmmodulo.query.Eof do
  begin
    IF frmmodulo.query.Fieldbyname('INFO1').AsString <> 'DELPHOS_1' THEN
      Combo_Usuario.Items.add(frmmodulo.query.Fieldbyname('INFO1').AsString);

    Combo_Caixa.Items.add(frmmodulo.query.Fieldbyname('CODIGO').AsString);

    Combo_Tesouraria.Items.add(frmmodulo.query.Fieldbyname('CODIGO').AsString);
    frmmodulo.query.Next;
    application.ProcessMessages;
  end;

  Combo_Usuario.Text := LerINI(sConfiguracoes, 'LOGIN', 'USUARIO', '');
  EditSenhaUsuario.Text := Cript('D', LerINI(sConfiguracoes, 'LOGIN',
    'SENHA', ''));

  Combo_Tesouraria.Text := LerINI(sConfiguracoes, 'CAIXA', 'TESOURARIA', '');
  Combo_Caixa.Text := LerINI(sConfiguracoes, 'CAIXA', 'NUMERO', '99');
  iNumCaixa := frmPrincipal.IsInteger(Combo_Caixa.Text);

end;

procedure TfrmConfig1.btn1Click(Sender: TObject);
begin
  GravarParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', chkVendedor.Checked);

  if qrconfig.state = dsedit then
    qrconfig.post;

  application.messagebox
    ('É necessário reiniciar o sistema para atualizar as novas configurações!',
    'Aviso', mb_ok + MB_ICONINFORMATION);

  GravaConfiguracoesLocais;

  close;

end;

procedure TfrmConfig1.btn2Click(Sender: TObject);
begin
  if qrconfig.state = dsedit then
    qrconfig.cancel;
  close;

end;

procedure TfrmConfig1.Button1Click(Sender: TObject);
begin
  // frmImportacaoTXT.showmodal;
end;

procedure TfrmConfig1.Action1Execute(Sender: TObject);
begin
  if qrconfig.state = dsedit then
    qrconfig.cancel;
  close;
end;

end.
