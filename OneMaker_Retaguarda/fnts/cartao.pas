unit cartao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzBtnEdt, ExtCtrls,
  AdvGlowButton, Grids, Wwdbigrd, Wwdbgrid, DB, DBAccess, MemDS,
  DBCtrls, Menus, frxDesgn, frxClass, frxDBSet, frxIBXComponents, frxDCtrl,
  ImgList, ZAbstractRODataset, ZAbstractDataset, ZDataset, UCBase,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, System.ImageList,
  JvExMask, JvToolEdit;

type
  TfrmCartao = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    ed_cod_cartao: TRzButtonEdit;
    ed_cartao: TRzEdit;
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
    qrcartao: TZQuery;
    dscartap: TDataSource;
    Panel3: TPanel;
    Label5: TLabel;
    rqtde: TRzNumericEdit;
    Label6: TLabel;
    rtotal: TRzNumericEdit;
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
    fxcartao: TfrxReport;
    fscartao: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    fsConexao: TfrxIBXComponents;
    fsDialog: TfrxDialogControls;
    ImageList1: TImageList;
    qrcartaoCODIGO: TWideStringField;
    qrcartaoCOD_VENDA: TWideStringField;
    qrcartaoBANCO: TWideStringField;
    qrcartaoCOD_CLIENTE: TWideStringField;
    qrcartaoVALOR: TFloatField;
    qrcartaoCOMISSAO: TFloatField;
    qrcartaoLIQUIDO: TFloatField;
    qrcartaoSITUACAO: TWideStringField;
    qrcartaoTIPO: TWideStringField;
    qrcartaoPARCELA: TIntegerField;
    qrcartaoVALOR_TOTAL: TFloatField;
    qrcartaoNOME: TWideStringField;
    qrcartaoBANDEIRA: TWideStringField;
    UCControls1: TUCControls;
    qrcartaoDATA_VENDA: TDateField;
    qrcartaoDATA_RECEBIMENTO: TDateField;
    qrcartaoDATA_BAIXA: TDateField;
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bitbtn5Click(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ed_cod_cartaoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_cod_cartaoButtonClick(Sender: TObject);
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
    procedure fxcartaoBeforeConnect(Sender: TfrxCustomDatabase;
      var Connected: Boolean);
    procedure fxcartaoGetValue(const VarName: string; var Value: Variant);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCartao: TfrmCartao;
     const
   sc_DragMove = $f012;

implementation

uses xloc_Cartao, modulo, principal, cartao_pgto, cartao_ficha,
  cartao_alterar, lista_cartao, contasreceber_banco;

{$R *.dfm}

procedure TfrmCartao.bincluirClick(Sender: TObject);
begin
  fi_codigo := '';

  frmCartao_ficha := tfrmCartao_ficha.create(self);
  frmCartao_ficha.showmodal;

  if fi_codigo <> '' then
  begin
    query.close;
    query.sql.clear;
    query.sql.add('insert into c000124');
    query.sql.add
      ('(codigo, cod_venda, banco, cod_cliente, data_venda, valor, comissao,');
    query.sql.add
      ('liquido, data_recebimento, situacao, tipo, parcela, valor_total)');
    query.sql.add('values');
    query.sql.add
      ('(:codigo, :cod_venda, :banco, :cod_cliente, :data_venda, :valor, :comissao,');
    query.sql.add
      (':liquido, :data_recebimento, :situacao, :tipo, :parcela, :valor_total)');
    query.ParamByName('CODIGO').ASSTRING := frmprincipal.codifica('000124');
    query.ParamByName('banco').ASSTRING := fi_codigo;
    query.ParamByName('DATA_VENDA').ASDATETIME := STRTODATE(FI_DATA);
    query.ParamByName('cod_cliente').ASSTRING := FI_CLIENTE;
    query.ParamByName('VALOR').ASFLOAT := STRTOFLOAT(FI_VALOR);
    query.ParamByName('VALOR_TOTAL').ASFLOAT := STRTOFLOAT(FI_VALOR);
    query.ParamByName('SITUACAO').ASSTRING := 'ABERTO';
    query.ParamByName('DATA_RECEBIMENTO').ASDATETIME :=
      STRTODATE(FI_VENCIMENTO);
    query.ParamByName('COMISSAO').ASFLOAT := STRTOFLOAT(FI_COMISSAO);
    query.ParamByName('LIQUIDO').ASFLOAT := STRTOFLOAT(FI_LIQUIDO);
    query.ParamByName('cod_venda').ASSTRING := FI_VENDA;
    query.ParamByName('tipo').ASSTRING := fi_bordero;
    query.ParamByName('parcela').asinteger := strtoint(FI_PROPOSTA);
    query.ExecSQL;
    blocalizarClick(frmCartao);
  end;

end;

procedure TfrmCartao.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmCartao.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TfrmCartao.balterarClick(Sender: TObject);
var
  CODX: string;
begin
  if qrcartao.RecNo = 0 then
    exit;

  if qrcartao.fieldbyname('situacao').ASSTRING = 'ABERTO' then
  begin
    fi_codigo := '';
    frmCartao_alterar := tfrmCartao_alterar.create(self);
    with frmCartao_alterar do
    begin
      DateEdit1.Date := qrcartao.fieldbyname('data_recebimento').ASDATETIME;
      DateEdit2.Date := qrcartao.fieldbyname('data_venda').ASDATETIME;
      ed_cod_cartao.Text := qrcartao.fieldbyname('banco').ASSTRING;
      ed_cartao.Text := qrcartao.fieldbyname('bandeira').ASSTRING;
      ed_cod_cliente.Text := qrcartao.fieldbyname('cod_cliente').ASSTRING;
      ed_cliente.Text := qrcartao.fieldbyname('nome').ASSTRING;
      ed_valor.Value := qrcartao.fieldbyname('valor').ASFLOAT;
      spin_parcela.intvalue := qrcartao.fieldbyname('Parcela').asinteger;
      ed_venda.Text := qrcartao.fieldbyname('cod_venda').ASSTRING;
      ed_comissao.Value := qrcartao.fieldbyname('comissao').ASFLOAT;
      ed_liquido.Value := qrcartao.fieldbyname('liquido').ASFLOAT;
      if qrcartao.fieldbyname('tipo').ASSTRING = 'CREDITO' then
        cb_tipo.itemindex := 0
      else
        cb_tipo.itemindex := 1;
    end;

    frmCartao_alterar.showmodal;

    if fi_codigo <> '' then
    begin
      CODX := qrcartao.fieldbyname('CODIGO').ASSTRING;
      query.close;
      query.sql.clear;
      query.sql.add('update c000124 SET');
      query.sql.add
        ('COMISSaO = :COMISSAO, LIQUIDO = :LIQUIDO, DATA_RECEBIMENTO = :DATA_PGTO, TIPO = :TIPO, PARCELA = :PARCELA, VALOR = :VALOR');
      query.sql.add('where codigo = ''' + qrcartao.fieldbyname('codigo')
        .ASSTRING + '''');

      query.ParamByName('DATA_PGTO').ASDATETIME := STRTODATE(FI_VENCIMENTO);
      query.ParamByName('TIPO').ASSTRING := fi_bordero;
      query.ParamByName('PARCELA').ASSTRING := FI_PROPOSTA;
      query.ParamByName('VALOR').ASFLOAT := STRTOFLOAT(FI_VALOR);
      query.ParamByName('COMISSAO').ASFLOAT := STRTOFLOAT(FI_COMISSAO);
      query.ParamByName('LIQUIDO').ASFLOAT := STRTOFLOAT(FI_LIQUIDO);

      query.ExecSQL;

      blocalizarClick(frmCartao);

      qrcartao.Locate('CODIGO', CODX, [loCaseInsensitive]);
    end;

  end
  else
  begin
    application.messagebox
      ('Este lançamento já foi baixado! Impossível alterá-lo!', 'Atenção',
      mb_yesno + mb_iconerror);
  end;

end;

procedure TfrmCartao.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Lançamento', 4) then
  begin

    frmprincipal.logUC('Excluiu Mov.Cartao Credito Nr: ' +
      qrcartao.fieldbyname('cod_venda').ASSTRING + ' Cliente: ' +
      qrcartao.fieldbyname('nome').ASSTRING, 3);

    query.close;
    query.sql.clear;
    query.sql.add('delete from c000124');
    query.sql.add('where codigo = ''' + qrcartao.fieldbyname('codigo')
      .ASSTRING + '''');
    query.ExecSQL;
    blocalizarClick(frmCartao);
  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure TfrmCartao.bitbtn5Click(Sender: TObject);
begin
  FRMLISTA_Cartao := TFRMLISTA_Cartao.create(self);
  FRMLISTA_Cartao.showmodal;
end;

procedure TfrmCartao.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCartao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmCartao.ed_cod_cartaoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if ed_cod_cartao.Text <> '' then
    begin
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000013 where CARTAO_CREDITO = 1 and');
      query.sql.add('numero = ''' + ed_cod_cartao.Text + '''');
      query.open;

      if query.RecordCount > 0 then
      begin
        ed_cartao.Text := query.fieldbyname('banco').ASSTRING;
        combo_periodo.setfocus;
      end
      else
      begin
        application.messagebox('Registro não encontrado!', 'Erro',
          mb_ok + mb_iconerror);
        ed_cod_cartao.setfocus;
        exit;
      end;

    end
    else
    begin
      ed_cod_cartaoButtonClick(frmCartao);
    end;
  end;
end;

procedure TfrmCartao.ed_cod_cartaoButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_Cartao := tfrmxloc_Cartao.create(self);
  frmxloc_Cartao.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    ed_cod_cartao.Text := resultado_pesquisa1;
    ed_cartao.Text := resultado_pesquisa2;
    combo_periodo.setfocus;
  end
  else
  begin
    ed_cod_cartao.Text := '';
    ed_cartao.Text := '';
    ed_cod_cartao.setfocus;
  end;
end;

procedure TfrmCartao.FormShow(Sender: TObject);
begin
  DateEdit1.Text := '01/01/1900';
  DateEdit2.Text := '31/12/2100';
  combo_situacao.itemindex := 1;
  combo_periodo.itemindex := 0;
  blocalizarClick(frmCartao);
  qrcartaoVALOR.DisplayFormat := mascara_valor;
  qrcartaoVALOR_TOTAL.DisplayFormat := mascara_valor;
  qrcartaoLIQUIDO.DisplayFormat := mascara_valor;
end;

procedure TfrmCartao.blocalizarClick(Sender: TObject);
var
  i, q: real;
begin
  qrcartao.close;
  qrcartao.sql.clear;
  qrcartao.sql.add('select c000124.*,');
  qrcartao.sql.add('c000007.nome,');
  qrcartao.sql.add('c000013.banco bandeira');
  qrcartao.sql.add('from');
  qrcartao.sql.add('c000124,');
  qrcartao.sql.add('c000007,');
  qrcartao.sql.add('c000013');
  qrcartao.sql.add('where');
  qrcartao.sql.add('c000124.cod_cliente = c000007.codigo and');
  qrcartao.sql.add('c000124.banco = c000013.numero');
  if ed_cod_cartao.Text <> '' then
    qrcartao.sql.add('and c000124.banco = ''' + ed_cod_cartao.Text + '''');
  if combo_situacao.itemindex = 1 then
    qrcartao.sql.add('and c000124.situacao = ''ABERTO''')
  else if combo_situacao.itemindex = 2 then
    qrcartao.sql.add('and c000124.situacao = ''BAIXADO''');

  if combo_periodo.itemindex = 0 then
    qrcartao.sql.add('and c000124.data_recebimento between :datai and :dataf');

  if combo_periodo.itemindex = 1 then
    qrcartao.sql.add('and c000124.data_venda between :datai and :dataf');

  if combo_periodo.itemindex = 2 then
    qrcartao.sql.add('and c000124.data_baixa between :datai and :dataf');

  qrcartao.sql.add('order by data_venda, banco, tipo');
  qrcartao.ParamByName('datai').ASDATETIME := DateEdit1.Date;
  qrcartao.ParamByName('dataf').ASDATETIME := DateEdit2.Date;
  qrcartao.open;

  i := 0;
  q := 0;
  qrcartao.first;
  while not qrcartao.eof do
  begin
    i := i + 1;
    q := q + qrcartao.fieldbyname('liquido').ASFLOAT;
    qrcartao.next;
  end;
  rqtde.Value := i;
  rtotal.Value := q;

  grid.setfocus;
end;

procedure TfrmCartao.combo_periodoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DateEdit1.setfocus;
end;

procedure TfrmCartao.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmCartao.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmCartao.combo_situacaoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    blocalizar.setfocus;
end;

procedure TfrmCartao.DateEdit1Enter(Sender: TObject);
begin
  TEDIT(Sender).COLOR := $00C1FFFF;
end;

procedure TfrmCartao.DateEdit2Enter(Sender: TObject);
begin
  TEDIT(Sender).COLOR := $00C1FFFF;
end;

procedure TfrmCartao.DateEdit1Exit(Sender: TObject);
begin
  TEDIT(Sender).COLOR := CLWINDOW;
end;

procedure TfrmCartao.DateEdit2Exit(Sender: TObject);
begin
  TEDIT(Sender).COLOR := CLWINDOW;
end;

procedure TfrmCartao.bliquidarClick(Sender: TObject);
begin
  if qrcartao.RecNo = 0 then
    exit;

  if qrcartao.fieldbyname('situacao').ASSTRING = 'ABERTO' then
  begin
    frmCartao_pgto := tfrmCartao_pgto.create(self);
    frmCartao_pgto.DateEdit1.Date := Date;
    frmCartao_pgto.rvalor.Value := qrcartao.fieldbyname('liquido').ASFLOAT;
    frmCartao_pgto.showmodal;
    blocalizarClick(frmCartao);
  end
  else
  begin
    if application.messagebox
      ('Este lançamento já foi baixado! Deseja extornar a baixa?', 'Atenção',
      mb_yesno + mb_iconwarning) = idyes then
    begin
      query.close;
      query.sql.clear;
      query.sql.add('update c000124 set situacao = ''ABERTO''');
      query.sql.add('where codigo = ''' + qrcartao.fieldbyname('codigo')
        .ASSTRING + '''');
      query.ExecSQL;
      blocalizarClick(frmCartao);
    end;
  end;
end;

procedure TfrmCartao.fxcartaoBeforeConnect(Sender: TfrxCustomDatabase;
  var Connected: Boolean);
begin
  Sender.DatabaseName := 'c:\Store_Proheus\server\bd\base.fdb';
end;

procedure TfrmCartao.fxcartaoGetValue(const VarName: string;
  var Value: Variant);
begin
  // if CompareText(VarName, 'keila') = 0 then Value := 'PEDRO JOAQUIM';

end;

end.
