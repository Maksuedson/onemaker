unit UMesaCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoCadastro, DB, ADODB, ImgList, ActnList, StdCtrls, DBCtrls,
  Mask, Buttons, ExtCtrls, Vcl.Imaging.jpeg;

type
  TFMesaCadastro = class(TFPadraoCadastro)
  private
    { Private declarations }
  protected
    function GetSQLPesquisa: string; override;
    procedure SetaParametro; override;
  public
    { Public declarations }
  end;

var
  FMesaCadastro: TFMesaCadastro;

implementation

uses
  uDMTabelas;

{$R *.dfm}

{ TFMesaCadastro }

function TFMesaCadastro.GetSQLPesquisa: string;
begin
  Result := ' select * from mt_mesa where descricao = :pDescricao ';

  if dsCadastro.DataSet.State = dsEdit then
    Result := Result + #13 + ' and codigo <> :pCodigo ';
end;

procedure TFMesaCadastro.SetaParametro;
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
