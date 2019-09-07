unit fornecedor_compras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, DB, ImgList, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, Menus, Grids, Wwdbigrd, Wwdbgrid, StdCtrls,
  RzEdit, Mask, AdvGlowButton, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DBCtrls, ExtCtrls, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, JvExMask, JvToolEdit;

type
  Tfrmfornecedor_compras = class(TForm)
    Pop2: TPopupMenu;
    Pesquisa1: TMenuItem;
    Cancelar1: TMenuItem;
    dsnota: TDataSource;
    dsfornecedor: TDataSource;
    imprimir1: TMenuItem;
    qrcompras: TZQuery;
    Panel2: TPanel;
    Label56: TLabel;
    Label18: TLabel;
    Label1: TLabel;
    edata_inicio: TJvDateEdit;
    edata_final: TJvDateEdit;
    ENUMERO: TEdit;
    bfiltrar: TAdvGlowButton;
    GRID: TwwDBGrid;
    btotaliza_nota: TButton;
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    rqde: TRzNumericEdit;
    qrcomprasCODIGO: TWideStringField;
    qrcomprasITEM: TWideStringField;
    qrcomprasCODNOTA: TWideStringField;
    qrcomprasCODPRODUTO: TWideStringField;
    qrcomprasCODLANCAMENTO: TWideStringField;
    qrcomprasUN_COMPRA: TWideStringField;
    qrcomprasUN_FRACAO: TWideStringField;
    qrcomprasFRACAO: TFloatField;
    qrcomprasCST: TWideStringField;
    qrcomprasCFOP: TWideStringField;
    qrcomprasQTDE: TFloatField;
    qrcomprasUNITARIO: TFloatField;
    qrcomprasSUBTOTAL: TFloatField;
    qrcomprasDESCONTO: TFloatField;
    qrcomprasTOTAL: TFloatField;
    qrcomprasDESCONTO_P: TFloatField;
    qrcomprasICMS_RETIDO: TWideStringField;
    qrcomprasICMS_ALIQUOTA: TFloatField;
    qrcomprasICMS_REDUCAO: TFloatField;
    qrcomprasICMS_BASE: TFloatField;
    qrcomprasICMS_VALOR: TFloatField;
    qrcomprasICMS_VALORRETIDO: TFloatField;
    qrcomprasICMS_ISENTO: TFloatField;
    qrcomprasICMS_NAOTRIBUTADO: TFloatField;
    qrcomprasSUB_MARGEM: TFloatField;
    qrcomprasSUB_BASE: TFloatField;
    qrcomprasSUB_VALOR: TFloatField;
    qrcomprasIPI_TIPO: TWideStringField;
    qrcomprasIPI_ALIQUOTA: TFloatField;
    qrcomprasIPI_BASE: TFloatField;
    qrcomprasIPI_VALOR: TFloatField;
    qrcomprasDATA: TDateField;
    qrcomprasTIPO: TIntegerField;
    qrcomprasNOTAFISCAL: TWideStringField;
    qrcomprasFRETE: TFloatField;
    qrcomprasOUTRAS: TFloatField;
    qrcomprasSEGURO: TFloatField;
    qrcomprasCLASSIFICACAO_FISCAL: TWideStringField;
    qrcomprasSUB_PRODUTOS: TFloatField;
    qrcomprasCODFORNECEDOR: TWideStringField;
    qrcomprasITEM_ESPECIAL_VALOR: TFloatField;
    qrcomprasICMS_OUTRAS: TFloatField;
    qrcomprasALTERA_ITEM: TIntegerField;
    qrcomprasCREDITO_ICMS: TFloatField;
    qrcomprasCREDITO_ICMS_BASE: TFloatField;
    qrcomprasPIS_BASE: TFloatField;
    qrcomprasPIS: TFloatField;
    qrcomprasCOFINS_BASE: TFloatField;
    qrcomprasCOFINS: TFloatField;
    qrcomprasLOTE_FABRICACAO: TWideStringField;
    qrcomprasLOTE_VALIDADE: TDateField;
    qrcomprasLOTE_FABRICACAO_DATA: TDateField;
    qrcomprasCODBARRA: TWideStringField;
    qrcomprasPRODUTO: TWideStringField;
    qrcomprasPMARGEM: TSingleField;
    qrcomprasPRECOVENDA: TSingleField;
    qrcomprasPRECOCUSTO: TSingleField;
    qrcomprasCODIGO_1: TWideStringField;
    qrcomprasCODBARRA_1: TWideStringField;
    qrcomprasPRODUTO_1: TWideStringField;
    qrcomprasUNIDADE: TWideStringField;
    qrcomprasDATA_CADASTRO: TDateField;
    qrcomprasCODGRUPO: TWideStringField;
    qrcomprasCODSUBGRUPO: TWideStringField;
    qrcomprasCODFORNECEDOR_1: TWideStringField;
    qrcomprasCODMARCA: TWideStringField;
    qrcomprasDATA_ULTIMACOMPRA: TDateField;
    qrcomprasNOTAFISCAL_1: TWideStringField;
    qrcomprasPRECOCUSTO_1: TFloatField;
    qrcomprasPRECOVENDA_1: TFloatField;
    qrcomprasDATA_ULTIMAVENDA: TDateField;
    qrcomprasESTOQUE: TFloatField;
    qrcomprasESTOQUEMINIMO: TFloatField;
    qrcomprasCODALIQUOTA: TWideStringField;
    qrcomprasAPLICACAO: TWideMemoField;
    qrcomprasLOCALICAZAO: TWideStringField;
    qrcomprasPESO: TFloatField;
    qrcomprasVALIDADE: TWideStringField;
    qrcomprasCOMISSAO: TFloatField;
    qrcomprasUSA_BALANCA: TIntegerField;
    qrcomprasUSA_SERIAL: TIntegerField;
    qrcomprasUSA_GRADE: TIntegerField;
    qrcomprasCODRECEITA: TWideStringField;
    qrcomprasFOTO: TWideStringField;
    qrcomprasDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    qrcomprasNOTAFISCAL_ANTERIOR: TWideStringField;
    qrcomprasCODFORNECEDOR_ANTERIOR: TWideStringField;
    qrcomprasPRECOCUSTO_ANTERIOR: TFloatField;
    qrcomprasPRECOVENDA_ANTERIOR: TFloatField;
    qrcomprasCUSTOMEDIO: TFloatField;
    qrcomprasAUTO_APLICACAO: TWideStringField;
    qrcomprasAUTO_COMPLEMENTO: TWideStringField;
    qrcomprasDATA_REMARCACAO_CUSTO: TDateField;
    qrcomprasDATA_REMARCACAO_VENDA: TDateField;
    qrcomprasPRECO_PROMOCAO: TFloatField;
    qrcomprasDATA_PROMOCAO: TDateField;
    qrcomprasFIM_PROMOCAO: TDateField;
    qrcomprasCST_1: TWideStringField;
    qrcomprasCLASSIFICACAO_FISCAL_1: TWideStringField;
    qrcomprasNBM: TWideStringField;
    qrcomprasNCM: TWideStringField;
    qrcomprasALIQUOTA: TFloatField;
    qrcomprasIPI: TFloatField;
    qrcomprasREDUCAO: TFloatField;
    qrcomprasQTDE_EMBALAGEM: TFloatField;
    qrcomprasTIPO_1: TWideStringField;
    qrcomprasPESO_LIQUIDO: TFloatField;
    qrcomprasFARMACIA_CONTROLADO: TWideStringField;
    qrcomprasFARMACIA_APRESENTACAO: TIntegerField;
    qrcomprasFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    qrcomprasFARMACIA_PMC: TFloatField;
    qrcomprasULTIMA_ALTERACAO: TDateField;
    qrcomprasULTIMA_CARGA: TDateField;
    qrcomprasDATA_INVENTARIO: TDateField;
    qrcomprasCUSTO_INVENTARIO: TFloatField;
    qrcomprasESTOQUE_INVENTARIO: TFloatField;
    qrcomprasESTOQUE_ANTERIOR: TFloatField;
    qrcomprasPRECOVENDA_NOVO: TFloatField;
    qrcomprasUSA_RENTABILIDADE: TIntegerField;
    qrcomprasQUANTIDADE_MINIMA_FAB: TFloatField;
    qrcomprasAPRESENTACAO: TWideStringField;
    qrcomprasSITUACAO: TIntegerField;
    qrcomprasPRECOVENDA1: TFloatField;
    qrcomprasPRECOVENDA2: TFloatField;
    qrcomprasPRECOVENDA3: TFloatField;
    qrcomprasPRECOVENDA4: TFloatField;
    qrcomprasPRECOVENDA5: TFloatField;
    qrcomprasDESCONTO_PRECOVENDA: TFloatField;
    qrcomprasDATA_INVENTARIO_ATUAL: TDateField;
    qrcomprasCUSTO_INVENTARIO_ATUAL: TFloatField;
    qrcomprasESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qrcomprasMARGEM_MINIMA: TFloatField;
    qrcomprasPISCOFINS: TWideStringField;
    qrcomprasREFERENCIA_FORNECEDOR: TWideStringField;
    qrcomprasCOMISSAO1: TFloatField;
    qrcomprasMARGEM_DESCONTO: TFloatField;
    qrcomprasTAMANHO: TWideStringField;
    qrcomprasCOR: TWideStringField;
    qrcomprasINCIDENCIA_PISCOFINS: TWideStringField;
    qrcomprasVEIC_CHASSI: TWideStringField;
    qrcomprasVEIC_SERIE: TWideStringField;
    qrcomprasVEIC_POTENCIA: TWideStringField;
    qrcomprasVEIC_PESO_LIQUIDO: TWideStringField;
    qrcomprasVEIC_PESO_BRUTO: TWideStringField;
    qrcomprasVEIC_TIPO_COMBUSTIVEL: TWideStringField;
    qrcomprasVEIC_RENAVAM: TWideStringField;
    qrcomprasVEIC_ANO_FABRICACAO: TIntegerField;
    qrcomprasVEIC_ANO_MODELO: TIntegerField;
    qrcomprasVEIC_TIPO: TWideStringField;
    qrcomprasVEIC_TIPO_PINTURA: TWideStringField;
    qrcomprasVEIC_COD_COR: TWideStringField;
    qrcomprasVEIC_COR: TWideStringField;
    qrcomprasVEIC_VIN: TWideStringField;
    qrcomprasVEIC_NUMERO_MOTOR: TWideStringField;
    qrcomprasVEIC_CMKG: TWideStringField;
    qrcomprasVEIC_CM3: TWideStringField;
    qrcomprasVEIC_DISTANCIA_EIXO: TWideStringField;
    qrcomprasVEIC_COD_MARCA: TWideStringField;
    qrcomprasVEIC_ESPECIE: TWideStringField;
    qrcomprasVEIC_CONDICAO: TWideStringField;
    qrcomprasLOTE_FABRICACAO_1: TWideStringField;
    qrcomprasLOTE_VALIDADE_1: TDateField;
    qrcomprasMARGEM_AGREGADA: TFloatField;
    qrcomprasCODBARRA_NOVARTIS: TWideStringField;
    qrcomprasFARMACIA_DCB: TWideStringField;
    qrcomprasFARMACIA_ABCFARMA: TWideStringField;
    qrcomprasFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    qrcomprasFARMACIA_PRINCIPIOATIVO: TWideStringField;
    qrcomprasULTIMA_COMPRA: TDateField;
    qrcomprasFARMACIA_DATAVIGENCIA: TDateField;
    qrcomprasFARMACIA_TIPO: TWideStringField;
    qrcomprasUSA_COMBUSTIVEL: TWideStringField;
    qrcomprasREFERENCIA: TWideStringField;
    qrcomprasPERDA: TFloatField;
    qrcomprasCOMPOSICAO1: TWideStringField;
    qrcomprasCOMPOSICAO2: TWideStringField;
    qrcomprasIAT: TWideStringField;
    qrcomprasIPPT: TWideStringField;
    qrcomprasSITUACAO_TRIBUTARIA: TWideStringField;
    qrcomprasFLAG_SIS: TWideStringField;
    qrcomprasFLAG_ACEITO: TWideStringField;
    qrcomprasFLAG_EST: TWideStringField;
    qrcomprasCSOSN: TWideStringField;
    qrcomprasCODORIGINAL: TWideStringField;
    qrcomprasCUSTO_ATACADO: TSingleField;
    qrcomprasUNIDADE_ATACADO: TWideStringField;
    qrcomprasQTDE_EMBALAGEMATACADO: TSingleField;
    qrcomprasPMARGEM1: TSingleField;
    qrcomprasPMARGEM2: TSingleField;
    qrcomprasPMARGEM3: TSingleField;
    qrcomprasPMARGEM4: TSingleField;
    qrcomprasPMARGEM5: TSingleField;
    qrcomprasPMARGEMATACADO1: TSingleField;
    qrcomprasPMARGEMATACADO2: TSingleField;
    qrcomprasPMARGEMATACADO3: TSingleField;
    qrcomprasPMARGEMATACADO4: TSingleField;
    qrcomprasPMARGEMATACADO5: TSingleField;
    qrcomprasPMARGEMATACADO6: TSingleField;
    qrcomprasPRECOATACADO1: TSingleField;
    qrcomprasPRECOATACADO2: TSingleField;
    qrcomprasPRECOATACADO3: TSingleField;
    qrcomprasPRECOATACADO4: TSingleField;
    qrcomprasPRECOATACADO5: TSingleField;
    qrcomprasIND_CFOP: TWideStringField;
    qrcomprasCFOP_DESC: TWideStringField;
    qrcomprasUSA_LOTE: TIntegerField;
    qrcomprasIND_CFOP_VENDA_DENTRO: TWideStringField;
    qrcomprasCODCONTA: TWideStringField;
    qrcomprasIND_CFOP_VENDA_FORA: TWideStringField;
    qrcomprasIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    qrcomprasIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    qrcomprasIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    qrcomprasIND_CFOP_GARANTIA_FORA: TWideStringField;
    qrcomprasUSA_TB_PC: TWideStringField;
    qrcomprasATIVA: TWideStringField;
    qrcomprasCEST: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BfiltrarClick(Sender: TObject);
    procedure btotaliza_compraClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure Pesquisa1Click(Sender: TObject);
    procedure bimprimeClick(Sender: TObject);
    procedure imprimir1Click(Sender: TObject);
    procedure edata_inicioEnter(Sender: TObject);
    procedure edata_inicioExit(Sender: TObject);
    procedure edata_inicioKeyPress(Sender: TObject; var Key: Char);
    procedure ENUMEROExit(Sender: TObject);
    procedure ENUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfornecedor_compras: Tfrmfornecedor_compras;
   const
   sc_DragMove = $f012;
