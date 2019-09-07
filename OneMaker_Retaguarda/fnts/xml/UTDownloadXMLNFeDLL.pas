unit UTDownloadXMLNFeDLL;

interface

uses
  Windows, Dialogs, SysUtils;

type
  //*****************************DECLARAÇÕES*********************************///
  TDllGetCertificadoDigital = function : PAnsiChar; stdcall; // PARA CURRENT USER
  TDllGetCertificadoDigitalLocal = function : PAnsiChar; stdcall; // PARA LOCAL MACHINE
  //winhttpcertcfg -i "C:\SeuCertificado.pfx" -c LOCAL_MACHINE\My -a "SeuUsuário" -p SENHAPFX
  TDllMsg = function : PAnsiChar; stdcall;
  TDllCaptchaLerTexto = function : PAnsiChar; stdcall;

  TDllProxy = function (Host: AnsiString; Port: Integer; User, Pass: AnsiString): Integer; stdcall;
  TDllCaptcha = function (SalvarEm: AnsiString): Integer; stdcall;
  TDllHttps = procedure (Sim: Integer); stdcall;
  TDllPortalNFeProducao = procedure (Sim: Integer); stdcall;
  TDllSetCertificadoDigital = procedure (CertSerialNumber: AnsiString); stdcall; // PARA CURRENT USER
  TDllSetCertificadoDigitalLocal = procedure (CertSerialNumber: AnsiString); stdcall; // PARA LOCAL MACHINE
  TDllBaixarXMLNFeSemCert = function (Chave, Captcha, SalvarEm: AnsiString): Integer; stdcall;
  TDllBaixarXMLNFeComCert = function (Chave, Captcha, SalvarEm: AnsiString): Integer; stdcall;
  TDllDLLLicenca = procedure (Chave: AnsiString); stdcall;
  TDllCaptchaLer = function (ChaveCaptcha, ArquivoImagem: AnsiString): Integer; stdcall;
  TDllCaptchaExtorno = function (ChaveCaptcha: AnsiString): Integer; stdcall;
  TDllImprimir = function (ArquivoXML, LogoMarca: AnsiString): Integer; stdcall;
  TDllExportarPDF = function (ArquivoXML, LogoMarca, PDF: AnsiString): Integer; stdcall;
  TDllDLLRegistra = procedure (); stdcall;
  TDllBaixarXMLNFeSemCertAuto = function (Chave, SalvarEm, ChaveLeitorCaptcha: AnsiString;
    Tentativas: Integer; MostrarProgresso: Integer): Integer; stdcall;
  TDllBaixarXMLNFeComCertAuto = function (Chave, SalvarEm, ChaveLeitorCaptcha: AnsiString;
    Tentativas: Integer; MostrarProgresso: Integer): Integer; stdcall;
  TDllArquivoRav = procedure (Arquivo: AnsiString); stdcall;
  TDllLogAtivo = procedure (Ativo: Integer); stdcall;
  TDllCaptchaBossURL = procedure (URL: AnsiString); stdcall;

  //*****************************DECLARAÇÕES*********************************///
  
  TDownloadXMLNFeDLL = Class
    protected
      DLLHandle: THandle;
    public
      constructor Create; 
      destructor Destroy; override;
      
      function Proxy(Host: String; Port: Integer; User, Pass: String): Boolean;
      function Captcha(SalvarEm: String): Boolean;
      procedure Https(Sim: Boolean);
      procedure PortalNFeProducao(Sim: Boolean); 
      function GetCertificadoDigital: String; // PARA CURRENT USER
      function GetCertificadoDigitalLocal: String; // PARA LOCAL MACHINE
      function Msg: String;
      procedure SetCertificadoDigital(CertSerialNumber: String); // PARA CURRENT USER
      procedure SetCertificadoDigitalLocal(CertSerialNumber: String); // PARA LOCAL MACHINE
      function BaixarXMLNFeSemCert(Chave, Captcha, SalvarEm: String): Boolean;
      function BaixarXMLNFeComCert(Chave, Captcha, SalvarEm: String): Boolean;
      procedure DLLLicenca(Chave: String);
      function CaptchaLer(ChaveCaptcha, ArquivoImagem: String): Boolean;
      function CaptchaLerTexto: String;
      function CaptchaExtorno(ChaveCaptcha: String): Boolean;
      function Imprimir(ArquivoXML, LogoMarca: String): Boolean;
      function ExportarPDF(ArquivoXML, LogoMarca, PDF: String): Boolean;
      procedure DLLRegistra;
      function BaixarXMLNFeSemCertAuto(Chave, SalvarEm: String; ChaveLeitorCaptcha: String = '';
        Tentativas: Integer = 3; MostrarProgresso: Boolean = True): Boolean;
      function BaixarXMLNFeComCertAuto(Chave, SalvarEm: String; ChaveLeitorCaptcha: String = '';
        Tentativas: Integer = 3; MostrarProgresso: Boolean = True): Boolean;
      procedure ArquivoRav(Arquivo: String);
      procedure LogAtivo(Ativo: Boolean);
      procedure CaptchaBossURL(URL: string);
  end;

