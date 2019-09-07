unit Lista_ABC_Marca_Grupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ExtCtrls, StdCtrls, Mask, DB, DBAccess, frxClass, frxDBSet, frxDesgn, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, AdvReflectionImage, Vcl.Menus, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit;

type
  TfrmLista_ABC_Marca_Grupo = class(TForm)
    lmarca: TLabel;
    combo_marca: TComboBox;
    Label2: TLabel;
    combo_grupo: TComboBox;
    Label9: TLabel;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    relABC: TfrxReport;
    frxDesigner1: TfrxDesigner;
    fsABC: TfrxDBDataset;
    query: TZQuery;
    qrMarca: TZQuery;
    queryperc_marca: TFloatField;
    queryperc_total: TFloatField;
    qrtotal: TZQuery;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    queryTOTAL_VENDA: TExtendedField;
    queryCOD_MARCA: TWideStringField;
    queryMARCA: TWideStringField;
    queryCOD_GRUPO: TWideStringField;
    queryGRUPO: TWideStringField;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure combo_marcaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure combo_grupoChange(Sender: TObject);
    procedure combo_marcaKeyPress(Sender: TObject; var Key: Char);
    procedure combo_grupoKeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure queryCalcFields(DataSet: TDataSet);
    procedure bitbtn1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLista_ABC_Marca_Grupo: TfrmLista_ABC_Marca_Grupo;
  rtotal: real;
     const
   sc_DragMove = $f012;

implementation

uses xloc_marca, xloc_grupo, modulo, principal;

{$R *.dfm}

procedure TfrmLista_ABC_Marca_Grupo.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmLista_ABC_Marca_Grupo.AdvSmoothExpanderPanel1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TfrmLista_ABC_Marca_Grupo.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLista_ABC_Marca_Grupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmLista_ABC_Marca_Grupo.combo_marcaChange(Sender: TObject);
begin
  if combo_marca.Text = 'SELECIONAR' then
  begin

    frmxloc_marca := tfrmxloc_marca.create(self);
    frmxloc_marca.showmodal;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_marca.Items.Add(RESULTADO_PESQUISA1 + ' ' + resultado_pesquisa2);
      combo_marca.ItemIndex := combo_marca.Items.Count - 1;
    end
    else
      combo_marca.ItemIndex := 0;

  end;
end;

procedure TfrmLista_ABC_Marca_Grupo.FormShow(Sender: TObject);
begin
  combo_marca.ItemIndex := 0;
  combo_grupo.ItemIndex := 0;
  rtotal := 0;
  DateEdit1.Date := Date;
  DateEdit2.Date := Date;
end;

procedure TfrmLista_ABC_Marca_Grupo.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmLista_ABC_Marca_Grupo.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bimprimir.setfocus;
end;

procedure TfrmLista_ABC_Marca_Grupo.combo_grupoChange(Sender: TObject);
begin
  if combo_grupo.Text = 'SELECIONAR' then
  begin

    frmXloc_GRUPO := tfrmXloc_GRUPO.create(self);
    frmXloc_GRUPO.showmodal;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_grupo.Items.Add(RESULTADO_PESQUISA1 + ' ' + resultado_pesquisa2);
      combo_grupo.ItemIndex := combo_grupo.Items.Count - 1;
    end
    else
      combo_grupo.ItemIndex := 0;
  end;
end;

