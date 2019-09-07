unit UComplementoCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoCadastro, DB, ADODB, ImgList, ActnList, StdCtrls, DBCtrls,
  Mask, Buttons, jpeg, ExtCtrls, AdvGlowButton, System.ImageList, System.Actions;

type
  TFComplementoCadastro = class(TFPadraoCadastro)
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
  private
    { Private declarations }
  protected
    function GetSQLPesquisa: string; override;
    procedure SetaParametro; override;
  public
    { Public declarations }
  end;

var
  FComplementoCadastro: TFComplementoCadastro;

implementation

uses
  uDMTabelas;

{$R *.dfm}

{ TFComplementoCadastro }

function TFComplementoCadastro.GetSQLPesquisa: string;
begin
  Result := ' select * from mt_complemento where descricao = :pDescricao ';

  if dsCadastro.DataSet.State = dsEdit then
    Result := Result + #13 + ' and codigo <> :pCodigo ';
end;

procedure TFComplementoCadastro.SetaParametro;
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