implementation

{ TDownloadXMLNFeDLL }

function TDownloadXMLNFeDLL.BaixarXMLNFeComCert(Chave, Captcha,
  SalvarEm: String): Boolean;
  var
    FFun: TDllBaixarXMLNFeComCert;
begin
  FFun:= GetProcAddress(DLLHandle, 'BaixarXMLNFeComCert');
  Result:= Boolean(FFun(AnsiString(Chave), AnsiString(Captcha), AnsiString(SalvarEm)));
end;

function TDownloadXMLNFeDLL.BaixarXMLNFeSemCert(Chave, Captcha,
  SalvarEm: String): Boolean;
  var
    FFun: TDllBaixarXMLNFeSemCert;
begin
  FFun:= GetProcAddress(DLLHandle, 'BaixarXMLNFeSemCert');
  Result:= Boolean(FFun(AnsiString(Chave), AnsiString(Captcha), AnsiString(SalvarEm)));
end;

function TDownloadXMLNFeDLL.BaixarXMLNFeSemCertAuto(Chave, SalvarEm: String;
  ChaveLeitorCaptcha: String = '';  Tentativas: Integer = 3;
  MostrarProgresso: Boolean = True): Boolean;
  var
    FFun: TDllBaixarXMLNFeSemCertAuto;
begin
  FFun:= GetProcAddress(DLLHandle, 'BaixarXMLNFeSemCertAuto');
  Result:= Boolean(FFun(AnsiString(Chave), AnsiString(SalvarEm), AnsiString(ChaveLeitorCaptcha),
    Tentativas, Integer(MostrarProgresso)));
end;

function TDownloadXMLNFeDLL.BaixarXMLNFeComCertAuto(Chave, SalvarEm: String;
  ChaveLeitorCaptcha: String = '';  Tentativas: Integer = 3;
  MostrarProgresso: Boolean = True): Boolean;
  var
    FFun: TDllBaixarXMLNFeComCertAuto;
begin
  FFun:= GetProcAddress(DLLHandle, 'BaixarXMLNFeComCertAuto');
  Result:= Boolean(FFun(AnsiString(Chave), AnsiString(SalvarEm), AnsiString(ChaveLeitorCaptcha),
    Tentativas, Integer(MostrarProgresso)));
end;

function TDownloadXMLNFeDLL.Captcha(SalvarEm: String): Boolean;
  var
    FFun: TDllCaptcha;
begin
  FFun:= GetProcAddress(DLLHandle, 'Captcha');
  Result:= Boolean(FFun(AnsiString(SalvarEm)));
end;

procedure TDownloadXMLNFeDLL.CaptchaBossURL(URL: string);
  var
    FFun: TDllCaptchaBossURL;
begin
  FFun:= GetProcAddress(DLLHandle, 'CaptchaBossURL');
  FFun(AnsiString(URL));
end;

function TDownloadXMLNFeDLL.CaptchaExtorno(ChaveCaptcha: String): Boolean;
  var
    FFun: TDllCaptchaExtorno;
begin
  FFun:= GetProcAddress(DLLHandle, 'CaptchaExtorno');
  Result:= Boolean(FFun(AnsiString(ChaveCaptcha)));
end;

function TDownloadXMLNFeDLL.CaptchaLer(ChaveCaptcha,
  ArquivoImagem: String): Boolean;
  var
    FFun: TDllCaptchaLer;
begin
  FFun:= GetProcAddress(DLLHandle, 'CaptchaLer');
  Result:= Boolean(FFun(AnsiString(ChaveCaptcha), AnsiString(ArquivoImagem)));
end;

function TDownloadXMLNFeDLL.CaptchaLerTexto: String;
  var
    FFun: TDllCaptchaLerTexto;
begin
  FFun:= GetProcAddress(DLLHandle, 'CaptchaLerTexto');
  Result:= string(FFun());
end;

constructor TDownloadXMLNFeDLL.Create;
begin
  inherited;
  try
    DLLHandle:= LoadLibrary(PChar(ExtractFilePath(ParamStr(0)) + 'BaixarXMLNFe.dll'));
    if DLLHandle = 0 then
      ShowMessage('Não foi possivel encontrar a DLL. "BaixarXMLNFe.dll"');
  except
    ShowMessage('Erro ao tentar iniciar a DLL.');
  end;
