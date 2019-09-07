unit UPadraoOkCancel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, StdCtrls, ExtCtrls, Buttons, ActnList, ImgList, jpeg,
  System.Actions, System.ImageList;

type
  TTipoFormulario = (tfOk, tfOkCancel);

  TFPadraoOkCancel = class(TFPadrao)
    pnlRodape: TPanel;
    bvRodape: TBevel;
    sbCancelar: TSpeedButton;
    sbOk: TSpeedButton;
    actOk: TAction;
    actCancelar: TAction;
    procedure actOkExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
  private
    FTipoFormulario: TTipoFormulario;
    procedure SetTipoFormulario(const Value: TTipoFormulario);
    { Private declarations }
  public
    { Public declarations }
  published
    property TipoFormulario: TTipoFormulario read FTipoFormulario write SetTipoFormulario;
  end;

var
  FPadraoOkCancel: TFPadraoOkCancel;

implementation

{$R *.dfm}

{ TFPadraoOkCancel }

procedure TFPadraoOkCancel.actCancelarExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TFPadraoOkCancel.actOkExecute(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFPadraoOkCancel.SetTipoFormulario(const Value: TTipoFormulario);
const
  _ESPACO = 5;
begin
  FTipoFormulario := Value;
  case FTipoFormulario of
    tfOk       :
    begin
      sbOk.Left := pnlRodape.Width - sbOk.Width - BorderWidth - _ESPACO;
    end;

    tfOkCancel :
    begin
      sbCancelar.Left := pnlRodape.Width - sbCancelar.Width - BorderWidth - _ESPACO;
      sbOk.Left := sbCancelar.Left - sbOk.Width - _ESPACO;
    end;
  end;

  sbCancelar.Visible := (FTipoFormulario = tfOkCancel);
end;

end.
