unit UOperadorPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoLista, DB, ImgList, ActnList, ComCtrls, ToolWin, Grids,
  DBGrids, StdCtrls, ExtCtrls, jpeg;

type
  TFOperadorPesquisa = class(TFPadraoLista)
  private
    { Private declarations }
  protected
    procedure SetFrmDetalhe; override;
  public
    { Public declarations }
  end;

var
  FOperadorPesquisa: TFOperadorPesquisa;

implementation

uses
  uDMTabelas, UOperadorCadastro;

{$R *.dfm}

{ TFOperadorPesquisa }

procedure TFOperadorPesquisa.SetFrmDetalhe;
begin
  inherited;
  Frm := TFOperadorCadastro.Create(nil);
end;

end.
