program OneMaker_ConfigNFCe;

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
  Application.Title := 'OneMaker - ConfigNFCe';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
