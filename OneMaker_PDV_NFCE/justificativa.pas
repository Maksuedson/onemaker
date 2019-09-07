unit justificativa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, AdvGlowButton;

type
  Tfrmjustificativa = class(TForm)
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    AdvMetroButton1: TAdvMetroButton;
    Panel1: TPanel;
    edTexto: TMemo;
    btjust001: TAdvGlowButton;
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure btjust001Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmjustificativa: Tfrmjustificativa;

implementation

{$R *.dfm}

procedure Tfrmjustificativa.AdvMetroButton1Click(Sender: TObject);
begin
  if Length(edTexto.Lines.Text) <= 15  then begin
    Application.MessageBox('A Justificativa tem que ter pelo menos 15 caracteres','Atenção!',MB_ICONINFORMATION);
    edTexto.SetFocus;
    exit;
  end;
  Close;
end;

procedure Tfrmjustificativa.btjust001Click(Sender: TObject);
begin
  if Length(edTexto.Lines.Text) <= 15  then begin
    Application.MessageBox('A Justificativa tem que ter pelo menos 15 caracteres','Atenção!',MB_ICONINFORMATION);
    edTexto.SetFocus;
    exit;
  end;
  Close;
end;

end.
