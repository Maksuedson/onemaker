unit uDMConexao;

interface

uses
  Forms, SysUtils, Classes, DB, ADODB, ZAbstractConnection, ZConnection;

type
  TDMConexao = class(TDataModule)
    Conexao: TADOConnection;
    procedure ConexaoBeforeConnect(Sender: TObject);
  private
    { Private declarations }
    FBDArquivo: string;
  public
    { Public declarations }
  published
    property BDArquivo: string read FBDArquivo write FBDArquivo;
  end;

var
  DMConexao: TDMConexao;

implementation

{$R *.dfm}

procedure TDMConexao.ConexaoBeforeConnect(Sender: TObject);
begin
  {with Conexao do
  begin
    ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;' +
                        'User ID=Admin;' +
                        'Data Source=' + IncludeTrailingBackslash(ExtractFilePath(Application.ExeName)) + 'bd.mdb;' + //FBDArquivo + ';' +
                        'Mode=Share Deny None;' +
                        'Jet OLEDB:System database="";' +
                        'Jet OLEDB:Registry Path="";' +
                        'Jet OLEDB:Database Password="";' +
                        'Jet OLEDB:Engine Type=5;' +
                        'Jet OLEDB:Database Locking Mode=1;' +
                        'Jet OLEDB:Global Partial Bulk Ops=2;' +
                        'Jet OLEDB:Global Bulk Transactions=1;' +
                        'Jet OLEDB:New Database Password="";' +
                        'Jet OLEDB:Create System Database=False;' +
                        'Jet OLEDB:Encrypt Database=False;' +
                        'Jet OLEDB:Don''t Copy Locale on Compact=False;' +
                        'Jet OLEDB:Compact Without Replica Repair=False;' +
                        'Jet OLEDB:SFP=False;';
  end;  }
end;

end.
