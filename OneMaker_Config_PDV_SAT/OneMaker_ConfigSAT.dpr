program OneMaker_ConfigSAT;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal},
  funcoes in 'funcoes.pas',
  cnif in 'cnif.pas' {frmCNIF},
  unECF in 'unECF.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'OneMaker - ConfigSAT';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
