unit Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, XPMan,
  ExtCtrls, Mask, RzEdit, RzBtnEdt, AdvShapeButton, IniFiles, ZConnection,
  PageView, ZAbstractConnection, sSkinManager, dxBevel,
  AdvGlowButton, acPNG, ACBrBase, ACBrEnterTab, Vcl.Imaging.jpeg, JvExMask,
  JvToolEdit;

type
  Tfrmprincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    XPManifest1: TXPManifest;
    base: TZConnection;
    dlgOpen1: TOpenDialog;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    pnl1: TPanel;
    rservidor: TRadioButton;
    restacao: TRadioButton;
    ed_servidor: TEdit;
    ed_base: TRzButtonEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    AdvShapeButton1: TAdvShapeButton;
    lbl1: TLabel;
    lbl4: TLabel;
    chk_ver_deb: TCheckBox;
    chk_alt_cus: TCheckBox;
    chk_des_cli: TCheckBox;
    chk_bus_pre: TCheckBox;
    chk_ver_dad: TCheckBox;
    ed_aju_usu: TEdit;
    lbl6: TLabel;
    chk_lan_tot: TCheckBox;
    chk_usa_nfe: TCheckBox;
    ed_produtos: TJvDirectoryEdit;
    ed_clientes: TJvDirectoryEdit;
    gbBlock: TGroupBox;
    MaskEdit1: TMaskEdit;
    lblblock: TLabel;
    cbBlock: TCheckBox;
    PageSheet3: TPageSheet;
    rFirebird: TRadioButton;
    rMySQL: TRadioButton;
    Label5: TLabel;
    dxBevel1: TdxBevel;
    Label6: TLabel;
    ed_senha: TEdit;
    Label7: TLabel;
    ed_usuario: TEdit;
    Label8: TLabel;
    ed_porta: TEdit;
    Image2: TImage;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    ACBrEnterTab1: TACBrEnterTab;
    PageView2: TPageView;
    PageSheet5: TPageSheet;
    PageSheet6: TPageSheet;
    PageSheet7: TPageSheet;
    Label31: TLabel;
    edtSmtpHost: TEdit;
    Label32: TLabel;
    edtSmtpPort: TEdit;
    Label36: TLabel;
    mmEmailMsg: TMemo;
    Label34: TLabel;
    edtSmtpPass: TEdit;
    edtSmtpUser: TEdit;
    Label33: TLabel;
    Label35: TLabel;
    edtEmailAssunto: TEdit;
    Label3: TLabel;
    edtFinanceiro: TEdit;
    cbEmailSSL: TCheckBox;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Memo1: TMemo;
    Label12: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Edit5: TEdit;
    Label15: TLabel;
    Edit7: TEdit;
    CheckBox1: TCheckBox;
    Label17: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Memo2: TMemo;
    Label20: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Edit12: TEdit;
    Label23: TLabel;
    Edit14: TEdit;
    CheckBox2: TCheckBox;
    PageSheet8: TPageSheet;
    Label25: TLabel;
    Edit15: TEdit;
    Edit16: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    Memo3: TMemo;
    Label28: TLabel;
    Edit17: TEdit;
    Edit18: TEdit;
    Label29: TLabel;
    Label30: TLabel;
    Edit19: TEdit;
    Label37: TLabel;
    Edit21: TEdit;
    CheckBox3: TCheckBox;
    Image1: TImage;
    Panel1: TPanel;
    Panel3: TPanel;
    bt_config0001: TAdvGlowButton;
    bt_config0002: TAdvGlowButton;
    bt_config0003: TAdvGlowButton;
    rmov_cartao: TCheckBox;
    cb_inf_sangria: TCheckBox;
    Panel4: TPanel;
    Panel5: TPanel;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure rservidorClick(Sender: TObject);
    procedure restacaoClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure GravaIni(sessao, chave, aTexto, caminho: string);
    function LeInistr(arquivo, sessao, chave, padrao: string): string;
    procedure FormCreate(Sender: TObject);
    procedure ed_baseButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure cbBlockClick(Sender: TObject);
    procedure rMySQLClick(Sender: TObject);
    procedure rFirebirdClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure ed_portaExit(Sender: TObject);
    procedure bt_config0001Click(Sender: TObject);
    procedure bt_config0002Click(Sender: TObject);
    procedure bt_config0003Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
  private
    { Private declarations }
    function EncryptSTR(Const InString: String;
      StartKey, MultKey, AddKey: Integer): String;
    function DecryptSTR(const InString: string;
      StartKey, MultKey, AddKey: Integer): string;
  public
    { Public declarations }
  end;

