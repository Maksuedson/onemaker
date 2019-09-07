unit UMesaPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoLista, DB, ImgList, ActnList, ComCtrls, ToolWin, Grids,
  DBGrids, StdCtrls, ExtCtrls, Vcl.Imaging.jpeg;

type
  TFMesaPesquisa = class(TFPadraoLista)
  private
    { Private declarations }
  protected
    procedure SetFrmDetalhe; override;
  public
    { Public declarations }
  end;

var
  FMesaPesquisa: TFMesaPesquisa;

implementation

uses
  uDMTabelas, UMesaCadastro;

{$R *.dfm}

{ TFMesaPesquisa }

procedure TFMesaPesquisa.SetFrmDetalhe;
begin
  inherited;
  Frm := TFMesaCadastro.Create(nil);
end;

end.
