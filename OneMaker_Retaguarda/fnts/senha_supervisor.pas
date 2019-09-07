unit senha_supervisor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, AdvOfficeImage, ExtCtrls, acPNG;

type
  TfrmSenha_Supervisor = class(TForm)
    Label1: TLabel;
    ed_senha: TRzEdit;
    AdvOfficeImage3: TAdvOfficeImage;
    Image1: TImage;
    procedure ed_senhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ed_senhaEnter(Sender: TObject);
    procedure ed_senhaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSenha_Supervisor: TfrmSenha_Supervisor;

implementation

uses modulo, principal;

{$R *.dfm}

procedure TfrmSenha_Supervisor.ed_senhaKeyPress(Sender: TObject; var Key: Char);
var
  retorno: Integer;
begin
  if Key = #13 then
  begin
    retorno := frmPrincipal.iCloud.VerificaLogin('supervisor', ed_senha.Text, false);
    ShowMessage(IntToStr(retorno));
    exit;

   { if frmPrincipal.iCloud.VerificaLogin('supervisor', ed_senha.Text, True) then
    begin
      bSupervisor_autenticado := True;
      close;
    end
    else
    begin
      application.messagebox('Acesso não autorizado!', 'Erro',
        mb_ok + mb_iconerror);
      close;
    end;  }
  end
  else
  begin
    if Key = #27 then
    begin
      // aborta o cancelamento do item
      close;
    end
    else
    begin

    end;
  end;
end;

procedure TfrmSenha_Supervisor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmSenha_Supervisor.FormShow(Sender: TObject);
begin
  Brush.Style := bsClear;
  frmmodulo.bSupervisor_autenticado := false;
end;

procedure TfrmSenha_Supervisor.ed_senhaEnter(Sender: TObject);
begin

  PopupMenu := nil;
  // controlar a saida do edit de cancelamento de item
end;

procedure TfrmSenha_Supervisor.ed_senhaExit(Sender: TObject);
begin
  ed_senha.setfocus;
end;

end.
