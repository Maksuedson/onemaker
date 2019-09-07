program OneMaker_ServidorNFCe;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'OneMaker - Servidor NFCe';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