procedure TfrmLista_ABC_Marca_Grupo.combo_marcaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmLista_ABC_Marca_Grupo.combo_grupoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmLista_ABC_Marca_Grupo.bimprimirClick(Sender: TObject);
var
  GRUPO, periodo, MARCA: string;
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  frmmodulo.qrrelatorio.FIELDBYNAME('LINHA1').ASSTRING := '';
  frmmodulo.qrrelatorio.FIELDBYNAME('LINHA2').ASSTRING := '';
  frmmodulo.qrrelatorio.FIELDBYNAME('LINHA3').ASSTRING := '';
  frmmodulo.qrrelatorio.FIELDBYNAME('LINHA4').ASSTRING := '';
  frmmodulo.qrrelatorio.FIELDBYNAME('LINHA5').ASSTRING := '';
  frmmodulo.qrrelatorio.FIELDBYNAME('LINHA6').ASSTRING := '';
  frmmodulo.qrrelatorio.FIELDBYNAME('LINHA7').ASSTRING := '';

  if combo_marca.Text = 'TODOS' then
    MARCA := ''
  else
  begin
    MARCA := ' and c000025.CODMARCA = ''' + copy(combo_marca.Text, 1, 6) + '''';
    frmmodulo.qrrelatorio.FIELDBYNAME('LINHA4').ASSTRING := 'MARCA: ' +
      combo_marca.Text;
  end;
  if combo_grupo.Text = 'TODOS' then
    GRUPO := ''
  else
  begin
    GRUPO := ' and c000025.codgrupo = ''' + copy(combo_grupo.Text, 1, 6) + '''';
    frmmodulo.qrrelatorio.FIELDBYNAME('LINHA3').ASSTRING := 'GRUPO: ' +
      combo_grupo.Text;
  end;
  periodo := ' and c000032.data >= :datai and c000032.data <= :dataf ';
  frmmodulo.qrrelatorio.FIELDBYNAME('LINHA2').ASSTRING := 'PERÍODO: ' +
    DateEdit1.Text + ' A ' + DateEdit2.Text;

  qrtotal.close;
  qrtotal.sql.clear;
  qrtotal.sql.Add('select');
  qrtotal.sql.Add('sum(c000032.total) total_geral');
  qrtotal.sql.Add('from');
  qrtotal.sql.Add('c000032,');
  qrtotal.sql.Add('c000025');
  qrtotal.sql.Add('where');
  qrtotal.sql.Add('c000032.codproduto = c000025.codigo and');
  qrtotal.sql.Add('c000032.movimento in (2,9)');
  qrtotal.sql.Add(MARCA + GRUPO + periodo);
  qrtotal.ParamByName('datai').asdatetime := DateEdit1.Date;
  qrtotal.ParamByName('dataf').asdatetime := DateEdit2.Date;
  qrtotal.open;

  rtotal := qrtotal.FIELDBYNAME('total_geral').AsFloat;

  query.close;
  query.sql.clear;
  query.sql.Add('select');
  query.sql.Add('sum(c000032.total) total_venda,');
  query.sql.Add('c000019.codigo as cod_marca,');
  query.sql.Add('c000019.nome as marca,');
  query.sql.Add('c000017.codigo as cod_grupo,');
  query.sql.Add('c000017.grupo as grupo');
  query.sql.Add('from');
  query.sql.Add('c000032,');
  query.sql.Add('c000025,');
  query.sql.Add('c000019,');
  query.sql.Add('c000017');
  query.sql.Add('where');
  query.sql.Add('c000032.codproduto = c000025.codigo and');
  query.sql.Add('c000025.codmarca   = c000019.codigo and');
  query.sql.Add('c000025.codgrupo   = c000017.codigo and');
  query.sql.Add('c000032.movimento in (2,9)');
  query.sql.Add(MARCA + GRUPO + periodo);
  query.sql.Add('group by');
  query.sql.Add('c000019.codigo,');
  query.sql.Add('c000019.nome,');
  query.sql.Add('c000017.codigo,');
  query.sql.Add('c000017.grupo');
  query.sql.Add('order by c000019.nome, c000017.grupo');
  query.ParamByName('datai').asdatetime := DateEdit1.Date;
  query.ParamByName('dataf').asdatetime := DateEdit2.Date;
  query.open;

  Application.ProcessMessages;

  frmmodulo.qrrelatorio.FIELDBYNAME('LINHA1').ASSTRING :=
    'PERCENTUAL SOBRE VENDA (MARCA/GRUPO)';

  relABC.LoadFromFile('\OneMaker\server\rel\f000195.fr3');
  relABC.ShowReport;
  frmPrincipal.logUC('Abriu Relatorio Lista/ABC/Marca/Grupo', 0);
end;

procedure TfrmLista_ABC_Marca_Grupo.queryCalcFields(DataSet: TDataSet);
begin
  qrMarca.close;
  qrMarca.sql.clear;
  qrMarca.sql.Add('select');
  // qrmarca.sql.Add('sum(c000032.total-c000032.desconto) as total');
  qrMarca.sql.Add('sum(c000032.total) as total');
  qrMarca.sql.Add('from');
  qrMarca.sql.Add('c000032,');
  qrMarca.sql.Add('c000025,');
  qrMarca.sql.Add('c000019');
  qrMarca.sql.Add('where');
  qrMarca.sql.Add('c000032.codproduto = c000025.codigo and');
  qrMarca.sql.Add('c000025.codmarca   = c000019.codigo and');
  qrMarca.sql.Add('c000032.movimento in (2,9)');
  qrMarca.sql.Add('and c000019.codigo = ''' + query.FIELDBYNAME('cod_marca')
    .ASSTRING + '''');
  qrMarca.sql.Add('and c000032.data between :datai and :dataf');
  qrMarca.ParamByName('datai').asdatetime := DateEdit1.Date;
  qrMarca.ParamByName('dataf').asdatetime := DateEdit2.Date;
  qrMarca.open;

  if rtotal = 0 then
    rtotal := 1;

  if (query.FIELDBYNAME('total_venda').AsFloat > 0) and
    (qrMarca.FIELDBYNAME('total').AsFloat > 0) then
  begin
    query.FIELDBYNAME('perc_marca').AsFloat :=
      (query.FIELDBYNAME('total_venda').AsFloat * 100) /
      qrMarca.FIELDBYNAME('total').AsFloat;

    query.FIELDBYNAME('perc_total').AsFloat :=
      (query.FIELDBYNAME('total_venda').AsFloat * 100) / rtotal;

  end;

end;

procedure TfrmLista_ABC_Marca_Grupo.bitbtn1Click(Sender: TObject);
begin
  relABC.LoadFromFile('\OneMaker\server\rel\f000195.fr3');
  relABC.designreport;
end;

end.
