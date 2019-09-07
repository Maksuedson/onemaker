unit UVendaPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPadraoLista, ADODB, DB, ImgList, ActnList, ComCtrls, ToolWin, Grids,
  DBGrids, StdCtrls, ExtCtrls, jpeg;

type
  TFVendaPesquisa = class(TFPadraoLista)
    lblItemVenda: TLabel;
    Splitter1: TSplitter;
    DBGVendaItem: TDBGrid;
    dsDetalhe: TDataSource;
    lblVenda: TLabel;
    pnlFiltro: TPanel;
    rgStatus: TRadioGroup;
    Bevel1: TBevel;
    procedure rgStatusClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVendaPesquisa: TFVendaPesquisa;

implementation

uses
  uDMTabelas;

{$R *.dfm}

{ TFVendaPesquisa }

procedure TFVendaPesquisa.FormShow(Sender: TObject);
begin
  inherited;
  rgStatusClick(rgStatus);
end;

procedure TFVendaPesquisa.rgStatusClick(Sender: TObject);
begin
  inherited;
  if dsLista.DataSet.Active then
    dsLista.DataSet.Close;

 { case rgStatus.ItemIndex of
    0: TADODataSet(dsLista.DataSet).Parameters.ParamByName('pAtiva').Value := True;
    1: TADODataSet(dsLista.DataSet).Parameters.ParamByName('pAtiva').Value := False;
  end;   }

  dsLista.DataSet.Open;
end;

end.
