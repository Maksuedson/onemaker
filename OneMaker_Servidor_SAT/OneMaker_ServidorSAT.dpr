program OneMaker_ServidorSAT;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'OneMaker - Servidor SAT';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
