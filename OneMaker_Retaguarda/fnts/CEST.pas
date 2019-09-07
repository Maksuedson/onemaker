unit CEST;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus, System.StrUtils,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Wwkeycb, AdvGlowButton, ExtCtrls,
  RzPanel;

type
  TfrmCEST = class(TForm)
    RzPanel1: TRzPanel;
    dsCEST: TDataSource;
    pop1: TPopupMenu;
    Retornar1: TMenuItem;
    qrCEST: TZQuery;
    query: TZQuery;
    bretornar: TAdvGlowButton;
    RzPanel2: TRzPanel;
    LOC: TwwIncrementalSearch;
    Label1: TLabel;
    GRID: TwwDBGrid;
    qrCESTCEST: TWideStringField;
    qrCESTNCM: TWideStringField;
    qrCESTDESCRICAO: TWideStringField;
    procedure bretornarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Retornar1Click(Sender: TObject);
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure GRIDDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LOCEnter(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure LOCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LOCExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCEST: TfrmCEST;
  voltar: boolean;

implementation

uses modulo, principal, produto;

{$R *.dfm}

procedure TfrmCEST.bretornarClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TfrmCEST.FormShow(Sender: TObject);
begin
  voltar := false;
  frmmodulo.qrCEST.close;
  frmmodulo.qrCEST.SQL.clear;
  frmmodulo.qrCEST.SQL.add('select * from CEST where ncm LIKE ''' + Copy(frmproduto.eNCM.text,1,2) + '%'' order by CEST');
  frmmodulo.qrCEST.open;
 // showmessage(Copy(frmproduto.eNCM.text,1,2));
end;

procedure TfrmCEST.Retornar1Click(Sender: TObject);
begin
  CLOSE;
end;

procedure TfrmCEST.LOCKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then grid.setfocus;
end;


procedure TfrmCEST.GRIDDblClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCEST.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if voltar then loc.setfocus else
    close;
end;

procedure TfrmCEST.LOCEnter(Sender: TObject);
begin
  voltar := false;
  tedit(sender).Color := $00A0FAF8;

end;

procedure TfrmCEST.GRIDEnter(Sender: TObject);
begin
  voltar := true;
end;

procedure TfrmCEST.GRIDExit(Sender: TObject);
begin
  VOLTAR := FALSE;
end;

procedure TfrmCEST.LOCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;
end;

procedure TfrmCEST.LOCExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

end.
