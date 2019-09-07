unit xloc_produto_entrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, Buttons,
  ImgList, AdvToolBar, AdvToolBarStylers, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvGlowButton, JvExMask, JvToolEdit;

type
  Tfrmxloc_produto_entrada = class(TForm)
    PopupMenu1: TPopupMenu;
    GRID: TwwDBGrid;
    ds: TDataSource;
    query: TZQuery;
    Fechar1: TMenuItem;
    QUERY2: TZQuery;
    PPROCURA: TFlatPanel;
    wwDBGrid1: TwwDBGrid;
    DS2: TDataSource;
    queryfornecedor: TStringField;
    PesquisaNota1: TMenuItem;
    Bevel3: TBevel;
    Panel1: TPanel;
    Label56: TLabel;
    Label18: TLabel;
    Label8: TLabel;
    edata_inicio: TJvDateEdit;
    edata_final: TJvDateEdit;
    ENUMERO: TEdit;
    bfiltrar: TAdvGlowButton;
    queryCODIGO: TWideStringField;
    queryNUMERO: TWideStringField;
    queryCODEMPRESA: TWideStringField;
    queryCODFORNECEDOR: TWideStringField;
    queryMODELO: TWideStringField;
    queryESPECIE: TWideStringField;
    querySERIE: TWideStringField;
    queryCFOP: TWideStringField;
    qrinventarioDATA_EMISSAO: TDateField;
    qrinventarioDATA_LANCAMENTO: TDateField;
    queryCONF_BASEICMS: TFloatField;
    queryCONF_VALORICMS: TFloatField;
    queryCONF_BASESUB: TFloatField;
    queryCONF_VALORSUB: TFloatField;
    queryCONF_FRETE: TFloatField;
    queryCONF_SEGURO: TFloatField;
    queryCONF_OUTRAS: TFloatField;
    queryCONF_IPI: TFloatField;
    queryCONF_DESCONTO: TFloatField;
    queryCONF_TOTALPRODUTOS: TFloatField;
    queryCONF_TOTALNOTA: TFloatField;
    queryCONF_ICMSRETIDO: TFloatField;
    queryCONF_ICMSREDITO_PERC: TFloatField;
    queryBASE_ICMS: TFloatField;
    queryVALOR_ICMS: TFloatField;
    queryBASE_SUB: TFloatField;
    queryVALOR_SUB: TFloatField;
    queryFRETE: TFloatField;
    querySEGURO: TFloatField;
    queryOUTRAS: TFloatField;
    queryIPI: TFloatField;
    queryDESCONTO: TFloatField;
    queryTOTAL_PRODUTOS: TFloatField;
    queryTOTAL_NOTA: TFloatField;
    queryTRANSP_NOME: TWideStringField;
    queryTRANSP_FRETE: TWideStringField;
    queryTRANSP_PLACA: TWideStringField;
    queryTRANSP_PLACAUF: TWideStringField;
    queryTRANSP_IE: TWideStringField;
    queryTRANSP_CNPJ: TWideStringField;
    queryTRANSP_ENDERECO: TWideStringField;
    queryTRANSP_CIDADE: TWideStringField;
    queryTRANSP_UF: TWideStringField;
    queryTRANSP_QTDE: TFloatField;
    queryTRANSP_ESPECIE: TWideStringField;
    queryTRANSP_MARCA: TWideStringField;
    queryTRANSP_NUMERO: TWideStringField;
    queryTRANSP_PESOBRUTO: TFloatField;
    queryTRANSP_PESOLIQUIDO: TFloatField;
    queryOBS1: TWideStringField;
    queryOBS2: TWideStringField;
    queryOBS3: TWideStringField;
    queryOBS4: TWideStringField;
    queryOBS5: TWideStringField;
    queryOBS6: TWideStringField;
    queryOBS7: TWideStringField;
    querySITUACAO: TIntegerField;
    queryITENS: TIntegerField;
    queryTIPO: TWideStringField;
    queryNOTA_FISCAL: TWideStringField;
    queryVALOR_MERCADORIAS: TFloatField;
    queryCODREMETENTE: TWideStringField;
    queryICMS_ISENTO: TFloatField;
    queryICMS_OUTRAS: TFloatField;
    queryDESCONTO_INCIDENTE: TIntegerField;
    queryITEM_FRETE_VALOR: TFloatField;
    queryITEM_FRETE_BASE: TFloatField;
    queryITEM_FRETE_ALIQUOTA: TFloatField;
    queryITEM_FRETE_ICMS: TFloatField;
    queryITEM_SEGURO_VALOR: TFloatField;
    queryITEM_SEGURO_BASE: TFloatField;
    queryITEM_SEGURO_ALIQUOTA: TFloatField;
    queryITEM_SEGURO_ICMS: TFloatField;
    queryITEM_PIS_VALOR: TFloatField;
    queryITEM_PIS_BASE: TFloatField;
    queryITEM_PIS_ALIQUOTA: TFloatField;
    queryITEM_PIS_ICMS: TFloatField;
    queryITEM_COMPLEMENTO_VALOR: TFloatField;
    queryITEM_COMPLEMENTO_BASE: TFloatField;
    queryITEM_COMPLEMENTO_ALIQUOTA: TFloatField;
    queryITEM_COMPLEMENTO_ICMS: TFloatField;
    queryITEM_SERVICO_VALOR: TFloatField;
    queryITEM_SERVICO_BASE: TFloatField;
    queryITEM_SERVICO_ALIQUOTA: TFloatField;
    queryITEM_SERVICO_ICMS: TFloatField;
    queryITEM_OUTRAS_VALOR: TFloatField;
    queryITEM_OUTRAS_BASE: TFloatField;
    queryITEM_OUTRAS_ALIQUOTA: TFloatField;
    queryITEM_OUTRAS_ICMS: TFloatField;
    queryITEM_ESPECIAL_TOTAL: TFloatField;
    queryITEM_ESPECIAL_VALOR: TFloatField;
    queryBASEICMS_PRODUTOS: TIntegerField;
    queryCONF_ITEM_ESPECIAL: TFloatField;
    queryOBS8: TWideStringField;
    queryCREDITO_ICMS: TFloatField;
    queryPIS: TFloatField;
    queryCOFINS: TFloatField;
    queryOPERACAO: TWideStringField;
    queryINTEGRACAO: TIntegerField;
    queryAPROVEITA_CREDITO_ICMS: TWideStringField;
    queryCHAVE: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure GRIDDblClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure edata_inicioEnter(Sender: TObject);
    procedure edata_inicioExit(Sender: TObject);
    procedure edata_inicioKeyPress(Sender: TObject; var Key: Char);
    procedure ENUMEROExit(Sender: TObject);
    procedure BfiltrarClick(Sender: TObject);
    procedure PesquisaNota1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_produto_entrada: Tfrmxloc_produto_entrada;
  voltar: boolean;

