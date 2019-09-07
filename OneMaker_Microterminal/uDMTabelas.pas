unit uDMTabelas;

interface

uses
  SysUtils, Classes, DB, ADODB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDMTabelas = class(TDataModule)
    adoComanda: TADODataSet;
    adoMesa: TADODataSet;
    adoOperador: TADODataSet;
    adoVenda: TADODataSet;
    adoVendaItem: TADODataSet;
    dsVenda: TDataSource;
    adoProduto: TADODataSet;
    adoTerminal: TADODataSet;
    adoTerminalCodigo: TAutoIncField;
    adoTerminalDescricao: TWideStringField;
    adoTerminalProtocolo: TIntegerField;
    adoTerminalDisplay: TIntegerField;
    adoTerminalIP: TWideStringField;
    adoTerminalPortaImpressora: TIntegerField;
    adoTerminalPortaBalanca: TIntegerField;
    adoComplemento: TADODataSet;
    smlntfldTerminalATIVA: TSmallintField;
    intgrfldVendaCODIGO: TIntegerField;
    dtmfldVendaDATA: TDateTimeField;
    strngfldVendaHORA: TStringField;
    strngfldVendaECF: TStringField;
    strngfldVendaCOO: TStringField;
    strngfldVendaCER: TStringField;
    strngfldVendaCOD_FUNCIONARIO: TStringField;
    strngfldVendaDESCMESA: TStringField;
    intgrfldMesaCODIGO: TIntegerField;
    intgrfldMesaATIVA: TIntegerField;
    intgrfldComandaCODIGO: TIntegerField;
    strngfldComandaDESCRICAO: TStringField;
    intgrfldComandaATIVA: TIntegerField;
    intgrfldComplementoCODIGO: TIntegerField;
    strngfldComplementoDESCRICAO: TStringField;
    intgrfldComplementoATIVA: TIntegerField;
    strngfldVendaItemPRODUTO: TStringField;
    intgrfldVendaItemCODIGO: TIntegerField;
    intgrfldVendaItemCOD_MESA: TIntegerField;
    strngfldVendaItemCOD_PRODUTO: TStringField;
    bcdfldVendaItemQTDE: TBCDField;
    bcdfldVendaItemUNITARIO: TBCDField;
    bcdfldVendaItemTOTAL: TBCDField;
    strngfldVendaItemCOMPLEMENTO: TStringField;
    intgrfldVendaItemTRANSF_MESA: TIntegerField;
    intgrfldVendaItemCANCELADO: TIntegerField;
    strngfldOperadorCODIGO: TStringField;
    strngfldOperadorDESCRICAO: TStringField;
    intgrfldOperadorATIVA: TIntegerField;
    strngfldMesaDESCRICAO: TStringField;
    procedure adoComandaNewRecord(DataSet: TDataSet);
    procedure adoVendaAfterOpen(DataSet: TDataSet);
    procedure adoVendaBeforeClose(DataSet: TDataSet);
    procedure adoVendaItemCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTabelas: TDMTabelas;

implementation

uses
  uDMConexao;

{$R *.dfm}

procedure TDMTabelas.adoComandaNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ativa').AsInteger             := 1;
  DataSet.FieldByName('descricao').AsString          := '';

  if DataSet = adoTerminal then
  begin
    DataSet.FieldByName('PortaImpressora').AsInteger := 0;
    DataSet.FieldByName('PortaBalanca').AsInteger    := 0;
    DataSet.FieldByName('Display').AsInteger         := 0;
  end;
end;

procedure TDMTabelas.adoVendaAfterOpen(DataSet: TDataSet);
begin
  adoVendaItem.Open;
end;

procedure TDMTabelas.adoVendaBeforeClose(DataSet: TDataSet);
begin
  adoVendaItem.Close;
end;

procedure TDMTabelas.adoVendaItemCalcFields(DataSet: TDataSet);
begin
  {adoVendaItemValorTotal.Value := 0;

  if (adoVendaItemValor.Value > 0) and (adoVendaItemQuantidade.Value > 0) then
    adoVendaItemValorTotal.Value := adoVendaItemValor.Value * adoVendaItemQuantidade.Value;}
end;

end.
