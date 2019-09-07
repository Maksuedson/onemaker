unit UProdutoLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoLista, DB, ImgList, ActnList, ComCtrls, ToolWin, Grids,
  DBGrids, StdCtrls, ExtCtrls, Vcl.Imaging.jpeg;

type
  TFProdutoLista = class(TFPadraoLista)
    dbgrd1: TDBGrid;
    DataSource1: TDataSource;
  private
    { Private declarations }
  protected
    procedure SetFrmDetalhe; override;
  public
    { Public declarations }
  end;

var
  FProdutoLista: TFProdutoLista;

implementation

uses
  uDMTabelas, UProdutoCadastro;

{$R *.dfm}

{ TFProdutoLista }

procedure TFProdutoLista.SetFrmDetalhe;
begin
  inherited;
  Frm := TFProdutoCadastro.Create(nil);
end;

end.
