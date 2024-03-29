unit lista_receber2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, Grids, DBGrids, wwdblook, AdvGlowButton,
  AdvReflectionImage, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, JvExMask, JvToolEdit;

type
  Tfrmlista_receber2 = class(TForm)
    Panel1: TPanel;
    pnl1: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    lcliente: TLabel;
    lvendedor: TLabel;
    lsituacao: TLabel;
    lforma: TLabel;
    lperiodo: TLabel;
    lcaixa: TLabel;
    lconta: TLabel;
    combo_relatorio: TComboBox;
    combo_cliente: TComboBox;
    combo_vendedor: TComboBox;
    combo_situacao: TComboBox;
    combo_forma: TComboBox;
    combo_periodo: TComboBox;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    combo_caixa: TComboBox;
    COMBOCONTA: TwwDBLookupCombo;
    fxcontas_receber: TfrxReport;
    fscontas_receber: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrcontasreceber: TZQuery;
    qrcontasrecebersituacao2: TIntegerField;
    qrcontasreceberjuros: TFloatField;
    qrcontasreceber_pgto: TZQuery;
    qrresumo: TZQuery;
    qrresumototalgeral: TFloatField;
    query: TZQuery;
    queryjuros: TFloatField;
    fsresumo: TfrxDBDataset;
    qrcontasreceber1: TZQuery;
    fscontasreceber1: TfrxDBDataset;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    qrcontasreceberCODIGO: TWideStringField;
    qrcontasreceberCODVENDA: TWideStringField;
    qrcontasreceberCODVENDEDOR: TWideStringField;
    qrcontasreceberCODCAIXA: TWideStringField;
    qrcontasreceberCODCLIENTE: TWideStringField;
    dtfldDATA_EMISSAO: TDateField;
    dtfldDATA_VENCIMENTO: TDateField;
    dtfldDATA_PAGAMENTO: TDateField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberDOCUMENTO: TWideStringField;
    qrcontasreceberTIPO: TWideStringField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceberNOSSONUMERO: TWideStringField;
    qrcontasreceberCODREGIAO: TWideStringField;
    qrcontasreceberCODCEDENTE: TWideStringField;
    qrcontasreceberP5: TFloatField;
    qrcontasreceberP3: TFloatField;
    qrcontasreceberNUMERO_CUPOM: TWideStringField;
    qrcontasreceberVALOR_VENDA: TFloatField;
    qrcontasreceberCOD_VENDA_ORIGINAL: TWideStringField;
    qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField;
    qrcontasreceberEMAIL_ENVIADO: TIntegerField;
    qrcontasreceberHISTORICO: TWideStringField;
    qrcontasreceberCLIENTE: TWideStringField;
    qrcontasreceberCPF: TWideStringField;
    qrcontasreceberENDERECO: TWideStringField;
    qrcontasreceberBAIRRO: TWideStringField;
    qrcontasreceberCIDADE: TWideStringField;
    qrcontasreceberUF: TWideStringField;
    qrcontasreceberCEP: TWideStringField;
    qrcontasreceberTELEFONE1: TWideStringField;
    qrcontasreceberCOMPLEMENTO: TWideStringField;
    qrcontasreceber_pgtoCODCONTA: TWideStringField;
    dtfld_pgtoDATA: TDateField;
    qrcontasreceber_pgtoVALOR_PARCELA: TFloatField;
    qrcontasreceber_pgtoVALOR_JUROS: TFloatField;
    qrcontasreceber_pgtoVALOR_DESCONTO: TFloatField;
    qrcontasreceber_pgtoVALOR_PAGO: TFloatField;
    qrcontasreceber_pgtoDINHEIRO: TFloatField;
    qrcontasreceber_pgtoCHEQUEAV: TFloatField;
    qrcontasreceber_pgtoCHEQUEAP: TFloatField;
    qrcontasreceber_pgtoCARTAO: TFloatField;
    qrcontasreceber_pgtoBOLETO: TFloatField;
    qrcontasreceber_pgtoTROCO: TFloatField;
    qrcontasreceber_pgtoCREDITO: TFloatField;
    qrcontasreceber_pgtoCODCLIENTE: TWideStringField;
    qrcontasreceber_pgtoCAIXA_BANCO: TIntegerField;
    qrcontasreceber1CODCONTA: TWideStringField;
    dtfldqrcontasreceber1DATA: TDateField;
    qrcontasreceber1VALOR_PARCELA: TFloatField;
    qrcontasreceber1VALOR_JUROS: TFloatField;
    qrcontasreceber1VALOR_DESCONTO: TFloatField;
    qrcontasreceber1VALOR_PAGO: TFloatField;
    qrcontasreceber1DINHEIRO: TFloatField;
    qrcontasreceber1CHEQUEAV: TFloatField;
    qrcontasreceber1CHEQUEAP: TFloatField;
    qrcontasreceber1CARTAO: TFloatField;
    qrcontasreceber1BOLETO: TFloatField;
    qrcontasreceber1TROCO: TFloatField;
    qrcontasreceber1CREDITO: TFloatField;
    qrcontasreceber1CODCLIENTE: TWideStringField;
    qrcontasreceber1CAIXA_BANCO: TIntegerField;
    qrcontasreceber1CLIENTE: TWideStringField;
    queryCODIGO: TWideStringField;
    queryCODVENDA: TWideStringField;
    queryCODVENDEDOR: TWideStringField;
    queryCODCAIXA: TWideStringField;
    queryCODCLIENTE: TWideStringField;
    dtfldDATA_EMISSAO1: TDateField;
    dtfldDATA_VENCIMENTO1: TDateField;
    dtfldDATA_PAGAMENTO1: TDateField;
    queryVALOR_ORIGINAL: TFloatField;
    queryVALOR_PAGO: TFloatField;
    queryVALOR_JUROS: TFloatField;
    queryVALOR_ATUAL: TFloatField;
    queryVALOR_DESCONTO: TFloatField;
    queryDOCUMENTO: TWideStringField;
    queryTIPO: TWideStringField;
    querySITUACAO: TIntegerField;
    queryFILTRO: TIntegerField;
    queryNOSSONUMERO: TWideStringField;
    queryCODREGIAO: TWideStringField;
    queryCODCEDENTE: TWideStringField;
    queryP5: TFloatField;
    queryP3: TFloatField;
    queryNUMERO_CUPOM: TWideStringField;
    queryVALOR_VENDA: TFloatField;
    queryCOD_VENDA_ORIGINAL: TWideStringField;
    queryVALOR_ATUAL_ANTERIOR: TFloatField;
    queryEMAIL_ENVIADO: TIntegerField;
    queryHISTORICO: TWideStringField;
    qrcontasreceberrestante: TStringField;
    qrcontasreceberdias: TIntegerField;
    queryrestante: TStringField;
    qrresumoNOME: TWideStringField;
    qrresumoCODIGO: TWideStringField;
    qrresumoSITUACAO: TIntegerField;
    qrresumoTOTAL: TExtendedField;
    qrcontasreceberINSTRUCAO: TWideStringField;
    qrcontasreceberDIRBOLETO: TWideStringField;
    qrcontasreceberCODFILIAL: TWideStringField;
    qrbanco: TZQuery;
    qrbancoID: TIntegerField;
    qrbancoNUMERO_BANCO: TWideStringField;
    qrbancoDIGITO_NUMERO_BANCO: TWideStringField;
    qrbancoNOME_BANCO: TWideStringField;
    qrbancoNOME_AGENCIA: TWideStringField;
    qrbancoNUMERO_AGENCIA: TWideStringField;
    qrbancoDIGITO_AGENCIA: TWideStringField;
    qrbancoNUMERO_CONTA: TWideStringField;
    qrbancoDIGITO_CONTA: TWideStringField;
    qrbancoCIADE_AGENCIA: TWideStringField;
    qrbancoUF_AGENCIA: TWideStringField;
    qrbancoNOSSO_NUMERO: TIntegerField;
    qrbancoCEDENTE: TWideStringField;
    qrbancoCOD_CEDENTE: TWideStringField;
    qrcontasrecebercedente: TStringField;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure combo_clienteChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_vendedorChange(Sender: TObject);
    procedure combo_caixaChange(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrcontasreceberCalcFields(DataSet: TDataSet);
    procedure qrresumoCalcFields(DataSet: TDataSet);
    procedure queryCalcFields(DataSet: TDataSet);
    procedure combo_relatorioChange(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_receber2: Tfrmlista_receber2;
  juro_taxa, juro_multa, total_original, total_juros: real;
  juro_carencia: integer;
  data_caixa: tdatetime;
    const
   sc_DragMove = $f012;
implementation

uses modulo, loc_caixa, xloc_cliente, xloc_funcionario, principal;

{$R *.dfm}

procedure Tfrmlista_receber2.combo_clienteChange(Sender: TObject);
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

procedure Tfrmlista_receber2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_receber2.FormShow(Sender: TObject);
begin
  frmmodulo.qrconfig_cobrebem.open;

  FRMMODULO.QRCAIXA_OPERADOR.OPEN;
  FRMMODULO.QRCAIXA_OPERADOR.LOCATE('CODIGO', '000099', [LOCASEINSENSITIVE]);
  data_caixa := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;

  FRMMODULO.qrformapgto.CLOSE;
  FRMMODULO.QRFORMAPGTO.SQL.CLEAR;
  FRMMODULO.qrformapgto.SQL.Add('SELECT * FROM C000014 ORDER BY FORMAPGTO');
  FRMMODULO.QRFORMAPGTO.Open;

  COMBO_FORMA.Items.Clear;
  COMBO_FORMA.Items.Add('TODAS');

  frmmodulo.qrFORMAPGTO.first;
  while not frmmodulo.qrFORMAPGTO.eof do
  begin
    if frmmodulo.qrFORMAPGTO.fieldbyname('FORMAPGTO').asstring <> '' then
      Combo_FORMA.Items.Add(frmmodulo.qrFORMAPGTO.fieldbyname('FORMAPGTO').asstring);
    frmmodulo.qrFORMAPGTO.Next;
  end;

  FRMMODULO.qrconfig.OPEN;
  juro_carencia := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_CARENCIA').asinteger;
  juro_taxa := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_TAXAJUROS').asfloat;
  juro_multa := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_multa').asfloat;

  combo_relatorio.ItemIndex := 0;
  combo_cliente.ItemIndex := 0;
  combo_vendedor.ItemIndex := 0;
  combo_caixa.ItemIndex := 0;
  combo_situacao.ItemIndex := 0;
  combo_forma.ItemIndex := 0;
  combo_periodo.ItemIndex := 0;
  dateedit1.Date := data_caixa;
  dateedit2.date := data_caixa;

end;

procedure Tfrmlista_receber2.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_receber2.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmlista_receber2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_receber2.combo_vendedorChange(Sender: TObject);
begin
  if combo_vendedor.Text = 'SELECIONAR' then
  begin
    frmxloc_funcionario := tfrmxloc_funcionario.create(self);
    frmxloc_funcionario.showmodal;


    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_vendedor.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2);
      combo_vendedor.ItemIndex := combo_vendedor.Items.Count - 1;
    end
    else
      combo_vendedor.ItemIndex := 0;

  end;
end;

procedure Tfrmlista_receber2.combo_caixaChange(Sender: TObject);
begin
  if combo_caixa.Text = 'SELECIONAR' then
  begin
    FRMMODULO.qrcaixa_operador.OPEN;

    frmloc_caixa := tfrmloc_caixa.create(self);
    frmloc_caixa.showmodal;


    combo_caixa.Items.Add(frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring + ' ' + frmmodulo.qrcaixa_operador.fieldbyname('nome').asstring);
    combo_caixa.ItemIndex := combo_caixa.Items.Count - 1;
  end;
end;

procedure Tfrmlista_receber2.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmlista_receber2.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bimprimir.SetFocus;
end;

procedure Tfrmlista_receber2.bimprimirClick(Sender: TObject);
var cliente, vendedor, cedente, caixa, tipo, forma, situacao, periodo, ordem, conta: string;
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

  if combo_cliente.Text = 'TODOS' then cliente := '' else begin cliente := ' and codcliente = ''' + copy(combo_cliente.text, 1, 6) + ''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'CLIENTE: ' + COMBO_CLIENTE.TEXT; end;
  if combo_vendedor.Text = 'TODOS' then vendedor := '' else begin vendedor := ' and CR.CODvendedor = ''' + copy(combo_vendedor.text, 1, 6) + ''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENEDEDOR: ' + COMBO_vendedor.TEXT; end;
  if combo_caixa.Text = 'TODOS' then caixa := '' else begin caixa := ' and codcaixa = ''' + copy(combo_caixa.text, 1, 6) + ''''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := 'CAIXA ' + COMBO_caixa.TEXT + '   '; end;
  if comboconta.Text = '' then cedente := '' else begin cedente := ' and codcedente = ''' + frmmodulo.qrconfig_cobrebem.fieldbyname('codigo').asstring + ''''; frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := 'CENDENTE: ' + COMBOCONTA.TEXT + '   '; end;

  if combo_forma.Text = 'TODAS' then FORMA := '' else begin FORMA := ' and CR.TIPO like ''%' + combo_FORMA.text + '%'''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring + 'FORMA DE RECEBIMENTO: ' + COMBO_FORMA.TEXT; end;
  if combo_SITUACAO.Text = 'TODAS' then SITUACAO := ''
  else
  begin
    if COMBO_SITUACAO.ITEMINDEX = 0 then situacao := ' and CR.situacao = 1 ';
    if COMBO_SITUACAO.ITEMINDEX = 1 then situacao := ' and CR.situacao = 2 ';
    frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'SITUA��O: ' + COMBO_SITUACAO.TEXT;
  end;

  if combo_periodo.text = 'DATA DA COMPRA' then
  begin
    periodo := ' DATA_EMISSAO >= :datai and data_EMISSAO <= :dataf ';
    ordem := 'data_EMISSAO'; //, CR.codigo';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PER�ODO DA COMPRA: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;
  end;

  if combo_periodo.text = 'DATA DE VENCIMENTO' then
  begin

    periodo := ' data_VENCIMENTO >= :datai and data_VENCIMENTO <= :dataf ';
    ordem := 'data_VENCIMENTO'; //,CR.codigo';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PER�ODO DE VENCIMENTO: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;

  end;

  if combo_periodo.text = 'DATA DO RECEBIMENTO' then

  begin

    periodo := ' data_PAGAMENTO >= :datai and data_PAGAMENTO <= :dataf ';
    ordem := 'data_PAGAMENTO'; //,CR.codigo';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PER�ODO DE PAGAMENTO: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;

  end;

  if combo_relatorio.Text = 'RELA��O SINT�TICA' then

  begin

    QRCONTASRECEBER.close;
    QRCONTASRECEBER.sql.clear;
    QRCONTASRECEBER.sql.add('select  CR.*, CLIENTE.NOME CLIENTE, cliente.cpf, cliente.endereco, cliente.bairro, cliente.cidade, cliente.uf, cliente.cep, cliente.telefone1, cliente.complemento  from c000049 CR, C000007 CLIENTE where CR.CODCLIENTE = CLIENTE.CODIGO AND ' + periodo + cliente + vendedor + caixa + situacao + CEDENTE + FORMA + ' order by ' + ordem);
    QRCONTASRECEBER.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRCONTASRECEBER.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QRCONTASRECEBER.open;
    QRCONTASRECEBER.REFRESH;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAT�RIO DE CONTAS A RECEBER';
    fxcontas_receber.LoadFromFile('\OneMaker\server\rel\f000058.fr3');
    fxcontas_receber.ShowReport;
  end;

  if combo_relatorio.Text = 'RELA��O DE RECEBIMENTOS' then

  begin

    periodo := ' data >= :datai and data <= :dataf ';
    ordem := 'data,CR.codconta';

    FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
    FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
    FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

    QRCONTASRECEBER1.close;
    QRCONTASRECEBER1.sql.clear;
    QRCONTASRECEBER1.sql.add('select CR.*, CLIENTE.NOME CLIENTE from c000050 CR, C000007 CLIENTE where CR.CODCLIENTE = CLIENTE.CODIGO AND ' + periodo + cliente + ' order by ' + ordem);
    QRCONTASRECEBER1.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRCONTASRECEBER1.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QRCONTASRECEBER1.open;
    QRCONTASRECEBER1.REFRESH;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAT�RIO DE RECEBIMENTOS';
    fxcontas_receber.LoadFromFile('\OneMaker\server\rel\f000058_1.fr3');
    fxcontas_receber.ShowReport;
  end;

  if combo_relatorio.Text = 'RELA��O AGRUPADA POR CLIENTE SINT�TICA' then
  begin
    QRCONTASRECEBER.close;
    QRCONTASRECEBER.sql.clear;
    QRCONTASRECEBER.sql.add('select CR.*, CLIENTE.NOME CLIENTE, cliente.cpf, cliente.endereco, cliente.bairro, cliente.cidade, cliente.uf, cliente.cep, cliente.telefone1, cliente.complemento from c000049 CR, C000007 CLIENTE where CR.CODCLIENTE = CLIENTE.CODIGO AND ' + periodo + cliente + vendedor + caixa + situacao + CEDENTE + FORMA + ' order by cliente');
    QRCONTASRECEBER.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRCONTASRECEBER.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QRCONTASRECEBER.open;
    QRCONTASRECEBER.REFRESH;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAT�RIO DE CONTAS A RECEBER';
    fxcontas_receber.LoadFromFile('\OneMaker\server\rel\f000059.fr3');
    fxcontas_receber.ShowReport;
  end;
  if combo_relatorio.Text = 'RELA��O AGRUPADA POR CLIENTE SINT�TICA - COM ENDERE�O' then
  begin
    QRCONTASRECEBER.close;
    QRCONTASRECEBER.sql.clear;
    QRCONTASRECEBER.sql.add('select CR.*, CLIENTE.NOME CLIENTE, cliente.cpf, cliente.endereco, cliente.bairro, cliente.cidade, cliente.uf, cliente.cep, cliente.telefone1, cliente.complemento from c000049 CR, C000007 CLIENTE where CR.CODCLIENTE = CLIENTE.CODIGO AND ' + periodo + cliente + vendedor + caixa + situacao + CEDENTE + FORMA + ' order by cliente');
    QRCONTASRECEBER.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRCONTASRECEBER.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QRCONTASRECEBER.open;
    QRCONTASRECEBER.REFRESH;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAT�RIO DE CONTAS A RECEBER';
    fxcontas_receber.LoadFromFile('\OneMaker\server\rel\f000059_2.fr3');
    fxcontas_receber.ShowReport;
  end;

  if combo_relatorio.text = 'RESUMO POR CLIENTE' then
  begin
    QRRESUMO.CLOSE;
    QRRESUMO.SQL.CLEAR;
    QRRESUMO.SQL.ADD('select cliente.nome, cliente.codigo, sum(cr.valor_atual) total,cr.situacao from c000007 cliente');
    QRRESUMO.SQL.ADD('jOIN c000049 cr on cliente.codigo = cr.codcliente  and cr.valor_atual <> 0  and ' + periodo +
     cliente + vendedor + CEDENTE + caixa + situacao + FORMA + ' group by cliente.codigo, cliente.nome,cr.situacao ');
    QRRESUMO.SQL.ADD('order by cliente.nome');
    qrresumo.Params.ParamByName('datai').asdatetime := dateedit1.date;
    qrresumo.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QRRESUMO.OPEN;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAT�RIO DE CONTAS A RECEBER - RESUMIDO POR CLIENTE';
    fxcontas_receber.LoadFromFile('\OneMaker\server\rel\f000060.fr3');
    fxcontas_receber.ShowReport;
  end;
  if combo_relatorio.text = 'RELA��O AGRUPADA POR FORMA DE PAGAMENTO' then
  begin
    QRCONTASRECEBER.close;
    QRCONTASRECEBER.sql.clear;
    QRCONTASRECEBER.sql.add('select CR.*, CLIENTE.NOME CLIENTE, cliente.cpf, cliente.endereco, cliente.bairro, cliente.cidade, cliente.uf, cliente.cep, cliente.telefone1, cliente.complemento  from c000049 CR, C000007 CLIENTE where CR.CODCLIENTE = CLIENTE.CODIGO AND ' + periodo + cliente + vendedor + caixa + CEDENTE + situacao + FORMA + ' order by cliente');
    QRCONTASRECEBER.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRCONTASRECEBER.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QRCONTASRECEBER.open;
    QRCONTASRECEBER.REFRESH;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAT�RIO DE CONTAS A RECEBER POR FORMA DE RECEBTO.';
    fxcontas_receber.LoadFromFile('\OneMaker\server\rel\f000062.fr3');
    fxcontas_receber.ShowReport;
  end;
  if combo_relatorio.text = 'RELA��O AGRUPADA POR CEDENTE' then
  begin
    QRCONTASRECEBER.close;
    QRCONTASRECEBER.sql.clear;
    QRCONTASRECEBER.sql.add('select CR.*, CLIENTE.NOME CLIENTE, cliente.cpf, cliente.endereco, cliente.bairro, cliente.cidade, cliente.uf, cliente.cep, cliente.telefone1, cliente.complemento  from c000049 CR, C000007 CLIENTE where CR.CODCLIENTE = CLIENTE.CODIGO AND ' + periodo + cliente + vendedor + caixa + CEDENTE + situacao + FORMA + ' order by cliente');
    QRCONTASRECEBER.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRCONTASRECEBER.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QRCONTASRECEBER.open;
    QRCONTASRECEBER.REFRESH;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAT�RIO DE CONTAS A RECEBER POR CEDENTE';
    fxcontas_receber.LoadFromFile('\OneMaker\server\rel\f000070.fr3');
    fxcontas_receber.ShowReport;
  end;

  frmPrincipal.logUC('Abriu Relatorio Contas a Receber - ' + frmPrincipal.RemoveAcentos(combo_relatorio.Text), 0);

end;

procedure Tfrmlista_receber2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relat�rios', 4) then
  begin
    Application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;

  if combo_relatorio.Text = 'RELA��O SINT�TICA' then
  begin
    fxcontas_receber.LoadFromFile('\OneMaker\server\rel\f000058.fr3');
    fxcontas_receber.designreport;
  end;
  if combo_relatorio.Text = 'RELA��O DE RECEBIMENTOS' then
  begin
    fxcontas_receber.LoadFromFile('\OneMaker\server\rel\f000058_1.fr3');
    fxcontas_receber.designreport;
  end;
  if combo_relatorio.Text = 'RELA��O AGRUPADA POR CLIENTE SINT�TICA' then
  begin
    fxcontas_receber.LoadFromFile('\OneMaker\server\rel\f000059.fr3');
    fxcontas_receber.DESIGNREPORT;
  end;
  if combo_relatorio.text = 'RESUMO POR CLIENTE' then
  begin
    fxcontas_receber.LoadFromFile('\OneMaker\server\rel\f000060.fr3');
    fxcontas_receber.DESIGNREPORT;
  end;
  if combo_relatorio.text = 'RELA��O AGRUPADA POR FORMA DE PAGAMENTO' then
  begin
    fxcontas_receber.LoadFromFile('\OneMaker\server\rel\f000062.fr3');
    fxcontas_receber.DESIGNREPORT;
  end;
  if combo_relatorio.text = 'RELA��O AGRUPADA POR CEDENTE' then
  begin
    fxcontas_receber.LoadFromFile('\OneMaker\server\rel\f000070.fr3');
    fxcontas_receber.DESIGNREPORT;
  end;

end;

procedure Tfrmlista_receber2.qrcontasreceberCalcFields(DataSet: TDataSet);
var valor, juro, multa: real;
  dias: integer;
begin


  valor := qrcontasreceber.fieldbyname('valor_ATUAL').asfloat;

  qrcontasreceber.FieldByName('restante').asfloat := 0;

  if qrcontasreceber.fieldbyname('situacao').asinteger = 1 then
  begin
    if valor > 0 then
    begin
      if qrcontasreceber.FieldByName('data_pagamento').asfloat > 0 then // puxar pelo ultimo pagamento
      begin
        if qrcontasreceber.FieldByName('data_pagamento').asfloat > qrcontasreceber.fieldbyname('data_vencimento').asdatetime then
          dias := trunc(date - qrcontasreceber.fieldbyname('data_pagamento').asdatetime)
        else
          dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento').asdatetime);
      end
      else
      begin // puxar pela data de vencimento
        dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento').asdatetime);

        // soh cobrar a multa se nao tiver nenhum pagamento!
        if juro_multa > 0 then
        begin
          multa := (valor * (juro_multa / 100));
        end;
      end;

      if juro_taxa <> 0 then
      begin
        if (DIAS - JURO_CARENCIA) > 0 then
        begin
          juro := (valor * ((juro_taxa / 100) * (DIAS {- juro_carencia})));
          valor := valor + juro + multa;
        end;
      end;
      qrcontasreceber.FieldByName('dias').AsInteger := dias;

      if (dias - juro_carencia) > 0 then
      begin
        qrcontasreceber.FieldByName('dias').AsInteger := dias;
        qrcontasreceber.fieldbyname('restante').asfloat := valor;
        qrcontasreceber.fieldbyname('juros').asfloat := juro + multa;
      end
      else
      begin
        qrcontasreceber.fieldbyname('restante').asfloat := qrcontasreceber.fieldbyname('valor_atual').asfloat;
      end;

    end
    else
    begin
      qrcontasreceber.FieldByName('dias').AsInteger := 0;
      qrcontasreceber.fieldbyname('restante').asfloat := valor;
      qrcontasreceber.fieldbyname('juros').asfloat := 0;
      qrcontasreceber.fieldbyname('situacao2').asinteger := 5;

    end;
  end
  else
  begin
    qrcontasreceber.FieldByName('dias').AsInteger := 0;
    qrcontasreceber.fieldbyname('restante').asfloat := valor;
    qrcontasreceber.fieldbyname('juros').asfloat := 0;
  end;





end;

procedure Tfrmlista_receber2.qrresumoCalcFields(DataSet: TDataSet);
var juros: real;

  vendedor, caixa, tipo, forma, situacao, periodo, ordem: string;
begin
  if combo_vendedor.Text = 'TODOS' then vendedor := '' else begin vendedor := ' and CODvendedor = ''' + copy(combo_vendedor.text, 1, 6) + ''''; end;
  if combo_caixa.Text = 'TODOS' then caixa := '' else begin caixa := ' and codcaixa = ''' + copy(combo_caixa.text, 1, 6) + ''''; end;

  if combo_forma.Text = 'TODAS' then FORMA := '' else begin FORMA := ' and TIPO like ''%' + combo_FORMA.text + '%'''; end;
  if combo_SITUACAO.Text = 'TODAS' then SITUACAO := ''
  else
  begin
    if COMBO_SITUACAO.ITEMINDEX = 0 then situacao := ' and situacao = 1 ';
    if COMBO_SITUACAO.ITEMINDEX = 1 then situacao := ' and situacao = 2 ';
  end;


  if combo_periodo.text = 'DATA DA COMPRA' then
  begin
    periodo := ' DATA_EMISSAO >= :datai and data_EMISSAO <= :dataf ';
    ordem := 'data_EMISSAO, codigo';
  end;

  if combo_periodo.text = 'DATA DE VENCIMENTO' then
  begin
    periodo := ' data_VENCIMENTO >= :datai and data_VENCIMENTO <= :dataf ';
    ordem := 'data_VENCIMENTO,codigo';
  end;
  if combo_periodo.text = 'DATA DO RECEBIMENTO' then
  begin
    periodo := ' data_PAGAMENTO >= :datai and data_PAGAMENTO <= :dataf ';
    ordem := 'data_PAGAMENTO,codigo';
  end;
  juros := 0;
  query.close;
  query.sql.clear;
  query.sql.add('select * from c000049 where codcliente = ''' + qrresumoCODIGO.value + ''' AND ' + periodo + vendedor + caixa + situacao + FORMA);
  query.Params.ParamByName('datai').asdatetime := dateedit1.date;
  query.Params.ParamByName('dataf').asdatetime := dateedit2.date;
  query.open;
  query.first;

  while not query.eof do
  begin
    juros := juros + query.fieldbyname('RESTANTE').value;
    query.next;
  end;
  qrresumototalgeral.value := juros;
end;

procedure Tfrmlista_receber2.queryCalcFields(DataSet: TDataSet);
var valor, juro, multa: real;
  dias: integer;
begin


  valor := query.fieldbyname('valor_ATUAL').asfloat;


  query.FieldByName('restante').asfloat := 0;

  if query.fieldbyname('situacao').asinteger = 1 then
  begin
    if valor > 0 then
    begin
      if query.FieldByName('data_pagamento').asfloat > 0 then // puxar pelo ultimo pagamento
      begin
        if query.FieldByName('data_pagamento').asfloat > query.fieldbyname('data_vencimento').asdatetime then
          dias := trunc(date - query.fieldbyname('data_pagamento').asdatetime)
        else
          dias := trunc(date - query.fieldbyname('data_vencimento').asdatetime);
      end
      else
      begin // puxar pela data de vencimento
        dias := trunc(date - query.fieldbyname('data_vencimento').asdatetime);

        // soh cobrar a multa se nao tiver nenhum pagamento!
        if juro_multa > 0 then
        begin
          multa := (valor * (juro_multa / 100));
        end;
      end;

      if juro_taxa <> 0 then
      begin
        if (DIAS - JURO_CARENCIA) > 0 then
        begin
          juro := (valor * ((juro_taxa / 100) * (DIAS {- juro_carencia})));
          valor := valor + juro + multa;
        end;
      end;
      if (dias - juro_carencia) > 0 then
      begin
        query.FieldByName('dias').AsInteger := dias;
        query.fieldbyname('restante').asfloat := valor;
        query.fieldbyname('juros').asfloat := juro + multa;
      end
      else
      begin
        query.fieldbyname('restante').asfloat := query.fieldbyname('valor_atual').asfloat;
      end;

    end
    else
    begin
      query.FieldByName('dias').AsInteger := 0;
      query.fieldbyname('restante').asfloat := valor;
      query.fieldbyname('juros').asfloat := 0;
      query.fieldbyname('situacao2').asinteger := 5;

    end;
  end
  else
  begin
    query.FieldByName('dias').AsInteger := 0;
    query.fieldbyname('restante').asfloat := valor;
    query.fieldbyname('juros').asfloat := 0;
  end;





end;

procedure Tfrmlista_receber2.combo_relatorioChange(Sender: TObject);
begin
  if combo_relatorio.Text = 'RELA��O SINT�TICA' then
  begin
    lcliente.visible := true;
    combo_cliente.Visible := true;
    lvendedor.Visible := true;
    combo_vendedor.visible := true;
    lcaixa.Visible := true;
    combo_caixa.Visible := true;
    lsituacao.Visible := true;
    combo_situacao.Visible := true;
    lforma.Visible := true;
    combo_forma.Visible := true;
    lconta.Visible := true;
    comboconta.Visible := true;
    lperiodo.Visible := true;
    combo_periodo.visible := true;
  end;

  if combo_relatorio.Text = 'RELA��O DE RECEBIMENTOS' then

  begin
    lcliente.visible := true;
    combo_cliente.Visible := true;
    lvendedor.Visible := false;
    combo_vendedor.visible := false;
    lcaixa.Visible := false;
    combo_caixa.Visible := false;
    lsituacao.Visible := false;
    combo_situacao.Visible := false;
    lforma.Visible := false;
    combo_forma.Visible := false;
    lconta.Visible := false;
    comboconta.Visible := false;
    lperiodo.Visible := true;
    combo_periodo.visible := true;

  end;

  if combo_relatorio.Text = 'RELA��O AGRUPADA POR CLIENTE SINT�TICA' then
  begin
    lcliente.visible := true;
    combo_cliente.Visible := true;
    lvendedor.Visible := true;
    combo_vendedor.visible := true;
    lcaixa.Visible := true;
    combo_caixa.Visible := true;
    lsituacao.Visible := true;
    combo_situacao.Visible := true;
    lforma.Visible := true;
    combo_forma.Visible := true;
    lconta.Visible := true;
    comboconta.Visible := true;
    lperiodo.Visible := true;
    combo_periodo.visible := true;

  end;
  if combo_relatorio.Text = 'RELA��O AGRUPADA POR CLIENTE SINT�TICA - COM ENDERE�O' then
  begin
    lcliente.visible := true;
    combo_cliente.Visible := true;
    lvendedor.Visible := true;
    combo_vendedor.visible := true;
    lcaixa.Visible := true;
    combo_caixa.Visible := true;
    lsituacao.Visible := true;
    combo_situacao.Visible := true;
    lforma.Visible := true;
    combo_forma.Visible := true;
    lconta.Visible := true;
    comboconta.Visible := true;
    lperiodo.Visible := true;
    combo_periodo.visible := true;

  end;

  if combo_relatorio.text = 'RESUMO POR CLIENTE' then
  begin
    lcliente.visible := true;
    combo_cliente.Visible := true;
    lvendedor.Visible := true;
    combo_vendedor.visible := true;
    lcaixa.Visible := true;
    combo_caixa.Visible := true;
    lsituacao.Visible := true;
    combo_situacao.Visible := true;
    lforma.Visible := true;
    combo_forma.Visible := true;
    lconta.Visible := true;
    comboconta.Visible := true;
    lperiodo.Visible := true;
    combo_periodo.visible := true;

  end;
  if combo_relatorio.text = 'RELA��O AGRUPADA POR FORMA DE PAGAMENTO' then
  begin
    lcliente.visible := true;
    combo_cliente.Visible := true;
    lvendedor.Visible := true;
    combo_vendedor.visible := true;
    lcaixa.Visible := true;
    combo_caixa.Visible := true;
    lsituacao.Visible := true;
    combo_situacao.Visible := true;
    lforma.Visible := true;
    combo_forma.Visible := true;
    lconta.Visible := true;
    comboconta.Visible := true;
    lperiodo.Visible := true;
    combo_periodo.visible := true;

  end;
  if combo_relatorio.text = 'RELA��O AGRUPADA POR CEDENTE' then
  begin
    lcliente.visible := true;
    combo_cliente.Visible := true;
    lvendedor.Visible := true;
    combo_vendedor.visible := true;
    lcaixa.Visible := true;
    combo_caixa.Visible := true;
    lsituacao.Visible := true;
    combo_situacao.Visible := true;
    lforma.Visible := true;
    combo_forma.Visible := true;
    lconta.Visible := true;
    comboconta.Visible := true;
    lperiodo.Visible := true;
    combo_periodo.visible := true;

  end;
end;

end.
