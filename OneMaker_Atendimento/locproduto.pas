unit locproduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid,
  StdCtrls, TFlatEditUnit, DB, Menus, jpeg, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DBCtrls, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel;

type
  Tfrmlocproduto = class(TForm)
    dsproduto: TDataSource;
    PopupMenu1: TPopupMenu;
    ipodePesquisa1: TMenuItem;
    qrproduto: TZQuery;
    qrmarca: TZQuery;
    qrfornecedor: TZQuery;
    qrprodutomarca: TStringField;
    qrprodutofornecedor: TStringField;
    qrprodutopreco_prazo: TFloatField;
    Panel1: TPanel;
    lpesquisa: TLabel;
    loc: TEdit;
    grid: TwwDBGrid;
    Panel2: TPanel;
    Label8: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    DBText2: TDBText;
    Bevel2: TBevel;
    qrprodutoUNIDADE: TWideStringField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoESTOQUE_ATUAL: TFloatField;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoCODBARRA: TWideStringField;
    qrprodutoPRODUTO: TWideStringField;
    qrprodutoDATA_CADASTRO: TDateField;
    qrprodutoCODGRUPO: TWideStringField;
    qrprodutoCODSUBGRUPO: TWideStringField;
    qrprodutoCODFORNECEDOR: TWideStringField;
    qrprodutoCODMARCA: TWideStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateField;
    qrprodutoNOTAFISCAL: TWideStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoCODALIQUOTA: TWideStringField;
    qrprodutoAPLICACAO: TWideMemoField;
    qrprodutoLOCALICAZAO: TWideStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TWideStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoCODRECEITA: TWideStringField;
    qrprodutoFOTO: TWideStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    qrprodutoNOTAFISCAL_ANTERIOR: TWideStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TWideStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TWideStringField;
    qrprodutoAUTO_COMPLEMENTO: TWideStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateField;
    qrprodutoFIM_PROMOCAO: TDateField;
    qrprodutoCST: TWideStringField;
    qrprodutoCLASSIFICACAO_FISCAL: TWideStringField;
    qrprodutoNBM: TWideStringField;
    qrprodutoNCM: TWideStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoREDUCAO: TFloatField;
    qrprodutoQTDE_EMBALAGEM: TFloatField;
    qrprodutoTIPO: TWideStringField;
    qrprodutoPESO_LIQUIDO: TFloatField;
    qrprodutoFARMACIA_CONTROLADO: TWideStringField;
    qrprodutoFARMACIA_APRESENTACAO: TIntegerField;
    qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    qrprodutoFARMACIA_PMC: TFloatField;
    qrprodutoULTIMA_ALTERACAO: TDateField;
    qrprodutoULTIMA_CARGA: TDateField;
    qrprodutoDATA_INVENTARIO: TDateField;
    qrprodutoCUSTO_INVENTARIO: TFloatField;
    qrprodutoESTOQUE_INVENTARIO: TFloatField;
    qrprodutoESTOQUE_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_NOVO: TFloatField;
    qrprodutoUSA_RENTABILIDADE: TIntegerField;
    qrprodutoQUANTIDADE_MINIMA_FAB: TFloatField;
    qrprodutoAPRESENTACAO: TWideStringField;
    qrprodutoSITUACAO: TIntegerField;
    qrprodutoPRECOVENDA1: TFloatField;
    qrprodutoPRECOVENDA2: TFloatField;
    qrprodutoPRECOVENDA3: TFloatField;
    qrprodutoPRECOVENDA4: TFloatField;
    qrprodutoPRECOVENDA5: TFloatField;
    qrprodutoDESCONTO_PRECOVENDA: TFloatField;
    qrprodutoDATA_INVENTARIO_ATUAL: TDateField;
    qrprodutoCUSTO_INVENTARIO_ATUAL: TFloatField;
    qrprodutoESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qrprodutoMARGEM_MINIMA: TFloatField;
    qrprodutoPISCOFINS: TWideStringField;
    qrprodutoREFERENCIA_FORNECEDOR: TWideStringField;
    qrprodutoCOMISSAO1: TFloatField;
    qrprodutoMARGEM_DESCONTO: TFloatField;
    qrprodutoTAMANHO: TWideStringField;
    qrprodutoCOR: TWideStringField;
    qrprodutoINCIDENCIA_PISCOFINS: TWideStringField;
    qrprodutoVEIC_CHASSI: TWideStringField;
    qrprodutoVEIC_SERIE: TWideStringField;
    qrprodutoVEIC_POTENCIA: TWideStringField;
    qrprodutoVEIC_PESO_LIQUIDO: TWideStringField;
    qrprodutoVEIC_PESO_BRUTO: TWideStringField;
    qrprodutoVEIC_TIPO_COMBUSTIVEL: TWideStringField;
    qrprodutoVEIC_RENAVAM: TWideStringField;
    qrprodutoVEIC_ANO_FABRICACAO: TIntegerField;
    qrprodutoVEIC_ANO_MODELO: TIntegerField;
    qrprodutoVEIC_TIPO: TWideStringField;
    qrprodutoVEIC_TIPO_PINTURA: TWideStringField;
    qrprodutoVEIC_COD_COR: TWideStringField;
    qrprodutoVEIC_COR: TWideStringField;
    qrprodutoVEIC_VIN: TWideStringField;
    qrprodutoVEIC_NUMERO_MOTOR: TWideStringField;
    qrprodutoVEIC_CMKG: TWideStringField;
    qrprodutoVEIC_CM3: TWideStringField;
    qrprodutoVEIC_DISTANCIA_EIXO: TWideStringField;
    qrprodutoVEIC_COD_MARCA: TWideStringField;
    qrprodutoVEIC_ESPECIE: TWideStringField;
    qrprodutoVEIC_CONDICAO: TWideStringField;
    qrprodutoLOTE_FABRICACAO: TWideStringField;
    qrprodutoLOTE_VALIDADE: TDateField;
    qrprodutoMARGEM_AGREGADA: TFloatField;
    qrprodutoCODBARRA_NOVARTIS: TWideStringField;
    qrprodutoFARMACIA_DCB: TWideStringField;
    qrprodutoFARMACIA_ABCFARMA: TWideStringField;
    qrprodutoFARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    qrprodutoFARMACIA_PRINCIPIOATIVO: TWideStringField;
    qrprodutoULTIMA_COMPRA: TDateField;
    qrprodutoFARMACIA_DATAVIGENCIA: TDateField;
    qrprodutoFARMACIA_TIPO: TWideStringField;
    qrprodutoUSA_COMBUSTIVEL: TWideStringField;
    qrprodutoREFERENCIA: TWideStringField;
    qrprodutoPERDA: TFloatField;
    qrprodutoCOMPOSICAO1: TWideStringField;
    qrprodutoCOMPOSICAO2: TWideStringField;
    qrprodutoIAT: TWideStringField;
    qrprodutoIPPT: TWideStringField;
    qrprodutoSITUACAO_TRIBUTARIA: TWideStringField;
    qrprodutoFLAG_SIS: TWideStringField;
    qrprodutoFLAG_ACEITO: TWideStringField;
    qrprodutoFLAG_EST: TWideStringField;
    qrprodutoCSOSN: TWideStringField;
    qrprodutoCODORIGINAL: TWideStringField;
    qrprodutoCUSTO_ATACADO: TSingleField;
    qrprodutoUNIDADE_ATACADO: TWideStringField;
    qrprodutoQTDE_EMBALAGEMATACADO: TSingleField;
    qrprodutoPMARGEM1: TSingleField;
    qrprodutoPMARGEM2: TSingleField;
    qrprodutoPMARGEM3: TSingleField;
    qrprodutoPMARGEM4: TSingleField;
    qrprodutoPMARGEM5: TSingleField;
    qrprodutoPMARGEMATACADO1: TSingleField;
    qrprodutoPMARGEMATACADO2: TSingleField;
    qrprodutoPMARGEMATACADO3: TSingleField;
    qrprodutoPMARGEMATACADO4: TSingleField;
    qrprodutoPMARGEMATACADO5: TSingleField;
    qrprodutoPMARGEMATACADO6: TSingleField;
    qrprodutoPRECOATACADO1: TSingleField;
    qrprodutoPRECOATACADO2: TSingleField;
    qrprodutoPRECOATACADO3: TSingleField;
    qrprodutoPRECOATACADO4: TSingleField;
    qrprodutoPRECOATACADO5: TSingleField;
    qrprodutoIND_CFOP: TWideStringField;
    qrprodutoCFOP_DESC: TWideStringField;
    qrprodutoUSA_LOTE: TIntegerField;
    qrprodutoIND_CFOP_VENDA_DENTRO: TWideStringField;
    qrprodutoCODCONTA: TWideStringField;
    qrprodutoIND_CFOP_VENDA_FORA: TWideStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    qrprodutoIND_CFOP_GARANTIA_DENTRO: TWideStringField;
    qrprodutoIND_CFOP_GARANTIA_FORA: TWideStringField;
    qrprodutoUSA_TB_PC: TWideStringField;
    qrprodutoATIVA: TWideStringField;
    qrprodutoCEST: TWideStringField;
    qrprodutoCODPRODUTO: TWideStringField;
    qrprodutoCODFILIAL: TWideStringField;
    qrprodutoESTOQUE_INICIAL: TFloatField;
    qrprodutoENTRADAS: TFloatField;
    qrprodutoSAIDAS: TFloatField;
    qrprodutoULTIMA_ENTRADA: TDateField;
    qrprodutoULTIMA_SAIDA: TDateField;
    qrprodutoNOTA_FISCAL: TWideStringField;
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure qrprodutoCalcFields(DataSet: TDataSet);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlocproduto: Tfrmlocproduto;
   const
   sc_DragMove = $f012;
