unit financeira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzBtnEdt, ExtCtrls,
  AdvGlowButton, Grids, Wwdbigrd, Wwdbgrid, DB, DBAccess, MemDS,
  DBCtrls, Menus, frxDesgn, frxClass, frxDBSet, frxIBXComponents, frxDCtrl,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, UCBase, dxGDIPlusClasses,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit,
  acPNG;

type
  TfrmFinanceira = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    ed_cod_financeira: TRzButtonEdit;
    ed_financeira: TRzEdit;
    Label2: TLabel;
    combo_periodo: TComboBox;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    Label3: TLabel;
    blocalizar: TAdvGlowButton;
    Label4: TLabel;
    combo_situacao: TComboBox;
    Panel2: TPanel;
    grid: TwwDBGrid;
    qrfinanceira: TZQuery;
    dsfinanceira: TDataSource;
    Panel3: TPanel;
    Label5: TLabel;
    rqtde: TRzNumericEdit;
    Label6: TLabel;
    Panel4: TPanel;
    Label7: TLabel;
    DBText1: TDBText;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    query: TZQuery;
    bliquidar: TAdvGlowButton;
    Baixar1: TMenuItem;
    fxfinanceira: TfrxReport;
    fsfinanceira: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    fsConexao: TfrxIBXComponents;
    fsDialog: TfrxDialogControls;
    qrfinanceiraCODIGO: TWideStringField;
    qrfinanceiraCODBANCO: TWideStringField;
    qrfinanceiraCODCLIENTE: TWideStringField;
    qrfinanceiraVALOR: TFloatField;
    qrfinanceiraSITUACAO: TIntegerField;
    qrfinanceiraVALOR_PAGO: TFloatField;
    qrfinanceiraBORDERO: TWideStringField;
    qrfinanceiraPROPOSTA: TWideStringField;
    qrfinanceiraOBS: TWideStringField;
    qrfinanceiraCODVENDA: TWideStringField;
    qrfinanceiraCODVENDEDOR: TWideStringField;
    qrfinanceiraNOME: TWideStringField;
    qrfinanceiraBANCO: TWideStringField;
    UCControls1: TUCControls;
    qrfinanceiraSIT: TStringField;
    Panel5: TPanel;
    Panel6: TPanel;
    rtotal: TRzNumericEdit;
    Image1: TImage;
    dtfldDATA: TDateField;
    dtfldDATA_PGTO: TDateField;
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bitbtn5Click(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ed_cod_financeiraKeyPress(Sender: TObject; var Key: Char);
    procedure ed_cod_financeiraButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure combo_periodoKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure combo_situacaoKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure bliquidarClick(Sender: TObject);
    procedure fxfinanceiraGetValue(const VarName: string; var Value: Variant);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinanceira: TfrmFinanceira;
    const
   sc_DragMove = $f012;

implementation

uses xloc_financeira, modulo, principal, financeira_pgto, financeira_ficha,
  financeira_alterar, lista_financeira;

{$R *.dfm}

procedure TfrmFinanceira.bincluirClick(Sender: TObject);
begin
  fi_codigo := '';

  frmfinanceira_ficha := tfrmfinanceira_ficha.create(self);
  frmfinanceira_ficha.showmodal;

  if fi_codigo <> '' then
  begin
    query.close;
    query.sql.clear;
    query.sql.add('insert into c000123');
    query.sql.add
      ('(CODIGO, CODBANCO, DATA, CODCLIENTE, VALOR, SITUACAO, DATA_PGTO, VALOR_PAGO, BORDERO, PROPOSTA, OBS, CODVENDA)');
    query.sql.add('values');
    query.sql.add
      ('(:CODIGO, :CODBANCO, :DATA, :CODCLIENTE, :VALOR, :SITUACAO, :DATA_PGTO, :VALOR_PAGO, :BORDERO, :PROPOSTA, :OBS, :CODVENDA)');

    query.ParamByName('CODIGO').ASSTRING := frmprincipal.codifica('000123');
    query.ParamByName('CODbanco').ASSTRING := fi_codigo;
    query.ParamByName('DATA').ASDATETIME := STRTODATE(FI_DATA);
    query.ParamByName('CODCLIENTE').ASSTRING := FI_CLIENTE;
    query.ParamByName('VALOR').ASFLOAT := STRTOFLOAT(FI_VALOR);
    query.ParamByName('SITUACAO').ASSTRING := '1';
    query.ParamByName('DATA_PGTO').ASDATETIME := STRTODATE(FI_VENCIMENTO);
    query.ParamByName('VALOR_PAGO').ASFLOAT := 0;
    query.ParamByName('BORDERO').ASSTRING := FI_BORDERO;
    query.ParamByName('PROPOSTA').ASSTRING := FI_PROPOSTA;
    query.ParamByName('OBS').ASSTRING := FI_OBS;
    query.ParamByName('CODVENDA').ASSTRING := FI_VENDA;
    query.ExecSQL;

    blocalizarClick(frmFinanceira);
  end;
end;

procedure TfrmFinanceira.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmFinanceira.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TfrmFinanceira.balterarClick(Sender: TObject);
var
  CODX: string;
begin
  if qrfinanceira.RecNo = 0 then
    exit;

  if qrfinanceira.fieldbyname('situacao').asinteger = 1 then
  begin
    fi_codigo := '';
    frmfinanceira_alterar := tfrmfinanceira_alterar.create(self);
    with frmfinanceira_alterar do
    begin
      DateEdit1.Date := qrfinanceira.fieldbyname('data_pgto').ASDATETIME;
      DateEdit2.Date := qrfinanceira.fieldbyname('data').ASDATETIME;
      ed_cod_financeira.Text := qrfinanceira.fieldbyname('codbanco').ASSTRING;
      ed_financeira.Text := qrfinanceira.fieldbyname('banco').ASSTRING;
      ed_cod_cliente.Text := qrfinanceira.fieldbyname('codcliente').ASSTRING;
      ed_cliente.Text := qrfinanceira.fieldbyname('nome').ASSTRING;
      ed_valor.Value := qrfinanceira.fieldbyname('valor').ASFLOAT;
      ed_obs.Text := qrfinanceira.fieldbyname('obs').ASSTRING;
      ed_proposta.Text := qrfinanceira.fieldbyname('proposta').ASSTRING;
      ed_bordero.Text := qrfinanceira.fieldbyname('bordero').ASSTRING;
    end;

    frmfinanceira_alterar.showmodal;

    if fi_codigo <> '' then
    begin
      CODX := qrfinanceira.fieldbyname('CODIGO').ASSTRING;
      query.close;
      query.sql.clear;
      query.sql.add('update c000123 SET');
      query.sql.add
        ('DATA_PGTO = :DATA_PGTO, BORDERO = :BORDERO, PROPOSTA = :PROPOSTA, OBS = :OBS, VALOR = :VALOR');
      query.sql.add('where codigo = ''' + qrfinanceira.fieldbyname('codigo')
        .ASSTRING + '''');

      query.ParamByName('DATA_PGTO').ASDATETIME := STRTODATE(FI_VENCIMENTO);
      query.ParamByName('BORDERO').ASSTRING := FI_BORDERO;
      query.ParamByName('PROPOSTA').ASSTRING := FI_PROPOSTA;
      query.ParamByName('OBS').ASSTRING := FI_OBS;
      query.ParamByName('VALOR').ASFLOAT := STRTOFLOAT(FI_VALOR);
      query.ExecSQL;

      blocalizarClick(frmFinanceira);

      qrfinanceira.Locate('CODIGO', CODX, [loCaseInsensitive]);
    end;

  end
  else
  begin
    application.messagebox
      ('Este lançamento já foi baixado! Impossível alterá-lo!', 'Atenção',
      mb_yesno + mb_iconerror);
  end;
end;

procedure TfrmFinanceira.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Lançamento', 4) then
  begin
    frmprincipal.logUC('Excluiu Mov.Financeira - CodVenda: ' +
      qrfinanceira.fieldbyname('CODVENDA').ASSTRING, 3);

    query.close;
    query.sql.clear;
    query.sql.add('delete from c000123');
    query.sql.add('where codigo = ''' + qrfinanceira.fieldbyname('codigo')
      .ASSTRING + '''');
    query.ExecSQL;
    blocalizarClick(frmFinanceira);
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure TfrmFinanceira.bitbtn5Click(Sender: TObject);
begin
  FRMLISTA_FINANCEIRA := TFRMLISTA_FINANCEIRA.create(self);
  FRMLISTA_FINANCEIRA.showmodal;
end;

procedure TfrmFinanceira.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFinanceira.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmFinanceira.ed_cod_financeiraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if ed_cod_financeira.Text <> '' then
    begin
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000013 where financeira = 1 and');
      query.sql.add('numero = ''' + ed_cod_financeira.Text + '''');
      query.open;

      if query.RecordCount > 0 then
      begin
        ed_financeira.Text := query.fieldbyname('banco').ASSTRING;
        combo_periodo.setfocus;
      end
      else
      begin
        application.messagebox('Registro não encontrado!', 'Erro',
          mb_ok + mb_iconerror);
        ed_cod_financeira.setfocus;
        exit;
      end;

    end
    else
    begin
      ed_cod_financeiraButtonClick(frmFinanceira);
    end;
  end;
end;

procedure TfrmFinanceira.ed_cod_financeiraButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_financeira := tfrmxloc_financeira.create(self);
  frmxloc_financeira.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    ed_cod_financeira.Text := resultado_pesquisa1;
    ed_financeira.Text := resultado_pesquisa2;
    combo_periodo.setfocus;
  end
  else
  begin
    ed_cod_financeira.Text := '';
    ed_financeira.Text := '';
    ed_cod_financeira.setfocus;
  end;
end;

procedure TfrmFinanceira.FormShow(Sender: TObject);
begin
  DateEdit1.Text := '01/01/1900';
  DateEdit2.Text := '31/12/2100';
  combo_situacao.ItemIndex := 1;
  combo_periodo.ItemIndex := 0;
  blocalizarClick(frmFinanceira);
end;

procedure TfrmFinanceira.blocalizarClick(Sender: TObject);
var
  i, q: real;
begin
  qrfinanceira.close;
  qrfinanceira.sql.clear;
  qrfinanceira.sql.add('select c000123.*,');
  qrfinanceira.sql.add('c000007.nome,');
  qrfinanceira.sql.add('c000013.banco');
  qrfinanceira.sql.add('from');
  qrfinanceira.sql.add('c000123,');
  qrfinanceira.sql.add('c000007,');
  qrfinanceira.sql.add('c000013');
  qrfinanceira.sql.add('where');
  qrfinanceira.sql.add('c000123.codcliente = c000007.codigo and');
  qrfinanceira.sql.add('c000123.codbanco = c000013.numero');
  if ed_cod_financeira.Text <> '' then
    qrfinanceira.sql.add('and c000123.codbanco = ''' +
      ed_cod_financeira.Text + '''');
  if combo_situacao.ItemIndex = 1 then
    qrfinanceira.sql.add('and c000123.situacao = 1')
  else if combo_situacao.ItemIndex = 2 then
    qrfinanceira.sql.add('and c000123.situacao = 2');

  if combo_periodo.ItemIndex = 0 then
    qrfinanceira.sql.add('and c000123.data_pgto between :datai and :dataf')
  else
    qrfinanceira.sql.add('and c000123.data between :datai and :dataf');
  qrfinanceira.sql.add('order by data');
  qrfinanceira.ParamByName('datai').ASDATETIME := DateEdit1.Date;
  qrfinanceira.ParamByName('dataf').ASDATETIME := DateEdit2.Date;
  qrfinanceira.open;

  i := 0;
  q := 0;
  qrfinanceira.first;
  while not qrfinanceira.eof do
  begin
    i := i + 1;
    q := q + qrfinanceira.fieldbyname('valor').ASFLOAT;
    qrfinanceira.next;
  end;
  rqtde.Value := i;
  rtotal.Value := q;

  grid.setfocus;
end;

procedure TfrmFinanceira.combo_periodoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DateEdit1.setfocus;
end;

procedure TfrmFinanceira.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmFinanceira.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmFinanceira.combo_situacaoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    blocalizar.setfocus;
end;

procedure TfrmFinanceira.DateEdit1Enter(Sender: TObject);
begin
  TEDIT(Sender).COLOR := $00C1FFFF;
end;

procedure TfrmFinanceira.DateEdit2Enter(Sender: TObject);
begin
  TEDIT(Sender).COLOR := $00C1FFFF;
end;

procedure TfrmFinanceira.DateEdit1Exit(Sender: TObject);
begin
  TEDIT(Sender).COLOR := CLWINDOW;
end;

procedure TfrmFinanceira.DateEdit2Exit(Sender: TObject);
begin
  TEDIT(Sender).COLOR := CLWINDOW;
end;

procedure TfrmFinanceira.bliquidarClick(Sender: TObject);
begin
  if qrfinanceira.RecNo = 0 then
    exit;

  if qrfinanceira.fieldbyname('situacao').asinteger = 1 then
  begin
    frmfinanceira_pgto := tfrmfinanceira_pgto.create(self);
    frmfinanceira_pgto.DateEdit1.Date := Date;
    frmfinanceira_pgto.rvalor.Value := qrfinanceira.fieldbyname
      ('valor').ASFLOAT;
    frmfinanceira_pgto.showmodal;

    blocalizarClick(frmFinanceira);
  end
  else
  begin
    if application.messagebox
      ('Este lançamento já foi baixado! Deseja extornar a baixa?', 'Atenção',
      mb_yesno + mb_iconwarning) = idyes then
    begin
      query.close;
      query.sql.clear;
      query.sql.add('update c000123 set situacao = 1, valor_pago = 0');
      query.sql.add('where codigo = ''' + qrfinanceira.fieldbyname('codigo')
        .ASSTRING + '''');
      query.ExecSQL;

      frmprincipal.logUC('Estornou Baixa Mov.Financeira - CodVenda: ' +
        qrfinanceira.fieldbyname('CODVENDA').ASSTRING, 3);

      blocalizarClick(frmFinanceira);
    end;
  end;
end;

procedure TfrmFinanceira.fxfinanceiraGetValue(const VarName: string;
  var Value: Variant);
begin
  // if CompareText(VarName, 'keila') = 0 then Value := 'PEDRO JOAQUIM';

end;

end.
