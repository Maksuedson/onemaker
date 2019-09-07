unit UComandaCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoCadastro, DB, ADODB, ImgList, ActnList, StdCtrls, DBCtrls,
  Mask, Buttons, ExtCtrls, Vcl.Imaging.jpeg;

type
  TFComandaCadastro = class(TFPadraoCadastro)
  private
    { Private declarations }
  protected
    function GetSQLPesquisa: string; override;
    procedure SetaParametro; override;
  public
    { Public declarations }
  end;

var
  FComandaCadastro: TFComandaCadastro;

implementation

uses
  uDMTabelas;

{$R *.dfm}

{ TFComandaCadastro }

{ TFComandaCadastro }

function TFComandaCadastro.GetSQLPesquisa: string;
begin
  Result := ' select * from mt_comanda where descricao = :pDescricao ';

  if dsCadastro.DataSet.State = dsEdit then
    Result := Result + #13 + ' and codigo <> :pCodigo ';
end;

procedure TFComandaCadastro.SetaParametro;
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
