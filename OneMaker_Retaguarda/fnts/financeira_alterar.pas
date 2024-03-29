unit financeira_alterar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzBtnEdt, ExtCtrls, AdvGlowButton, Menus, DB, DBAccess, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, JvExMask, JvToolEdit, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  Tfrmfinanceira_alterar = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ed_cod_financeira: TRzButtonEdit;
    ed_financeira: TRzEdit;
    ed_proposta: TRzEdit;
    ed_bordero: TRzEdit;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    ed_valor: TRzNumericEdit;
    ed_cod_cliente: TRzButtonEdit;
    ed_cliente: TRzEdit;
    ED_OBS: TRzEdit;
    ed_venda: TRzEdit;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    query: TZQuery;
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_cod_financeiraButtonClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure ed_cod_financeiraKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure ed_cod_clienteButtonClick(Sender: TObject);
    procedure ed_cod_clienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ED_OBSKeyPress(Sender: TObject; var Key: Char);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfinanceira_alterar: Tfrmfinanceira_alterar;
    const
   sc_DragMove = $f012;
implementation

uses modulo, xloc_financeira, principal, xloc_cliente;

{$R *.dfm}

procedure Tfrmfinanceira_alterar.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).color := $00C1FFFF;
end;

procedure Tfrmfinanceira_alterar.DateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmfinanceira_alterar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmfinanceira_alterar.AdvSmoothExpanderPanel1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmfinanceira_alterar.bcancelarClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmfinanceira_alterar.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmfinanceira_alterar.ed_cod_financeiraButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_financeira := tfrmxloc_financeira.create(self);
  frmxloc_financeira.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    ed_cod_financeira.text := resultado_pesquisa1;
    ed_financeira.Text := resultado_pesquisa2;
    if RESULTADO_PESQUISA3 <> '' then
    begin
      if RESULTADO_PESQUISA3 = '1' then // POR DATABASE
      begin
        DATEEDIT1.TEXT := FRMPRINCIPAL.zerarcodigo(RESULTADO_PESQUISA4, 2) + COPY(DATETOSTR(DATE), 3, 8);
      end
      else
      begin
        if RESULTADO_PESQUISA4 <> '' then
        begin
          DATEEDIT1.DATE := DATE + STRTOINT(RESULTADO_PESQUISA4);
        end;
      end;
    end;
    ed_proposta.setfocus;
  end
  else
  begin
    ed_cod_financeira.text := '';
    ed_financeira.Text := '';
    ed_cod_financeira.setfocus;
  end;
end;

procedure Tfrmfinanceira_alterar.bgravarClick(Sender: TObject);
begin
  if ed_cod_financeira.Text = '' then
  begin
    APPLICATION.MESSAGEBOX('Favor informar a Financeira!', 'Erro', mb_ok + mb_iconerror);
    ed_cod_financeira.setfocus;
    exit;
  end;
  if ed_cod_cliente.Text = '' then
  begin
    APPLICATION.MESSAGEBOX('Favor informar o Cliente!', 'Erro', mb_ok + mb_iconerror);
    ed_cod_cliente.setfocus;
    exit;
  end;

  frmprincipal.logUC('Alterou Mov.Financeira - CodVenda: '+ ed_venda.Text, 2);


  FI_CODIGO := ed_cod_financeira.TEXT;
  FI_PROPOSTA := ed_proposta.TEXT;
  FI_VENCIMENTO := DateEdit1.Text;
  FI_BORDERO := ed_bordero.TEXT;
  FI_OBS := ED_OBS.Text;
  FI_VALOR := FORMATFLOAT('#########0.00', ED_VALOR.VALUE);

  CLOSE;
end;

procedure Tfrmfinanceira_alterar.ed_cod_financeiraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then
  begin
    if ED_COD_FINANCEIRA.Text <> '' then
    begin
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000013 where financeira = 1 and');
      query.sql.add('numero = ''' + ed_cod_financeira.Text + '''');
      query.open;

      if query.RecordCount > 0 then
      begin
        ed_financeira.Text := query.fieldbyname('banco').asstring;
        if query.fieldbyname('ressarcimento').asstring <> '' then
        begin
          if query.fieldbyname('ressarcimento').asstring = '1' then // POR DATABASE
          begin
            DATEEDIT1.TEXT := FRMPRINCIPAL.zerarcodigo(query.fieldbyname('prazo').asstring, 2) + COPY(DATETOSTR(DATE), 3, 8);
          end
          else
          begin
            if RESULTADO_PESQUISA4 <> '' then
            begin
              DATEEDIT1.DATE := DATE + query.fieldbyname('prazo').asinteger;
            end;
          end;
        end;
        perform(wm_nextdlgctl, 0, 0);
      end
      else
      begin
        application.messagebox('Registro n�o encontrado!', 'Erro', mb_ok + mb_iconerror);
        ed_cod_financeira.setfocus;
        exit;
      end;

    end
    else
    begin
      ed_cod_financeiraButtonClick(FRMfinanceira_alterar);
    end;
  end;
end;

procedure Tfrmfinanceira_alterar.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmfinanceira_alterar.ed_cod_clienteButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    ed_cod_cliente.text := resultado_pesquisa1;
    ed_cliente.Text := resultado_pesquisa2;
    ed_valor.setfocus;
  end
  else
  begin
    ed_cod_cliente.text := '';
    ed_cliente.Text := '';
    ed_cod_cliente.setfocus;
  end;
end;

procedure Tfrmfinanceira_alterar.ed_cod_clienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then
  begin
    if ED_COD_cliente.Text <> '' then
    begin
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000007 where');
      query.sql.add('codigo = ''' + ed_cod_cliente.Text + '''');
      query.open;

      if query.RecordCount > 0 then
      begin
        ed_cliente.Text := query.fieldbyname('nome').asstring;
        perform(wm_nextdlgctl, 0, 0);
      end
      else
      begin
        application.messagebox('Registro n�o encontrado!', 'Erro', mb_ok + mb_iconerror);
        ed_cod_cliente.setfocus;
        exit;
      end;

    end
    else
    begin
      ed_cod_clienteButtonClick(FRMFINANCEIRA_alterar);
    end;
  end;
end;

procedure Tfrmfinanceira_alterar.FormShow(Sender: TObject);
begin
  ed_proposta.setfocus;
end;

procedure Tfrmfinanceira_alterar.ED_OBSKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

end.
