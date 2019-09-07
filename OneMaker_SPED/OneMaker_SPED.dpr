program OneMaker_SPED;

{$R 'UAC.res' 'UAC.RC'}

uses
  Windows,
  Vcl.Forms,
  sysutils,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDm in 'UDm.pas' {Dm: TDataModule},
  UFuncoes in 'UFuncoes.pas',
  UEFDImporta in 'UEFDImporta.pas',
  Uthread in 'Uthread.pas',
  Vcl.Themes,
  Vcl.Styles,
  UProxyDataSnap in 'UProxyDataSnap.pas';

{$R *.res}

function ExecutaEAguarda(const Path: PChar; const Visibility: Word; const Wait: Boolean): Boolean;
var
  ProcessInformation: TProcessInformation;
  StartupInfo: TStartupInfo;
begin
  FillChar(StartupInfo, SizeOf(TStartupInfo), 0);
  with StartupInfo do
  begin
    cb := SizeOf(TStartupInfo);
    lpReserved := nil;
    lpDesktop := nil;
    lpTitle := nil;
    dwFlags := STARTF_USESHOWWINDOW;
    wShowWindow := Visibility;
    cbReserved2 := 0;
    lpReserved2 := nil
  end;

  Result := CreateProcess(nil, { address of module name }
    Path, { address of command line }
    nil, { address of process security attributes }
    nil, { address of thread security attributes }
    FALSE, { new process inherits handle }
    NORMAL_PRIORITY_CLASS, { creation flags }
    nil, { address of new environment block }
    nil, { address of current directory name }
    StartupInfo, ProcessInformation);
  if Result then
  begin
    with ProcessInformation do
    begin
      if Wait then
        WaitForSingleObject(hProcess, INFINITE);
      CloseHandle(hThread);
      CloseHandle(hProcess)
    end;
  end;
end;


procedure AbreLojas;
begin
  // verifica se tem mais de uma loja cadastrada
  if FileExists(ExtractFilePath(Application.ExeName) + 'brLojas.config') then
    if FileExists(ExtractFilePath(Application.ExeName) + 'brLojas.exe') then
    begin
      ExecutaEAguarda(PWideChar(ExtractFilePath(Application.ExeName) + 'brLojas.exe -selecionar'), SW_SHOW, True);
    end;

end;

begin

  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  AbreLojas;
  Application.Title := 'OneMaker - SPED FISCAL';
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;

end.