var
  frmprincipal: Tfrmprincipal;
  bContinua: boolean;
  s: string[255];
  c: array [0 .. 255] of Byte absolute s;

const
  StKey = 7848567;
  MtKey = 1741378;
  AdKey = 6574985;

implementation

{$R *.DFM}

function Tfrmprincipal.LeInistr(arquivo, sessao, chave, padrao: string): string;

var
  ArqIni: TIniFile;
begin
  ArqIni := TIniFile.Create(arquivo);
  try
    RESULT := ArqIni.ReadString(sessao, chave, padrao);
  finally
    ArqIni.Free;
  end;
end;

procedure Tfrmprincipal.GravaIni(sessao, chave, aTexto, caminho: string);

var
  ArqIni: TIniFile;
begin
  ArqIni := TIniFile.Create(caminho);
  try
    ArqIni.WriteString(sessao, chave, aTexto);
  finally
    ArqIni.Free;
  end;
end;

procedure Tfrmprincipal.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmprincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not bContinua then
  begin
    if application.messagebox
      ('Tem certeza que deseja abandonar o processo de configuração da ' +
      'instalação do sistema?', 'Atenção', mb_yesno + mb_iconwarning +
      MB_DEFBUTTON2) = idNo then
      abort;
  end
  else
  begin
    Action := cafree;
  end;
end;

procedure Tfrmprincipal.Button1Click(Sender: TObject);

var
  txt: textfile;
  caminho, entrada, msg: string;
  StreamMemo: TMemoryStream;
begin
  // mudanca pra salvar na pasta dll
  caminho := ExtractFilePath(ParamStr(0)) + 'ini\com.ini';
  // imagens
  GravaIni('IMAGENS', 'img-001', ed_produtos.Text, caminho);
  GravaIni('IMAGENS', 'img-002', ed_clientes.Text, caminho);

  if rFirebird.Checked then
  begin
    GravaIni('BANCO', '999-001', ed_base.Text, caminho);
    GravaIni('BANCO', '999-002', ed_servidor.Text, caminho);
    GravaIni('BANCO', '999-003', ed_base.Text, caminho);
    GravaIni('BANCO', 'tipo', 'Firebird', caminho);
  end;

  if rMySQL.Checked then
  begin
    GravaIni('BANCO', '999-001', 'BASE', caminho);
    GravaIni('BANCO', '999-002', ed_servidor.Text, caminho);
    GravaIni('BANCO', '999-003', 'BASE', caminho);
    GravaIni('BANCO', 'usuario', ed_usuario.Text, caminho);
    GravaIni('BANCO', 'senha', ed_senha.Text, caminho);
    GravaIni('BANCO', 'porta', ed_porta.Text, caminho);
    GravaIni('BANCO', 'tipo', 'MySQL', caminho);

  end;

  if chk_ver_deb.Checked then
    GravaIni('OPERACIONAIS', 'ver_deb', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'ver_deb', '2', caminho);
  if chk_alt_cus.Checked then
    GravaIni('OPERACIONAIS', 'alt_cus', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'alt_cus', '2', caminho);
  if chk_des_cli.Checked then
    GravaIni('OPERACIONAIS', 'des_cli', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'des_cli', '2', caminho);
  if chk_bus_pre.Checked then
    GravaIni('OPERACIONAIS', 'bus-pre', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'bus-pre', '2', caminho);
  if chk_ver_dad.Checked then
    GravaIni('OPERACIONAIS', 'ver-dad', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'ver-dad', '2', caminho);
  if chk_usa_nfe.Checked then
    GravaIni('OPERACIONAIS', 'usa-nfe', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'usa-nfe', '2', caminho);
  if chk_lan_tot.Checked then
    GravaIni('OPERACIONAIS', 'lan_tot', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'lan_tot', '2', caminho);
  GravaIni('OPERACIONAIS', 'aju-usu', ed_aju_usu.Text, caminho);
  if cbBlock.Checked then
  begin
    GravaIni('OPERACIONAIS', 'blk-app', '1', caminho);
    GravaIni('OPERACIONAIS', 'tmp-blk', MaskEdit1.Text, caminho);
  end
  else
  begin
    GravaIni('OPERACIONAIS', 'blk-app', '2', caminho);
  end;

  GravaIni('Email', 'Host', edtSmtpHost.Text, caminho);
  GravaIni('Email', 'Port', edtSmtpPort.Text, caminho);
  GravaIni('Email', 'User', edtSmtpUser.Text, caminho);
  GravaIni('Email', 'Pass', edtSmtpPass.Text, caminho);
  GravaIni('Email', 'Assunto', edtEmailAssunto.Text, caminho);
  GravaIni('Email', 'PadraoFinanceiro', edtFinanceiro.Text, caminho);

  if cbEmailSSL.Checked then
  begin
    GravaIni('Email', 'SSL', 'S', caminho);
  end
  else
    GravaIni('Email', 'SSL', 'N', caminho);
  msg := mmEmailMsg.Lines.Text;
  GravaIni('Email', 'Mensagem', msg, caminho);

  bContinua := true;
  close;
