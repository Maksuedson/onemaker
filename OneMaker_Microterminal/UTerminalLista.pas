unit UTerminalLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoLista, DB, ImgList, ActnList, ComCtrls, ToolWin, Grids,
  DBGrids, StdCtrls, ExtCtrls, Vcl.Imaging.jpeg, AdvGlowButton,
  System.ImageList, System.Actions;

type
  TFTerminalLista = class(TFPadraoLista)
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
  FTerminalLista: TFTerminalLista;

implementation

uses
  uDMTabelas, uTerminalCadastro;

{$R *.dfm}

{ TFTerminalLista }

procedure TFTerminalLista.SetFrmDetalhe;
begin
  inherited;
  frm := TFTerminalCadastro.Create(nil);
end;

end.
