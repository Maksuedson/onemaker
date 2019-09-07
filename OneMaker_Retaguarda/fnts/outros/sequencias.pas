unit sequencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, Menus, StdCtrls, Buttons,
  AdvGlowButton, Wwdbigrd, Wwdbgrid;

type
  Tfrmsequencias = class(TForm)
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    Confirma1: TMenuItem;
    Sair1: TMenuItem;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  procedure GridZebrado(RecNo : LongInt; Grid : TDBGrid; Rect : TRect; Column : TColumn; State : TGridDrawState);

var
  frmsequencias: Tfrmsequencias;

implementation

uses modulo, principal;
{$R *.dfm}

Procedure GridZebrado(RecNo : LongInt; Grid : TDBGrid; Rect : TRect; Column : TColumn; State : TGridDrawState);
Begin
  GRID.Color      := clWindow;
  grid.FixedColor := clSilver;
  if not(Odd(RecNo)) then // Se não for par
  begin
    if not (gdSelected in State) then
    Begin // Se o estado da célula não é selecionado
      with Grid do
        Begin
        with Canvas do
        Begin
          Brush.Color := $00F3F8F8; // Cor da célula
          FillRect (Rect); // Pinta a célula
        End; // with Canvas
        DefaultDrawDataCell(Rect, Column.Field, State) // Reescreve o valor que vem do banco
        End // With Grid
    End // if not (gdSelected in State)
  end; //if not(Odd(RecNo)) then // Se não for par
End;

procedure Tfrmsequencias.bconfirmaClick(Sender: TObject);
begin
if frmmodulo.qrsequencias.State in [dsedit,dsinsert] then
   begin
     frmmodulo.qrsequencias.Post;
     frmmodulo.Conexao.Commit;
   end;
end;

procedure Tfrmsequencias.bcancelarClick(Sender: TObject);
begin
if frmmodulo.qrsequencias.State in [dsedit,dsinsert] then
   begin
     frmmodulo.qrsequencias.cancel;
   end;
end;

procedure Tfrmsequencias.FormShow(Sender: TObject);
begin
  frmmodulo.qrsequencias.Open;
  frmmodulo.qrsequencias.IndexFieldNames := 'codigo asc';
end;

procedure Tfrmsequencias.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  GridZebrado (TDBGrid(Sender).DataSource.DataSet.RecNo, TDBGrid(Sender), Rect, Column, State);
end;

end.
