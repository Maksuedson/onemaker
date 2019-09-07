unit suprimentocaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Collection,
  ExtCtrls, Buttons, TFlatPanelUnit, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, AdvGlowButton, JvExMask, JvToolEdit, JvBaseEdits;

type
  Tfrmsuprimentocaixa = class(TForm)
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    rsaldo: TJvCalcEdit;
    Edit1: TEdit;
    DataSource1: TDataSource;
    qrdata: TZQuery;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure edataEnter(Sender: TObject);
    procedure edataKeyPress(Sender: TObject; var Key: Char);
    procedure edataExit(Sender: TObject);
    procedure rsaldoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure rsaldoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsuprimentocaixa: Tfrmsuprimentocaixa;
  saldo_anterior: real;

implementation

uses principal, modulo, ecf;

{$R *.dfm}

procedure Tfrmsuprimentocaixa.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmsuprimentocaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmsuprimentocaixa.bgravarClick(Sender: TObject);
begin
  try
    if rsaldo.Value > 0 then
    begin
      frmmodulo.qrcaixa_mov.OPEN;
      frmmodulo.qrcaixa_mov.insert;
      frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
      frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
      frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
      frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
      frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := RSALDO.VALUE;
      frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat := RSALDO.VALUE;
      frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := '199999';
      frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 1;
      frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Suprimento de Caixa';
      frmmodulo.qrcaixa_mov.post;
      frmmodulo.Conexao.Commit;

      if ecf_suprimentoX(ecf_modelo, formatfloat('#########0.00', rsaldo.value), 'DINHEIRO') <> 'OK' then
      begin
        frmmodulo.conexao.Rollback;
        Exit;
      end;
    end
    else
    begin
      SHOWMESSAGE('Favor informar o valor!');
    end;
  except
    SHOWMESSAGE('Houve falha nesta função! Este processo foi cancelado!');
    FRMMODULO.Conexao.Rollback;
  end;

  close;
end;

procedure Tfrmsuprimentocaixa.edataEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmsuprimentocaixa.edataKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmsuprimentocaixa.edataExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmsuprimentocaixa.rsaldoExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmsuprimentocaixa.FormShow(Sender: TObject);
begin
  saldo_anterior := rsaldo.value;
end;

procedure Tfrmsuprimentocaixa.Gravar1Click(Sender: TObject);
begin
  bgravar.SetFocus;
  bgravar.OnClick(frmsuprimentocaixa);
end;

procedure Tfrmsuprimentocaixa.rsaldoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

end.
