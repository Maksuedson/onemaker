//
// Created by the DataSnap proxy generator.
// 09/03/2014 03:54:02
//

unit UProxyDataSnap;

interface

uses Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON,
       Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr,
      Data.DBXDBReaders, Data.DBXJSONReflect, System.JSON;

type
  TServerClassClient = class(TDSAdminClient)
  private
    FfArquivoParaJSONCommand: TDBXCommand;
    FVerifica_VendaAbertaCommand: TDBXCommand;
    FParaliza_PDVCommand: TDBXCommand;
    FLibera_PDVCommand: TDBXCommand;
    FGerar_SPEDCompletoCommand: TDBXCommand;
    FRetornoComandoCommand: TDBXCommand;
    FDownloadArquivoCommand: TDBXCommand;
  public
    constructor Create(FDBXConnection: TDBXConnection); overload;
    constructor Create(FDBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function fArquivoParaJSON(pDirArquivo: string): TJSONArray;
    function Verifica_VendaAberta: Boolean;
    procedure Paraliza_PDV(sMensagem: string);
    procedure Libera_PDV;
    function Gerar_SPEDCompleto(dataInicial: TDateTime; dataFinal: TDateTime; sPerfil: string; sCodMunicipio: string; sCFOP: string; sEmpresa: string; dAliqPis: Double; dAliqCofins: Double): Boolean;
    function RetornoComando: string;
    function DownloadArquivo(sArquivo: string): TJSONArray;
  end;

implementation

function TServerClassClient.fArquivoParaJSON(pDirArquivo: string): TJSONArray;
begin
  if FfArquivoParaJSONCommand = nil then
  begin
    FfArquivoParaJSONCommand := FDBXConnection.CreateCommand;
    FfArquivoParaJSONCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FfArquivoParaJSONCommand.Text := 'TServerClass.fArquivoParaJSON';
    FfArquivoParaJSONCommand.Prepare;
  end;
  FfArquivoParaJSONCommand.Parameters[0].Value.SetWideString(pDirArquivo);
  FfArquivoParaJSONCommand.ExecuteUpdate;
  Result := TJSONArray(FfArquivoParaJSONCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;

function TServerClassClient.Verifica_VendaAberta: Boolean;
begin
  if FVerifica_VendaAbertaCommand = nil then
  begin
    FVerifica_VendaAbertaCommand := FDBXConnection.CreateCommand;
    FVerifica_VendaAbertaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FVerifica_VendaAbertaCommand.Text := 'TServerClass.Verifica_VendaAberta';
    FVerifica_VendaAbertaCommand.Prepare;
  end;
  FVerifica_VendaAbertaCommand.ExecuteUpdate;
  Result := FVerifica_VendaAbertaCommand.Parameters[0].Value.GetBoolean;
end;

procedure TServerClassClient.Paraliza_PDV(sMensagem: string);
begin
  if FParaliza_PDVCommand = nil then
  begin
    FParaliza_PDVCommand := FDBXConnection.CreateCommand;
    FParaliza_PDVCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FParaliza_PDVCommand.Text := 'TServerClass.Paraliza_PDV';
    FParaliza_PDVCommand.Prepare;
  end;
  FParaliza_PDVCommand.Parameters[0].Value.SetWideString(sMensagem);
  FParaliza_PDVCommand.ExecuteUpdate;
end;

procedure TServerClassClient.Libera_PDV;
begin
  if FLibera_PDVCommand = nil then
  begin
    FLibera_PDVCommand := FDBXConnection.CreateCommand;
    FLibera_PDVCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLibera_PDVCommand.Text := 'TServerClass.Libera_PDV';
    FLibera_PDVCommand.Prepare;
  end;
  FLibera_PDVCommand.ExecuteUpdate;
end;

function TServerClassClient.Gerar_SPEDCompleto(dataInicial: TDateTime; dataFinal: TDateTime; sPerfil: string; sCodMunicipio: string; sCFOP: string; sEmpresa: string; dAliqPis: Double; dAliqCofins: Double): Boolean;
begin
  if FGerar_SPEDCompletoCommand = nil then
  begin
    FGerar_SPEDCompletoCommand := FDBXConnection.CreateCommand;
    FGerar_SPEDCompletoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGerar_SPEDCompletoCommand.Text := 'TServerClass.Gerar_SPEDCompleto';
    FGerar_SPEDCompletoCommand.Prepare;
  end;
  FGerar_SPEDCompletoCommand.Parameters[0].Value.AsDateTime := dataInicial;
  FGerar_SPEDCompletoCommand.Parameters[1].Value.AsDateTime := dataFinal;
  FGerar_SPEDCompletoCommand.Parameters[2].Value.SetWideString(sPerfil);
  FGerar_SPEDCompletoCommand.Parameters[3].Value.SetWideString(sCodMunicipio);
  FGerar_SPEDCompletoCommand.Parameters[4].Value.SetWideString(sCFOP);
  FGerar_SPEDCompletoCommand.Parameters[5].Value.SetWideString(sEmpresa);
  FGerar_SPEDCompletoCommand.Parameters[6].Value.SetDouble(dAliqPis);
  FGerar_SPEDCompletoCommand.Parameters[7].Value.SetDouble(dAliqCofins);
  FGerar_SPEDCompletoCommand.ExecuteUpdate;
  Result := FGerar_SPEDCompletoCommand.Parameters[8].Value.GetBoolean;
end;

function TServerClassClient.RetornoComando: string;
begin
  if FRetornoComandoCommand = nil then
  begin
    FRetornoComandoCommand := FDBXConnection.CreateCommand;
    FRetornoComandoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FRetornoComandoCommand.Text := 'TServerClass.RetornoComando';
    FRetornoComandoCommand.Prepare;
  end;
  FRetornoComandoCommand.ExecuteUpdate;
  Result := FRetornoComandoCommand.Parameters[0].Value.GetWideString;
end;

function TServerClassClient.DownloadArquivo(sArquivo: string): TJSONArray;
begin
  if FDownloadArquivoCommand = nil then
  begin
    FDownloadArquivoCommand := FDBXConnection.CreateCommand;
    FDownloadArquivoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDownloadArquivoCommand.Text := 'TServerClass.DownloadArquivo';
    FDownloadArquivoCommand.Prepare;
  end;
  FDownloadArquivoCommand.Parameters[0].Value.SetWideString(sArquivo);
  FDownloadArquivoCommand.ExecuteUpdate;
  Result := TJSONArray(FDownloadArquivoCommand.Parameters[1].Value.GetJSONValue(FInstanceOwner));
end;


constructor TServerClassClient.Create(FDBXConnection: TDBXConnection);
begin
  inherited Create(FDBXConnection);
end;


constructor TServerClassClient.Create(FDBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(FDBXConnection, AInstanceOwner);
end;


destructor TServerClassClient.Destroy;
begin
  FreeAndNil(FfArquivoParaJSONCommand);
  FreeAndNil(FVerifica_VendaAbertaCommand);
  FreeAndNil(FParaliza_PDVCommand);
  FreeAndNil(FLibera_PDVCommand);
  FreeAndNil(FGerar_SPEDCompletoCommand);
  FreeAndNil(FRetornoComandoCommand);
  FreeAndNil(FDownloadArquivoCommand);
  inherited;
end;

end.

