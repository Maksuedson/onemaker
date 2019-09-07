unit UPadraoMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, ActnList, StdCtrls, ExtCtrls, Buttons, ComCtrls, ImgList,
  jpeg, System.ImageList, System.Actions;

type
  TFPadraoMenu = class(TFPadrao)
    stbMenu: TStatusBar;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPadraoMenu: TFPadraoMenu;

implementation

{$R *.dfm}

procedure TFPadraoMenu.FormShow(Sender: TObject);
begin
  inherited;
  Caption := Application.Title;
  lblCabecalho.Caption := Caption;
  stbMenu.Panels[0].Text := Caption;
end;

end.
