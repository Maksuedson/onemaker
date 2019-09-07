unit contasreceber_banco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Buttons, Menus, AdvGlowButton,
  ExtCtrls, TFlatPanelUnit, JvExMask, JvToolEdit;

type
  TfrmContasreceber_banco = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    econta: TEdit;
    blocconta: TBitBtn;
    enomeconta: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    DateEdit1: TJvDateEdit;
    Edit1: TEdit;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure bloccontaClick(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasreceber_banco: TfrmContasreceber_banco;

implementation

uses modulo, principal, contasreceber_pgto, loc_contacorrent, cartao,
  cartao_pgto;

{$R *.dfm}

procedure TfrmContasreceber_banco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmContasreceber_banco.bcancelarClick(Sender: TObject);
begin
  if Self.tag <> 100 then
  begin
    continua_banco := false;
    close;
  end;

end;

procedure TfrmContasreceber_banco.bgravarClick(Sender: TObject);
begin
  try
    if econta.Text = '' then
    begin
      ShowMessage('Escolha uma Conta!');
      exit;
    end;

    frmmodulo.qrlancamento_conta.Open;
    frmmodulo.qrlancamento_conta.Insert;
    frmmodulo.qrlancamento_conta.FieldByName('codigo').asstring :=
      frmPrincipal.codifica('000042');
    frmmodulo.qrlancamento_conta.FieldByName('data').asdatetime :=
      DateEdit1.date;
    frmmodulo.qrlancamento_conta.FieldByName('codcontacorrente').asstring :=
      frmmodulo.qrcontacorrente.FieldByName('codigo').asstring;

    if Self.Tag = 100 then // cartoes
    begin
      frmmodulo.qrlancamento_conta.FieldByName('VALOR').asFLOAT :=
        frmCartao_PGTO.rvalor.value;
      frmmodulo.qrlancamento_conta.FieldByName('DOCUMENTO').asstring :=
        frmCartao.qrcartao.FieldByName('cod_venda').asstring;
      frmmodulo.qrlancamento_conta.FieldByName('HISTORICO').asstring :=
        'Baixa Cartao ' + frmCartao.qrcartao.FieldByName('bandeira').asstring +
        ' Venda :' + frmCartao.qrcartao.FieldByName('cod_venda').asstring;
      frmmodulo.qrlancamento_conta.FieldByName('TIPO').asstring := 'C';
      frmmodulo.qrconfig.Open;
      frmmodulo.qrlancamento_conta.FieldByName('codconta').asstring := '000020';
    end
    else
    begin
      frmmodulo.qrlancamento_conta.FieldByName('VALOR').asFLOAT :=
        frmcontasreceber_pgto.rtotal.value;
      frmmodulo.qrlancamento_conta.FieldByName('DOCUMENTO').asstring :=
        Edit2.Text;
      frmmodulo.qrlancamento_conta.FieldByName('HISTORICO').asstring :=
        Edit1.Text;
      frmmodulo.qrlancamento_conta.FieldByName('TIPO').asstring := 'C';
      frmmodulo.qrconfig.Open;
      frmmodulo.qrlancamento_conta.FieldByName('codconta').asstring :=
        frmmodulo.qrconfig.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

    end;

    frmmodulo.qrlancamento_conta.post;

    continua_banco := true;
  except
    // showmessage('Houve erro no processamento!');

    on e: Exception do
    begin
      continua_banco := false;
      ShowMessage('Houve erro no processamento!' + #13 + 'Classe do Erro: ' +
        e.ClassName + #13 + 'Mensagem: ' + e.message);
    end;
  end;

  close;
end;

procedure TfrmContasreceber_banco.DateEdit1Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure TfrmContasreceber_banco.DateEdit1Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clWindow;
end;

procedure TfrmContasreceber_banco.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmContasreceber_banco.bloccontaClick(Sender: TObject);
begin
  frmloc_contacorrente := tfrmloc_contacorrente.create(Self);
  frmloc_contacorrente.showmodal;
  enomeconta.Text := frmmodulo.qrcontacorrente.FieldByName('banco').asstring;
  econta.Text := frmmodulo.qrcontacorrente.FieldByName('conta').asstring;
  Edit2.SETFOCUS;
end;

procedure TfrmContasreceber_banco.econtaExit(Sender: TObject);
begin
  TEdit(Sender).Color := clWindow;
  if econta.Text <> '' then
  begin
    if not frmPrincipal.Locregistro(frmmodulo.qrcontacorrente, econta.Text,
      'conta') then
    begin
      bloccontaClick(frmContasreceber_banco);
    end
    else
    begin
      enomeconta.Text := frmmodulo.qrcontacorrente.FieldByName('banco')
        .asstring;
      econta.Text := frmmodulo.qrcontacorrente.FieldByName('conta').asstring;
      Edit2.SETFOCUS;
    end;
  end
  else
  begin
    blocconta.SETFOCUS;
  end;
end;

procedure TfrmContasreceber_banco.FormShow(Sender: TObject);
begin
  frmmodulo.qrcontacorrente.close;
  frmmodulo.qrcontacorrente.SQL.CLEAR;
  frmmodulo.qrcontacorrente.SQL.Add('SELECT * FROM C000041 ORDER BY CONTA');
  frmmodulo.qrcontacorrente.Open;
  frmmodulo.qrcontacorrente.INDEXFIELDNAMES := 'CONTA';
  DateEdit1.SETFOCUS;
end;

procedure TfrmContasreceber_banco.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SETFOCUS;
end;

end.
