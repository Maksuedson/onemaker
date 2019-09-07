unit UPadraoCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoOkCancel, ImgList, ActnList, Buttons, StdCtrls, ExtCtrls, DB,
  Mask, DBCtrls, ADODB, jpeg, System.ImageList, System.Actions;

type
  TFPadraoCadastro = class(TFPadraoOkCancel)
    dsCadastro: TDataSource;
    dbeDescricao: TDBEdit;
    lblDescricao: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label1: TLabel;
    dbtCodigo: TDBText;
    adoPesquisa: TADOQuery;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actOkExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FTabela: string;
    procedure SetTabela(const Value: string);
    { Private declarations }
  protected
    function Validar: Boolean; virtual;
    function GetSQLPesquisa: string; virtual;
    procedure SetaParametro; virtual;
  public
    { Public declarations }
  published
    property Tabela: string read FTabela write SetTabela;
  end;

var
  FPadraoCadastro: TFPadraoCadastro;

implementation

uses
  uDMConexao;

{$R *.dfm}

procedure TFPadraoCadastro.actCancelarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Cancel;
  inherited;
end;

procedure TFPadraoCadastro.actOkExecute(Sender: TObject);
begin
  if not Validar then
    Exit;

  dsCadastro.DataSet.Post;
  inherited;
end;

procedure TFPadraoCadastro.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  with dbeDescricao.DataSource.DataSet do
    begin
    if State in ([dsInsert, dsEdit]) then
    begin
      CanClose := Validar;

      if (CanClose) and (ModalResult = mrOk) then
        Post;
    end;
  end;
end;

procedure TFPadraoCadastro.FormShow(Sender: TObject);
begin
  inherited;
  dbeDescricao.SetFocus;
end;

function TFPadraoCadastro.GetSQLPesquisa: string;
begin

end;

procedure TFPadraoCadastro.SetaParametro;
begin

end;

procedure TFPadraoCadastro.SetTabela(const Value: string);
begin
  FTabela := Value;
end;

function TFPadraoCadastro.Validar: Boolean;
begin
  Result := Trim(dbeDescricao.Text) > '';

  if not Result then
  begin
    MsgAlerta(Caption, 'Campo a descrição.');
    Exit;
  end;

  with adoPesquisa do
  begin
    try
      if Active then
        Close;

      SQL.Clear;
      SQL.Add(GetSQLPesquisa);
      SetaParametro;

      try
        Open;
        Result := IsEmpty;

        if not Result then
          MsgAlerta(Caption, 'Descrição já existe.');
      except
        Result := False;
      end;
    finally
      if Active then
        Close;
    end;
  end;

end;

end.