end;

procedure Tfrmprincipal.rservidorClick(Sender: TObject);
begin
  ed_servidor.Text := 'LOCALHOST';
  ed_servidor.Enabled := False;
  if rMySQL.Checked then
    ed_usuario.SetFocus;
  if rFirebird.Checked then
    ed_base.SetFocus
end;

procedure Tfrmprincipal.restacaoClick(Sender: TObject);
begin
  ed_servidor.Enabled := true;
  ed_servidor.SetFocus;
  if rMySQL.Checked then
    ed_base.Text := 'BASE';
  if rFirebird.Checked then
    ed_base.Text := 'C:\OneMaker\SERVER\BD\BASE.FDB';
end;

procedure Tfrmprincipal.rFirebirdClick(Sender: TObject);
begin
  ed_base.Text := 'C:\OneMaker\SERVER\BD\BASE.FDB';
  ed_base.Enabled := true;
  ed_usuario.Enabled := False;
  ed_senha.Enabled := False;
  ed_porta.Enabled := False;

  ed_usuario.Text := '';
  ed_senha.Text := '';
  ed_porta.Text := '';
end;

procedure Tfrmprincipal.rMySQLClick(Sender: TObject);
begin
  ed_base.Text := 'BASE';
  ed_base.Enabled := False;

  ed_usuario.Enabled := true;
  ed_senha.Enabled := true;
  ed_porta.Enabled := true;

  if restacao.Checked then
    ed_servidor.SetFocus
  else
    ed_usuario.SetFocus
end;

