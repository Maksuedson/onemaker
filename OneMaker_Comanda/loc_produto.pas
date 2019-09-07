unit loc_produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, DB, MemDS, DBAccess, AdvSmoothTouchKeyBoard, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel,
  Uni;

type
  TfrmLoc_produto = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    cb_loc: TComboBox;
    ed_loc: TEdit;
    grid: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    query: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ed_locKeyPress(Sender: TObject; var Key: Char);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure AdvMetroButton3Click(Sender: TObject);
  private
    { Private declarations }
    function zerar(texto: string; qtde: integer): string;
  public
    { Public declarations }
  end;

var
  frmLoc_produto: TfrmLoc_produto;

implementation

uses Modulo, principal;

{$R *.dfm}

function TfrmLoc_produto.zerar(texto: string; qtde: integer): string;
begin
  while length(texto) < qtde do
    texto := '0' + texto;
  result := texto;
end;

procedure TfrmLoc_produto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmLoc_produto.AdvMetroButton3Click(Sender: TObject);
begin
  close;
end;

procedure TfrmLoc_produto.ed_locKeyPress(Sender: TObject; var Key: Char);
var
  i: integer;
begin
  if Key = #27 then
    close;

  if Key = #13 then
  begin
    if ed_loc.text <> '' then
    begin
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000025');
      case cb_loc.ItemIndex of
        0:
          query.sql.add('where upper(produto) like ''' + ed_loc.text + '%''');
        1:
          query.sql.add('where codigo = ''' + zerar(ed_loc.text, 6) + '''');
        2:
          query.sql.add('where codbarra = ''' + ed_loc.text + '''');
      end;
      query.sql.add('order by produto');
      query.open;

      grid.clearrows;

      if query.recordcount > 0 then
      begin
        query.first;
        while not query.eof do
        begin
          i := grid.AddRow(1);
          grid.Cell[0, i].asstring := query.fieldbyname('codigo').asstring;
          grid.Cell[1, i].asstring := query.fieldbyname('codbarra').asstring;
          grid.Cell[2, i].asstring := query.fieldbyname('produto').asstring;
          grid.Cell[3, i].asstring := query.fieldbyname('unidade').asstring;
          grid.Cell[4, i].asfloat := query.fieldbyname('precovenda').asfloat;
          query.next;
        end;
        grid.SetFocus;
        grid.SelectedRow := 0;

      end;
    end;
  end;
end;

procedure TfrmLoc_produto.gridDblClick(Sender: TObject);
begin
  if grid.SelectedRow < 0 then
    exit;
  resultado_pesquisa := grid.Cell[0, grid.SelectedRow].asstring;
  close;
end;

procedure TfrmLoc_produto.gridKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if grid.SelectedRow < 0 then
      exit;
    resultado_pesquisa := grid.Cell[0, grid.SelectedRow].asstring;
    close;
  end;
  if Key = #27 then
    ed_loc.SetFocus;
end;

procedure TfrmLoc_produto.FormShow(Sender: TObject);
begin
  if grid.RowCount > 0 then
  begin
    grid.SetFocus;
    grid.SelectedRow := 0;
  end
  else
    ed_loc.SetFocus;
end;

end.