implementation

uses modulo, principal, Math, venda_pdv;

{$R *.dfm}

procedure Tfrmlocproduto.LOCKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
   IF LOC.TEXT <> '' THEN
   BEGIN


    if (lpesquisa.Caption = 'F3 | Produto:') OR (lpesquisa.Caption = 'F3 | Código:') THEN
    BEGIN
      qrproduto.Close;
      qrproduto.sql.clear;
      if lpesquisa.Caption = 'F3 | Produto:' THEN  qrproduto.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codiGo = estq.codproduto and upper(prod.PRODUTO) like '''+ANSIUPPERCASE(LOC.text)+'%'' order by prod.produto');
      if lpesquisa.Caption = 'F3 | Código:' THEN   qrproduto.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and upper(prod.CODIGO) like '''+LOC.text+'%'' order by prod.produto');
      qrproduto.open;
      if qrproduto.RecordCount > 0 then
      begin
        if qrproduto.RecordCount = 1 then
        begin
          resultado_pesquisa1 := qrproduto.fieldbyname('codigo').asstring;
          resultado_pesquisa2 := qrproduto.fieldbyname('produto').asstring;
        end
        else
        begin
          grid.setfocus;
        end;
      end
      else
      begin
        frmprincipal.msg('LOCE','Registro não encontrado!',false,false,true,'');
        LOC.SelectAll;
        LOC.SetFocus;
      end;
    END
    ELSE
    BEGIN


    END;
   END;
  end;
  if key = #27 then close;