procedure Tfrmprincipal.AdvGlowButton1Click(Sender: TObject);
begin
  if rMySQL.Checked then
  begin
    if (ed_servidor.Text = '') or (ed_base.Text = '') or (ed_usuario.Text = '')
      or (ed_senha.Text = '') or (ed_porta.Text = '') then
    begin
      application.messagebox
        ('Houve falha ao tentar se conectar ao banco de dados! Favor verificar as configurações!',
        'Atenção', mb_ok + mb_Iconerror);
      Exit;
    end;

    try
      base.Disconnect;
      base.Protocol := 'mysql-5';
      base.Port := StrToInt(ed_porta.Text);
      base.LibraryLocation := 'libmysql';
      base.Database := ed_base.Text;
      base.HostName := ed_servidor.Text;
      base.User := ed_usuario.Text;
      base.Password := ed_senha.Text;
      base.Connect;
      application.messagebox('Conectado com sucesso!', 'Atenção',
        mb_ok + mb_IconInformation { mb_IconExclamation } );
    except
      application.messagebox
        ('Houve falha ao tentar se conectar ao banco de dados! Favor verificar o caminho informado!',
        'Atenção', mb_ok + mb_Iconerror);
    end;
  end;

  if rFirebird.Checked then
  begin
    try
      base.Disconnect;
      base.Database := ed_base.Text;
      base.HostName := ed_servidor.Text;
      base.User := 'SYSDBA';
      base.Password := 'masterkey';
      base.Connect;
      application.messagebox('Conectado com sucesso!', 'Atenção',
        mb_ok + mb_IconInformation { mb_IconExclamation } );
    except
      application.messagebox
        ('Houve falha ao tentar se conectar ao banco de dados! Favor verificar o caminho informado!',
        'Atenção', mb_ok + mb_Iconerror);
    end;
  end;

end;

procedure Tfrmprincipal.AdvGlowButton2Click(Sender: TObject);

var
  txt: textfile;
  caminho, entrada, msg: string;
  StreamMemo: TMemoryStream;
  i: Integer;
