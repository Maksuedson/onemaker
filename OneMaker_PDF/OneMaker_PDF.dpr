program OneMaker_PDF;

uses
  Vcl.Forms,
  Unit_Principal_PDF in 'Unit_Principal_PDF.pas' {Principal_PDF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'OneMaker - PDF';
  Application.CreateForm(TPrincipal_PDF, Principal_PDF);
  Application.Run;
end.
