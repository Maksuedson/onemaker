program OneMaker_Configurador;

uses
  Forms,
  Principal in 'Principal.pas' {frmprincipal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'OneMaker - Configurador';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
