unit produto_falta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, Collection,
  TFlatPanelUnit, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Grids, Wwdbigrd, Wwdbgrid, Menus, frxDesgn, frxClass, frxDBSet,
  AdvGlowButton, VirtualTable, UCBase, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, MemDS, JvExMask, JvToolEdit;

type
  Tfrmproduto_falta = class(TForm)
    FlatPanel1: TFlatPanel;
    GroupBox1: TGroupBox;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    combo_subgrupo: TComboBox;
    wwDBGrid1: TwwDBGrid;
    qrdata: TZQuery;
    dsproduto: TDataSource;
    GroupBox3: TGroupBox;
    combo_estoque: TComboBox;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    Relatrio1: TMenuItem;
    Fechar1: TMenuItem;
    fsproduto: TfrxDBDataset;
    fxproduto: TfrxReport;
    frxDesigner1: TfrxDesigner;
    N1: TMenuItem;
    EditarRelatrio1: TMenuItem;
    qrdatamarca: TStringField;
    bfiltrar: TAdvGlowButton;
    Bevel3: TBevel;
    qrproduto: TVirtualTable;
    qrprodutoCODIGO: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutomarca: TStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoESTOQUE_ATUAL: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoPESO: TFloatField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoQTDE: TFloatField;
    UCControls1: TUCControls;
    qrdataCODIGO: TWideStringField;
    qrdataPRODUTO: TWideStringField;
    qrdataPRECOVENDA: TFloatField;
    qrdataPRECOCUSTO: TFloatField;
    qrdataESTOQUE_ATUAL: TFloatField;
    qrdataCODMARCA: TWideStringField;
    qrdataPESO: TFloatField;
    qrdataQTDE: TExtendedField;
    Panel1: TPanel;
    bitbtn2: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BFILTRARClick(Sender: TObject);
    procedure combo_subgrupoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure combo_subgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure combo_estoqueKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditarRelatrio1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_falta: Tfrmproduto_falta;
    const
   sc_DragMove = $f012;
implementation

uses modulo, xloc_subgrupo, principal;

{$R *.dfm}

procedure Tfrmproduto_falta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FRMMODULO.Conexao.Rollback;
  Action := cafree;
end;

