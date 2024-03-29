unit lista_autorizacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton, JvExMask, JvToolEdit;

type
  Tfrmlista_autorizacao = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    lcliente: TLabel;
    combo_FORNECEDOR: TComboBox;
    fxdesenhar: TfrxDesigner;
    fxautorizacao: TfrxReport;
    fsautorizacao: TfrxDBDataset;
    qrautorizacao: TZQuery;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    qrautorizacaoPV: TExtendedField;
    qrautorizacaoPC_VISTA: TExtendedField;
    qrautorizacaoPC_RECEBER: TExtendedField;
    qrautorizacaoREEMBOLSO: TExtendedField;
    qrautorizacaoSUBSIDIO: TExtendedField;
    qrautorizacaoAUTORIZACAO: TWideStringField;
    qrautorizacaoDATA: TDateField;
    qrautorizacaoCONVENIO: TWideStringField;
    qrautorizacaoCUPOM: TWideStringField;
    qrautorizacaoCNPJ: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure combo_FORNECEDORChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure combo_relatorioKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_autorizacao: Tfrmlista_autorizacao;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor;

{$R *.dfm}

procedure Tfrmlista_autorizacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_autorizacao.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;
  combo_FORNECEDOR.ItemIndex := 0;

  dateedit1.text := '01/' + copy(datetostr(date), 4, 7);
  dateedit2.date := frmprincipal.UltimoDiaMes(date);

end;

procedure Tfrmlista_autorizacao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_autorizacao.bimprimirClick(Sender: TObject);
var FORNECEDOR, ordem: string;
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

  if combo_FORNECEDOR.Text = 'TODOS' then FORNECEDOR := '' else begin FORNECEDOR := ' and codIGO = ''' + copy(combo_FORNECEDOR.text, 1, 6) + ''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'FORNECEDOR: ' + COMBO_FORNECEDOR.TEXT; end;

  if combo_relatorio.Text = 'GERAL' then
  begin
    qrautorizacao.close;
    qrautorizacao.sql.clear;
    qrautorizacao.SQL.add('select sum(pv) pv, sum(pc_vista) pc_vista,sum(pc_receber) pc_receber,');
    qrautorizacao.SQL.add('sum(reembolso) reembolso, sum(subsidio)subsidio,');
    qrautorizacao.SQL.add('autorizacao,data,convenio,cupom,cnpj');
    qrautorizacao.SQL.add('from FARMACIA_AUTORIZACAO where data BETWEEN :datai and :dataf ');

    qrautorizacao.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrautorizacao.params.ParamByName('dataf').asdatetime := dateedit2.date;

    qrautorizacao.SQL.add('group by autorizacao,data,convenio,cupom,cnpj');
    qrautorizacao.SQL.add('order by data');
    qrautorizacao.Open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELA플O GERAL DE AUTORIZA합ES';
    FXAUTORIZACAO.LoadFromFile('\OneMaker\server\rel\f000097.fr3');
    FXAUTORIZACAO.ShowReport;
  end;
  if combo_relatorio.Text = 'AUTORIZA플O' then
  begin
    qrautorizacao.close;
    qrautorizacao.sql.clear;
    qrautorizacao.SQL.add('select sum(pv) pv, sum(pc_vista) pc_vista,sum(pc_receber) pc_receber,');
    qrautorizacao.SQL.add('sum(reembolso) reembolso, sum(subsidio)subsidio,');
    qrautorizacao.SQL.add('autorizacao,data,convenio,cupom,cnpj');
    qrautorizacao.SQL.add('from FARMACIA_AUTORIZACAO where data BETWEEN :datai and :dataf ');

    qrautorizacao.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrautorizacao.params.ParamByName('dataf').asdatetime := dateedit2.date;

    qrautorizacao.SQL.add('group by autorizacao,data,convenio,cupom,cnpj');
    qrautorizacao.SQL.add('order by data');
    qrautorizacao.Open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELA플O ANALITICA DE AUTORIZA합ES';
    FXAUTORIZACAO.LoadFromFile('\OneMaker\server\rel\f000097.fr3');
    FXAUTORIZACAO.ShowReport;
  end;

end;

procedure Tfrmlista_autorizacao.combo_FORNECEDORChange(Sender: TObject);
begin
  if combo_Fornecedor.Text = 'SELECIONAR' then
  begin
    frmxloc_Fornecedor := tfrmxloc_Fornecedor.create(self);
    frmxloc_Fornecedor.showmodal;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_Fornecedor.Items.Add(resultado_pesquisa1 + ' ' + resultado_pesquisa2);
      combo_Fornecedor.ItemIndex := combo_Fornecedor.Items.Count - 1;
    end
    else
      COMBO_Fornecedor.ItemIndex := 0;

  end;
end;

procedure Tfrmlista_autorizacao.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relat�rios', 4) then
  begin
    Application.messagebox('Acesso n�o permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;

  if combo_relatorio.Text = 'GERAL' then
  begin
    FXAUTORIZACAO.LoadFromFile('\OneMaker\server\rel\f000097.fr3');
    FXAUTORIZACAO.DesignReport;
  end;
  if combo_relatorio.Text = 'AUTORIZA플O' then
  begin
    FXAUTORIZACAO.LoadFromFile('\OneMaker\server\rel\f000097.fr3');
    FXAUTORIZACAO.DesignReport;
  end;

end;

procedure Tfrmlista_autorizacao.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0)
end;

procedure Tfrmlista_autorizacao.DateEdit2Exit(Sender: TObject);
begin
  bimprimir.SetFocus;
end;

end.
