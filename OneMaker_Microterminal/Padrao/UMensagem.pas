unit UMensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, UPadraoOkCancel, ActnList, Buttons, StdCtrls, ExtCtrls,
  ImgList;

type
  TFMensagem = class(TFPadraoOkCancel)
    lblMensagem: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    function Mensagem(sCaption, sTexto: string; TipoMensagem: TTipoMensagem): Boolean;
  end;

var
  FMensagem: TFMensagem;

implementation

{$R *.dfm}

{ TFMensagem }

function TFMensagem.Mensagem(sCaption, sTexto: string;
  TipoMensagem: TTipoMensagem): Boolean;
begin
  Caption := sCaption;
  lblCabecalho.Caption := Caption;
  lblMensagem.Caption := sTexto;

  case TipoMensagem of
    tmAviso:
    begin
      TipoFormulario := tfOk;
    end;

    tmAlerta:
    begin
      TipoFormulario := tfOk;
    end;

    tmErro:
    begin
      TipoFormulario := tfOk;
    end;

    tmQuestao:
    begin
      TipoFormulario := tfOkCancel;
    end;
  end;

  Result := ShowModal = mrOk;
end;

end.
