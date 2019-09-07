unit etiqueta_grade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, Wwdbigrd, Wwdbgrid;

type
  Tfrmetiqueta_grade = class(TForm)
    dsgrade: TDataSource;
    wwDBGrid1: TwwDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmetiqueta_grade: Tfrmetiqueta_grade;

implementation

uses etiquetador, modulo;

{$R *.dfm}

procedure Tfrmetiqueta_grade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CAFREE;
end;

procedure Tfrmetiqueta_grade.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    RESULTADO_PESQUISA1 := dsgrade.DATASET.FIELDBYNAME('NUMERACAO').ASSTRING;
    resultado_pesquisa2 := dsgrade.DATASET.FIELDBYNAME('CODBARRA').ASSTRING;
    CLOSE;
  end;
  if Key = #27 then
  begin
    RESULTADO_PESQUISA1 := '';
    resultado_pesquisa2 := '';
    CLOSE;
  end;
end;

procedure Tfrmetiqueta_grade.wwDBGrid1DblClick(Sender: TObject);
begin
  RESULTADO_PESQUISA1 := dsgrade.DATASET.FIELDBYNAME('NUMERACAO').ASSTRING;
  resultado_pesquisa2 := dsgrade.DATASET.FIELDBYNAME('CODBARRA').ASSTRING;
  CLOSE;
end;

end.
