unit loc_conta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Wwdbigrd, Wwdbgrid, ComCtrls;

type
  Tfrmloc_conta = class(TForm)
    dsbanco: TDataSource;
    DBGRID1: TwwDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    loc: TwwIncrementalSearch;
    Bevel1: TBevel;
    StatusBar1: TStatusBar;
    procedure locChange(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_conta: Tfrmloc_conta;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmloc_conta.locChange(Sender: TObject);
begin
  frmmodulo.qrPLANO.Locate('CONTA', loc.text, [lopartialkey]);
end;

procedure Tfrmloc_conta.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #27) then
    close;
end;

procedure Tfrmloc_conta.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) or (Key = #27) then
  begin
    resultado_pesquisa1 := frmmodulo.qrPLANO.fieldbyname('codigo').asstring;
    resultado_pesquisa2 := frmmodulo.qrPLANO.fieldbyname('nivel').asstring;
    resultado_pesquisa3 := frmmodulo.qrPLANO.fieldbyname
      ('classificacao').asstring;
    resultado_pesquisa4 := frmmodulo.qrPLANO.fieldbyname('conta').asstring;
    close;
  end;
end;

procedure Tfrmloc_conta.DBGrid1DblClick(Sender: TObject);
begin
  resultado_pesquisa1 := frmmodulo.qrPLANO.fieldbyname('codigo').asstring;
  resultado_pesquisa2 := frmmodulo.qrPLANO.fieldbyname('nivel').asstring;
  resultado_pesquisa3 := frmmodulo.qrPLANO.fieldbyname('classificacao')
    .asstring;
  resultado_pesquisa4 := frmmodulo.qrPLANO.fieldbyname('conta').asstring;
  close;
end;

procedure Tfrmloc_conta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CAFREE;
end;

procedure Tfrmloc_conta.locEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmloc_conta.locExit(Sender: TObject);
begin
  tedit(Sender).Color := CLWINDOW;
end;

procedure Tfrmloc_conta.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    DBGRID1.SETFOCUS;
end;

end.
