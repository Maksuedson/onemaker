unit loc_aliquota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb;

type
  Tfrmloc_aliquota = class(TForm)
    DBGrid1: TDBGrid;
    dsaliquota: TDataSource;
    procedure locChange(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_aliquota: Tfrmloc_aliquota;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmloc_aliquota.locChange(Sender: TObject);
begin
//  frmmodulo.qrregiao.Locate('regiao',loc.text,[lopartialkey]);
end;

procedure Tfrmloc_aliquota.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_aliquota.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_aliquota.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_aliquota.FormShow(Sender: TObject);
begin
  dsaliquota.dataset.open;
  try
    frmmodulo.qrEmitente.Open;
    if frmmodulo.qrEmitente.fieldbyname('uf').asstring = 'TO' then
    begin
      dbgrid1.Columns[1].FieldName := 'TOC';
      dbgrid1.Columns[1].Title.caption := 'ICMS - TO';
    end
    else
    begin
      dbgrid1.Columns[1].FieldName := FRMMODULO.qremitente.FIELDBYNAME('UF').ASSTRING;
      dbgrid1.Columns[1].Title.caption := 'ICMS - ' + FRMMODULO.qremitente.FIELDBYNAME('UF').ASSTRING;
    end;
  except
  end;

end;

procedure Tfrmloc_aliquota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

end.