procedure Tfrmproduto_falta.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_falta.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmproduto_falta.BFILTRARClick(Sender: TObject);
begin
  FRMMODULO.qrproduto.Close;
  FRMMODULO.qrproduto.SQL.Clear;
  FRMMODULO.qrproduto.SQL.Add('select * from C000025 order by codigo');
  FRMMODULO.qrproduto.Open;

  qrdata.Close;
  qrdata.SQL.Clear;
  qrdata.SQL.Add('select');
  qrdata.SQL.Add('pro.codigo,');
  qrdata.SQL.Add('pro.produto,');
  qrdata.SQL.Add('pro.precovenda,');
  qrdata.SQL.Add('pro.precocusto,');
  qrdata.SQL.Add('est.estoque_atual,');
  qrdata.SQL.Add('pro.codmarca,');
  qrdata.SQL.Add('pro.peso,');
  qrdata.SQL.Add('sum(mov.qtde) qtde');
  qrdata.SQL.Add('from');
  qrdata.SQL.Add('c000025 pro,');
  qrdata.SQL.Add('c000100 est');
  qrdata.SQL.Add('JOIN');
  qrdata.SQL.Add('c000032 mov on pro.codigo = mov.codproduto');
  qrdata.SQL.Add('and mov.data >= :datai and mov.data <= :dataf');
  if combo_subgrupo.ItemIndex > 0 then
    qrdata.SQL.Add('and pro.codsubgrupo = ''' + copy(combo_subgrupo.text, 1,
      6) + '''');
  if combo_estoque.ItemIndex = 1 then
    qrdata.SQL.Add('and est.estoque_atual < 1');
  if combo_estoque.ItemIndex = 2 then
    qrdata.SQL.Add('and est.ESTOQUE_atual <= pro.ESTOQUEMINIMO');
  qrdata.SQL.Add('and pro.codigo = est.codproduto');
  qrdata.SQL.Add('group by');
  qrdata.SQL.Add('pro.produto,');
  qrdata.SQL.Add('pro.codigo,');
  qrdata.SQL.Add('pro.precovenda,');
  qrdata.SQL.Add('pro.precocusto,');
  qrdata.SQL.Add('est.estoque_atual,');
  qrdata.SQL.Add('pro.codmarca,');
  qrdata.SQL.Add('pro.peso');
  qrdata.SQL.Add('order by');
  qrdata.SQL.Add('pro.produto');
  qrdata.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
  qrdata.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
  qrdata.Open;

  qrproduto.Open;
  qrproduto.First;
  while not qrproduto.Eof do
    qrproduto.Delete;
  qrproduto.Open;
  qrproduto.REFRESH;

  qrdata.First;
  while not qrdata.Eof do
  begin
    qrproduto.INSERT;
    qrproduto.FIELDBYNAME('CODIGO').ASSTRING :=
      qrdata.FIELDBYNAME('CODIGO').ASSTRING;
    qrproduto.FIELDBYNAME('produto').ASSTRING :=
      qrdata.FIELDBYNAME('produto').ASSTRING;
    qrproduto.FIELDBYNAME('precovenda').ASfloat :=
      qrdata.FIELDBYNAME('precovenda').ASfloat;
    qrproduto.FIELDBYNAME('precocusto').ASfloat :=
      qrdata.FIELDBYNAME('precocusto').ASfloat;
    qrproduto.FIELDBYNAME('estoque_atual').ASfloat :=
      qrdata.FIELDBYNAME('estoque_atual').ASfloat;
    qrproduto.FIELDBYNAME('codmarca').ASSTRING :=
      qrdata.FIELDBYNAME('codmarca').ASSTRING;
    qrproduto.FIELDBYNAME('qtde').ASfloat := qrdata.FIELDBYNAME('qtde').ASfloat;

    if FRMMODULO.qrproduto.Locate('CODIGO', qrdata.FIELDBYNAME('CODIGO')
      .ASSTRING, [loCaseInsensitive]) then
    begin
      qrproduto.FIELDBYNAME('peso').ASfloat := FRMMODULO.qrproduto.FIELDBYNAME
        ('ESTOQUEMINIMO').ASfloat - qrdata.FIELDBYNAME('estoque_atual').ASfloat;
      if qrproduto.FIELDBYNAME('peso').ASfloat <= 0 then
        qrproduto.FIELDBYNAME('peso').ASfloat := 0.00;
    end;

    qrproduto.post;
    qrdata.NEXT;
  end;
  qrproduto.REFRESH;
  qrproduto.IndexFieldNames := 'produto';

  wwDBGrid1.setfocus;

end;

procedure Tfrmproduto_falta.combo_subgrupoChange(Sender: TObject);
begin
  if combo_subgrupo.text = 'SELECIONAR' then
  begin
    frmXloc_SUBGRUPO := tfrmXloc_SUBGRUPO.create(self);
    frmXloc_SUBGRUPO.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      combo_subgrupo.Items.Add(resultado_pesquisa1 + ' ' + RESULTADO_PESQUISA2);
      combo_subgrupo.ItemIndex := combo_subgrupo.Items.Count - 1;
    end
    else
      combo_subgrupo.ItemIndex := 0;
  end;
end;

procedure Tfrmproduto_falta.FormShow(Sender: TObject);
begin
  qrproduto.Close;

  DateEdit1.Date := Date;
  DateEdit2.Date := Date;
  qrprodutoPRECOVENDA.DisplayFormat := mascara_valor;
  qrprodutoPRECOCUSTO.DisplayFormat := mascara_valor;
  qrprodutoESTOQUE_ATUAL.DisplayFormat := mascara_qtde;
  qrprodutoQTDE.DisplayFormat := mascara_qtde;
  qrprodutoPESO.DisplayFormat := mascara_qtde;

end;

procedure Tfrmproduto_falta.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_falta.combo_subgrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    combo_estoque.setfocus;
end;

procedure Tfrmproduto_falta.combo_estoqueKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bfiltrar.setfocus;
end;

procedure Tfrmproduto_falta.BitBtn2Click(Sender: TObject);
begin
  frmPrincipal.logUC('Ecluiu Produto/Faltas - ' + qrproduto.FIELDBYNAME
    ('produto').ASSTRING, 3);
  qrproduto.Delete;
end;

procedure Tfrmproduto_falta.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrmproduto_falta.BitBtn1Click(Sender: TObject);
begin
  FRMMODULO.qrrelatorio.Open;
  FRMMODULO.qrrelatorio.edit;

  FRMMODULO.qrrelatorio.FIELDBYNAME('LINHA1').ASSTRING := 'RELATÓRIO DE FALTAS';
  FRMMODULO.qrrelatorio.FIELDBYNAME('LINHA2').ASSTRING := 'PERÍODO: ' +
    DateEdit1.text + ' A ' + DateEdit2.text;
  FRMMODULO.qrrelatorio.FIELDBYNAME('LINHA3').ASSTRING := 'SEÇÃO: ' +
    combo_subgrupo.text;
  FRMMODULO.qrrelatorio.FIELDBYNAME('LINHA4').ASSTRING := 'ESTOQUE: ' +
    combo_estoque.text;

  fxproduto.LoadFromFile('\OneMaker\server\rel\f000084.fr3');
  fxproduto.ShowReport;
end;

procedure Tfrmproduto_falta.EditarRelatrio1Click(Sender: TObject);
begin
  fxproduto.LoadFromFile('\OneMaker\server\rel\f000084.fr3');
  fxproduto.DesignReport;
End;

end.
