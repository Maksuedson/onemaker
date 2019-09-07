unit lista_cheque2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, Grids, DBGrids, wwdblook, AdvGlowButton,
  AdvReflectionImage, Vcl.Imaging.jpeg, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, JvExMask, JvToolEdit;

type
  Tfrmlista_cheque2 = class(TForm)
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
    fxcheque: TfrxReport;
    fscheque: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrcheque: TZQuery;
    qrchequebanco: TStringField;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    qrchequeCODIGO: TWideStringField;
    dtfldEMISSAO: TDateField;
    dtfldVENCIMENTO: TDateField;
    dtfldDATA_DEPOSITO1: TDateField;
    dtfldDATA_DEPOSITO2: TDateField;
    dtfldDATA_DEVOLUCAO1: TDateField;
    dtfldDATA_DEVOLUCAO2: TDateField;
    qrchequeSITUACAO: TIntegerField;
    qrchequeCODCLIENTE: TWideStringField;
    qrchequeTITULAR: TWideStringField;
    qrchequeCODBANCO: TWideStringField;
    qrchequeAGENCIA: TWideStringField;
    qrchequeCONTA: TWideStringField;
    dtfldDATA_CONTA: TDateField;
    qrchequeNUMERO: TWideStringField;
    qrchequeVALOR: TFloatField;
    qrchequeDESCONTO: TFloatField;
    qrchequeLIQUIDO: TFloatField;
    qrchequeCODVENDA: TWideStringField;
    qrchequeOBS1: TWideStringField;
    qrchequeOBS2: TWideStringField;
    qrchequeCODCONTAS_PAGAR: TWideStringField;
    qrchequeDESTINO: TWideStringField;
    dtfldDATA_BAIXA: TDateField;
    qrchequeCODCONTA_CORRENTE: TWideStringField;
    qrchequeCODCONTA: TWideStringField;
    qrchequeNOME: TWideStringField;
    qrchequeTELEFONE1: TWideStringField;
    qrchequeTELEFONE2: TWideStringField;
    qrchequeSIT: TStringField;
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
    procedure qrchequeCalcFields(DataSet: TDataSet);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_cheque2: Tfrmlista_cheque2;
  data_caixa: tdatetime;
    const
   sc_DragMove = $f012;
implementation

uses modulo, loc_caixa, xloc_cliente, xloc_funcionario, principal,
  xloc_banco;

{$R *.dfm}

procedure Tfrmlista_cheque2.combo_clienteChange(Sender: TObject);
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

procedure Tfrmlista_cheque2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_cheque2.FormShow(Sender: TObject);
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

procedure Tfrmlista_cheque2.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_cheque2.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmlista_cheque2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_cheque2.combo_bancoChange(Sender: TObject);
begin
  if combo_banco.Text = 'SELECIONAR' then
  begin
    frmxloc_banco := tfrmxloc_banco.create(self);
    frmxloc_banco.showmodal;


    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_banco.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2);
      combo_banco.ItemIndex := combo_banco.Items.Count - 1;
    end
    else
      combo_banco.ItemIndex := 0;

  end;
end;

procedure Tfrmlista_cheque2.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmlista_cheque2.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bimprimir.SetFocus;
end;

