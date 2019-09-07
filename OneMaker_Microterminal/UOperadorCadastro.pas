unit UOperadorCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoCadastro, DB, ADODB, ImgList, ActnList, StdCtrls, DBCtrls,
  Mask, Buttons, ExtCtrls, jpeg;

type
  TFOperadorCadastro = class(TFPadraoCadastro)
  private
    { Private declarations }
  protected
    function GetSQLPesquisa: string; override;
    procedure SetaParametro; override;
  public
    { Public declarations }
  end;

var
  FOperadorCadastro: TFOperadorCadastro;

implementation

uses
  uDMTabelas;

{$R *.dfm}

{ TFOperadorCadastro }

function TFOperadorCadastro.GetSQLPesquisa: string;
begin
  Result := ' select * from operador where descricao = :pDescricao ';

  if dsCadastro.DataSet.State = dsEdit then
    Result := Result + #13 + ' and codigo <> :pCodigo ';
end;

procedure TFOperadorCadastro.SetaParametro;
begin
  inherited;
  with adoPesquisa.Parameters do
  begin
    ParamByName('pDescricao').Value := dbeDescricao.Text;

    if dsCadastro.DataSet.State = dsEdit then
    begin
      ParamByName('pCodigo').Value := dbtCodigo.Caption;
    end;
  end;
end;

end.
