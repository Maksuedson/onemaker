unit Download_MFD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, AdvGlowButton,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit;

type
  TfrmDownload_MFD = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    rb_data: TRadioButton;
    rb_coo: TRadioButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ed_inicio: TEdit;
    ed_fim: TEdit;
    ed_data_ini: TJvDateEdit;
    ed_data_fim: TJvDateEdit;
    GroupBox3: TGroupBox;
    rb_espelho: TRadioButton;
    rb_arquivo: TRadioButton;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    Label53: TLabel;
    AdvMetroButton1: TAdvMetroButton;
    bt_ok: TAdvGlowButton;
    bt_cancelar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelar1Click(Sender: TObject);
    procedure bt_ok1Click(Sender: TObject);
    procedure rb_dataClick(Sender: TObject);
    procedure rb_cooClick(Sender: TObject);
    procedure ed_data_iniKeyPress(Sender: TObject; var Key: Char);
    procedure ed_data_fimKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure rb_dataKeyPress(Sender: TObject; var Key: Char);
    procedure rb_espelhoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDownload_MFD: TfrmDownload_MFD;

implementation

  uses unECF, funcoes, principal, msg_Operador, Constantes, UFuncoes;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmDownload_MFD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmDownload_MFD.bt_cancelar1Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmDownload_MFD.bt_ok1Click(Sender: TObject);
var sNOme_arquivo : pansichar;
begin
  if FileExists(SystemDrive + '\Retorno.txt') then DeleteFile(SystemDrive + '\Retorno.txt');

  if rb_coo.checked then
  begin
    if ed_inicio.text = '' then
    begin
      application.messagebox('Favor informar o COO Inicial!','Erro',mb_ok+mb_iconerror);
      ed_inicio.setfocus;
      exit;
    end;
    if ed_Fim.text = '' then
    begin
      application.messagebox('Favor informar o COO Final!','Erro',mb_ok+mb_iconerror);
      ed_Fim.setfocus;
      exit;
    end;

    if rb_espelho.Checked then
    begin

      frmMsg_operador.lb_msg.Caption := 'Aguarde! Fazendo download da MFD...';
      frmMsg_Operador.Show;
      frmmsg_operador.Refresh;

      sMsg := cECF_Download(iECF_Modelo,'COO',ed_inicio.text,ed_fim.text);

      frmMsg_operador.hide;
      Application.ProcessMessages;
      if sMsg = 'ERRO' then
      begin
        application.messagebox(pwidechar('Erro ao fazer o download da MFD!'+#13+
                                         'Mensagem: '+sMsg),'Erro',mb_ok+mb_iconerror);
      end
      else
      begin

         if FileExists(SystemDrive + '\Retorno.txt') then
         begin
           sNome_Arquivo := 'C:\OneMaker\pdv\txt\Espelho_MFD.txt';

           if FileExists(sNome_Arquivo) then
             DeleteFile(sNome_Arquivo);

           CopyFile(Pchar(SystemDrive + '\Retorno.txt'),pwidechar(sNome_arquivo),false);
           TirarEAD(sNome_Arquivo);

           // assinatura digital
           assinatura_digital(sNome_Arquivo);
           application.messagebox(pwidechar('Arquivo criado com sucesso!'+#13+
                                            'Local: '+pwidechar(sNome_arquivo)),'Aviso',mb_ok+MB_ICONINFORMATION);
         end
         else
         begin
           application.messagebox(pwidechar('Arquivo n�o encontrado!'+#13+
                                          'Local: '+pwidechar(sNome_arquivo)),'Erro',mb_ok+MB_iconerror);

         end;
      end;
    end
    else
    begin
      // arquivo ATO COTEPE 17/04

      frmMsg_operador.lb_msg.Caption := 'Aguarde! Gerando arquivo da MFD...';
      frmMsg_Operador.Show;
      frmmsg_operador.Refresh;


      sMsg := cECF_Arquivo_Fiscal_CAT52(iECF_Modelo,'COO',
                                         ed_inicio.text,ed_fim.text);

      frmMsg_operador.hide;
      Application.ProcessMessages;
      if sMsg = 'ERRO' then
      begin
        application.messagebox(pwidechar('Erro ao fazer o download da MFD por COO!'+#13+

                                         'Mensagem: '+sMsg),'Erro',mb_ok+mb_iconerror);
      end
      else
      begin
         if FileExists(sMsg) then
         begin
           // assinatura digital
           assinatura_digital(sMsg);
           application.messagebox(pwidechar('Arquivo criado com sucesso!'+#13+
                                            sMsg),'Aviso',mb_ok+MB_ICONINFORMATION);
         end
         else
         begin
           application.messagebox(pwidechar('Arquivo n�o encontrado!'+#13+
                                           sMsg),'Erro',mb_ok+MB_iconerror);
         end;

      end;
    end;
  end
  else
  begin
    if ed_data_ini.text = '' then
    begin
      application.messagebox('Favor informar a data Inicial!','Erro',mb_ok+mb_iconerror);
      ed_data_ini.setfocus;
      exit;
    end;
    if ed_data_Fim.text = '' then
    begin
      application.messagebox('Favor informar a data Final!','Erro',mb_ok+mb_iconerror);
      ed_data_fim.setfocus;
      exit;
    end;
    if rb_espelho.checked then
    begin
      frmMsg_operador.lb_msg.Caption := 'Aguarde! Fazendo download da MFD...';
      frmMsg_Operador.Show;
      frmmsg_operador.Refresh;

      sMsg := cECF_Download(iECF_Modelo, 'DATA', ed_data_ini.text, ed_data_fim.text);

      frmMsg_operador.hide;
      Application.ProcessMessages;

      if sMsg = 'ERRO' then
      begin
        application.messagebox(pwidechar('Erro ao fazer o download da MFD!'+#13+
                                         'Mensagem: '+sMsg),'Erro',mb_ok+mb_iconerror);
      end
      else
      begin
         if FileExists(SystemDrive + '\Retorno.txt') then
         begin
           sNome_Arquivo := 'C:\OneMaker\pdv\txt\Espelho_MFD.txt';

           if FileExists(sNome_Arquivo) then deletefile(sNome_Arquivo);
           copyfile(PChar(SystemDrive + '\Retorno.txt'),pwidechar(sNome_arquivo),false);

           TirarEAD(sNome_Arquivo);
           // assinatura digital
           assinatura_digital(sNome_Arquivo);
           application.messagebox(pwidechar('Arquivo criado com sucesso!'+#13+
                                            'Local: '+sNome_Arquivo),'Aviso',mb_ok+MB_ICONINFORMATION);
         end
         else
         begin
           application.messagebox(pwidechar('Arquivo n�o encontrado!'+#13+
                                          'Local: '+sNome_Arquivo),'Erro',mb_ok+MB_iconerror);

         end;
      end;
    end
    else
    begin
      // arquivo ATO COTEPE 17/04

      frmMsg_operador.lb_msg.Caption := 'Aguarde! Gerando arquivo da MFD...';
      frmMsg_Operador.Show;
      frmmsg_operador.Refresh;


      sMsg := cECF_Arquivo_Fiscal_CAT52(iECF_Modelo,'DATA',
                                         ed_data_ini.text,ed_data_fim.text);

      frmMsg_operador.Hide;
      if sMsg = 'ERRO' then
      begin

        application.messagebox(pwidechar('Erro ao fazer o download da MFD!'+#13+
                                         'Mensagem: '+sMsg),'Erro',mb_ok+mb_iconerror);
      end
      else
      begin
         if FileExists(sMsg) then
         begin
           // assinatura digital
           assinatura_digital(sMsg);
           application.messagebox(pwidechar('Arquivo criado com sucesso!'+#13+
                                            sMsg),'Aviso',mb_ok+MB_ICONINFORMATION);
         end
         else
         begin
           application.messagebox(pwidechar('Arquivo n�o encontrado!'+#13+
                                            sMsg),'Erro',mb_ok+MB_iconerror);
         end;
      end;
    end;
  end;
  Refresh;
  close;