procedure Tfrmlista_cheque2.bimprimirClick(Sender: TObject);
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

  if combo_cliente.Text = 'TODOS' then cliente := '' else begin cliente := ' and codcliente = ''' + copy(combo_cliente.text, 1, 6) + ''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'CLIENTE: ' + COMBO_CLIENTE.TEXT; end;
  if combo_banco.Text = 'TODOS' then banco := '' else begin banco := ' and CH.CODbanco = ''' + copy(combo_banco.text, 1, 6) + ''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENEDEDOR: ' + COMBO_banco.TEXT; end;
  if combo_SITUACAO.ITEMINDEX = 0 then SITUACAO := ''
  else
  begin
    if COMBO_SITUACAO.ITEMINDEX = 1 then situacao := ' and CH.situacao = 1 ';
    if COMBO_SITUACAO.ITEMINDEX = 2 then situacao := ' and CH.situacao <> 1 ';
    if COMBO_SITUACAO.ItemIndex > 2 then
    begin
      SITUACAO := ' and CH.situacao = ' + inttostr(combo_situacao.ItemIndex - 1);
    end;
    frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'SITUAÇÃO: ' + COMBO_SITUACAO.TEXT;
  end;


  if combo_periodo.text = 'DATA DA EMISSAO' then
  begin
    periodo := ' EMISSAO >= :datai and EMISSAO <= :dataf ';
    ordem := 'EMISSAO, CH.NUMERO';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DA COMPRA: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;
  end;

  if combo_periodo.text = 'DATA DE VENCIMENTO' then
  begin
    periodo := ' VENCIMENTO >= :datai and VENCIMENTO <= :dataf ';
    ordem := 'VENCIMENTO,CH.NUMERO';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DE VENCIMENTO: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;
  end;
  if combo_periodo.text = 'DATA DA BAIXA' then
  begin
    periodo := ' data_BAIXA >= :datai and data_BAIXA <= :dataf ';
    ordem := 'data_BAIXA,CH.NUMERO';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DE PAGAMENTO: ' + DATEEDIT1.TEXT + ' A ' + DATEEDIT2.TEXT;
  end;

  if combo_relatorio.Text = 'RELAÇÃO SINTÉTICA' then
  begin
    QRCHEQUE.close;
    QRCHEQUE.sql.clear;
    QRCHEQUE.sql.add('select ch.*, cli.nome, cli.telefone1, cli.telefone2 from c000040 ch, c000007 cli where ch.codcliente = cli.codigo AND ' + periodo + cliente + banco + situacao + ' order by ' + ordem);
    QRCHEQUE.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRCHEQUE.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QRCHEQUE.open;
    QRCHEQUE.REFRESH;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE CHEQUES';
    fxCHEQUE.LoadFromFile('\OneMaker\server\rel\f000083.fr3');
    fxCHEQUE.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO AGRUPADA POR CLIENTE' then
  begin
    QRCHEQUE.close;
    QRCHEQUE.sql.clear;
    QRCHEQUE.sql.add('select ch.*, cli.nome, cli.telefone1, cli.telefone2 from c000040 ch, c000007 cli where ch.codcliente = cli.codigo AND ' + periodo + cliente + banco + situacao + ' order by cli.nome');
    QRCHEQUE.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRCHEQUE.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QRCHEQUE.open;
    QRCHEQUE.REFRESH;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE CHEQUES';
    fxCHEQUE.LoadFromFile('\OneMaker\server\rel\f000082.fr3');
    fxCHEQUE.ShowReport;
  end;


end;

procedure Tfrmlista_cheque2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios', 4) then
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;

  if combo_relatorio.Text = 'RELAÇÃO SINTÉTICA' then
  begin
    fxCHEQUE.LoadFromFile('\OneMaker\server\rel\f000083.fr3');
    fxCHEQUE.designreport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO AGRUPADA POR CLIENTE' then
  begin
    fxCHEQUE.LoadFromFile('\OneMaker\server\rel\f000082.fr3');
    fxCHEQUE.designreport;
  end;

end;

procedure Tfrmlista_cheque2.qrchequeCalcFields(DataSet: TDataSet);
begin
  case qrchequeSITUACAO.Value of
    1: qrcheque.fieldbyname('SIT').Value := 'ATIVO';
    2: qrcheque.fieldbyname('SIT').Value := 'Dep.1a.vez';
    3: qrcheque.fieldbyname('SIT').Value := 'Dep.2a.vez';
    4: qrcheque.fieldbyname('SIT').Value := 'Descontado';
    5: qrcheque.fieldbyname('SIT').Value := 'Dev.1a.vez';
    6: qrcheque.fieldbyname('SIT').Value := 'Dev.2a.vez';
    7: qrcheque.fieldbyname('SIT').Value := 'Repassado';
    8: qrcheque.fieldbyname('SIT').Value := 'Sustado';
    9: qrcheque.fieldbyname('SIT').Value := 'Outros';
  end;

end;

end.
