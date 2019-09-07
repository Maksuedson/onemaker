unit UPadraoLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadrao, StdCtrls, ExtCtrls, Grids, DBGrids, DB, ActnList, ComCtrls,
  ToolWin, ImgList, uPadraoCadastro, ADODB, jpeg, System.Actions,
  System.ImageList;

type
  TFPadraoLista = class(TFPadrao)
    dsLista: TDataSource;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    tbInserir: TToolButton;
    tbAlterar: TToolButton;
    tbRemover: TToolButton;
    tbSeparadorSair: TToolButton;
    tbSair: TToolButton;
    actInserir: TAction;
    actAlterar: TAction;
    actRemover: TAction;
    actSair: TAction;
    procedure actSairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actInserirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FFrm: TFPadraoCadastro;
    procedure SetFrm(const Value: TFPadraoCadastro);
    function VerificaDataSet: Boolean;
    { Private declarations }
  protected
    procedure SetFrmDetalhe; virtual;
  public
    { Public declarations }
  published
    property Frm: TFPadraoCadastro read FFrm write SetFrm;
  end;

var
  FPadraoLista: TFPadraoLista;

implementation

uses
  uDMConexao;

{$R *.dfm}

procedure TFPadraoLista.actAlterarExecute(Sender: TObject);
begin
  inherited;
  if not VerificaDataSet  then
    Exit;

  with dsLista.DataSet do
  begin
    Edit;
    Frm.ShowModal;
  end;
end;

procedure TFPadraoLista.actInserirExecute(Sender: TObject);
begin
  inherited;
  if not VerificaDataSet  then
    Exit;

  with dsLista.DataSet do
  begin
    Append;
    Frm.ShowModal;
  end;
end;

procedure TFPadraoLista.actSairExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFPadraoLista.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Frm <> nil then
  begin
    Frm.Destroy;
    Frm := nil;
  end;

  if dsLista.DataSet <> nil then
    dsLista.DataSet.Close;
end;

procedure TFPadraoLista.FormCreate(Sender: TObject);
  procedure RemoverAction(Action: TAction; ToolButton: TToolButton);
  begin
    Action.Enabled     := False;
    ToolButton.Visible := False;
  end;
begin
  inherited;
  SetFrmDetalhe;

  VerificaDataSet;

  if Frm = nil then
  begin
    RemoverAction(actInserir, tbInserir);
    RemoverAction(actAlterar, tbAlterar);
    RemoverAction(actRemover, tbRemover);
  end;
end;

procedure TFPadraoLista.SetFrm(const Value: TFPadraoCadastro);
begin
  FFrm := Value;
end;

procedure TFPadraoLista.SetFrmDetalhe;
begin

end;

function TFPadraoLista.VerificaDataSet: Boolean;
begin
  if dsLista.DataSet = nil then
    Exit;

  Result := True;

  dsLista.DataSet.Open;
end;

end.
