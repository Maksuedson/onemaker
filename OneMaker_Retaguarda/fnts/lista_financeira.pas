unit lista_financeira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, Grids, DBGrids, wwdblook, AdvGlowButton,
  MemDS, DBAccess, AdvReflectionImage, Vcl.Imaging.jpeg, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit;

type
  Tfrmlista_financeira = class(TForm)
    Panel1: TPanel;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    combo_relatorio: TComboBox;
    combo_cliente: TComboBox;
    combo_banco: TComboBox;
    combo_situacao: TComboBox;
    combo_periodo: TComboBox;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    fxfinanceira: TfrxReport;
    fscheque: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrfinanceira: TZQuery;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    qrfinanceiraCODIGO: TWideStringField;
    qrfinanceiraCODBANCO: TWideStringField;
    dtfldDATA: TDateField;
    qrfinanceiraCODCLIENTE: TWideStringField;
    qrfinanceiraVALOR: TFloatField;
    qrfinanceiraSITUACAO: TIntegerField;
    dtfldDATA_PGTO: TDateField;
    qrfinanceiraVALOR_PAGO: TFloatField;
    qrfinanceiraBORDERO: TWideStringField;
    qrfinanceiraPROPOSTA: TWideStringField;
    qrfinanceiraOBS: TWideStringField;
    qrfinanceiraCODVENDA: TWideStringField;
    qrfinanceiraCODVENDEDOR: TWideStringField;
    qrfinanceiraNOME: TWideStringField;
    qrfinanceiraBANCO: TWideStringField;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure combo_clienteChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_bancoChange(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrfinanceiraCalcFields(DataSet: TDataSet);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_financeira: Tfrmlista_financeira;
  data_caixa: tdatetime;
   const
   sc_DragMove = $f012;
implementation

uses modulo, loc_caixa, xloc_cliente, xloc_funcionario, principal,
  xloc_banco, xloc_financeira;

{$R *.dfm}

procedure Tfrmlista_financeira.combo_clienteChange(Sender: TObject);
begin
  if combo_cliente.Text = 'SELECIONAR' then
  begin
    frmxloc_cliente := tfrmxloc_cliente.create(self);
    frmxloc_cliente.showmodal;


    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_cliente.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2);
      combo_cliente.ItemIndex := combo_cliente.Items.Count - 1;
    end
    else
      COMBO_CLIENTE.ItemIndex := 0;

  end;
end;

procedure Tfrmlista_financeira.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_financeira.FormShow(Sender: TObject);
begin

  FRMMODULO.QRCAIXA_OPERADOR.OPEN;
  FRMMODULO.QRCAIXA_OPERADOR.LOCATE('CODIGO', '000099', [LOCASEINSENSITIVE]);
  data_caixa := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;

  combo_relatorio.ItemIndex := 0;
  combo_cliente.ItemIndex := 0;
  combo_situacao.ItemIndex := 0;
  combo_periodo.ItemIndex := 0;
  dateedit1.Date := data_caixa;
  dateedit2.date := data_caixa;

end;

procedure Tfrmlista_financeira.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_financeira.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmlista_financeira.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_financeira.combo_bancoChange(Sender: TObject);
begin
  if combo_banco.Text = 'SELECIONAR' then
  begin
    frmxloc_FINANCEIRA := tfrmxloc_FINANCEIRA.create(self);
    frmxloc_FINANCEIRA.showmodal;


    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_banco.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2);
      combo_banco.ItemIndex := combo_banco.Items.Count - 1;
    end
    else
      combo_banco.ItemIndex := 0;

  end;
end;

procedure Tfrmlista_financeira.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmlista_financeira.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bimprimir.SetFocus;
end;

procedure Tfrmlista_financeira.bimprimirClick(Sender: TObject);
var cliente, banco, cedente, caixa, tipo, forma, situacao, periodo, ordem, conta: string;
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

  if combo_cliente.Text = 'TODOS' then cliente := '' else begin cliente := ' and c000123.codcliente = ''' + copy(combo_cliente.text, 1, 6) + ''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'CLIENTE: ' + COMBO_CLIENTE.TEXT; end;
  if combo_banco.Text = 'TODAS' then banco := '' else begin banco := ' and c000123.CODbanco = ''' + copy(combo_banco.text, 1, 3) + ''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'BANCO: ' + COMBO_banco.TEXT; end;
  if combo_SITUACAO.ITEMINDEX = 0 then SITUACAO := ''
  else
  begin
    if COMBO_SITUACAO.ITEMINDEX = 1 then situacao := ' and C000123.situacao = 1 ';
    if COMBO_SITUACAO.ITEMINDEX = 2 then situacao := ' and C000123.situacao = 2 ';
    frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'SITUA��O: ' + COMBO_SITUACAO.TEXT;
  end;


  if combo_periodo.ITEMINDEX = 0 then
  begin
    periodo := ' AND C000123.DATA_PGTO >= :datai and C000123.DATA_PGTO <= :dataf ';
    ordem := ' ORDER BY C000123.DATA_PGTO';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PER�ODO DO PAGAMENTO: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;
  end;

  if combo_periodo.ITEMINDEX = 1 then
  begin
    periodo := ' AND C000123.DATA >= :datai and C000123.DATA <= :dataf ';
    ordem := ' ORDER BY C000123.DATA';

    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PER�ODO DA VENDA: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;
  end;

  if combo_relatorio.Text = 'RELA��O' then
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
    qrfinanceira.sql.add(CLIENTE + BANCO + SITUACAO + PERIODO);
    qrfinanceira.sql.add(ORDEM);
    qrfinanceira.ParamByName('datai').asdatetime := dateedit1.date;
    qrfinanceira.ParamByName('dataf').asdatetime := dateedit2.date;
    qrfinanceira.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'MOVIMENTO DE FINANCEIRA';
    fxFinanceira.LoadFromFile('\OneMaker\server\rel\f000182.fr3');
    fxFinanceira.ShowReport;
  end;
end;

procedure Tfrmlista_financeira.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relat�rios', 4) then
  begin
    Application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;

  if combo_relatorio.Text = 'RELA��O' then
  begin
    fxFinanceira.LoadFromFile('\OneMaker\server\rel\f000182.fr3');
    fxFinanceira.designreport;
  end;
end;

procedure Tfrmlista_financeira.qrfinanceiraCalcFields(DataSet: TDataSet);
begin
  case qrFinanceira.fieldbyname('SITUACAO').asinteger of
    1: qrFinanceira.fieldbyname('SIT').Value := 'ABERTO';
    2: qrFinanceira.fieldbyname('SIT').Value := 'BAIXADO';
  end;
end;

end.
