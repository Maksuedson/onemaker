unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoMenu, ActnList, ComCtrls, StdCtrls, ExtCtrls, ImgList, Buttons,
  ToolWin, jpeg, System.Actions, System.ImageList;

type
  TFMenu = class(TFPadraoMenu)
    actComanda: TAction;
    actMesa: TAction;
    actOperador: TAction;
    actVendas: TAction;
    actSair: TAction;
    actProdutos: TAction;
    actTerminal: TAction;
    actComplemento: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    procedure actComandaExecute(Sender: TObject);
    procedure actMesaExecute(Sender: TObject);
    procedure actOperadorExecute(Sender: TObject);
    procedure actVendasExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actProdutosExecute(Sender: TObject);
    procedure actTerminalExecute(Sender: TObject);
    procedure actComplementoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

uses
  uComandaPesquisa, uMesaPesquisa, uOperadorPesquisa,
  uVendaPesquisa, uProdutoLista, UTerminalLista, UComplementoLista;

{$R *.dfm}

procedure TFMenu.actComandaExecute(Sender: TObject);
var
  frm: TFComandaPesquisa;
begin
  inherited;

  try
    frm := TFComandaPesquisa.Create(nil);
    frm.ShowModal;
  finally
    frm.Destroy;
    frm := nil;
  end;
end;

procedure TFMenu.actComplementoExecute(Sender: TObject);
var
  frm: TFComplementoLista;
begin
  inherited;

  try
    frm := TFComplementoLista.Create(nil);
    frm.ShowModal;
  finally
    frm.Destroy;
    frm := nil;
  end;
end;

procedure TFMenu.actMesaExecute(Sender: TObject);
var
  frm: TFMesaPesquisa;
begin
  inherited;

  try
    frm := TFMesaPesquisa.Create(nil);
    frm.ShowModal;
  finally
    frm.Destroy;
    frm := nil;
  end;
end;

procedure TFMenu.actOperadorExecute(Sender: TObject);
var
  frm: TFOperadorPesquisa;
begin
  inherited;

  try
    frm := TFOperadorPesquisa.Create(nil);
    frm.ShowModal;
  finally
    frm.Destroy;
    frm := nil;
  end;
end;

procedure TFMenu.actProdutosExecute(Sender: TObject);
var
  frm: TFProdutoLista;
begin
  inherited;

  try
    frm := TFProdutoLista.Create(nil);
    frm.ShowModal;
  finally
    frm.Destroy;
    frm := nil;
  end;
end;

procedure TFMenu.actSairExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFMenu.actTerminalExecute(Sender: TObject);
var
  frm: TFTerminalLista;
begin
  inherited;

  try
    frm := TFTerminalLista.Create(nil);
    frm.ShowModal;
  finally
    frm.Destroy;
    frm := nil;
  end;
end;

procedure TFMenu.actVendasExecute(Sender: TObject);
var
  frm: TFVendaPesquisa;
begin
  inherited;

  try
    frm := TFVendaPesquisa.Create(nil);
    frm.ShowModal;
  finally
    frm.Destroy;
    frm := nil;
  end;
end;

end.
