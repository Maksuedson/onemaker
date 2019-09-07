unit Leitura_Memoria_Fiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, AdvGlowButton,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit;

type
  TfrmLeitura_Memoria_Fiscal = class(TForm)
    GroupBox1: TGroupBox;
    rb_data: TRadioButton;
    rb_crz: TRadioButton;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    ed_inicio: TEdit;
    ed_fim: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ed_data_ini: TJvDateEdit;
    ed_data_fim: TJvDateEdit;
    GroupBox3: TGroupBox;
    rb_ecf: TRadioButton;
    rb_arquivo: TRadioButton;
    GroupBox4: TGroupBox;
    rb_completa: TRadioButton;
    rb_simplificada: TRadioButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    bt_ok: TAdvGlowButton;
    bt_cancelar: TAdvGlowButton;
    procedure bt_cancelar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ed_inicioKeyPress(Sender: TObject; var Key: Char);
    procedure ed_fimKeyPress(Sender: TObject; var Key: Char);
    procedure ed_data_fimKeyPress(Sender: TObject; var Key: Char);
    procedure ed_data_iniKeyPress(Sender: TObject; var Key: Char);
    procedure rb_dataClick(Sender: TObject);
    procedure rb_crzClick(Sender: TObject);
    procedure rb_dataKeyPress(Sender: TObject; var Key: Char);
    procedure rb_crzKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure bt_ok1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Daruma_RSA_CriarAssinatura(caminhoDoArquivo: string; sMD5: String;
  sAssinaturaEletronica: string): Integer; StdCall; External 'Daruma32.dll';

var
  frmLeitura_Memoria_Fiscal: TfrmLeitura_Memoria_Fiscal;

implementation

uses unECF, funcoes, principal, msg_Operador, Constantes, UFuncoes;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmLeitura_Memoria_Fiscal.bt_cancelar1Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.ed_inicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.ed_fimKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bt_ok.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.ed_data_fimKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bt_ok.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.ed_data_iniKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.rb_dataClick(Sender: TObject);
begin
  ed_data_ini.Visible := true;
  ed_data_fim.Visible := true;
  ed_inicio.Visible := false;
  ed_fim.Visible := false;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.rb_crzClick(Sender: TObject);
begin
  ed_data_ini.Visible := false;
  ed_data_fim.Visible := false;
  ed_inicio.Visible := true;
  ed_fim.Visible := true;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.rb_dataKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.rb_crzKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.FormShow(Sender: TObject);
begin
  ed_data_ini.Date := Date;
  ed_data_fim.Date := Date;
  ed_inicio.Text := '0';
  ed_fim.Text := '0';

  rb_data.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmLeitura_Memoria_Fiscal.bt_ok1Click(Sender: TObject);
var
  sImpressao, stipo: string;
  Str_PathArquivo: String;
  Str_Retorna_MD5: String;
  Str_Retorna_AssinaturaEletronica: String;
  sNome_arquivo: pansichar;

begin
  if FileExists(SystemDrive + '\Retorno.txt') then
    DeleteFile(SystemDrive + '\Retorno.txt');

  if rb_ecf.checked then
    sImpressao := 'ECF'
  else
    sImpressao := 'ARQUIVO';

  if rb_completa.checked then
    stipo := 'A'
  else
    stipo := 'S';

  if rb_data.checked then
  begin

    frmMsg_operador.lb_msg.Caption := 'Aguarde! Emitindo Leitura MF...';
    frmMsg_operador.Show;
    frmMsg_operador.Refresh;

    sMsg := cECF_Leitura_Memoria_Fiscal(iECF_modelo, 'DATA', stipo, sImpressao,
      ed_data_ini.Text, ed_data_fim.Text);

    frmMsg_operador.hide;

    if sMsg <> OK then
    begin
      application.messagebox(pwidechar('Erro ao imprimir Leitura MF' + #13 +
        'Mensagem: ' + sMsg), 'Erro', mb_ok + mb_Iconerror);
    end;
  end;

  if rb_crz.checked then
  begin

    frmMsg_operador.lb_msg.Caption := 'Aguarde! Emitindo Leitura MF...';
    frmMsg_operador.Show;
    frmMsg_operador.Refresh;

    sMsg := cECF_Leitura_Memoria_Fiscal(iECF_modelo, 'CRZ', stipo, sImpressao,
      ed_inicio.Text, ed_fim.Text);
    frmMsg_operador.hide;

    if sMsg <> OK then
    begin
      application.messagebox(pwidechar('Erro ao imprimir Leitura MF' + #13 +
        'Mensagem: ' + sMsg), 'Erro', mb_ok + mb_Iconerror);
    end;

  end;

  // adicionando assinatura digital EAD
  if sImpressao = 'ARQUIVO' then
  begin
    if FileExists(SystemDrive + '\Retorno.txt') then
    begin
      if rb_completa.checked then
        sNome_arquivo := '.\txt\LMFC.txt'
      else
        sNome_arquivo := '.\txt\LMFS.txt';

      if FileExists(sNome_arquivo) then
        DeleteFile(sNome_arquivo);

      CopyFile(pwidechar(SystemDrive + '\Retorno.txt'),
        pwidechar(sNome_arquivo), false);
      TirarEAD(sNome_arquivo);
      assinatura_digital(sNome_arquivo);
      application.messagebox(pwidechar('Arquivo criado com sucesso!' + #13 +
        'Local: ' + pansichar(sNome_arquivo)), 'Aviso',
        mb_ok + mb_iconinformation);
    end;
  end;

  close;
end;

end.