implementation

uses principal, modulo;

{$R *.dfm}

procedure Tfrmfornecedor_compras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmfornecedor_compras.FormShow(Sender: TObject);
begin

  edata_inicio.text := '01/' + copy(datetostr(date), 4, 7);
  edata_final.date := frmprincipal.UltimoDiaMes(date);


  BfiltrarClick(frmfornecedor_compras);
  edata_inicio.Setfocus;

end;

procedure Tfrmfornecedor_compras.BfiltrarClick(Sender: TObject);
var
  nota: string;
begin

  if (enumero.text = '000000') or (enumero.text = '') then nota := '' else nota := ' and n.numero = ''' + enumero.text + '''';
   {
  qrcompras.close;
  qrcompras.sql.clear;
  qrcompras.SQL.add('select i.*,n.*,p.* from c000088 i,c000087 n,c000025 p');
  qrcompras.SQL.add('where n.codfornecedor = '''+frmmodulo.qrfornecedorCODIGO.AsString+'''');
  qrcompras.SQL.add('and i.codigo = n.codigo');
  qrcompras.SQL.add('and p.codfornecedor = n.codfornecedor');
  qrcompras.SQL.add('and n.data_lancamento >= :datai and n.data_lancamento <= :dataf');
  qrcompras.SQL.add('order by n.data_lancamento,n.codfornecedor,p.produto');
  qrcompras.params.ParamByName('datai').asdatetime := edata_inicio.date;
  qrcompras.params.ParamByName('dataf').asdatetime := edata_final.date;
  qrcompras.open;
  }

  qrcompras.close;
  qrcompras.sql.clear;
  qrcompras.SQL.add('select i.*,p.*, n.* from c000088 i,  c000087 n, c000025 p');
  qrcompras.SQL.add('where n.codfornecedor = ''' + frmmodulo.qrfornecedor.FieldByName('CODIGO').AsString + '''');
  qrcompras.sql.add('and i.codnota = n.codigo ' + nota);
  qrcompras.SQL.add('and p.codigo = i.codproduto');
  qrcompras.SQL.add('and i.data >= :datai and i.data <= :dataf');
  qrcompras.SQL.add('order by i.data,p.produto');
  qrcompras.params.ParamByName('datai').asdatetime := edata_inicio.date;
  qrcompras.params.ParamByName('dataf').asdatetime := edata_final.date;
  qrcompras.open;

  btotaliza_compraClick(frmfornecedor_compras);

  GRID.SetFocus;

end;

procedure Tfrmfornecedor_compras.btotaliza_compraClick(Sender: TObject);
begin
  rqde.value := 0;
  //rtotal.value := 0;
  dsnota.DataSet := nil;
  qrcompras.first;
  while not qrcompras.Eof do
  begin
    rqde.Value := rqde.Value + 1;
     //rtotal.value := rtotal.value + .qradic_nota.fieldbyname('total_nota').asfloat;
    qrcompras.next;
  end;
  dsnota.DataSet := qrcompras;

end;

procedure Tfrmfornecedor_compras.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmfornecedor_compras.AdvSmoothExpanderPanel1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmfornecedor_compras.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmfornecedor_compras.Cancelar1Click(Sender: TObject);
begin
  bfecharClick(frmfornecedor_compras);
end;

procedure Tfrmfornecedor_compras.Pesquisa1Click(Sender: TObject);
begin
  ENUMERO.SetFocus;
end;

procedure Tfrmfornecedor_compras.bimprimeClick(Sender: TObject);
begin
//
end;

procedure Tfrmfornecedor_compras.imprimir1Click(Sender: TObject);
begin
  bimprimeClick(frmfornecedor_compras);
end;

procedure Tfrmfornecedor_compras.edata_inicioEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure Tfrmfornecedor_compras.edata_inicioExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure Tfrmfornecedor_compras.edata_inicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);

end;

procedure Tfrmfornecedor_compras.ENUMEROExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  ENUMERO.Text := frmPrincipal.zerarcodigo(ENUMERO.Text, 6);


end;

procedure Tfrmfornecedor_compras.ENUMEROKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bfiltrar.setfocus;
end;

end.