begin
  // mudanca pra salvar na pasta dll
  caminho := ExtractFilePath(ParamStr(0)) + 'ini\com.ini';
  // caminho := ExtractFilePath(ParamStr(0)) + 'com.ini';
  // imagens
  GravaIni('IMAGENS', 'img-001', ed_produtos.Text, caminho);
  GravaIni('IMAGENS', 'img-002', ed_clientes.Text, caminho);

  if rFirebird.Checked then
  begin
    GravaIni('BANCO', '999-001', ed_base.Text, caminho);
    GravaIni('BANCO', '999-002', ed_servidor.Text, caminho);
    GravaIni('BANCO', '999-003', ed_base.Text, caminho);
    GravaIni('BANCO', 'tipo', 'Firebird', caminho);
  end;

  if rMySQL.Checked then
  begin
    GravaIni('BANCO', '999-001', 'BASE', caminho);
    GravaIni('BANCO', '999-002', ed_servidor.Text, caminho);
    GravaIni('BANCO', '999-003', 'BASE', caminho);
    GravaIni('BANCO', 'usuario', ed_usuario.Text, caminho);

    // encripta senha

    s := ed_senha.Text;

    For i := 1 to ord(s[0]) do

      c[i] := 23 Xor c[i];

    ed_senha.Text := s;

    GravaIni('BANCO', 'senha', ed_senha.Text, caminho);

    GravaIni('BANCO', 'porta', ed_porta.Text, caminho);
    GravaIni('BANCO', 'tipo', 'MySQL', caminho);

  end;

  if chk_ver_deb.Checked then
    GravaIni('OPERACIONAIS', 'ver_deb', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'ver_deb', '2', caminho);
  if chk_alt_cus.Checked then
    GravaIni('OPERACIONAIS', 'alt_cus', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'alt_cus', '2', caminho);
  if chk_des_cli.Checked then
    GravaIni('OPERACIONAIS', 'des_cli', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'des_cli', '2', caminho);
  if chk_bus_pre.Checked then
    GravaIni('OPERACIONAIS', 'bus-pre', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'bus-pre', '2', caminho);
  if chk_ver_dad.Checked then
    GravaIni('OPERACIONAIS', 'ver-dad', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'ver-dad', '2', caminho);
  if chk_usa_nfe.Checked then
    GravaIni('OPERACIONAIS', 'usa-nfe', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'usa-nfe', '2', caminho);
  if chk_lan_tot.Checked then
    GravaIni('OPERACIONAIS', 'lan_tot', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'lan_tot', '2', caminho);
  GravaIni('OPERACIONAIS', 'aju-usu', ed_aju_usu.Text, caminho);

  if cbBlock.Checked then
  begin
    GravaIni('OPERACIONAIS', 'blk-app', '1', caminho);
    GravaIni('OPERACIONAIS', 'tmp-blk', MaskEdit1.Text, caminho);
  end
  else
  begin
    GravaIni('OPERACIONAIS', 'blk-app', '2', caminho);
  end;

  if rmov_cartao.Checked then
    GravaIni('OPERACIONAIS', 'lan_mcc', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'lan_mcc', '2', caminho);

  if cb_inf_sangria.Checked then
    GravaIni('OPERACIONAIS', 'inf-san', '1', caminho)
  else
    GravaIni('OPERACIONAIS', 'inf-san', '2', caminho);

    // mudancas email para cada operacao

    //NFE

  GravaIni('Email', 'Host', edtSmtpHost.Text, caminho);
  GravaIni('Email', 'Port', edtSmtpPort.Text, caminho);
  GravaIni('Email', 'User', edtSmtpUser.Text, caminho);
  GravaIni('Email', 'Pass', edtSmtpPass.Text, caminho);
  GravaIni('Email', 'Assunto', edtEmailAssunto.Text, caminho);
  GravaIni('Email', 'PadraoNFe', edtFinanceiro.Text, caminho);

  if cbEmailSSL.Checked then
  begin
    GravaIni('Email', 'SSL', 'S', caminho);
  end
  else
    GravaIni('Email', 'SSL', 'N', caminho);
  msg := mmEmailMsg.Lines.Text;
  GravaIni('Email', 'Mensagem', msg, caminho);

   //Orcamentos

  GravaIni('Email', 'HostOrc', Edit1.Text, caminho);
  GravaIni('Email', 'PortOrc', Edit2.Text, caminho);
  GravaIni('Email', 'UserOrc', Edit4.Text, caminho);
  GravaIni('Email', 'PassOrc', Edit3.Text, caminho);
  GravaIni('Email', 'AssuntoOrc', Edit5.Text, caminho);
  GravaIni('Email', 'PadraoOrc', Edit7.Text, caminho);

  if CheckBox1.Checked then
  begin
    GravaIni('Email', 'SSLOrc', 'S', caminho);
  end
  else
    GravaIni('Email', 'SSLOrc', 'N', caminho);
  msg := Memo1.Lines.Text;
  GravaIni('Email', 'MensagemOrc', msg, caminho);

  //Cotacoes

  GravaIni('Email', 'HostCot', Edit8.Text, caminho);
  GravaIni('Email', 'PortCot', Edit9.Text, caminho);
  GravaIni('Email', 'UserCot', Edit11.Text, caminho);
  GravaIni('Email', 'PassCot', Edit10.Text, caminho);
  GravaIni('Email', 'AssuntCot', Edit12.Text, caminho);
  GravaIni('Email', 'PadraoCot', Edit14.Text, caminho);

  if CheckBox2.Checked then
  begin
    GravaIni('Email', 'SSLCot', 'S', caminho);
  end
  else
    GravaIni('Email', 'SSLCot', 'N', caminho);
  msg := Memo2.Lines.Text;
  GravaIni('Email', 'MensagemCot', msg, caminho);

  //Financeiro

  GravaIni('Email', 'HostFin', Edit15.Text, caminho);
  GravaIni('Email', 'PortFin', Edit16.Text, caminho);
  GravaIni('Email', 'UserFin', Edit18.Text, caminho);
  GravaIni('Email', 'PassFin', Edit17.Text, caminho);
  GravaIni('Email', 'AssuntFin', Edit19.Text, caminho);
  GravaIni('Email', 'PadraoFin', Edit21.Text, caminho);

  if CheckBox3.Checked then
  begin
    GravaIni('Email', 'SSLFin', 'S', caminho);
  end
  else
    GravaIni('Email', 'SSLFin', 'N', caminho);
  msg := Memo3.Lines.Text;
  GravaIni('Email', 'MensagemFin', msg, caminho);

  // final
  bContinua := true;
  close;
end;

procedure Tfrmprincipal.AdvGlowButton3Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmprincipal.AdvGlowButton4Click(Sender: TObject);
begin
  PageView2.ActivePageIndex := 0;
end;

