unit orcamento_serial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset,
  Vcl.Menus, AdvGlowButton, Vcl.ExtCtrls, Vcl.Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmOrcamento_serial = class(TForm)
    Bevel1: TBevel;
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    bitbtn1: TAdvGlowButton;
    dsproduto: TDataSource;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    qrproduto: TZQuery;
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrcamento_serial: TfrmOrcamento_serial;

implementation

{$R *.dfm}

uses modulo, orcamento;

procedure TfrmOrcamento_serial.FormShow(Sender: TObject);
begin
  selecionado := False;
end;

procedure TfrmOrcamento_serial.wwDBGrid1DblClick(Sender: TObject);
begin
  selecionado := true;
  // numeracao := qrproduto.FieldByName('numeracao').AsString;
  Close;
end;

procedure TfrmOrcamento_serial.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin

  if Key = #13 then
  begin
    selecionado := true;
    Close;
  end;

  if Key = #27 then
  begin
    selecionado := False;
    Close;
  end;

end;

end.