end;

// -------------------------------------------------------------------------- //
procedure TfrmDownload_MFD.rb_dataClick(Sender: TObject);
begin
  ed_data_ini.Visible := true;
  ed_data_fim.Visible := true;
  ed_inicio.Visible   := false;
  ed_fim.Visible      := false;
end;

// -------------------------------------------------------------------------- //
procedure TfrmDownload_MFD.rb_cooClick(Sender: TObject);
begin
  ed_data_ini.Visible := false;
  ed_data_fim.Visible := false;
  ed_inicio.Visible   := true;
  ed_fim.Visible      := true;
end;

// -------------------------------------------------------------------------- //
procedure TfrmDownload_MFD.ed_data_iniKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmDownload_MFD.ed_data_fimKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bt_ok.setfocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmDownload_MFD.FormShow(Sender: TObject);
begin
  if rb_espelho.Checked then
    caption := 'Espelho da MFD'
  else
    caption := 'Arquivo da MFD';

  ed_data_ini.Date := date;
  ed_data_fim.Date := date;
  ed_inicio.Text :='0';
  ed_fim.text := '0';
end;

// -------------------------------------------------------------------------- //
procedure TfrmDownload_MFD.rb_dataKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    perform(wm_nextdlgctl,0,0);
end;

// -------------------------------------------------------------------------- //
procedure TfrmDownload_MFD.rb_espelhoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    perform(wm_nextdlgctl,0,0);

end;

end.
