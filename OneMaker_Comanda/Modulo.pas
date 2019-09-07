unit Modulo;

interface

uses
  Forms, SysUtils, Classes, DB, MemDS, DBAccess, ACBrBase, ACBrBAL,
  IniFiles,
  Datasnap.DBClient, UniProvider, InterBaseUniProvider, Uni;

type
  TfrmModulo = class(TDataModule)
    Balanca: TACBrBAL;
    cdsComandas: TClientDataSet;
    DataSource1: TDataSource;
    cdsComandasID_COMANDA: TStringField;
    cdsComandasEVENTO: TStringField;
    Conexao: TUniConnection;
    query: TUniQuery;
    st_Mesa_Abertura: TUniStoredProc;
    st_consumo: TUniStoredProc;
    InterBaseUniProvider1: TInterBaseUniProvider;
    ZFilial: TUniQuery;
    ZFilialCODIGO: TStringField;
    ZFilialFILIAL: TStringField;
    ZFilialNOTAFISCAL: TIntegerField;
    ZFilialENDERECO: TStringField;
    ZFilialCIDADE: TStringField;
    ZFilialUF: TStringField;
    ZFilialCEP: TStringField;
    ZFilialTELEFONE: TStringField;
    ZFilialCNPJ: TStringField;
    ZFilialIE: TStringField;
    ZFilialSEQNF: TIntegerField;
    ZFilialFAX: TStringField;
    ZFilialOBS1: TStringField;
    ZFilialOBS2: TStringField;
    ZFilialCONTRIBUINTE_IPI: TStringField;
    ZFilialSUBSTITUTO_TRIBUTARIO: TStringField;
    ZFilialEMPRESA_ESTADUAL: TStringField;
    ZFilialOPTANTE_SIMPLES: TStringField;
    ZFilialOPTANTE_SUPER_SIMPLES: TStringField;
    ZFilialECF: TStringField;
    ZFilialTIPO: TIntegerField;
    ZFilialIPI: TFloatField;
    ZFilialISS: TFloatField;
    ZFilialNUMERO: TStringField;
    ZFilialRESPONSAVEL: TStringField;
    ZFilialCOMPLEMENTO: TStringField;
    ZFilialBAIRRO: TStringField;
    ZFilialFARMACIA_RESP_TECNICO: TStringField;
    ZFilialFARMACIA_CRF: TStringField;
    ZFilialFARMACIA_CPF: TStringField;
    ZFilialFARMCIA_DATA: TDateTimeField;
    ZFilialFARMACIA_UF: TStringField;
    ZFilialFARMACIA_SENHA: TStringField;
    ZFilialFARMACIA_EMAIL: TStringField;
    ZFilialFARMACIA_LOGIN: TStringField;
    ZFilialFARMACIA_ENVIO: TStringField;
    ZFilialCONHECIMENTO: TIntegerField;
    ZFilialINDUSTRIA: TStringField;
    ZFilialFARMACIA_NUMEROLICENCA: TStringField;
    ZFilialCOD_MUNICIPIO_IBGE: TStringField;
    ZFilialIBGE: TStringField;
    ZFilialPIS: TFloatField;
    ZFilialCOFINS: TFloatField;
    ZFilialEMAIL: TStringField;
    ZFilialATIVIDADE: TStringField;
    ZFilialCONTADOR_COD_MUNICIPIO_IBGE: TStringField;
    ZFilialCONTADOR_NOME: TStringField;
    ZFilialCONTADOR_CPF: TStringField;
    ZFilialCONTADOR_CRC: TStringField;
    ZFilialCONTADOR_CNPJ: TStringField;
    ZFilialCONTADOR_CEP: TStringField;
    ZFilialCONTADOR_ENDERECO: TStringField;
    ZFilialCONTADOR_NUMERO: TStringField;
    ZFilialCONTADOR_COMPLEMENTO: TStringField;
    ZFilialCONTADOR_BAIRRO: TStringField;
    ZFilialCONTADOR_FONE: TStringField;
    ZFilialCONTADOR_FAX: TStringField;
    ZFilialCONTADOR_EMAIL: TStringField;
    ZFilialINSC_MUNICIPAL: TStringField;
    ZFilialDATA_ABERTURA: TDateTimeField;
    ZFilialCNAE: TStringField;
    ZFilialCRT: TStringField;
    ZFilialCONTADOR_CIDADE: TStringField;
    ZFilialCONTADOR_COD_MUNICIPIO: TStringField;
    ZFilialCONTADOR_UF: TStringField;
    ZFilialPERMITE_CREDITO: TIntegerField;
    ZFilialFANTASIA: TStringField;
    ZFilialDFIXAS: TFloatField;
    ZFilialTIPOCALCULO: TIntegerField;
    ZFilialSERIE_CTE: TStringField;
    ZFilialSEQ_CTE: TStringField;
    ZFilialCOD_PAIS: TStringField;
    ZFilialPAIS: TStringField;
    procedure BalancaLePeso(Peso: Double; Resposta: String);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
  Evento, mesa: string;
    { Public declarations }
    Function LerIni(Arq, Secao, Ident: String; Def: String): String;

  end;

var
  frmModulo: TfrmModulo;
  iBal_time: integer; // configuracao de time out da balanca
  sBal_Resposta: string; // resposta da balanca
  rBal_peso: real; // peso lido na balanca


implementation

{$R *.dfm}

procedure TfrmModulo.BalancaLePeso(Peso: Double; Resposta: String);
begin
  // Buscar o Peso nas balancas PDV's
  if Peso > 0 then
  begin
    // Leitura OK
    sBal_Resposta := 'Peso Estável';
    rBal_peso := Peso;
  end
  else
  begin
    // Leitura retornou ERRo
    case Trunc(Balanca.UltimoPesoLido) of
      0:
        sBal_Resposta := 'Coloque o produto sobre a Balança!';
      -1:
        sBal_Resposta := 'Peso Instavel!';
      -2:
        sBal_Resposta := 'Peso Negativo!';
      -10:
        sBal_Resposta := 'Sobrepeso!';
    end;
    rBal_peso := 0;
  end;
end;

procedure TfrmModulo.DataModuleCreate(Sender: TObject);
var
  sBanco: string;
begin
  sBanco := LerIni(ExtractFilePath(Application.ExeName) + 'cfg\dados.ini',
    'Ciclos', 'ed_server', 'localhost') + ':' +
    LerIni(ExtractFilePath(Application.ExeName) + 'cfg\dados.ini', 'Ciclos',
    'ed_base', 'C:\OneMaker\Server\BD\BASE.FDB');

  Conexao.Database := sBanco;

  //Conexao.Connected := True;
end;

function TfrmModulo.LerIni(Arq, Secao, Ident, Def: String): String;
var
  Ini: TIniFile;
begin

  Ini := TIniFile.Create(Arq);
  Result := Ini.ReadString(Secao, Ident, Def);
  Ini.Free;

end;

end.
