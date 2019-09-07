unit xloc_convenio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb, ExtCtrls,
  Collection, TFlatPanelUnit, Menus, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  Tfrmxloc_convenio = class(TForm)
    FlatPanel1: TFlatPanel;
    combo_localizar: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    combo_referencia: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    loc: TEdit;
    PopupMenu1: TPopupMenu;
    Localizarpor1: TMenuItem;
    Referncia1: TMenuItem;
    ParmetrosdaPesquisa1: TMenuItem;
    GRID: TwwDBGrid;
    ds: TDataSource;
    query: TZQuery;
    Label7: TLabel;
    lvoltar: TLabel;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    procedure Localizarpor1Click(Sender: TObject);
    procedure Referncia1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure locChange(Sender: TObject);
    procedure GRIDDblClick(Sender: TObject);
    procedure ParmetrosdaPesquisa1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmxloc_convenio: Tfrmxloc_convenio;
  voltar: boolean;
   const
   sc_DragMove = $f012;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmxloc_convenio.Localizarpor1Click(Sender: TObject);
var
  X: INTEGER;
begin
  X := combo_localizar.Items.Count - 1;
  if combo_localizar.ItemIndex = X then
    combo_localizar.ItemIndex := 0
  else
    combo_localizar.ItemIndex := combo_localizar.ItemIndex + 1
end;

procedure Tfrmxloc_convenio.Referncia1Click(Sender: TObject);
var
  X: INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = X then
    combo_referencia.ItemIndex := 0
  else
    combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmxloc_convenio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  PARAMETRO_PESQUISA := '';
  Action := CAFREE;
end;

procedure Tfrmxloc_convenio.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmxloc_convenio.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmxloc_convenio.Fechar1Click(Sender: TObject);
begin
  if voltar then
    loc.setfocus
  else
  begin
    resultado_pesquisa1 := '';
    resultado_pesquisa2 := '';
    resultado_pesquisa3 := '';
    resultado_pesquisa4 := '';
    close;
  end;
end;

procedure Tfrmxloc_convenio.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_down then
  begin
    GRID.setfocus;
  end;
end;

procedure Tfrmxloc_convenio.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('nome').asstring;
      resultado_pesquisa3 := query.fieldbyname('DIA_FECHAMENTO').asstring;
      resultado_pesquisa4 := query.fieldbyname('CNPJ').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_convenio.locKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if query.RecNo > 0 then
    begin
      resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := query.fieldbyname('nome').asstring;
      resultado_pesquisa3 := query.fieldbyname('DIA_FECHAMENTO').asstring;
      resultado_pesquisa4 := query.fieldbyname('CNPJ').asstring;
      close;
    end;
  end;
end;

procedure Tfrmxloc_convenio.locEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
  voltar := false;
end;

procedure Tfrmxloc_convenio.locExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
end;

procedure Tfrmxloc_convenio.FormShow(Sender: TObject);
begin
  voltar := false;
  query.close;
  query.SQL.clear;
  if PARAMETRO_PESQUISA = '' then
  begin
    query.SQL.Add
      ('select * from c000071 where codigo Is NOT NULL ORDER BY NOME');
    query.open;
    loc.setfocus;
  end
  else
  begin
    query.SQL.Add
      ('select * from c000071 where codigo Is NOT NULL AND UPPER(NOME) LIKE '''
      + ANSIUPPERCASE(PARAMETRO_PESQUISA) + '%'' ORDER BY NOME');
    query.open;
    GRID.setfocus;
  end;

end;

procedure Tfrmxloc_convenio.GRIDEnter(Sender: TObject);
begin
  voltar := true;
  lvoltar.Caption := 'VOLTAR';
end;

procedure Tfrmxloc_convenio.GRIDExit(Sender: TObject);
begin
  lvoltar.Caption := 'FECHAR';
  voltar := false;
end;

procedure Tfrmxloc_convenio.locChange(Sender: TObject);
var
  ref, tipo: string;
begin
  if combo_referencia.ItemIndex = 0 then
    ref := ''
  else
    ref := '%';
  case combo_localizar.ItemIndex of
    0:
      tipo := 'NOME';
    1:
      tipo := 'CODIGO';
  end;

  try
    query.close;
    query.SQL.clear;
    if loc.text = '' then
      query.SQL.Add
        ('select * from c000071 where codigo IS NOT NULL ORDER BY NOME')
    else
      query.SQL.Add('select * from c000071 where upper(' + tipo + ') like ''' +
        ref + loc.text + '%'' order by ' + tipo);
    query.open;
  except
  end;
end;

procedure Tfrmxloc_convenio.GRIDDblClick(Sender: TObject);
begin
  resultado_pesquisa1 := query.fieldbyname('codigo').asstring;
  resultado_pesquisa2 := query.fieldbyname('nome').asstring;
  resultado_pesquisa3 := query.fieldbyname('DIA_FECHAMENTO').asstring;
  resultado_pesquisa4 := query.fieldbyname('CNPJ').asstring;
  close;

end;

procedure Tfrmxloc_convenio.ParmetrosdaPesquisa1Click(Sender: TObject);
begin
  loc.setfocus;
end;

end.
