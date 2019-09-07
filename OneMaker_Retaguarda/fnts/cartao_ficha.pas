unit cartao_ficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzBtnEdt, ExtCtrls, AdvGlowButton, Menus, DB, MemDS, DBAccess, RzSpnEdt,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ACBrBase,
  ACBrEnterTab, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel,
  JvToolEdit, JvExMask, JvBaseEdits;

type
  Tfrmcartao_ficha = class(TForm)
    Panel1: TPanel;
    bgravar: TAdvGlowButton;
    Label11: TLabel;
    rsoma: TJvCalcEdit;
    Label12: TLabel;
    rdiferenca: TJvCalcEdit;
    pnl1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    ed_cod_cartao: TRzButtonEdit;
    ed_cartao: TRzEdit;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    ed_valor: TRzNumericEdit;
    ed_cod_cliente: TRzButtonEdit;
    ed_cliente: TRzEdit;
    ed_venda: TRzEdit;
    ed_comissao: TRzNumericEdit;
    ed_liquido: TRzNumericEdit;
    cb_tipo: TComboBox;
    spin_parcela: TRzSpinEdit;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    query: TZQuery;
    ACBrEnterTab1: TACBrEnterTab;
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_cod_cartaoButtonClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure ed_cod_cartaoKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure ed_cod_clienteButtonClick(Sender: TObject);
    procedure ed_cod_clienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cb_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_valorExit(Sender: TObject);
    procedure ed_comissaoExit(Sender: TObject);
    procedure spin_parcelaKeyPress(Sender: TObject; var Key: Char);
    procedure bcancelarClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure ed_cod_clienteExit(Sender: TObject);
    procedure ed_cod_cartaoExit(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcartao_ficha: Tfrmcartao_ficha;
  rCOMISSAO: REAL;
    const
   sc_DragMove = $f012;
implementation

uses modulo, xloc_cartao, principal, xloc_cliente;

{$R *.dfm}

procedure Tfrmcartao_ficha.DateEdit1Enter(Sender: TObject);
begin
  tedit(Sender).color := $00C1FFFF;
end;

procedure Tfrmcartao_ficha.DateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure Tfrmcartao_ficha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcartao_ficha.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcartao_ficha.ed_cod_cartaoButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_cartao := tfrmxloc_cartao.create(self);
  frmxloc_cartao.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    ed_cod_cartao.text := resultado_pesquisa1;
    ed_cartao.text := resultado_pesquisa2;
    ed_cod_cartao.setfocus;
  end
  else
  begin
    ed_cod_cartao.text := '';
    ed_cartao.text := '';
    ed_cod_cartao.setfocus;
  end;
end;

procedure Tfrmcartao_ficha.ed_cod_cartaoExit(Sender: TObject);
begin
  begin
    if ed_cod_cartao.text <> '' then
    begin
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000013 where cartao_credito = 1 and');
      query.sql.add('numero = ''' + ed_cod_cartao.text + '''');
      query.open;

      if query.RecordCount > 0 then
      begin
        ed_cartao.text := query.fieldbyname('banco').asstring;

        if cb_tipo.itemindex = 0 then
        begin
          DateEdit1.DATE := DATE + query.fieldbyname('rec_credito').asinteger;
          rCOMISSAO := query.fieldbyname('comissao_credito').asfloat;
        end
        else
        begin
          DateEdit1.DATE := DATE + query.fieldbyname('rec_debito').asinteger;
          rCOMISSAO := query.fieldbyname('comissao_debito').asfloat;
        end;

        perform(wm_nextdlgctl, 0, 0);
      end
      else
      begin
        APPLICATION.MESSAGEBOX('Registro não encontrado!', 'Erro',
          mb_ok + mb_iconerror);
        ed_cod_cartao.text := '';
        ed_cartao.text := '';
        ed_cod_cartao.setfocus;
        exit;
      end;

    end
    else
    begin
      ed_cod_cartaoButtonClick(frmcartao_ficha);
    end;
  end;
end;

procedure Tfrmcartao_ficha.bgravarClick(Sender: TObject);
var
  parcela: integer;
begin
  parcela := 1;

  if ed_cod_cartao.text = '' then
  begin
    APPLICATION.MESSAGEBOX('Favor informar a cartao!', 'Erro',
      mb_ok + mb_iconerror);
    ed_cod_cartao.setfocus;
    exit;
  end;
  if ed_cod_cliente.text = '' then
  begin
    APPLICATION.MESSAGEBOX('Favor informar o Cliente!', 'Erro',
      mb_ok + mb_iconerror);
    ed_cod_cliente.setfocus;
    exit;
  end;

  frmPrincipal.logUC('Incluiu Mov.Cartao Credito Nr: ' + ed_venda.text +
    ' Cliente: ' + ed_cliente.text, 1);

  FI_CODIGO := ed_cod_cartao.text;
  FI_NOME := ed_cartao.text;
  FI_VENCIMENTO := DateEdit1.text;
  FI_DATA := DateEdit2.text;
  FI_CLIENTE := ed_cod_cliente.text;
  FI_VALOR := formatfloat('#############0.00', ed_valor.value);
  FI_COMISSAO := formatfloat('#############0.00', ed_comissao.value);
  FI_LIQUIDO := formatfloat('#############0.00', ed_liquido.value);
  FI_VENDA := ed_venda.text;
  FI_BORDERO := cb_tipo.text;
  FI_PROPOSTA := INTTOSTR(spin_parcela.IntValue);

  begin
    rdiferenca.value := rsoma.value - ed_valor.value;
    rsoma.value := rdiferenca.value;

    if rdiferenca.value = 0.00 then
    begin
      close
    end
    else
    begin
      frmcartao_ficha.OnShow(frmcartao_ficha);
      frmcartao_ficha.spin_parcela.value := parcela + 1;
    end;
  end;
  DateEdit2.setfocus;
end;

procedure Tfrmcartao_ficha.ed_cod_cartaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcartao_ficha.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcartao_ficha.ed_cod_clienteButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    ed_cod_cliente.text := resultado_pesquisa1;
    ed_cliente.text := resultado_pesquisa2;
    ed_valor.setfocus;
  end
  else
  begin
    ed_cod_cliente.text := '';
    ed_cliente.text := '';
    ed_cod_cliente.setfocus;
  end;
end;

procedure Tfrmcartao_ficha.ed_cod_clienteExit(Sender: TObject);
begin
  begin

    ed_cod_cliente.text := frmPrincipal.zerarcodigo(ed_cod_cliente.text, 6);

    if ed_cod_cliente.text <> '000000' then
    begin
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000007 where');
      query.sql.add('codigo = ''' + ed_cod_cliente.text + '''');
      query.open;

      if query.RecordCount > 0 then
      begin
        ed_cliente.text := query.fieldbyname('nome').asstring;
        perform(wm_nextdlgctl, 0, 0);
      end
      else
      begin
        APPLICATION.MESSAGEBOX('Registro não encontrado!', 'Erro',
          mb_ok + mb_iconerror);
        ed_cod_cliente.text := '';
        ed_cliente.text := '';
        ed_cod_cliente.setfocus;
        exit;
      end;

    end
    else
    begin
      ed_cod_clienteButtonClick(frmcartao_ficha);
    end;
  end;
end;

procedure Tfrmcartao_ficha.ed_cod_clienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);

end;

procedure Tfrmcartao_ficha.FormShow(Sender: TObject);
begin
  DateEdit2.DATE := DATE;
  DateEdit2.setfocus;
end;

procedure Tfrmcartao_ficha.cb_tipoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcartao_ficha.ed_valorExit(Sender: TObject);
begin
  if (rCOMISSAO > 0) and (ed_valor.value > 0) then
  begin
    ed_comissao.value := ed_valor.value * (rCOMISSAO / 100);
    ed_liquido.value := ed_valor.value - ed_comissao.value;
  end
  else
  begin
    ed_comissao.value := 0;
    ed_liquido.value := ed_valor.value;
  end;
end;

procedure Tfrmcartao_ficha.ed_comissaoExit(Sender: TObject);
begin
  ed_liquido.value := ed_valor.value - ed_comissao.value;
end;

procedure Tfrmcartao_ficha.spin_parcelaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcartao_ficha.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcartao_ficha.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcartao_ficha.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcartao_ficha.Cancelar1Click(Sender: TObject);
begin
  close;
end;

end.