implementation

uses modulo, produto, xloc_produto, principal;

{$R *.dfm}

procedure Tfrmxloc_produto_entrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  ACTION := CAFREE;
end;

procedure Tfrmxloc_produto_entrada.Fechar1Click(Sender: TObject);
begin
  if voltar then ENUMERO.setfocus else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    close;
  end;
end;

procedure Tfrmxloc_produto_entrada.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('numero').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_produto_entrada.FormShow(Sender: TObject);
begin
  edata_inicio.text := '01/' + copy(datetostr(date), 4, 7);
  edata_final.date := frmprincipal.UltimoDiaMes(date);
  BfiltrarClick(frmxloc_produto_entrada);
end;

procedure Tfrmxloc_produto_entrada.GRIDDblClick(Sender: TObject);
begin
  resultado_pesquisa1 := query.fieldbyname('numero').asstring;
  resultado_pesquisa2 := query.fieldbyname('data_lancamento').asstring;

  close;

end;

procedure Tfrmxloc_produto_entrada.wwDBGrid1Enter(Sender: TObject);
begin
  close;
end;

procedure Tfrmxloc_produto_entrada.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  //if key = #13 then locKeyPress(frmxloc_produto_entrada,key);
  //loc.setfocus;
end;


procedure Tfrmxloc_produto_entrada.edata_inicioEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure Tfrmxloc_produto_entrada.edata_inicioExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure Tfrmxloc_produto_entrada.edata_inicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmxloc_produto_entrada.ENUMEROExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  ENUMERO.Text := frmPrincipal.zerarcodigo(ENUMERO.Text, 6);
  BfiltrarClick(frmxloc_produto_entrada);

end;

procedure Tfrmxloc_produto_entrada.BfiltrarClick(Sender: TObject);
var
  nota: string;
begin

  if (enumero.text = '000000') or (enumero.text = '') then nota := '' else nota := ' and numero = ''' + enumero.text + '''';

  query.close;
  query.sql.clear;
  query.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf ' + nota + ' order by data_lancamento');
  query.params.ParamByName('datai').asdatetime := edata_inicio.date;
  query.params.ParamByName('dataf').asdatetime := edata_final.date;
  query.open;

  ENUMERO.Text := '';

  //frmmodulo.qradic_nota.First;
  GRID.SetFocus;

end;

procedure Tfrmxloc_produto_entrada.PesquisaNota1Click(Sender: TObject);
begin
  ENUMERO.SetFocus;
end;

end.
