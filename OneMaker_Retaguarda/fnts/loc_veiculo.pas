unit loc_veiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Wwdbigrd, Wwdbgrid, ComCtrls, Vcl.Menus, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel;

type
  Tfrmloc_veiculo = class(TForm)
    dsveiculo: TDataSource;
    DBGRID1: TwwDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    loc: TwwIncrementalSearch;
    popupmenu1: TPopupMenu;
    E1: TMenuItem;
    procedure locChange(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure E1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_veiculo: Tfrmloc_veiculo;
     const
   sc_DragMove = $f012;
implementation

uses modulo;

{$R *.dfm}

procedure Tfrmloc_veiculo.locChange(Sender: TObject);
begin
  frmmodulo.qrVEICULO.Locate('NOME', loc.text, [lopartialkey]);
end;

procedure Tfrmloc_veiculo.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #27) then
    close;
end;

procedure Tfrmloc_veiculo.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #27) then
    close;
end;

procedure Tfrmloc_veiculo.E1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmloc_veiculo.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmloc_veiculo.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmloc_veiculo.DBGrid1DblClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmloc_veiculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CAFREE;
end;

procedure Tfrmloc_veiculo.locEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmloc_veiculo.locExit(Sender: TObject);
begin
  tedit(Sender).Color := CLWINDOW;
end;

procedure Tfrmloc_veiculo.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    DBGRID1.SETFOCUS;
end;

end.