end;

destructor TDownloadXMLNFeDLL.Destroy;
begin
  FreeLibrary(DLLHandle);
  inherited;
end;

procedure TDownloadXMLNFeDLL.DLLLicenca(Chave: String);
  var
    FFun: TDllDLLLicenca;
begin
  FFun:= GetProcAddress(DLLHandle, 'DLLLicenca');
  FFun(AnsiString(Chave));
end;

procedure TDownloadXMLNFeDLL.DLLRegistra;
  var
    FFun: TDllDLLRegistra;
begin
  FFun:= GetProcAddress(DLLHandle, 'DLLRegistra');
  FFun();
end;

function TDownloadXMLNFeDLL.ExportarPDF(ArquivoXML, LogoMarca,
  PDF: String): Boolean;
  var
    FFun: TDllExportarPDF;
begin
  FFun:= GetProcAddress(DLLHandle, 'ExportarPDF');
  Result:= Boolean(FFun(AnsiString(ArquivoXML), AnsiString(LogoMarca), AnsiString(PDF)));
end;

function TDownloadXMLNFeDLL.GetCertificadoDigital: String; // PARA CURRENT USER
  var
    FFun: TDllGetCertificadoDigital;
begin
  FFun:= GetProcAddress(DLLHandle, 'GetCertificadoDigital');
  Result:= String(FFun());
end;

function TDownloadXMLNFeDLL.GetCertificadoDigitalLocal: String; // PARA LOCAL MACHINE
  var
    FFun: TDllGetCertificadoDigitalLocal;
begin
  FFun:= GetProcAddress(DLLHandle, 'GetCertificadoDigitalLocal');
  Result:= String(FFun());
end;

procedure TDownloadXMLNFeDLL.Https(Sim: Boolean);
  var
    FFun: TDllHttps;
begin
  FFun:= GetProcAddress(DLLHandle, 'Https');
  FFun(Integer(Sim));
end;

procedure TDownloadXMLNFeDLL.PortalNFeProducao(Sim: Boolean);
  var
    FFun: TDllPortalNFeProducao;
begin
  FFun:= GetProcAddress(DLLHandle, 'PortalNFeProducao');
  FFun(Integer(Sim));
end;

function TDownloadXMLNFeDLL.Imprimir(ArquivoXML,
  LogoMarca: String): Boolean;
  var
    FFun: TDllImprimir;
begin
  FFun:= GetProcAddress(DLLHandle, 'Imprimir');
  Result:= Boolean(FFun(AnsiString(ArquivoXML), AnsiString(LogoMarca)));
end;

function TDownloadXMLNFeDLL.Msg: String;
  var
    FFun: TDllMsg;
begin
  FFun:= GetProcAddress(DLLHandle, 'Msg');
  Result:= String(FFun());
end;

function TDownloadXMLNFeDLL.Proxy(Host: String; Port: Integer; User,
  Pass: String): Boolean;
  var
    FFun: TDllProxy;
begin
  FFun:= GetProcAddress(DLLHandle, 'Proxy');
  Result:= Boolean(FFun(AnsiString(Host), Port, AnsiString(User), AnsiString(Pass)))
end;

procedure TDownloadXMLNFeDLL.SetCertificadoDigital(  // PARA CURRENT USER
  CertSerialNumber: String);
  var
    FFun: TDllSetCertificadoDigital;
begin
  FFun:= GetProcAddress(DLLHandle, 'SetCertificadoDigital');
  FFun(AnsiString(CertSerialNumber));
end;

procedure TDownloadXMLNFeDLL.SetCertificadoDigitalLocal( // PARA LOCAL MACHINE
  CertSerialNumber: String);
  var
    FFun: TDllSetCertificadoDigitalLocal;
begin
  FFun:= GetProcAddress(DLLHandle, 'SetCertificadoDigitalLocal');
  FFun(AnsiString(CertSerialNumber));
end;

procedure TDownloadXMLNFeDLL.ArquivoRav(Arquivo: String);
  var
    FFun: TDllArquivoRav;
begin
  FFun:= GetProcAddress(DLLHandle, 'ArquivoRav');
  FFun(AnsiString(Arquivo));
end;

procedure TDownloadXMLNFeDLL.LogAtivo(Ativo: Boolean);
  var
    FFun: TDllLogAtivo;
begin
  FFun:= GetProcAddress(DLLHandle, 'LogAtivo');
  FFun(Integer(Ativo));
end;

end.
