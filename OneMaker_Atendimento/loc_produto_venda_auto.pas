unit loc_produto_venda_auto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid,
  Collection, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls,
  wwdblook, Menus, Buttons, AdvGlowButton;

type
  Tfrmloc_venda_produto_auto = class(TForm)
    dsproduto: TDataSource;
    qrproduto: TZQuery;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    SelecionarProduto1: TMenuItem;
    N1: TMenuItem;
    ipodePesquisa1: TMenuItem;
    FlatPanel2: TFlatPanel;
    GroupBox1: TGroupBox;
    lestoque: TLabel;
    GroupBox2: TGroupBox;
    DBText2: TDBText;
    GroupBox3: TGroupBox;
    DBText4: TDBText;
    GroupBox4: TGroupBox;
    DBText5: TDBText;
    GroupBox5: TGroupBox;
    DBText3: TDBText;
    bfechar: TAdvGlowButton;
    Bevel2: TBevel;
    DBGRID1: TwwDBGrid;
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    eproduto: TEdit;
    ecodigo: TEdit;
    ereferencia: TEdit;
    eaplicacao: TEdit;
    ecomplemento: TEdit;
    efornecedor: TwwDBLookupCombo;
    emarca: TwwDBLookupCombo;
    combo_referencia: TComboBox;
    qrestoque: TZQuery;
    qrprodutomarca: TStringField;
    qrprodutofornecedor: TStringField;
    qrprodutogrupo: TStringField;
    qrprodutosubgrupo: TStringField;
    qrprodutoCODIGO: TWideStringField;
    qrprodutoCODBARRA: TWideStringField;
    qrprodutoPRODUTO: TWideStringField;
    qrprodutoUNIDADE: TWideStringField;
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
    procedure eprodutoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eprodutoEnter(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure efornecedorExit(Sender: TObject);
    procedure emarcaExit(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure efornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure emarcaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGRID1DblClick(Sender: TObject);
    procedure DBGRID1KeyPress(Sender: TObject; var Key: Char);
    procedure eprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bfiltroClick(Sender: TObject);
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure DBGRID1RowChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_venda_produto_auto: Tfrmloc_venda_produto_auto;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmloc_venda_produto_auto.eprodutoChange(Sender: TObject);
var produto, codigo, aplicacao, referencia, marca, fornecedor, complemento, ref : string;
begin

  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';

  try
    qrproduto.close;
    qrproduto.sql.clear;
    if eproduto.Text <> '' then produto := ' upper(produto) like '''+ref+eproduto.text+'%''' else produto := ' produto <> ''''';
    if ecodigo.text <> '' then codigo := ' and codigo like ''%'+ecodigo.text+'%''' else codigo := '';
    if ereferencia.text <> '' then referencia := ' and upper(codbarra) like ''%'+ereferencia.text+'%''' else referencia := '';
    if eaplicacao.text <> '' then aplicacao := ' and upper(auto_aplicacao) like ''%'+eaplicacao.text+'%''' else aplicacao := '';
    if ecomplemento.text <> '' then complemento := ' and upper(auto_complemento) like ''%'+ecomplemento.text+'%''' else complemento := '';
    if efornecedor.Text <> '' then fornecedor := ' and codfornecedor = '''+frmmodulo.qrfornecedor.fieldbyname('codigo').asstring+'''' else fornecedor := '';
    if emarca.Text <> '' then marca := ' and codmarca = '''+frmmodulo.qrmarca.fieldbyname('codigo').asstring+'''' else marca := '';
    qrproduto.SQL.Add('select * from c000025 where situacao <> 1 and '+produto+codigo+referencia+aplicacao+complemento+fornecedor+marca+' order by produto');
    qrproduto.open;
  except
  end;
end;

procedure Tfrmloc_venda_produto_auto.FormShow(Sender: TObject);
begin
  produto_loc := '';
  resultado_pesquisa1 := '';

  qrproduto.close;

  frmmodulo.qrfornecedor.close;
  frmmodulo.qrfornecedor.sql.clear;
  frmmodulo.qrfornecedor.sql.add('select * from c000009 order by nome');
  frmmodulo.qrfornecedor.open;
  frmmodulo.qrfornecedor.IndexFieldNames := 'nome';

  frmmodulo.qrmarca.close;
  frmmodulo.qrmarca.sql.clear;
  frmmodulo.qrmarca.sql.add('select * from c000019 order by nome');
  frmmodulo.qrmarca.open;
  frmmodulo.qrmarca.IndexFieldNames := 'nome';

  eprodutoChange(FRMLOC_VENDA_PRODUTO_AUTO);

end;

procedure Tfrmloc_venda_produto_auto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
  cod_produto := qrproduto.fieldbyname('codigo').asstring;
  except
    cod_produto := '';
  end;


  action := cafree;
end;

procedure Tfrmloc_venda_produto_auto.eprodutoEnter(Sender: TObject);
begin
  tedit(sender).color := clyellow;
end;

procedure Tfrmloc_venda_produto_auto.eprodutoExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmloc_venda_produto_auto.eprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmloc_venda_produto_auto.efornecedorExit(Sender: TObject);
var produto, codigo, aplicacao, referencia, marca, fornecedor, complemento, ref : string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  tedit(sender).color := clwindow;
  try
    qrproduto.close;
    qrproduto.sql.clear;
    if eproduto.Text <> '' then produto := ' upper(produto) like '''+ref+eproduto.text+'%''' else produto := ' produto <> ''''';
    if ecodigo.text <> '' then codigo := ' and codigo like ''%'+ecodigo.text+'%''' else codigo := '';
    if ereferencia.text <> '' then referencia := ' and upper(codbarra) like ''%'+ereferencia.text+'%''' else referencia := '';
    if eaplicacao.text <> '' then aplicacao := ' and upper(auto_aplicacao) like ''%'+eaplicacao.text+'%''' else aplicacao := '';
    if ecomplemento.text <> '' then complemento := ' and upper(auto_complemento) like ''%'+ecomplemento.text+'%''' else complemento := '';
    if efornecedor.Text <> '' then fornecedor := ' and codfornecedor = '''+frmmodulo.qrfornecedor.fieldbyname('codigo').asstring+'''' else fornecedor := '';
    if emarca.Text <> '' then marca := ' and codmarca = '''+frmmodulo.qrmarca.fieldbyname('codigo').asstring+'''' else marca := '';
    qrproduto.SQL.Add('select * from c000025 where  situacao <> 1 and  '+produto+codigo+referencia+aplicacao+complemento+fornecedor+marca+' order by produto');
    qrproduto.open;
  except
  end;



end;

procedure Tfrmloc_venda_produto_auto.emarcaExit(Sender: TObject);
var produto, codigo, aplicacao, referencia, marca, fornecedor, complemento, ref : string;
begin

  tedit(sender).color := clwindow;
    if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  try
    qrproduto.close;
    qrproduto.sql.clear;
    if eproduto.Text <> '' then produto := ' upper(produto) like '''+ref+eproduto.text+'%''' else produto := ' produto <> ''''';
    if ecodigo.text <> '' then codigo := ' and codigo like ''%'+ecodigo.text+'%''' else codigo := '';
    if ereferencia.text <> '' then referencia := ' and upper(codbarra) like ''%'+ereferencia.text+'%''' else referencia := '';
    if eaplicacao.text <> '' then aplicacao := ' and upper(auto_aplicacao) like ''%'+eaplicacao.text+'%''' else aplicacao := '';
    if ecomplemento.text <> '' then complemento := ' and upper(auto_complemento) like ''%'+ecomplemento.text+'%''' else complemento := '';
    if efornecedor.Text <> '' then fornecedor := ' and codfornecedor = '''+frmmodulo.qrfornecedor.fieldbyname('codigo').asstring+'''' else fornecedor := '';
    if emarca.Text <> '' then marca := ' and codmarca = '''+frmmodulo.qrmarca.fieldbyname('codigo').asstring+'''' else marca := '';
    qrproduto.SQL.Add('select * from c000025 where  situacao <> 1 and '+produto+codigo+referencia+aplicacao+complemento+fornecedor+marca+' order by produto');
    qrproduto.open;
  except
  end;
end;

procedure Tfrmloc_venda_produto_auto.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmloc_venda_produto_auto.efornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmloc_venda_produto_auto.emarcaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmloc_venda_produto_auto.DBGRID1DblClick(Sender: TObject);
begin
    produto_loc := qrproduto.fieldbyname('codigo').asstring;
    resultado_pesquisa1 := qrproduto.fieldbyname('codigo').asstring;
  close;
end;

procedure Tfrmloc_venda_produto_auto.DBGRID1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    produto_loc := qrproduto.fieldbyname('codigo').asstring;
    resultado_pesquisa1 := qrproduto.fieldbyname('codigo').asstring;
    close;
  end;
end;

procedure Tfrmloc_venda_produto_auto.eprodutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_down then dbgrid1.setfocus;

end;

procedure Tfrmloc_venda_produto_auto.bfiltroClick(Sender: TObject);
begin
      produto_loc := qrproduto.fieldbyname('codigo').asstring;
    resultado_pesquisa1 := qrproduto.fieldbyname('codigo').asstring;
      close;
end;

procedure Tfrmloc_venda_produto_auto.ipodePesquisa1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1


end;

procedure Tfrmloc_venda_produto_auto.DBGRID1RowChanged(Sender: TObject);
begin
    qrestoque.close;
  qrestoque.sql.clear;
  qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
  qrestoque.open;
  lestoque.caption := formatfloat('###,###,##0.000',qrestoque.fieldbyname('estoque_atual').asfloat);
end;

end.
