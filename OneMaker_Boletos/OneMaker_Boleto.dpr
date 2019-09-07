program OneMaker_Boleto;

uses
  Forms,
  Uprincipal in 'form\Uprincipal.pas' {principal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'OneMaker - Boletos';
  Application.CreateForm(Tprincipal, principal);
  Application.Run;
end.