procedure Tfrmprincipal.AdvGlowButton5Click(Sender: TObject);
begin
  PageView2.ActivePageIndex := 1;
end;

procedure Tfrmprincipal.AdvGlowButton6Click(Sender: TObject);
begin
  PageView2.ActivePageIndex := 2;
end;

procedure Tfrmprincipal.AdvGlowButton7Click(Sender: TObject);
begin
  PageView2.ActivePageIndex := 3;
end;

procedure Tfrmprincipal.btn1Click(Sender: TObject);
begin

  if rMySQL.Checked then
  begin
    if (ed_servidor.Text = '') or (ed_base.Text = '') or (ed_usuario.Text = '')
      or (ed_senha.Text = '') or (ed_porta.Text = '') then
    begin
      application.messagebox
        ('Houve falha ao tentar se conectar ao banco de dados! Favor verificar as configurações!',
        'Atenção', mb_ok + mb_Iconerror);
      Exit;
    end;

    try
      base.Disconnect;
      base.Protocol := 'mysql-5';
      base.Port := StrToInt(ed_porta.Text);
      base.LibraryLocation := 'libmysql';
      base.Database := ed_base.Text;
      base.HostName := ed_servidor.Text;
      base.User := ed_usuario.Text;
      base.Password := ed_senha.Text;
      base.Connect;
      application.messagebox('Conectado com sucesso!', 'Atenção',
        mb_ok + mb_IconInformation { mb_IconExclamation } );
    except
      application.messagebox
        ('Houve falha ao tentar se conectar ao banco de dados! Favor verificar o caminho informado!',
        'Atenção', mb_ok + mb_Iconerror);
    end;
  end;

  if rFirebird.Checked then
  begin
    try
      base.Disconnect;
      base.Database := ed_base.Text;
      base.HostName := ed_servidor.Text;
      base.User := 'SYSDBA';
      base.Password := 'masterkey';
      base.Connect;
      application.messagebox('Conectado com sucesso!', 'Atenção',
        mb_ok + mb_IconInformation { mb_IconExclamation } );
    except
      application.messagebox
        ('Houve falha ao tentar se conectar ao banco de dados! Favor verificar o caminho informado!',
        'Atenção', mb_ok + mb_Iconerror);
    end;
  end;

end;

