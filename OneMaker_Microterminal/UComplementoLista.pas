unit UComplementoLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoLista, DB, ImgList, ActnList, ComCtrls, ToolWin, Grids,
  DBGrids, jpeg, StdCtrls, ExtCtrls, System.ImageList, System.Actions,
  AdvGlowButton;

type
  TFComplementoLista = class(TFPadraoLista)
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
  private
    { Private declarations }
  protected
    procedure SetFrmDetalhe; override;
  public
    { Public declarations }
  end;

var
  FComplementoLista: TFComplementoLista;

implementation

uses
  uDMTabelas, UComplementoCadastro;

{$R *.dfm}

{ TFComplementoLista }

procedure TFComplementoLista.SetFrmDetalhe;
begin
  inherited;
  Frm := TFComplementoCadastro.Create(nil);
end;

end.
