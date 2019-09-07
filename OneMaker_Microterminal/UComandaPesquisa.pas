unit UComandaPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoLista, DB, ImgList, ActnList, ComCtrls, ToolWin, Grids,
  DBGrids, StdCtrls, ExtCtrls, Vcl.Imaging.jpeg;

type
  TFComandaPesquisa = class(TFPadraoLista)
  private
    { Private declarations }
  protected
    procedure SetFrmDetalhe; override;
  public
    { Public declarations }
  end;

var
  FComandaPesquisa: TFComandaPesquisa;

implementation

uses
  uDMTabelas, uComandaCadastro;

{$R *.dfm}

{ TFComandaPesquisa }

procedure TFComandaPesquisa.SetFrmDetalhe;
begin
  inherited;
  frm := TFComandaCadastro.Create(nil);
end;

end.
