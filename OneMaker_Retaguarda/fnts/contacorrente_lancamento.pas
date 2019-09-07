unit contacorrente_lancamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, StdCtrls, Buttons, Mask,
  DBCtrls, DB, Wwdatsrc, Menus, AdvGlowButton, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit,
  JvDBControls;

type
  Tfrmcontacorrente_lancamento = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    dslancamento_conta: TwwDataSource;
    FlatPanel1: TFlatPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit3: TDBEdit;
    edata_cadastro: TJvDBDateEdit;
    Label18: TLabel;
    ECONTA: TDBEdit;
    BLOCCONTA: TBitBtn;
    enomeconta: TEdit;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    DBText1: TDBText;
    dscontacorrente: TwwDataSource;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Panel2: TPanel;
    bgravar: TAdvGlowButton;
    Bevel10: TBevel;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    bcancelar: TAdvMetroButton;
    dgffghff778: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ECONTAKeyPress(Sender: TObject; var Key: Char);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelar1Click(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure BLOCCONTAClick(Sender: TObject);
    procedure ECONTAExit(Sender: TObject);
    procedure edata_cadastroKeyPress(Sender: TObject; var Key: Char);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dgffghff778Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontacorrente_lancamento: Tfrmcontacorrente_lancamento;

implementation

uses modulo, principal, loc_banco, contacorrente, loc_conta;

{$R *.dfm}

procedure Tfrmcontacorrente_lancamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
    const
   sc_DragMove = $f012;
begin
  ACTION := CAFREE;
end;

procedure Tfrmcontacorrente_lancamento.ECONTAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcontacorrente_lancamento.bgravarClick(Sender: TObject);
var incluir: boolean;
begin







  if frmcontacorrente.qrlancamento_conta.FieldByName('tipo').asstring = 'D' then
  begin
    frmcontacorrente.qrlancamento_conta.FieldByName('valor').asfloat :=
      frmcontacorrente.qrlancamento_conta.FieldByName('valor').asfloat * (-1);
  end;



  if frmcontacorrente.qrlancamento_conta.State = dsinsert then
  begin
    frmcontacorrente.qrlancamento_conta.FieldByName('codcontacorrente').asstring := frmmodulo.qrcontacorrente.fieldbyname('codigo').asstring;
    incluir := true;
  end
  else
  begin
    incluir := false;
  end;


  frmcontacorrente.qrlancamento_conta.Post;
  frmmodulo.Conexao.Commit;

  if incluir then
  begin


    frmcontacorrente.qrlancamento_conta.insert;
    frmcontacorrente.qrlancamento_conta.fieldbyname('tipo').asstring := 'C';
    frmcontacorrente.qrlancamento_conta.fieldbyname('codigo').asstring := frmprincipal.codifica('000042');

    enomeconta.text := '';
    edata_cadastro.setfocus;
  end
  else
    close;



end;

procedure Tfrmcontacorrente_lancamento.AdvSmoothExpanderPanel1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcontacorrente_lancamento.bcancelar1Click(Sender: TObject);
begin
  frmcontacorrente.qrlancamento_conta.Cancel;
  close;
end;

procedure Tfrmcontacorrente_lancamento.DBEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontacorrente_lancamento.DBEdit1Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmcontacorrente_lancamento.edata_cadastroEnter(
  Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00A0FAF8;
  if EDATA_CADASTRO.TEXT = '  /  /    ' then EDATA_CADASTRO.DATE := DATE;

end;

procedure Tfrmcontacorrente_lancamento.DBEdit5Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
  if DBEDIT5.Text <> 'D' then
    if dbedit5.text <> 'C' then
    begin
      showmessage('Favor Digitar "D" para Débito ou "C" para Crédito');
      dbedit5.setfocus;
    end;
end;

procedure Tfrmcontacorrente_lancamento.dgffghff778Click(Sender: TObject);
begin
  bcancelar.Click;
end;

procedure Tfrmcontacorrente_lancamento.BLOCCONTAClick(Sender: TObject);
begin
  frmloc_conta := tfrmloc_conta.create(self);
  frmloc_conta.showmodal;
  frmCONTACORRENTE.qrlancamento_conta.fieldbyname('codconta').asstring := frmmodulo.qrplano.fieldbyname('CODIGO').asstring;
  enomeconta.Text := frmmodulo.qrplano.fieldbyname('conta').asstring;
  bgravar.setfocus;
end;

procedure Tfrmcontacorrente_lancamento.ECONTAExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmcontacorrente.qrlancamento_conta.state = dsinsert) or (frmcontacorrente.qrlancamento_conta.State = dsedit) then
  begin
    frmcontacorrente.qrlancamento_conta.fieldbyname('codconta').asstring := frmprincipal.zerarcodigo(econta.text, 6);
    if econta.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrplano, econta.text, 'codigo') then
      begin
        bloccontaclick(frmcontacorrente_LANCAMENTO);
      end
      else
      begin
        enomeconta.Text := frmmodulo.qrplano.fieldbyname('conta').asstring;
        bgravar.setfocus;

      end;
    end
    else
      blocconta.SetFocus;
  end;
end;

procedure Tfrmcontacorrente_lancamento.edata_cadastroKeyPress(
  Sender: TObject; var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

end.