procedure Tfrmprincipal.bt_config0001Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmprincipal.bt_config0002Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmprincipal.bt_config0003Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmprincipal.FormCreate(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmprincipal.ed_baseButtonClick(Sender: TObject);
begin
  if dlgOpen1.Execute then
    ed_base.Text := dlgOpen1.FileName;
end;

procedure Tfrmprincipal.ed_portaExit(Sender: TObject);
begin
  if ed_servidor.Enabled then
    ed_servidor.SetFocus
  else if ed_base.Enabled then
    ed_base.SetFocus
  else if ed_usuario.Enabled then
    ed_usuario.SetFocus
end;

function Tfrmprincipal.EncryptSTR(const InString: String;
  StartKey, MultKey, AddKey: Integer): String;
var
  i: Byte;
begin
  RESULT := '';
  for i := 1 to Length(InString) do
  begin
    RESULT := RESULT + Char(Byte(InString[i]) xor (StartKey shr 8));
    StartKey := (Byte(RESULT[i]) + StartKey) * MultKey + AddKey;
  end;
end;

procedure Tfrmprincipal.FormShow(Sender: TObject);

var
  txt: textfile;
  caminho, entrada, tmpblk: string;
  i: Integer;
begin
  // mudanca pra salvar na pasta dll
  caminho := ExtractFilePath(ParamStr(0)) + 'ini\com.ini';
  entrada := ExtractFilePath(ParamStr(0));
  ed_base.Text := LeInistr(caminho, 'BANCO', '999-001',
    entrada + 'bd\base.fdb');
  ed_servidor.Text := LeInistr(caminho, 'BANCO', '999-002', '127.0.0.1');

  if LeInistr(caminho, 'BANCO', 'tipo', '') = 'MySQL' then
  begin
    rMySQL.Checked := true;
    ed_usuario.Text := LeInistr(caminho, 'BANCO', 'usuario', '');
    ed_senha.Text := LeInistr(caminho, 'BANCO', 'senha', '');

    s := ed_senha.Text;
    For i := 1 to Length(s) do
      s[i] := AnsiChar(23 Xor ord(c[i]));

    ed_senha.Text := s;

    // ed_senha.Text := DecryptSTR(ed_senha.Text, 25, 2, 1981);
    ed_porta.Text := LeInistr(caminho, 'BANCO', 'porta', '');

  end;

  if LeInistr(caminho, 'BANCO', 'tipo', '') = 'Firebird' then
    rFirebird.Checked := true;

  if ed_servidor.Text <> 'LOCALHOST' then
    restacao.Checked := true
  else
    rservidor.Checked := true;
  ed_base.Text := LeInistr(caminho, 'BANCO', '999-003',
    'C:\OneMaker\Server\bd\BASE.FDB');
  if LeInistr(caminho, 'OPERACIONAIS', 'ver_deb', '') = '1' then
    chk_ver_deb.Checked := true
  else
    chk_ver_deb.Checked := False;
  if LeInistr(caminho, 'OPERACIONAIS', 'alt_cus', '') = '1' then
    chk_alt_cus.Checked := true
  else
    chk_alt_cus.Checked := False;
  if LeInistr(caminho, 'OPERACIONAIS', 'des_cli', '') = '1' then
    chk_des_cli.Checked := true
  else
    chk_des_cli.Checked := False;
  if LeInistr(caminho, 'OPERACIONAIS', 'lan_mcc', '') = '1' then
    rmov_cartao.Checked := true
  else
    rmov_cartao.Checked := False;
  if LeInistr(caminho, 'OPERACIONAIS', 'inf-san', '') = '1' then
    cb_inf_sangria.Checked := true
  else
    cb_inf_sangria.Checked := False;
  if LeInistr(caminho, 'OPERACIONAIS', 'bus-pre', '') = '1' then
    chk_bus_pre.Checked := true
  else
    chk_bus_pre.Checked := False;
  if LeInistr(caminho, 'OPERACIONAIS', 'ver-dad', '') = '1' then
    chk_ver_dad.Checked := true
  else
    chk_ver_dad.Checked := False;
  if LeInistr(caminho, 'OPERACIONAIS', 'usa-nfe', '') = '1' then
    chk_usa_nfe.Checked := true
  else
    chk_usa_nfe.Checked := False;
  if LeInistr(caminho, 'OPERACIONAIS', 'lan_tot', '') = '1' then
    chk_lan_tot.Checked := true
  else
    chk_lan_tot.Checked := False;
  ed_aju_usu.Text := LeInistr(caminho, 'OPERACIONAIS', 'aju-usu', '');
  if LeInistr(caminho, 'OPERACIONAIS', 'blk-app', '') = '1' then
  begin
    cbBlock.Checked := true;
    MaskEdit1.Enabled := true;
    MaskEdit1.Text := LeInistr(caminho, 'OPERACIONAIS', 'tmp-blk', '');
  end
  else
  begin
    cbBlock.Checked := False;
    MaskEdit1.Text := LeInistr(caminho, 'OPERACIONAIS', 'tmp-blk', '');
  end;
  //NFE
  edtSmtpHost.Text := LeInistr(caminho, 'Email', 'Host', '');
  edtSmtpPort.Text := LeInistr(caminho, 'Email', 'Port', '');
  edtSmtpUser.Text := LeInistr(caminho, 'Email', 'User', '');
  edtSmtpPass.Text := LeInistr(caminho, 'Email', 'Pass', '');
  edtEmailAssunto.Text := LeInistr(caminho, 'Email', 'Assunto', '');
  edtFinanceiro.Text := LeInistr(caminho, 'Email', 'PadraoNFe', '');

  if LeInistr(caminho, 'Email', 'SSL', '') = 'S' then
  begin
    cbEmailSSL.Checked := true
  end
  else
    cbEmailSSL.Checked := False;
  mmEmailMsg.Lines.Add(LeInistr(caminho, 'Email', 'Mensagem', ''));

  //Orcamentos
  Edit1.Text := LeInistr(caminho, 'Email', 'HostOrc', '');
  edit2.Text := LeInistr(caminho, 'Email', 'PortOrc', '');
  Edit4.Text := LeInistr(caminho, 'Email', 'UserOrc', '');
  Edit3.Text := LeInistr(caminho, 'Email', 'PassOrc', '');
  Edit5.Text := LeInistr(caminho, 'Email', 'AssuntoOrc', '');
  Edit7.Text := LeInistr(caminho, 'Email', 'PadraoOrc', '');

  if LeInistr(caminho, 'Email', 'SSLOrc', '') = 'S' then
  begin
    CheckBox1.Checked := true
  end
  else
    CheckBox1.Checked := False;
  Memo1.Lines.Add(LeInistr(caminho, 'Email', 'MensagemOrc', ''));

  //Cotacoes
  Edit8.Text := LeInistr(caminho, 'Email', 'HostCot', '');
  Edit9.Text := LeInistr(caminho, 'Email', 'PortCot', '');
  Edit11.Text := LeInistr(caminho, 'Email', 'UserCot', '');
  Edit10.Text := LeInistr(caminho, 'Email', 'PassCot', '');
  Edit12.Text := LeInistr(caminho, 'Email', 'AssuntCot', '');
  Edit14.Text := LeInistr(caminho, 'Email', 'PadraoCot', '');

  if LeInistr(caminho, 'Email', 'SSLCot', '') = 'S' then
  begin
    CheckBox2.Checked := true
  end
  else
    CheckBox2.Checked := False;
  Memo2.Lines.Add(LeInistr(caminho, 'Email', 'MensagemCot', ''));

  //Financeiro
  Edit15.Text := LeInistr(caminho, 'Email', 'HostFin', '');
  Edit16.Text := LeInistr(caminho, 'Email', 'PortFin', '');
  Edit18.Text := LeInistr(caminho, 'Email', 'UserFin', '');
  Edit17.Text := LeInistr(caminho, 'Email', 'PassFin', '');
  Edit19.Text := LeInistr(caminho, 'Email', 'AssuntFin', '');
  Edit21.Text := LeInistr(caminho, 'Email', 'PadraoFin', '');

  if LeInistr(caminho, 'Email', 'SSLFin', '') = 'S' then
  begin
    CheckBox3.Checked := true
  end
  else
    CheckBox3.Checked := False;
  Memo3.Lines.Add(LeInistr(caminho, 'Email', 'MensagemFin', ''));

  //final

  ed_produtos.Text := LeInistr(caminho, 'IMAGENS', 'img-001', '');
  ed_clientes.Text := LeInistr(caminho, 'IMAGENS', 'img-002', '');
end;

procedure Tfrmprincipal.MaskEdit1Change(Sender: TObject);
begin
  if MaskEdit1.Text < '00:00:59' then
    lblblock.Caption := 'segundos ocioso'
  else if MaskEdit1.Text < '00:59:00' then
    lblblock.Caption := 'minuto(s) ocioso'
  else if MaskEdit1.Text > '00:59:00' then
    lblblock.Caption := 'hora(s) ocioso';
end;

procedure Tfrmprincipal.cbBlockClick(Sender: TObject);
begin
  if cbBlock.Checked = true then
  begin
    MaskEdit1.Enabled := true;
  end
  else if cbBlock.Checked = False then
  begin
    MaskEdit1.Enabled := False;
    MaskEdit1.Text := '00:00:00'
  end;
end;

function Tfrmprincipal.DecryptSTR(const InString: string;
  StartKey, MultKey, AddKey: Integer): string;
var
  i: Byte;
begin
  RESULT := '';
  for i := 1 to Length(InString) do
  begin
    RESULT := RESULT + Char(Byte(InString[i]) xor (StartKey shr 8));
    StartKey := (Byte(InString[i]) + StartKey) * MultKey + AddKey;
  end;
end;

end.
