program OneMaker_Excel;

uses
  Vcl.Forms,
  Unit_Excel_Principal in 'Unit_Excel_Principal.pas' {Excel_Principal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'OneMaker - Excel';
  Application.CreateForm(TExcel_Principal, Excel_Principal);
  Application.Run;
end.