end;

procedure Tfrmlocproduto.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlocproduto.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmlocproduto.FormShow(Sender: TObject);
begin
    if ultima_pesquisa = '' then
    begin
      qrproduto.Close;
      qrproduto.sql.clear;
      IF LOC.Text = '' THEN
      qrproduto.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and prod.codigo is null')
      ELSE
      qrproduto.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and upper(prod.PRODUTO) like '''+ANSIUPPERCASE(LOC.text)+'%'' order by prod.produto');
      qrproduto.open;
      IF LOC.Text = '' THEN
        LOC.setfocus
      ELSE
        GRID.SETFOCUS;
    end;
end;

procedure Tfrmlocproduto.gridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if qrproduto.RecordCount > 0 then
    begin
      resultado_pesquisa1 := qrproduto.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := qrproduto.fieldbyname('produto').asstring;
      close;
    end;
  end;
  if key = #27 then close;
end;

procedure Tfrmlocproduto.ipodePesquisa1Click(Sender: TObject);
begin
  if lpesquisa.Caption = 'F3 | Produto:' THEN BEGIN  lpesquisa.Caption := 'F3 | Código:';EXIT;END;
  if lpesquisa.Caption = 'F3 | Código:' THEN BEGIN lpesquisa.Caption := 'F3 | Marca:';EXIT;END;
  if lpesquisa.Caption = 'F3 | Marca:' THEN BEGIN lpesquisa.Caption := 'F3 | Fornecedor:';EXIT;END;
  if lpesquisa.Caption = 'F3 | Fornecedor:' THEN BEGIN  lpesquisa.Caption := 'F3 | Produto:';EXIT;END;


end;

procedure Tfrmlocproduto.gridDblClick(Sender: TObject);
begin
      resultado_pesquisa1 := qrproduto.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := qrproduto.fieldbyname('produto').asstring;
      close;
end;

procedure Tfrmlocproduto.qrprodutoCalcFields(DataSet: TDataSet);
begin
  If  aumento_prazo <> 0 then
  begin
     qrproduto.FieldByName('preco_prazo').asfloat :=
     qrproduto.FieldByName('precovenda').asfloat + (qrproduto.FieldByName('precovenda').asfloat * (aumento_prazo/100));
  end
  else
    qrproduto.FieldByName('preco_prazo').asfloat := qrproduto.FieldByName('precovenda').asfloat ;
end;

end.
