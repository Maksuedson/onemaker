unit orcamento_grade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, AdvGlowButton,
  Vcl.ExtCtrls, Vcl.Grids,
  Wwdbigrd, Wwdbgrid, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmorcamento_grade = class(TForm)
    Bevel1: TBevel;
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    bitbtn1: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    dsproduto: TDataSource;
    qrproduto: TZQuery;
    procedure Cancelar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmorcamento_grade: Tfrmorcamento_grade;

implementation

{$R *.dfm}

uses orcamento, modulo;

procedure Tfrmorcamento_grade.Cancelar1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrmorcamento_grade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmorcamento_grade.FormShow(Sender: TObject);
begin
  selecionado := false;
end;

procedure Tfrmorcamento_grade.wwDBGrid1DblClick(Sender: TObject);
begin
  selecionado := true;
  //numeracao := qrproduto.FieldByName('numeracao').AsString;
  Close;
end;

procedure Tfrmorcamento_grade.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

  if key = #13 then
  begin
    selecionado := true;
    close;
  end;

  if key = #27 then
  begin
    selecionado := false;
    close;
  end;

end;

end.
