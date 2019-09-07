unit UProdutoCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoCadastro, DB, ADODB, ImgList, ActnList, StdCtrls, DBCtrls,
  Mask, Buttons, ExtCtrls, jpeg;

type
  TFProdutoCadastro = class(TFPadraoCadastro)
    Label2: TLabel;
    dbedtPRECOVENDA: TDBEdit;
  //  DBCheckBox2: TDBCheckBox;
    lblCodigoBarras: TLabel;
    dbedtCODBARRA: TDBEdit;
  private
    { Private declarations }
  protected
    function GetSQLPesquisa: string; override;
    procedure SetaParametro; override;
  public
    { Public declarations }
  end;

var
  FProdutoCadastro: TFProdutoCadastro;

implementation

uses
  uDMTabelas;

{$R *.dfm}

{ TFProdutoCadastro }

function TFProdutoCadastro.GetSQLPesquisa: string;
begin
  Result := ' select * from produto where produto = :pDescricao ';

  if dsCadastro.DataSet.State = dsEdit then
    Result := Result + #13 + ' and codigo <> :pCodigo ';
end;

procedure TFProdutoCadastro.SetaParametro;
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
