unit preco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, TFlatEditUnit, ExtCtrls,
  TFlatPanelUnit, Menus, jpeg, DBCtrls, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel;

type
  Tfrmpreco = class(TForm)
    DSPRODUTO: TDataSource;
    qrproduto: TZQuery;
    PopupMenu1: TPopupMenu;
    ipodePesquisa1: TMenuItem;
    qrmarca: TZQuery;
    qrprodutomarca: TStringField;
    qrprodutopreco_prazo: TFloatField;
    Panel2: TPanel;
    Label11: TLabel;
    Label10: TLabel;
    Panel1: TPanel;
    lpesquisa: TLabel;
    loc: TEdit;
    grid: TwwDBGrid;
    Panel3: TPanel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Bevel5: TBevel;
    Bevel6: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    qrprodutoUNIDADE: TWideStringField;
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
    qrprodutoPRECOVENDA: TFloatField;
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
    qrprodutoNOME: TWideStringField;
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure qrprodutoCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure gridEnter(Sender: TObject);
    procedure gridExit(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpreco: Tfrmpreco;
     const
   sc_DragMove = $f012;
implementation

uses modulo, venda_pdv, principal;

{$R *.dfm}

procedure Tfrmpreco.ipodePesquisa1Click(Sender: TObject);
begin
  IF LABEL10.CAPTION = 'GRID' THEN
  BEGIN
    LOC.SETFOCUS;

    EXIT;

  END;
  LOC.SETFOCUS;

  if lpesquisa.Caption = 'F3 | Produto:' THEN BEGIN lpesquisa.Caption := 'F3 | Código:';EXIT;END;
  if lpesquisa.Caption = 'F3 | Código:' THEN BEGIN lpesquisa.Caption := 'F3 | Cód.Barras:'; EXIT;END;
  if lpesquisa.Caption = 'F3 | Cód.Barras:' THEN BEGIN lpesquisa.Caption := 'F3 | Fornecedor:';EXIT;END;
  if lpesquisa.Caption = 'F3 | Fornecedor:' THEN BEGIN lpesquisa.Caption := 'F3 | Produto:';EXIT;END;


   end;



procedure Tfrmpreco.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmpreco.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmpreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmpreco.LOCKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    try
    qrPRODUTO.close;
    qrPRODUTO.SQL.Clear;
    if lpesquisa.Caption = 'F3 | Produto:'     then qrPRODUTO.sql.add('select PRO.*, estq.estoque_atual, FORNEC.nome from c000025 PRO, c000009 FORNEC, c000100 estq where pro.codigo = estq.codproduto and PRO.codFORNECEDOR = FORNEC.codigo and upper(PRODUTO) like '''+ansiuppercase(loc.text)+'%'' order by PRODUTO');
    if lpesquisa.Caption = 'F3 | Código:'      then qrPRODUTO.sql.add('select PRO.*, estq.estoque_atual, FORNEC.nome from c000025 PRO, c000009 FORNEC, c000100 estq where pro.codigo = estq.codproduto and PRO.codFORNECEDOR = FORNEC.codigo and upper(PRO.CODIGO) like ''%'+ansiuppercase(loc.text)+'%'' order by PRODUTO');
    if lpesquisa.Caption = 'F3 | Fornecedor:'  then qrPRODUTO.sql.add('select PRO.*, estq.estoque_atual, FORNEC.nome from c000025 PRO, c000009 FORNEC, c000100 estq where pro.codigo = estq.codproduto and PRO.codFORNECEDOR = FORNEC.codigo and upper(NOME) like '''+ansiuppercase(loc.text)+'%'' order by PRODUTO');
    if lpesquisa.Caption = 'F3 | Cód.Barras:'  then qrPRODUTO.sql.add('select PRO.*, estq.estoque_atual, FORNEC.nome from c000025 PRO, c000009 FORNEC, c000100 estq where pro.codigo = estq.codproduto and PRO.codFORNECEDOR = FORNEC.codigo and upper(CODBARRA) like '''+ansiuppercase(loc.text)+'%'' order by PRODUTO');
    qrPRODUTO.open;
    except
      showmessage('Parâmetro inválido!');
    end;

    IF qrPRODUTO.RecordCount = 0 THEN FRMPRINCIPAL.msg('INFO','Nenhum registro encontrado!',false,false,true,'') else grid.setfocus;
  end;


  IF KEY = #27 THEN CLOSE;
end;

procedure Tfrmpreco.qrprodutoCalcFields(DataSet: TDataSet);
begin

    If  aumento_prazo <> 0 then
    begin
       qrproduto.FieldByName('preco_prazo').asfloat :=
       qrproduto.FieldByName('precovenda').asfloat + (qrproduto.FieldByName('precovenda').asfloat * (aumento_prazo/100));
    end
    else
      qrproduto.FieldByName('preco_prazo').asfloat := qrproduto.FieldByName('precovenda').asfloat ;
end;

procedure Tfrmpreco.FormShow(Sender: TObject);
begin
  QRPRODUTO.CLOSE;
  QRPRODUTO.SQL.CLEAR;
  QRPRODUTO.SQL.ADD('select PRO.*, estq.estoque_atual, FORNEC.nome from c000025 PRO, c000009 FORNEC, c000100 estq where pro.codigo = estq.codproduto and PRO.codFORNECEDOR = FORNEC.codigo and PRO.CODIGO = ''XXXXXX''');
  QRPRODUTO.OPEN;
  LOC.SetFocus;
end;

procedure Tfrmpreco.gridKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #27 THEN LOC.SetFocus;
end;

procedure Tfrmpreco.gridEnter(Sender: TObject);
begin
  LABEL10.CAPTION := 'GRID';
end;

procedure Tfrmpreco.gridExit(Sender: TObject);
begin
  LABEL10.CAPTION := 'LOC';
end;

end.
