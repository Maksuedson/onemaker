unit UTerminalCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoCadastro, DB, ADODB, ImgList, ActnList, StdCtrls, DBCtrls,
  Mask, Buttons, ExtCtrls, jpeg, AdvGlowButton, System.ImageList, System.Actions;

type
  TFTerminalCadastro = class(TFPadraoCadastro)
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
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
  FTerminalCadastro: TFTerminalCadastro;

implementation

uses
  uDMTabelas;

{$R *.dfm}

{ TFTerminalCadastro }

function TFTerminalCadastro.GetSQLPesquisa: string;
begin
  Result := ' select * from mt_terminal where descricao = :pDescricao ';

  if dsCadastro.DataSet.State = dsEdit then
    Result := Result + #13 + ' and codigo <> :pCodigo ';
end;

procedure TFTerminalCadastro.SetaParametro;
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
