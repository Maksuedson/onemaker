unit lista_venda2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, Grids, DBGrids, AdvGlowButton, MemDS,
  DBAccess, RzButton, RzRadChk, AdvReflectionImage, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit
  ;

type
  Tfrmlista_venda2 = class(TForm)
    Panel1: TPanel;
    pnl1: TPanel;
    Label1: TLabel;
    lcliente: TLabel;
    lvendedor: TLabel;
    LPRODUTO: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Bevel2: TBevel;
    lcaixa: TLabel;
    lforma: TLabel;
    lgrupo: TLabel;
    lfornecedor: TLabel;
    lmarca: TLabel;
    lsituacao: TLabel;
    combo_relatorio: TComboBox;
    combo_cliente: TComboBox;
    combo_vendedor: TComboBox;
    combo_produto: TComboBox;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    combo_caixa: TComboBox;
    combo_forma: TComboBox;
    combo_grupo: TComboBox;
    combo_fornecedor: TComboBox;
    combo_marca: TComboBox;
    COMBO_SITUACAO: TComboBox;
    rserial: TRzCheckBox;
    bTodos_Produtos: TRzCheckBox;
    qrvenda: TZQuery;
    fxvenda: TfrxReport;
    fsvenda: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    qrvenda_produto: TZQuery;
    qrproduto: TZQuery;
    fsvenda_produto: TfrxDBDataset;
    qrvenda_produto2: TZQuery;
    fsvenda_produto2: TfrxDBDataset;
    QRVENDA2: TZQuery;
    fsvenda2: TfrxDBDataset;
    qrvenda_produto3: TZQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    qrvenda_produto3comissao: TFloatField;
    fsvenda_produto3: TfrxDBDataset;
    qrabc: TZQuery;
    qrabcPERCENTUAL: TFloatField;
    qrabcABC: TStringField;
    fsabc: TfrxDBDataset;
    qrvenda_produto4: TZQuery;
    qrvenda_produto4preco_custo: TFloatField;
    QUERY: TZQuery;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrvenda_produto10: TZQuery;
    fsvenda_produto10: TfrxDBDataset;
    fsvenda_cupom: TfrxDBDataset;
    fscontas_receber: TfrxDBDataset;
    qrcontasreceber: TZQuery;
    qrvendedor: TZQuery;
    fscomissao: TfrxDBDataset;
    qrvenda1: TZQuery;
    QRCOMISSAO: TZQuery;
    qrvenda_cupom: TZQuery;
    query_venda_recebimento: TZQuery;
    fsvenda_recebimento: TfrxDBDataset;
    qrcondicional: TZQuery;
    fscondicional: TfrxDBDataset;
    query1: TZQuery;
    qrmeta: TZQuery;
    fsmeta: TfrxDBDataset;
    //frxChartObject1: TfrxChartObject;
    qrvendacliente: TStringField;
    qrvendavendedor: TStringField;
    qrvendavalor_selecionado: TFloatField;
    qrvenda_cupomvendedor: TStringField;
    qrvenda_cupomcomissao_vendedor: TStringField;
    qrcontasrecebersituacao2: TIntegerField;
    qrcontasreceberjuros: TFloatField;
    qrmetavendedor: TStringField;
    qrvenda_produto10produto: TStringField;
    qrvenda_produto10un: TStringField;
    qrvenda_produto10preco_venda: TFloatField;
    qrvenda_produto10preco_custo: TFloatField;
    qrvenda_produto10alq: TFloatField;
    qrvenda_produto2produto: TStringField;
    qrvenda_produto2un: TStringField;
    QRCOMISSAONOME_VENDEDOR: TStringField;
    qrvenda_produtoproduto: TStringField;
    qrvenda_produtoun: TStringField;
    qrvenda_produtopreco_venda: TFloatField;
    qrvenda_produtopreco_custo: TFloatField;
    qrvenda_produtocodfornecedor: TStringField;
    qrvenda_produtocodmarca: TStringField;
    qrvenda_produtoalq: TFloatField;
    qrabcCODIGO: TWideStringField;
    qrabcTEXTO1: TWideStringField;
    qrabcTEXTO2: TWideStringField;
    qrabcTEXTO3: TWideStringField;
    qrabcVALOR1: TFloatField;
    qrabcVALOR2: TFloatField;
    qrabcVALOR3: TFloatField;
    qrabcCAMPO1: TWideStringField;
    qrabcCAMPO2: TWideStringField;
    qrabcCAMPO3: TWideStringField;
    qrabcCAMPO4: TWideStringField;
    qrabcVALOR4: TFloatField;
    QRCOMISSAOCODVENDEDOR: TWideStringField;
    QRCOMISSAOVENDEDOR: TWideStringField;
    QRCOMISSAOVALOR_5: TFloatField;
    QRCOMISSAOVALOR_3: TFloatField;
    QRCOMISSAOCOMISSAO_5: TIntegerField;
    QRCOMISSAOCOMISSAO_3: TIntegerField;
    QRCOMISSAOTIPO: TWideStringField;
    QRCOMISSAOTOTAL_COMISSAO: TFloatField;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    qrmetacodvendedor: TStringField;
    qrmetaTOTAL_AVISTA: TStringField;
    qrmetaTOTAL_APRAZO: TStringField;
    qrmetaCLIENTES_TODOS: TStringField;
    qrmetaCLIENTES_NOVOS: TStringField;
    qrvenda_produto2serial_numero: TStringField;
    qrcontasreceberCODIGO: TWideStringField;
    qrcontasreceberCODVENDA: TWideStringField;
    qrcontasreceberCODVENDEDOR: TWideStringField;
    qrcontasreceberCODCAIXA: TWideStringField;
    qrcontasreceberCODCLIENTE: TWideStringField;
    dtfldDATA_EMISSAO: TDateField;
    dtfldDATA_VENCIMENTO: TDateField;
    dtfldDATA_PAGAMENTO: TDateField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberDOCUMENTO: TWideStringField;
    qrcontasreceberTIPO: TWideStringField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceberNOSSONUMERO: TWideStringField;
    qrcontasreceberCODREGIAO: TWideStringField;
    qrcontasreceberCODCEDENTE: TWideStringField;
    qrcontasreceberP5: TFloatField;
    qrcontasreceberP3: TFloatField;
    qrcontasreceberNUMERO_CUPOM: TWideStringField;
    qrcontasreceberVALOR_VENDA: TFloatField;
    qrcontasreceberCOD_VENDA_ORIGINAL: TWideStringField;
    qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField;
    qrcontasreceberEMAIL_ENVIADO: TIntegerField;
    qrcontasreceberHISTORICO: TWideStringField;
    qrcontasreceberCLIENTE: TWideStringField;
    qrvendaCODIGO: TWideStringField;
    qrvendaCODCAIXA: TWideStringField;
    qrvendaCODVENDEDOR: TWideStringField;
    dtfldDATA: TDateField;
    qrvendaCODCLIENTE: TWideStringField;
    qrvendaOBS: TWideStringField;
    qrvendaMEIO_DINHEIRO: TFloatField;
    qrvendaMEIO_CHEQUEAV: TFloatField;
    qrvendaMEIO_CHEQUEAP: TFloatField;
    qrvendaMEIO_CARTAOCRED: TFloatField;
    qrvendaMEIO_CARTAODEB: TFloatField;
    qrvendaMEIO_CREDIARIO: TFloatField;
    qrvendaSUBTOTAL: TFloatField;
    qrvendaDESCONTO: TFloatField;
    qrvendaACRESCIMO: TFloatField;
    qrvendaTOTAL: TFloatField;
    qrvendaCUPOM_FISCAL: TIntegerField;
    qrvendaNUMERO_CUPOM_FISCAL: TWideStringField;
    qrvendaRETIRADO: TWideStringField;
    qrvendaMEIO_CONVENIO: TFloatField;
    qrvendaP5: TFloatField;
    qrvendaP3: TFloatField;
    qrvendaMEIO_FINANCEIRA: TFloatField;
    qrvendaCOD_FINANCEIRA: TWideStringField;
    qrvendaCOD_FINANCEIRA_LANCTO: TWideStringField;
    qrvendaCOD_FINANCEIRA_LACTO: TWideStringField;
    qrvendaCODCONVENIO: TWideStringField;
    qrvendaSITUACAO: TIntegerField;
    qrvendaCODTRANSPORTADOR: TWideStringField;
    qrvendaCODVEICULO: TWideStringField;
    qrvendaFRETE_VALOR: TFloatField;
    qrvendaFRETE_OBS: TWideStringField;
    qrvendaFRETE_LANCAR: TIntegerField;
    qrvendaECF_SERIAL: TWideStringField;
    qrvendaCODNFSAIDA: TWideStringField;
    qrvendaATACADO_VAREJO: TSmallintField;
    qrvendaNRVENDA: TWideStringField;
    qrvendaFILTRO: TIntegerField;
    qrvenda_produto2CODIGO: TWideStringField;
    qrvenda_produto2CODNOTA: TWideStringField;
    qrvenda_produto2CODPRODUTO: TWideStringField;
    qrvenda_produto2UNITARIO: TFloatField;
    qrvenda_produto2TOTAL: TFloatField;
    qrvenda_produto2ICMS: TFloatField;
    qrvenda_produto2IPI: TFloatField;
    qrvenda_produto2CFOP: TWideStringField;
    dtfld_produto2DATA: TDateField;
    qrvenda_produto2NUMERONOTA: TWideStringField;
    qrvenda_produto2CODCLIENTE: TWideStringField;
    qrvenda_produto2DESCONTO: TFloatField;
    qrvenda_produto2ACRESCIMO: TFloatField;
    qrvenda_produto2MOVIMENTO: TIntegerField;
    qrvenda_produto2CODVENDEDOR: TWideStringField;
    qrvenda_produto2CODGRADE: TWideStringField;
    qrvenda_produto2SERIAL: TWideStringField;
    qrvenda_produto2UNIDADE: TWideStringField;
    qrvenda_produto2QTDE: TFloatField;
    qrvenda_produto2VALOR_ICMS: TFloatField;
    qrvenda_produto2ICMS_REDUZIDO: TFloatField;
    qrvenda_produto2BASE_CALCULO: TFloatField;
    qrvenda_produto2VALOR_IPI: TFloatField;
    qrvenda_produto2SITUACAO: TIntegerField;
    qrvenda_produto2ECF_SERIE: TWideStringField;
    qrvenda_produto2ECF_CAIXA: TWideStringField;
    qrvenda_produto2CODALIQUOTA: TWideStringField;
    qrvenda_produto2CUPOM_NUMERO: TWideStringField;
    qrvenda_produto2CUPOM_MODELO: TWideStringField;
    qrvenda_produto2CUPOM_ITEM: TWideStringField;
    qrvenda_produto2ALIQUOTA: TFloatField;
    qrvenda_produto2CST: TWideStringField;
    qrvenda_produto2LOTE_FABRICACAO: TWideStringField;
    qrvenda_produto2MOVIMENTO_ESTOQUE: TFloatField;
    qrvenda_produto2LANCADO: TIntegerField;
    dtfld_produto2VENCIMENTO: TDateField;
    qrvenda_produto2CODBARRA: TWideStringField;
    qrvenda_produto2MARGEM_DESCONTO: TFloatField;
    qrvenda_produto2CREDITO_ICMS: TFloatField;
    qrvenda_produto2PIS: TFloatField;
    qrvenda_produto2COFINS: TFloatField;
    qrvenda_produto2LOJA: TWideStringField;
    qrvenda_produto2CODSUBGRUPO: TWideStringField;
    qrvenda_produto2TIPO: TWideStringField;
    qrvenda_produto2CODUSUARIO: TWideStringField;
    qrvenda_produto2ORIGEM: TWideStringField;
    qrvenda_produto2DESTINO: TWideStringField;
    qrvenda_produto2CODFILIAL: TWideStringField;
    qrvenda_produto3CODIGO: TWideStringField;
    qrvenda_produto3CODNOTA: TWideStringField;
    qrvenda_produto3CODPRODUTO: TWideStringField;
    qrvenda_produto3UNITARIO: TFloatField;
    qrvenda_produto3TOTAL: TFloatField;
    qrvenda_produto3ICMS: TFloatField;
    qrvenda_produto3IPI: TFloatField;
    qrvenda_produto3CFOP: TWideStringField;
    dtfld_produto3DATA: TDateField;
    qrvenda_produto3NUMERONOTA: TWideStringField;
    qrvenda_produto3CODCLIENTE: TWideStringField;
    qrvenda_produto3DESCONTO: TFloatField;
    qrvenda_produto3ACRESCIMO: TFloatField;
    qrvenda_produto3MOVIMENTO: TIntegerField;
    qrvenda_produto3CODVENDEDOR: TWideStringField;
    qrvenda_produto3CODGRADE: TWideStringField;
    qrvenda_produto3SERIAL: TWideStringField;
    qrvenda_produto3UNIDADE: TWideStringField;
    qrvenda_produto3QTDE: TFloatField;
    qrvenda_produto3VALOR_ICMS: TFloatField;
    qrvenda_produto3ICMS_REDUZIDO: TFloatField;
    qrvenda_produto3BASE_CALCULO: TFloatField;
    qrvenda_produto3VALOR_IPI: TFloatField;
    qrvenda_produto3SITUACAO: TIntegerField;
    qrvenda_produto3ECF_SERIE: TWideStringField;
    qrvenda_produto3ECF_CAIXA: TWideStringField;
    qrvenda_produto3CODALIQUOTA: TWideStringField;
    qrvenda_produto3CUPOM_NUMERO: TWideStringField;
    qrvenda_produto3CUPOM_MODELO: TWideStringField;
    qrvenda_produto3CUPOM_ITEM: TWideStringField;
    qrvenda_produto3ALIQUOTA: TFloatField;
    qrvenda_produto3CST: TWideStringField;
    qrvenda_produto3LOTE_FABRICACAO: TWideStringField;
    qrvenda_produto3MOVIMENTO_ESTOQUE: TFloatField;
    qrvenda_produto3LANCADO: TIntegerField;
    dtfld_produto3VENCIMENTO: TDateField;
    qrvenda_produto3CODBARRA: TWideStringField;
    qrvenda_produto3MARGEM_DESCONTO: TFloatField;
    qrvenda_produto3CREDITO_ICMS: TFloatField;
    qrvenda_produto3PIS: TFloatField;
    qrvenda_produto3COFINS: TFloatField;
    qrvenda_produto3LOJA: TWideStringField;
    qrvenda_produto3CODSUBGRUPO: TWideStringField;
    qrvenda_produto3TIPO: TWideStringField;
    qrvenda_produto3CODUSUARIO: TWideStringField;
    qrvenda_produto3ORIGEM: TWideStringField;
    qrvenda_produto3DESTINO: TWideStringField;
    qrvenda_produto3CODFILIAL: TWideStringField;
    qrvenda_cupomCODVENDEDOR: TWideStringField;
    qrvenda_cupomTOTAL: TExtendedField;
    qrvenda_cupomDESCONTO: TExtendedField;
    qrvenda_produtoCODPRODUTO: TWideStringField;
    qrvenda_produtoUNITARIO: TFloatField;
    qrvenda_produtoMEDIA_VENDA: TExtendedField;
    qrvenda_produtoTOTAL_QTDE: TExtendedField;
    qrvenda_produtoTOTAL_GERAL: TExtendedField;
    qrvenda_produto10CODPRODUTO: TWideStringField;
    qrvenda_produto10MEDIA_VENDA: TExtendedField;
    qrvenda_produto10TOTAL_QTDE: TExtendedField;
    qrvenda_produto10TOTAL_GERAL: TExtendedField;
    qrvenda_produto4CODPRODUTO: TWideStringField;
    qrvenda_produto4TOTAL_QTDE: TExtendedField;
    qrvenda_produto4TOTAL_VALOR: TExtendedField;
    QRVENDA2TOTAL_GERAL: TExtendedField;
    QRVENDA2CODVENDEDOR: TWideStringField;
    query_venda_recebimentoCODIGO: TWideStringField;
    query_venda_recebimentoNOME: TWideStringField;
    query_venda_recebimentoCOMISSAO: TFloatField;
    query_venda_recebimentoVENDAS: TExtendedField;
    query_venda_recebimentoORIGINAL: TExtendedField;
    query_venda_recebimentoPAGO: TExtendedField;
    qrvenda_produto2cliente: TStringField;
    qrvenda_produto2vendedor: TStringField;
    qrvenda_produto2TOT: TFloatField;
    qrvenda_produto2SUBTOTAL: TFloatField;
    qrvenda_produto2DESC: TFloatField;
    qrvenda_produto2ACRES: TFloatField;
    QRVENDA2VENDEDOR: TStringField;
    qrvendedorCODIGO: TWideStringField;
    qrvendedorNOME: TWideStringField;
    qrvendedorENDERECO: TWideStringField;
    qrvendedorBAIRRO: TWideStringField;
    qrvendedorCIDADE: TWideStringField;
    qrvendedorUF: TWideStringField;
    qrvendedorCEP: TWideStringField;
    qrvendedorTELEFONE: TWideStringField;
    qrvendedorCELULAR: TWideStringField;
    qrvendedorEMAIL: TWideStringField;
    qrvendedorCPF: TWideStringField;
    qrvendedorRG: TWideStringField;
    qrvendedorCTPS: TWideStringField;
    qrvendedorFUNCAO: TWideStringField;
    qrvendedorDATA_ADMISSAO: TDateField;
    qrvendedorDATA_DEMISSAO: TDateField;
    qrvendedorSITUACAO: TIntegerField;
    qrvendedorSALARIO: TFloatField;
    qrvendedorCOMISSAO: TFloatField;
    qrvendedorOBS1: TWideStringField;
    qrvendedorOBS2: TWideStringField;
    qrvendedorOBS3: TWideStringField;
    qrvendedorNASCIMENTO: TDateField;
    qrvendedorF_CAIXA: TIntegerField;
    qrvendedorF_VENDEDOR: TIntegerField;
    qrvendedorF_TECNICO: TIntegerField;
    qrvendedorNUMERO: TWideStringField;
    qrvendedorSENHA: TWideStringField;
    qrvendedorATIVA: TWideStringField;
    qrvendedorCODFILIAL: TWideStringField;
    qrvendedorCODLOCAL: TWideStringField;
    qrvendedorCOMISS: TExtendedField;
    qrvenda_produto4PRODUTO: TStringField;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure combo_clienteChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_vendedorChange(Sender: TObject);
    procedure combo_caixaChange(Sender: TObject);
    procedure combo_produtoChange(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure combo_relatorioChange(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure combo_grupoChange(Sender: TObject);
    procedure combo_fornecedorChange(Sender: TObject);
    procedure combo_marcaChange(Sender: TObject);
    procedure qrvendaCalcFields(DataSet: TDataSet);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_venda2: Tfrmlista_venda2;
  data_caixa: tdatetime;
   const
   sc_DragMove = $f012;
implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, xloc_cliente,
  xloc_funcionario, loc_caixa, xloc_produto, principal,
  xloc_subgrupo, xloc_fornecedor, xloc_marca;

{$R *.dfm}

procedure Tfrmlista_venda2.combo_clienteChange(Sender: TObject);
begin
  if combo_cliente.Text = 'SELECIONAR' then
  begin
    frmxloc_cliente := tfrmxloc_cliente.create(self);
    frmxloc_cliente.showmodal;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_cliente.Items.Add(RESULTADO_PESQUISA1 + ' ' + resultado_pesquisa2);
      combo_cliente.ItemIndex := combo_cliente.Items.Count - 1;
    end
    else
      combo_cliente.ItemIndex := 0;

  end;
end;

procedure Tfrmlista_venda2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmlista_venda2.FormShow(Sender: TObject);
begin

  FRMMODULO.QRCAIXA_OPERADOR.OPEN;
  FRMMODULO.QRCAIXA_OPERADOR.LOCATE('CODIGO', '000099', [LOCASEINSENSITIVE]);
  data_caixa := FRMMODULO.QRCAIXA_OPERADOR.fieldbyname('data').asdatetime;

  qrproduto.CLOSE;
  qrproduto.SQL.CLEAR;
  qrproduto.SQL.Add('SELECT * FROM C000025');
  qrproduto.OPEN;

  combo_relatorio.ItemIndex := 0;
  combo_cliente.ItemIndex := 0;
  combo_vendedor.ItemIndex := 0;
  combo_fornecedor.ItemIndex := 0;
  combo_marca.ItemIndex := 0;
  combo_caixa.ItemIndex := 0;
  combo_produto.ItemIndex := 0;
  combo_forma.ItemIndex := 0;
  combo_grupo.ItemIndex := 0;

  DateEdit1.Date := data_caixa;
  DateEdit2.Date := data_caixa;

end;

procedure Tfrmlista_venda2.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_venda2.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmlista_venda2.bcancelarClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmlista_venda2.combo_vendedorChange(Sender: TObject);
begin
  if combo_vendedor.Text = 'SELECIONAR' then
  begin

    frmxloc_funcionario := tfrmxloc_funcionario.create(self);
    frmxloc_funcionario.showmodal;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_vendedor.Items.Add(RESULTADO_PESQUISA1 + ' ' + resultado_pesquisa2);
      combo_vendedor.ItemIndex := combo_vendedor.Items.Count - 1;
    end
    else
      combo_vendedor.ItemIndex := 0;

  end;
end;

procedure Tfrmlista_venda2.combo_caixaChange(Sender: TObject);
begin
  if combo_caixa.Text = 'SELECIONAR' then
  begin
    FRMMODULO.QRCAIXA_OPERADOR.OPEN;

    frmloc_caixa := tfrmloc_caixa.create(self);
    frmloc_caixa.showmodal;
     if RESULTADO_PESQUISA1 <> '' then
    begin
    combo_caixa.Items.Add(RESULTADO_PESQUISA1 + ' ' + resultado_pesquisa2);
    combo_caixa.ItemIndex := combo_caixa.Items.Count - 1;
    end
    else
    combo_caixa.ItemIndex :=0;




  end;
end;

procedure Tfrmlista_venda2.combo_produtoChange(Sender: TObject);
begin
  if combo_produto.Text = 'SELECIONAR' then
  begin
    frmxloc_produto := tfrmxloc_produto.create(self);
    frmxloc_produto.showmodal;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_produto.Items.Add(RESULTADO_PESQUISA1 + ' ' + resultado_pesquisa2);
      combo_produto.ItemIndex := combo_produto.Items.Count - 1;
    end
    else
      combo_produto.ItemIndex := 0;
  end;
end;

procedure Tfrmlista_venda2.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmlista_venda2.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bimprimir.SetFocus;
end;

procedure Tfrmlista_venda2.bimprimirClick(Sender: TObject);
var
  cliente, cliente1, VENDEDOR, VENDEDOR1, caixa, PRODUTO, GRUPO, FORMA, periodo,
    periodo1, SITUACAO, ordem: string;
  FORNECEDOR, MARCA: string;
  TOTAL_VENDA, VALOR_5, VALOR_3: REAL;
  TOTAL_VISTA_3, TOTAL_COMISSAO_3, TOTAL_VISTA_5, TOTAL_COMISSAO_5: REAL;
  TOTAL_PRAZO_3, TOTAL_COMISSAO_PRAZO_3, TOTAL_PRAZO_5,
    TOTAL_COMISSAO_PRAZO_5: REAL;
begin

  QRCOMISSAO.CLOSE;
  QRCOMISSAO.SQL.CLEAR;
  QRCOMISSAO.SQL.Add('DELETE FROM COMISSAO');
  QRCOMISSAO.EXECSQL;

  QRCOMISSAO.SQL.CLEAR;
  QRCOMISSAO.SQL.Add('SELECT * FROM COMISSAO');
  QRCOMISSAO.OPEN;

  FRMMODULO.qrrelatorio.OPEN;
  FRMMODULO.qrrelatorio.edit;

  FRMMODULO.qrrelatorio.fieldbyname('LINHA1').asstring := '';
  FRMMODULO.qrrelatorio.fieldbyname('LINHA2').asstring := '';
  FRMMODULO.qrrelatorio.fieldbyname('LINHA3').asstring := '';
  FRMMODULO.qrrelatorio.fieldbyname('LINHA4').asstring := '';
  FRMMODULO.qrrelatorio.fieldbyname('LINHA5').asstring := '';
  FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring := '';
  FRMMODULO.qrrelatorio.fieldbyname('LINHA7').asstring := '';

  if COMBO_SITUACAO.ItemIndex = 0 then
    SITUACAO := '';
  if COMBO_SITUACAO.ItemIndex = 1 then
    SITUACAO := ' and situacao = 1';
  if COMBO_SITUACAO.ItemIndex = 2 then
    SITUACAO := ' and situacao = 2';

  if combo_produto.Text = 'TODOS' then
    PRODUTO := ''
  else
  begin
    PRODUTO := ' and CODPRODUTO = ''' + copy(combo_produto.Text, 1, 6) + '''';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA5').asstring :=
      FRMMODULO.qrrelatorio.fieldbyname('LINHA5').asstring + 'PRODUTO: ' +
      combo_produto.Text;
  end;

  if combo_cliente.Text = 'TODOS' then
    cliente := ''
  else
  begin
    cliente := ' and codcliente = ''' + copy(combo_cliente.Text, 1, 6) + '''';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA3').asstring := 'CLIENTE: ' +
      combo_cliente.Text;
  end;
  if combo_vendedor.Text = 'TODOS' then
    VENDEDOR := ''
  else
  begin
    VENDEDOR := ' and CODVENDEDOR = ''' + copy(combo_vendedor.Text, 1,
      6) + '''';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: ' +
      combo_vendedor.Text;
  end;
  if combo_fornecedor.Text = 'TODOS' then
    FORNECEDOR := ''
  else
  begin
    FORNECEDOR := ' and CODFORNECEDOR = ''' + copy(combo_fornecedor.Text, 1,
      6) + '''';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA4').asstring := 'FORNECEDOR: ' +
      combo_fornecedor.Text;
  end;
  if combo_marca.Text = 'TODOS' then
    MARCA := ''
  else
  begin
    MARCA := ' and CODMARCA = ''' + copy(combo_marca.Text, 1, 6) + '''';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA4').asstring := 'MARCA: ' +
      combo_marca.Text;
  end;
  if combo_caixa.Text = 'TODOS' then
    caixa := ''
  else
  begin
    caixa := ' and codcaixa = ''' + copy(combo_caixa.Text, 1, 6) + '''';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA5').asstring := 'CAIXA ' +
      combo_caixa.Text + '   ';
  end;

  if combo_forma.Text = 'TODAS' then
    FORMA := '';
  if combo_forma.Text = 'DINHEIRO' then
  begin
    FORMA := ' AND MEIO_DINHEIRO   <> 0 ';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
      'FORMA DE PAGAMENTO: DINHEIRO';
  end;
  if combo_forma.Text = 'CHEQUE A VISTA' then
  begin
    FORMA := ' AND MEIO_CHEQUEAV   <> 0 ';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
      'FORMA DE PAGAMENTO: CHEQUE A VISTA';
  end;
  if combo_forma.Text = 'CHEQUE A PRAZO' then
  begin
    FORMA := ' AND MEIO_CHEQUEAP   <> 0 ';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
      'FORMA DE PAGAMENTO: CHEQUE A PRAZO';
  end;
  if combo_forma.Text = 'CARTAO DE CREDITO' then
  begin
    FORMA := ' AND MEIO_CARTAOCRED <> 0 ';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
      'FORMA DE PAGAMENTO: CARTAO DE CREDITO';
  end;
  if combo_forma.Text = 'CARTAO DE DEBITO' then
  begin
    FORMA := ' AND MEIO_CARTAODEB  <> 0 ';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
      'FORMA DE PAGAMENTO: CARTAO DE DEBITO';
  end;
  if combo_forma.Text = 'CREDIARIO' then
  begin
    FORMA := ' AND MEIO_CREDIARIO  <> 0 ';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
      'FORMA DE PAGAMENTO: CREDIARIO';
  end;
  if combo_forma.Text = 'CONVENIO' then
  begin
    FORMA := ' AND MEIO_CONVENIO   <> 0 ';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
      'FORMA DE PAGAMENTO: CREDIARIO';
  end;
  if combo_forma.Text = 'FINANCEIRA' then
  begin
    FORMA := ' AND MEIO_FINANCEIRA <> 0 ';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
      'FORMA DE PAGAMENTO: FINANCEIRA';
  end;

  if combo_grupo.Text = 'TODOS' then
    GRUPO := ''
  else
  begin
    GRUPO := ' and CODsubgrpo = ''' + copy(combo_grupo.Text, 1, 6) + '''';
    FRMMODULO.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: ' +
      combo_grupo.Text;
  end;

  periodo := ' data >= :datai and data <= :dataf ';
  ordem := 'data, codigo';
  FRMMODULO.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO: ' +
    DateEdit1.Text + ' A ' + DateEdit2.Text;

  if combo_relatorio.Text = 'COMISSÃO POR VENDA A VISTA/RECEBIMENTOS' then
  begin
    if combo_vendedor.Text = 'TODOS' then
    begin
      qrvendedor.CLOSE;
      qrvendedor.SQL.CLEAR;
      qrvendedor.SQL.Add('select c.*,  coalesce( comissao,0)COMISS from c000008 c order by codigo');
      qrvendedor.OPEN;
    end
    else
    begin
      qrvendedor.CLOSE;
      qrvendedor.SQL.CLEAR;
      qrvendedor.SQL.Add('select c.*,  coalesce( comissao,0)COMISS from c000008 c where CODigo = ''' +
        copy(combo_vendedor.Text, 1, 6) + '''');
      qrvendedor.OPEN;
    end;

    qrvendedor.first;
    while not qrvendedor.Eof do
    begin

      qrvenda.CLOSE;
      qrvenda.SQL.CLEAR;
      qrvenda.SQL.Add('select * from c000048 where ' + periodo +
        'and codvendedor = ''' + qrvendedor.fieldbyname('codigo').asstring +
        ''' and (meio_dinheiro+meio_chequeav+meio_chequeap+meio_cartaocred+meio_cartaodeb+meio_financeira) > 0');
      qrvenda.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
      qrvenda.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
      qrvenda.OPEN;
      qrvenda.first;

      TOTAL_VISTA_3 := 0;
      TOTAL_VISTA_5 := 0;
      TOTAL_COMISSAO_3 := 0;
      TOTAL_COMISSAO_5 := 0;

      TOTAL_PRAZO_3 := 0;
      TOTAL_PRAZO_5 := 0;
      TOTAL_COMISSAO_PRAZO_3 := 0;
      TOTAL_COMISSAO_PRAZO_5 := 0;

      while not qrvenda.Eof do
      begin
        if qrvenda.fieldbyname('MEIO_crediario').ASFLOAT > 0 then
        begin
          TOTAL_VENDA := qrvenda.fieldbyname('MEIO_DINHEIRO').ASFLOAT +
            qrvenda.fieldbyname('MEIO_CHEQUEAV').ASFLOAT +
            qrvenda.fieldbyname('MEIO_CHEQUEAP').ASFLOAT +
            qrvenda.fieldbyname('MEIO_CARTAODEB').ASFLOAT +
            qrvenda.fieldbyname('MEIO_CARTAOCRED').ASFLOAT +
            qrvenda.fieldbyname('meio_financeira').ASFLOAT;
        end
        else
        begin
          TOTAL_VENDA := qrvenda.fieldbyname('subtotal').ASFLOAT;
        end;

        if TOTAL_VENDA > 0 then
        begin
          if qrvenda.fieldbyname('p3').ASFLOAT > 0 then
          begin
            TOTAL_VISTA_3 := TOTAL_VISTA_3 +
              (TOTAL_VENDA * (qrvenda.fieldbyname('p3').ASFLOAT / 100));
          end;
          if qrvenda.fieldbyname('p5').ASFLOAT > 0 then
          begin
            TOTAL_VISTA_5 := TOTAL_VISTA_5 +
              (TOTAL_VENDA * (qrvenda.fieldbyname('p5').ASFLOAT / 100));
          end;
        end;

        qrvenda.next;
      end;
      TOTAL_COMISSAO_5 := TOTAL_VISTA_5 * 0.05;
      TOTAL_COMISSAO_3 := TOTAL_VISTA_3 * 0.03;

      QUERY.CLOSE;
      QUERY.SQL.CLEAR;
      QUERY.SQL.Add('select * from c000049 where codvendedor = ''' +
        qrvendedor.fieldbyname('codigo').asstring +
        ''' and situacao = 2 and DATA_PAGAMENTO >= :DATAII AND DATA_PAGAMENTO <= :DATAFF');
      QUERY.Params.ParamByName('DATAII').asdatetime := DateEdit1.Date;
      QUERY.Params.ParamByName('DATAFF').asdatetime := DateEdit2.Date;
      QUERY.OPEN;

      QUERY.first;
      while not QUERY.Eof do
      begin
        if QUERY.fieldbyname('p3').ASFLOAT > 0 then
        begin
          TOTAL_PRAZO_3 := TOTAL_PRAZO_3 +
            (QUERY.fieldbyname('valor_pago').ASFLOAT *
            (QUERY.fieldbyname('p3').ASFLOAT / 100));
        end;
        if QUERY.fieldbyname('p5').ASFLOAT > 0 then
        begin
          TOTAL_PRAZO_5 := TOTAL_PRAZO_5 +
            (QUERY.fieldbyname('valor_pago').ASFLOAT *
            (QUERY.fieldbyname('p5').ASFLOAT / 100));
        end;
        QUERY.next;
      end;

      TOTAL_COMISSAO_PRAZO_5 := TOTAL_PRAZO_5 * 0.05;
      TOTAL_COMISSAO_PRAZO_3 := TOTAL_PRAZO_3 * 0.03;

      if (TOTAL_VISTA_5 + TOTAL_VISTA_3) > 0 then
      begin
        QRCOMISSAO.INSERT;
        QRCOMISSAO.fieldbyname('CODVENDEDOR').asstring :=
          qrvendedor.fieldbyname('CODIGO').asstring;
        QRCOMISSAO.fieldbyname('TIPO').asstring := 'VENDA A VISTA';
        QRCOMISSAO.fieldbyname('VALOR_5').ASFLOAT := TOTAL_VISTA_5;
        QRCOMISSAO.fieldbyname('COMISSAO_5').ASFLOAT := TOTAL_COMISSAO_5;
        QRCOMISSAO.fieldbyname('VALOR_3').ASFLOAT := TOTAL_VISTA_3;
        QRCOMISSAO.fieldbyname('COMISSAO_3').ASFLOAT := TOTAL_COMISSAO_3;
        QRCOMISSAO.fieldbyname('TOTAL_COMISSAO').ASFLOAT := TOTAL_COMISSAO_3 +
          TOTAL_COMISSAO_5;

        QRCOMISSAO.POST;
      end;

      if (TOTAL_PRAZO_5 + TOTAL_PRAZO_3) > 0 then
      begin
        QRCOMISSAO.INSERT;
        QRCOMISSAO.fieldbyname('CODVENDEDOR').asstring :=
          qrvendedor.fieldbyname('CODIGO').asstring;
        QRCOMISSAO.fieldbyname('TIPO').asstring := 'RECEBIMENTOS';
        QRCOMISSAO.fieldbyname('VALOR_5').ASFLOAT := TOTAL_PRAZO_5;
        QRCOMISSAO.fieldbyname('COMISSAO_5').ASFLOAT := TOTAL_COMISSAO_PRAZO_5;
        QRCOMISSAO.fieldbyname('VALOR_3').ASFLOAT := TOTAL_PRAZO_3;
        QRCOMISSAO.fieldbyname('COMISSAO_3').ASFLOAT := TOTAL_COMISSAO_PRAZO_3;
        QRCOMISSAO.fieldbyname('TOTAL_COMISSAO').ASFLOAT :=
          TOTAL_COMISSAO_PRAZO_3 + TOTAL_COMISSAO_PRAZO_5;
        QRCOMISSAO.POST;
      end;
      qrvendedor.next;
    end;

    FRMMODULO.ConexaoLocal.Commit;

    FRMMODULO.qrrelatorio.fieldbyname('linha2').asstring := 'PERÍODO: ' +
      DateEdit1.Text + ' a ' + DateEdit2.Text;
    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').asstring :=
      'RELATÓRIO DE COMISSÕES';
    fxvenda.LoadFromFile('\OneMaker\server\REL\F000120.fr3');
    fxvenda.ShowReport;

  end;

  if combo_relatorio.Text = 'PRODUTOS VENDIDOS EM CONDICIONAL' then
  begin

    if combo_vendedor.Text = 'TODOS' then
      VENDEDOR := ''
    else
      VENDEDOR := ' and mov.CODVENDEDOR = ''' + copy(combo_vendedor.Text, 1,
        6) + '''';
    qrcondicional.OPEN;
    qrcondicional.SQL.CLEAR;
    qrcondicional.SQL.Add('select');
    qrcondicional.SQL.Add('mov.*,');
    qrcondicional.SQL.Add('pro.produto,');
    qrcondicional.SQL.Add('cli.nome');
    qrcondicional.SQL.Add('from');
    qrcondicional.SQL.Add('c000032 mov,');
    qrcondicional.SQL.Add('c000025 pro,');
    qrcondicional.SQL.Add('c000007 cli');
    qrcondicional.SQL.Add('where');
    qrcondicional.SQL.Add('mov.codproduto = pro.codigo and');
    qrcondicional.SQL.Add('mov.codcliente = cli.codigo and');
    qrcondicional.SQL.Add('movimento in (50,51,52)');
    qrcondicional.SQL.Add
      ('and mov.vencimento >= :datai and mov.vencimento <= :dataf');
    qrcondicional.SQL.Add(cliente + VENDEDOR);
    qrcondicional.SQL.Add('order by cli.nome, mov.codnota');
    qrcondicional.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
    qrcondicional.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
    qrcondicional.OPEN;
    FRMMODULO.qrrelatorio.fieldbyname('linha2').asstring := 'PERÍODO: ' +
      DateEdit1.Text + ' a ' + DateEdit2.Text;
    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').asstring :=
      'PRODUTOS VENDIDOS EM CONDICIONAL';
    fxvenda.LoadFromFile('\OneMaker\server\REL\F000158.fr3');
    fxvenda.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO SINTÉTICA' then
  begin
    FRMMODULO.qrrelatorio.fieldbyname('LINHA5').asstring :=
      FRMMODULO.qrrelatorio.fieldbyname('LINHA5').asstring + '  SITUAÇÃO: ' +
      COMBO_SITUACAO.Text;

    qrvenda.CLOSE;
    qrvenda.SQL.CLEAR;
    qrvenda.SQL.Add('select * from c000048 where ' + periodo + SITUACAO +
      cliente + VENDEDOR + caixa + FORMA + ' order by ' + ordem);
    qrvenda.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
    qrvenda.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
    qrvenda.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').asstring :=
      'RELATÓRIO DE VENDAS';
    if combo_forma.ItemIndex = 0 then
      fxvenda.LoadFromFile('\OneMaker\server\rel\f000033.fr3')
    else
      fxvenda.LoadFromFile('\OneMaker\server\rel\f000033_2.fr3');

    fxvenda.ShowReport;
  end;

  if combo_relatorio.Text = 'RESUMO DE VENDAS DE PRODUTOS' then
  begin
    if application.MESSAGEBOX('Deseja agrupar os produtos por preço vendido?',
      'Agrupar...', mb_yesno + mb_iconquestion) = idyes then
    begin

      qrvenda_produto.CLOSE;
      qrvenda_produto.SQL.CLEAR;
      qrvenda_produto.SQL.Add
        ('select codproduto, unitario, avg(unitario) media_venda, sum(qtde) total_qtde,');
      qrvenda_produto.SQL.Add
        ('(unitario * sum(qtde)) - sum(desconto) total_geral from c000032');

      if bTodos_Produtos.Checked = false then
        qrvenda_produto.SQL.Add
          ('where  movimento in (2,9) and movimento_estoque < 0 and ' + periodo
          + cliente + VENDEDOR + PRODUTO +
          ' group by codproduto, unitario order by codproduto')
      else
      begin
        qrvenda_produto.SQL.Add('where  movimento in (2,9,99) and ' + periodo +
          cliente + VENDEDOR + PRODUTO +
          ' group by codproduto, unitario order by codproduto');
      end;

      // qrvenda_produto.sql.add('where  movimento in (2,9) and movimento_estoque < 0 and '+periodo+cliente+vendedor+produto+' group by codproduto, unitario order by codproduto');
      qrvenda_produto.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
      qrvenda_produto.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
      qrvenda_produto.OPEN;
      application.ProcessMessages;

      FRMMODULO.qrrelatorio.fieldbyname('linha2').asstring := 'PERÍODO: ' +
        DateEdit1.Text + ' a ' + DateEdit2.Text;
      FRMMODULO.qrrelatorio.fieldbyname('LINHA1').asstring :=
        'RESUMO DE VENDAS DE PRODUTOS/LUCRO';
      fxvenda.LoadFromFile('\OneMaker\server\REL\F000032.fr3');
      fxvenda.ShowReport;
    end
    else
    begin
      qrvenda_produto10.CLOSE;
      qrvenda_produto10.SQL.CLEAR;

      if bTodos_Produtos.Checked = false then
        qrvenda_produto10.SQL.Add
          ('select codproduto, avg(unitario) media_venda, sum(qtde) total_qtde,  ( avg(unitario) * sum(qtde)) - sum(desconto) total_geral from c000032 where  movimento in (2,9) and movimento_estoque < 0 and '
          + periodo + cliente + VENDEDOR + PRODUTO +
          ' group by codproduto order by codproduto')
      else
        qrvenda_produto10.SQL.Add
          ('select codproduto, avg(unitario) media_venda, sum(qtde) total_qtde,  ( avg(unitario) * sum(qtde)) - sum(desconto) total_geral from c000032 where  movimento in (2,9,99) and '
          + periodo + cliente + VENDEDOR + PRODUTO +
          ' group by codproduto order by codproduto');

      // qrvenda_produto10.sql.add('select codproduto, avg(unitario) media_venda, sum(qtde) total_qtde,  ( avg(unitario) * sum(qtde)) - sum(desconto) total_geral from c000032 where  movimento in (2,9) and movimento_estoque < 0 and '+periodo+cliente+vendedor+produto+' group by codproduto order by codproduto');
      qrvenda_produto10.Params.ParamByName('datai').asdatetime :=
        DateEdit1.Date;
      qrvenda_produto10.Params.ParamByName('dataf').asdatetime :=
        DateEdit2.Date;
      qrvenda_produto10.OPEN;
      FRMMODULO.qrrelatorio.fieldbyname('linha2').asstring := 'PERÍODO: ' +
        DateEdit1.Text + ' a ' + DateEdit2.Text;
      FRMMODULO.qrrelatorio.fieldbyname('LINHA1').asstring :=
        'RESUMO DE VENDAS DE PRODUTOS/LUCRO';
      fxvenda.LoadFromFile('\OneMaker\server\REL\F000032b.fr3');
      fxvenda.ShowReport;
    end;
  end;

  if combo_relatorio.Text = 'RELAÇÃO ANALÍTICA' then
  begin

    qrvenda.CLOSE;
    qrvenda.SQL.CLEAR;
    qrvenda.SQL.Add('select * from c000048 where ' + periodo + cliente +
      VENDEDOR + ' order by ' + ordem);
    qrvenda.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
    qrvenda.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
    qrvenda.OPEN;

    qrvenda_produto2.CLOSE;
    qrvenda_produto2.SQL.CLEAR;
    qrvenda_produto2.SQL.Add
      ('select * from c000032 where movimento in (2,7,9) and ' + periodo +
      cliente + VENDEDOR + PRODUTO + ' order by data, codnota');
    qrvenda_produto2.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
    qrvenda_produto2.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
    qrvenda_produto2.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('linha2').asstring := 'PERÍODO: ' +
      DateEdit1.Text + ' a ' + DateEdit2.Text;
    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').asstring :=
      'RELAÇÃO DE VENDAS ANALÍTICA';
    fxvenda.LoadFromFile('\OneMaker\server\REL\F000034.fr3');
    fxvenda.ShowReport;
  end;

  if combo_relatorio.Text = 'VENDAS DE PRODUTOS' then
  begin
    qrvenda_produto2.CLOSE;
    qrvenda_produto2.SQL.CLEAR;

    if (combo_grupo.Text = 'TODOS') and (combo_fornecedor.Text = 'TODOS') and
      (combo_marca.Text = 'TODOS') then
    begin
      if bTodos_Produtos.Checked = false then
        qrvenda_produto2.SQL.Add
          ('select * from c000032 where movimento in (2,7,9) and ' + periodo +
          cliente + VENDEDOR + PRODUTO + ' order by data, codIGO')
      else
        qrvenda_produto2.SQL.Add
          ('select * from c000032 where movimento in (2,7,9,99) and ' + periodo
          + cliente + VENDEDOR + PRODUTO + ' order by data, codIGO')

    end
    else
    begin
      if combo_vendedor.Text = 'TODOS' then
        VENDEDOR := ''
      else
      begin
        VENDEDOR := ' and VEN.CODVENDEDOR = ''' + copy(combo_vendedor.Text, 1,
          6) + '''';
        FRMMODULO.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: ' +
          combo_vendedor.Text;
      end;
      if combo_fornecedor.Text = 'TODOS' then
        FORNECEDOR := ''
      else
      begin
        FORNECEDOR := ' and PRO.CODFORNECEDOR = ''' +
          copy(combo_fornecedor.Text, 1, 6) + '''';
        FRMMODULO.qrrelatorio.fieldbyname('LINHA4').asstring := 'FORNECEDOR: ' +
          combo_fornecedor.Text;
      end;
      if combo_marca.Text = 'TODOS' then
        MARCA := ''
      else
      begin
        MARCA := ' and PRO.CODMARCA = ''' + copy(combo_marca.Text, 1, 6) + '''';
        FRMMODULO.qrrelatorio.fieldbyname('LINHA4').asstring := 'MARCA: ' +
          combo_marca.Text;
      end;

      if rserial.Checked = false then
        if combo_grupo.Text = 'TODOS' then
          GRUPO := ''
        else
        begin
          GRUPO := ' and PRO.CODsubgrUpo = ''' + copy(combo_grupo.Text, 1,
            6) + '''';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: ' +
            combo_grupo.Text;
        end
      else if combo_grupo.Text = 'TODOS' then
        GRUPO := ''
      else
      begin
        GRUPO := ' and ven.CODsubgrUpo = ''' + copy(combo_grupo.Text, 1,
          6) + '''';
        FRMMODULO.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: ' +
          combo_grupo.Text;
      end;

      if combo_produto.Text = 'TODOS' then
        PRODUTO := ''
      else
      begin
        PRODUTO := ' and VEN.CODPRODUTO = ''' + copy(combo_produto.Text, 1,
          6) + '''';
        FRMMODULO.qrrelatorio.fieldbyname('LINHA5').asstring :=
          FRMMODULO.qrrelatorio.fieldbyname('LINHA5').asstring + 'PRODUTO: ' +
          combo_produto.Text;
      end;

      if bTodos_Produtos.Checked = false then
        qrvenda_produto2.SQL.Add
          ('select VEN.*, PRO.CODSUBGRUPO, PRO.CODFORNECEDOR, PRO.CODMARCA from c000032 VEN, c000025 PRO where VEN.CODPRODUTO = PRO.CODIGO AND movimento in (2,7,9) and '
          + periodo + cliente + VENDEDOR + FORNECEDOR + MARCA + PRODUTO + GRUPO
          + ' order by data, codIGO')
      else
        qrvenda_produto2.SQL.Add
          ('select VEN.*, PRO.CODSUBGRUPO, PRO.CODFORNECEDOR, PRO.CODMARCA from c000032 VEN, c000025 PRO where VEN.CODPRODUTO = PRO.CODIGO AND movimento in (2,7,9,99) and '
          + periodo + cliente + VENDEDOR + FORNECEDOR + MARCA + PRODUTO + GRUPO
          + ' order by data, codIGO');

    end;
    qrvenda_produto2.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
    qrvenda_produto2.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
    qrvenda_produto2.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('linha2').asstring := 'PERÍODO: ' +
      DateEdit1.Text + ' a ' + DateEdit2.Text;
    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').asstring := 'VENDA DE PRODUTOS';
    fxvenda.LoadFromFile('\OneMaker\server\REL\F000036.fr3');
    fxvenda.ShowReport;
  end;
  if combo_relatorio.Text = 'RESUMO DE VENDAS POR VENDEDOR' then
  begin
    QRVENDA2.CLOSE;
    QRVENDA2.SQL.CLEAR;
    QRVENDA2.SQL.Add
      ('select CODVENDEDOR, SUM(TOTAL) TOTAL_GERAL from c000048 where ' +
      periodo + cliente + VENDEDOR + caixa + FORMA + ' GROUP BY CODVENDEDOR');
    QRVENDA2.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
    QRVENDA2.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
    QRVENDA2.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').asstring :=
      'RESUMO DE VENDAS POR VENDEDOR';
    fxvenda.LoadFromFile('\OneMaker\server\rel\f000037.fr3');
    fxvenda.ShowReport;
  end;

  if combo_relatorio.Text = 'VENDAS / COMISSÃO' then
  begin
    periodo := ' mov.data >= :datai and mov.data <= :dataf ';
    qrvenda_produto3.CLOSE;
    qrvenda_produto3.SQL.CLEAR;
    if combo_forma.Text = 'TODAS' then
    begin
      if combo_grupo.Text = 'TODOS' then
      begin
        periodo := ' data >= :datai and data <= :dataf ';
        qrvenda_produto3.SQL.Add
          ('select * from c000032 WHERE movimento in (2,7,9) and ' + periodo +
          cliente + VENDEDOR + PRODUTO + GRUPO + ' order by data, codIGO');
      end
      else
      begin
        periodo := ' data >= :datai and data <= :dataf ';
        if combo_vendedor.Text = 'TODOS' then
          VENDEDOR := ''
        else
        begin
          VENDEDOR := ' and VEN.CODVENDEDOR = ''' + copy(combo_vendedor.Text, 1,
            6) + '''';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: ' +
            combo_vendedor.Text;
        end;
        if rserial.Checked = false then
          if combo_grupo.Text = 'TODOS' then
            GRUPO := ''
          else
          begin
            GRUPO := ' and PRO.CODsubgrUpo = ''' + copy(combo_grupo.Text, 1,
              6) + '''';
            FRMMODULO.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: '
              + combo_grupo.Text;
          end
        else if combo_grupo.Text = 'TODOS' then
          GRUPO := ''
        else
        begin
          GRUPO := ' and ven.CODsubgrUpo = ''' + copy(combo_grupo.Text, 1,
            6) + '''';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: ' +
            combo_grupo.Text;
        end;

        if combo_produto.Text = 'TODOS' then
          PRODUTO := ''
        else
        begin
          PRODUTO := ' and VEN.CODPRODUTO  = ''' + copy(combo_produto.Text, 1,
            6) + '''';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA5').asstring :=
            FRMMODULO.qrrelatorio.fieldbyname('LINHA5').asstring + 'PRODUTO: ' +
            combo_produto.Text;
        end;
        qrvenda_produto3.SQL.Add
          ('select VEN.*, PRO.CODSUBGRUPO from c000032 VEN, c000025 PRO where VEN.CODPRODUTO = PRO.CODIGO AND movimento in (2,7,9) and '
          + periodo + cliente + VENDEDOR + PRODUTO + GRUPO +
          ' order by data, codIGO');
      end;
    end
    else
    begin
      if combo_grupo.Text = 'TODOS' then
      begin
        if combo_vendedor.Text = 'TODOS' then
          VENDEDOR := ''
        else
        begin
          VENDEDOR := ' and MOV.CODVENDEDOR = ''' + copy(combo_vendedor.Text, 1,
            6) + '''';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: ' +
            combo_vendedor.Text;
        end;
        if combo_produto.Text = 'TODOS' then
          PRODUTO := ''
        else
        begin
          PRODUTO := ' and MOV.CODPRODUTO  = ''' + copy(combo_produto.Text, 1,
            6) + '''';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA5').asstring :=
            FRMMODULO.qrrelatorio.fieldbyname('LINHA5').asstring + 'PRODUTO: ' +
            combo_produto.Text;
        end;

        if combo_forma.Text = 'DINHEIRO' then
        begin
          FORMA := ' AND VEN.MEIO_DINHEIRO   <> 0 ';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
            'FORMA DE PAGAMENTO: DINHEIRO';
        end;
        if combo_forma.Text = 'CHEQUE A VISTA' then
        begin
          FORMA := ' AND VEN.MEIO_CHEQUEAV   <> 0 ';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
            'FORMA DE PAGAMENTO: CHEQUE A VISTA';
        end;
        if combo_forma.Text = 'CHEQUE A PRAZO' then
        begin
          FORMA := ' AND VEN.MEIO_CHEQUEAP   <> 0 ';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
            'FORMA DE PAGAMENTO: CHEQUE A PRAZO';
        end;
        if combo_forma.Text = 'CARTAO DE CREDITO' then
        begin
          FORMA := ' AND VEN.MEIO_CARTAOCRED <> 0 ';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
            'FORMA DE PAGAMENTO: CARTAO DE CREDITO';
        end;
        if combo_forma.Text = 'CARTAO DE DEBITO' then
        begin
          FORMA := ' AND VEN.MEIO_CARTAODEB  <> 0 ';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
            'FORMA DE PAGAMENTO: CARTAO DE DEBITO';
        end;
        if combo_forma.Text = 'CREDIARIO' then
        begin
          FORMA := ' AND VEN.MEIO_CREDIARIO  <> 0 ';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
            'FORMA DE PAGAMENTO: CREDIARIO';
        end;
        if combo_forma.Text = 'CONVENIO' then
        begin
          FORMA := ' AND VEN.MEIO_CONVENIO   <> 0 ';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
            'FORMA DE PAGAMENTO: CONVENIO';
        end;
        if combo_forma.Text = 'FINANCEIRA' then
        begin
          FORMA := ' AND VEN.MEIO_FINANCEIRA <> 0 ';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
            'FORMA DE PAGAMENTO: FINANCEIRA';
        end;

        qrvenda_produto3.SQL.Add
          ('select MOV.* from c000032 MOV, c000048 VEN WHERE MOV.CODNOTA = VEN.CODIGO and ');
        qrvenda_produto3.SQL.Add('MOV.movimento in (2,7,9) and ' + periodo +
          cliente + VENDEDOR + PRODUTO + FORMA + ' order by data, codIGO');
      end
      else
      begin
        if combo_vendedor.Text = 'TODOS' then
          VENDEDOR := ''
        else
        begin
          VENDEDOR := ' and MOV.CODVENDEDOR = ''' + copy(combo_vendedor.Text, 1,
            6) + '''';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: ' +
            combo_vendedor.Text;
        end;
        // if combo_GRUPO.Text     = 'TODOS'                then GRUPO       := '' else begin  GRUPO    := ' and PRO.CODsubgrUpo = '''+copy(combo_grupo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: '+combo_GRUPO.TEXT; end;
        if rserial.Checked = false then
          if combo_grupo.Text = 'TODOS' then
            GRUPO := ''
          else
          begin
            GRUPO := ' and PRO.CODsubgrUpo = ''' + copy(combo_grupo.Text, 1,
              6) + '''';
            FRMMODULO.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: '
              + combo_grupo.Text;
          end
        else if combo_grupo.Text = 'TODOS' then
          GRUPO := ''
        else
        begin
          GRUPO := ' and ven.CODsubgrUpo = ''' + copy(combo_grupo.Text, 1,
            6) + '''';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: ' +
            combo_grupo.Text;
        end;

        if combo_produto.Text = 'TODOS' then
          PRODUTO := ''
        else
        begin
          PRODUTO := ' and MOV.CODPRODUTO  = ''' + copy(combo_produto.Text, 1,
            6) + '''';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA5').asstring :=
            FRMMODULO.qrrelatorio.fieldbyname('LINHA5').asstring + 'PRODUTO: ' +
            combo_produto.Text;
        end;
        if combo_forma.Text = 'DINHEIRO' then
        begin
          FORMA := ' AND VEN.MEIO_DINHEIRO   <> 0 ';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
            'FORMA DE PAGAMENTO: DINHEIRO';
        end;
        if combo_forma.Text = 'CHEQUE A VISTA' then
        begin
          FORMA := ' AND VEN.MEIO_CHEQUEAV   <> 0 ';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
            'FORMA DE PAGAMENTO: CHEQUE A VISTA';
        end;
        if combo_forma.Text = 'CHEQUE A PRAZO' then
        begin
          FORMA := ' AND VEN.MEIO_CHEQUEAP   <> 0 ';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
            'FORMA DE PAGAMENTO: CHEQUE A PRAZO';
        end;
        if combo_forma.Text = 'CARTAO DE CREDITO' then
        begin
          FORMA := ' AND VEN.MEIO_CARTAOCRED <> 0 ';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
            'FORMA DE PAGAMENTO: CARTAO DE CREDITO';
        end;
        if combo_forma.Text = 'CARTAO DE DEBITO' then
        begin
          FORMA := ' AND VEN.MEIO_CARTAODEB  <> 0 ';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
            'FORMA DE PAGAMENTO: CARTAO DE DEBITO';
        end;
        if combo_forma.Text = 'CREDIARIO' then
        begin
          FORMA := ' AND VEN.MEIO_CREDIARIO  <> 0 ';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
            'FORMA DE PAGAMENTO: CREDIARIO';
        end;
        if combo_forma.Text = 'CONVENIO' then
        begin
          FORMA := ' AND VEN.MEIO_CONVENIO   <> 0 ';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
            'FORMA DE PAGAMENTO: CREDIARIO';
        end;
        if combo_forma.Text = 'FINANCEIRA' then
        begin
          FORMA := ' AND VEN.MEIO_FINANCEIRA <> 0 ';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA6').asstring :=
            'FORMA DE PAGAMENTO: FINANCEIRA';
        end;

        qrvenda_produto3.SQL.Add
          ('select MOV.*, PRO.CODSUBGRUPO from c000032 MOV, c000025 PRO, C000048 VEN where MOV.CODPRODUTO = PRO.CODIGO');
        qrvenda_produto3.SQL.Add
          ('AND MOV.CODNOTA = VEN.CODIGO AND MOV.movimento in (2,7,9) and ' +
          periodo + cliente + VENDEDOR + PRODUTO + GRUPO +
          ' order by data, codIGO');
      end;
    end;
    qrvenda_produto3.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
    qrvenda_produto3.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
    qrvenda_produto3.OPEN;
    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').asstring := 'VENDAS/COMISSÃO';
    fxvenda.LoadFromFile('\OneMaker\server\rel\f000038.fr3');
    fxvenda.ShowReport;
  end;

  if combo_relatorio.Text = 'VENDAS / RECEBIMENTO' then
  begin

    periodo1 := ' v.data >= :datai and v.data <= :dataf ';

    qrvenda_cupom.CLOSE;
    qrvenda_cupom.SQL.CLEAR;
    if combo_vendedor.Text = 'TODOS' then
    begin

      qrvenda_cupom.SQL.Add('select v.codvendedor, f.comissao, ');
      qrvenda_cupom.SQL.Add
        ('sum(meio_dinheiro+meio_chequeav+meio_chequeap+meio_cartaocred+meio_cartaodeb+meio_financeira) total,sum(desconto) desconto');
      qrvenda_cupom.SQL.Add('from c000048 v, c000008 f ');
      qrvenda_cupom.SQL.Add('where v.codvendedor = f.codigo and ' + periodo1 +
        cliente + VENDEDOR + ' ');
      qrvenda_cupom.SQL.Add('GROUP BY v.codvendedor,f.comissao');
      qrvenda_cupom.SQL.Add('ORDER BY v.codvendedor,f.comissao');
    end
    else
    begin

      if combo_vendedor.Text = 'TODOS' then
        VENDEDOR := ''
      else
      begin
        VENDEDOR := ' and v.CODVENDEDOR = ''' + copy(combo_vendedor.Text, 1,
          6) + '''';
        FRMMODULO.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: ' +
          combo_vendedor.Text;
      end;
      if combo_cliente.Text = 'TODOS' then
        cliente := ''
      else
      begin
        cliente := ' and v.codcliente = ''' + copy(combo_cliente.Text, 1,
          6) + '''';
        FRMMODULO.qrrelatorio.fieldbyname('LINHA3').asstring := 'CLIENTE: ' +
          combo_cliente.Text;
      end;

      qrvenda_cupom.SQL.Add('select v.codvendedor, f.comissao, ');
      qrvenda_cupom.SQL.Add
        ('sum(meio_dinheiro+meio_chequeav+meio_chequeap+meio_cartaocred+meio_cartaodeb+meio_financeira) total,sum(desconto) desconto');
      qrvenda_cupom.SQL.Add('from c000048 v, c000008 f ');
      qrvenda_cupom.SQL.Add('where v.codvendedor = f.codigo and ' + periodo1 +
        cliente + VENDEDOR + ' ');
      qrvenda_cupom.SQL.Add('GROUP BY v.codvendedor,f.comissao');
      qrvenda_cupom.SQL.Add('ORDER BY v.codvendedor,f.comissao');

    end;

    qrvenda_cupom.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
    qrvenda_cupom.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
    qrvenda_cupom.OPEN;

    qrvenda_cupom.first;
    while not qrvenda_cupom.Eof do
    begin
      try
        if qrvenda_cupom.fieldbyname('comissao_vendedor').ASFLOAT = 0 then
        begin
          showmessage('O vendedor com o código: ' + qrvenda_cupom.fieldbyname
            ('codvendedor').asstring + ' está sem comissão!' + #13 +
            'Favor verificar!');
          break;
          exit;
        end;
      except
        showmessage('O vendedor com o código: ' + qrvenda_cupom.fieldbyname
          ('codvendedor').asstring + ' está sem comissão!' + #13 +
          'Favor verificar!');
        break;
        exit;
      end;
      qrvenda_cupom.next;
    end;

    if combo_vendedor.Text = 'TODOS' then
      VENDEDOR1 := ''
    else
    begin
      VENDEDOR1 := ' and cr.CODVENDEDOR = ''' + copy(combo_vendedor.Text, 1,
        6) + '''';
      FRMMODULO.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: ' +
        combo_vendedor.Text;
    end;
    if combo_cliente.Text = 'TODOS' then
      cliente1 := ''
    else
    begin
      cliente1 := ' and cr.codcliente = ''' + copy(combo_cliente.Text, 1,
        6) + '''';
      FRMMODULO.qrrelatorio.fieldbyname('LINHA3').asstring := 'CLIENTE: ' +
        combo_cliente.Text;
    end;

    periodo1 := ' CR.data_PAGAMENTO >= :datai and CR.data_PAGAMENTO <= :dataf ';
    ordem := 'CR.data_PAGAMENTO,CR.codigo';

    qrcontasreceber.CLOSE;
    qrcontasreceber.SQL.CLEAR;
    qrcontasreceber.SQL.Add
      ('select CR.*, CLIENTE.NOME CLIENTE from c000049 CR, C000007 CLIENTE where CR.CODCLIENTE = CLIENTE.CODIGO AND '
      + periodo1 + cliente1 + VENDEDOR1 + ' order by ' + ordem);
    qrcontasreceber.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
    qrcontasreceber.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
    qrcontasreceber.OPEN;
    qrcontasreceber.REFRESH;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').asstring :=
      'VENDAS/RECEBIMENTO';
    fxvenda.LoadFromFile('\OneMaker\server\rel\f000099.fr3');
    fxvenda.ShowReport;

  end;

  if combo_relatorio.Text = 'RESUMO DE VENDAS / RECEBIMENTO' then
  begin

    query_venda_recebimento.CLOSE;
    query_venda_recebimento.SQL.CLEAR;
    query_venda_recebimento.SQL.Add('select v.codigo, v.nome,v.comissao,');
    query_venda_recebimento.SQL.Add
      ('(select sum(meio_dinheiro+meio_chequeav+meio_chequeap+meio_cartaocred+meio_cartaodeb+meio_Financeira) vendas from c000048 where  codvendedor = v.codigo and data >= :datai and data <= :dataf),');
    query_venda_recebimento.SQL.Add
      ('(select sum(valor_original) original from c000049 where codvendedor = v.codigo and data_pagamento >= :datai and data_pagamento <= :dataf),');

    query_venda_recebimento.SQL.Add
      ('(select sum(p.valor_pago) pago from c000050 p , c000049 vd where vd.codvendedor = v.codigo and p.codconta = vd.codigo and p.data >= :datai and p.data <= :dataf)');

    query_venda_recebimento.SQL.Add('from  c000008 v');
    query_venda_recebimento.SQL.Add('GROUP BY v.codigo,v.nome,v.comissao');
    query_venda_recebimento.SQL.Add('ORDER BY v.codigo');
    query_venda_recebimento.Params.ParamByName('datai').asdatetime :=
      DateEdit1.Date;
    query_venda_recebimento.Params.ParamByName('dataf').asdatetime :=
      DateEdit2.Date;
    query_venda_recebimento.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').asstring :=
      'RESUMO DE VENDAS/RECEBIMENTO';
    fxvenda.LoadFromFile('\OneMaker\server\rel\f000099_1.fr3');
    fxvenda.ShowReport;

  end;

  if combo_relatorio.Text = 'CURVA ABC DE PRODUTOS' then
  begin

    qrabc.CLOSE;
    qrabc.SQL.CLEAR;
    qrabc.SQL.Add('DELETE FROM CL00006');
    qrabc.EXECSQL;
    qrabc.SQL.CLEAR;
    qrabc.SQL.Add('SELECT * FROM CL00006 ORDER BY valor3 DESC');
    qrabc.OPEN;

    if combo_marca.Text = 'TODOS' then
    begin
      qrvenda_produto4.CLOSE;
      qrvenda_produto4.SQL.CLEAR;
      qrvenda_produto4.SQL.Add
        ('select codproduto, sum(qtde) total_qtde, sum(total) total_valor ');
      qrvenda_produto4.SQL.Add('from c000032 where movimento in (2,7,9)');
      qrvenda_produto4.SQL.Add('and ' + periodo + cliente + VENDEDOR + PRODUTO +
        ' group by codproduto');
      qrvenda_produto4.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
      qrvenda_produto4.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
      qrvenda_produto4.OPEN;
    end
    else
    begin
      MARCA := ' and pro.CODMARCA = ''' + copy(combo_marca.Text, 1, 6) + '''';

      qrvenda_produto4.CLOSE;
      qrvenda_produto4.SQL.CLEAR;
      qrvenda_produto4.SQL.Add
        ('select mov.codproduto, sum(mov.qtde) total_qtde, sum(mov.total) total_valor ');
      qrvenda_produto4.SQL.Add('from c000032 mov, c000025 pro where');
      qrvenda_produto4.SQL.Add(' mov.codproduto = pro.codigo ' + MARCA +
        ' and movimento in (2,7,9)');
      qrvenda_produto4.SQL.Add('and ' + periodo + cliente + VENDEDOR + PRODUTO +
        ' group by codproduto');
      qrvenda_produto4.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
      qrvenda_produto4.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
      qrvenda_produto4.OPEN;
    end;
    qrvenda_produto4.first;
    while not qrvenda_produto4.Eof do
    begin
      qrabc.INSERT;
      qrabc.fieldbyname('CODIGO').asstring := qrvenda_produto4.fieldbyname
        ('CODPRODUTO').asstring;
      qrabc.fieldbyname('CAMPO1').asstring := qrvenda_produto4.fieldbyname
        ('PRODUTO').asstring;
      qrabc.fieldbyname('VALOR1').ASFLOAT := qrvenda_produto4.fieldbyname
        ('TOTAL_QTDE').ASFLOAT;
      qrabc.fieldbyname('VALOR2').ASFLOAT := qrvenda_produto4.fieldbyname
        ('TOTAL_VALOR').ASFLOAT - (qrvenda_produto4.fieldbyname('TOTAL_QTDE')
        .ASFLOAT * qrvenda_produto4.fieldbyname('PRECO_CUSTO').ASFLOAT);
      qrabc.POST;
      qrvenda_produto4.next;
    end;
    FRMMODULO.ConexaoLocal.Commit;
    qrabc.REFRESH;

    QUERY.CLOSE;
    QUERY.SQL.CLEAR;
    QUERY.SQL.Add('SELECT SUM(VALOR2) TOTAL_LUCRO FROM CL00006');
    QUERY.OPEN;

    if QUERY.fieldbyname('total_lucro').ASFLOAT <> 0 then
    begin
      qrabc.first;
      while not qrabc.Eof do
      begin
        if qrabc.fieldbyname('valor2').ASFLOAT <> 0 then
        begin
          qrabc.edit;
          qrabc.fieldbyname('VALOR3').ASFLOAT :=
            (qrabc.fieldbyname('valor2').ASFLOAT * 100) /
            QUERY.fieldbyname('TOTAL_LUCRO').ASFLOAT;

          if qrabc.fieldbyname('VALOR3').ASFLOAT >= 70 then
            qrabc.fieldbyname('campo3').asstring := 'A';
          if (qrabc.fieldbyname('VALOR3').ASFLOAT < 70) and
            (qrabc.fieldbyname('VALOR3').ASFLOAT >= 20) then
            qrabc.fieldbyname('campo3').asstring := 'B';
          if qrabc.fieldbyname('VALOR3').ASFLOAT < 20 then
            qrabc.fieldbyname('campo3').asstring := 'C';

          qrabc.POST;
        end;
        qrabc.next;
      end;
      qrabc.REFRESH;
    end;
    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').asstring :=
      'CURVA ABC DE PRODUTOS';
    fxvenda.LoadFromFile('\OneMaker\server\rel\f000039.fr3');
    fxvenda.ShowReport;

  end;

  if combo_relatorio.Text = 'RESUMO DE VENDAS / META POR VENDEDOR' then
  begin
    if combo_vendedor.Text = 'TODOS' then
      VENDEDOR := ''
    else
    begin
      VENDEDOR := ' and c000048.CODVENDEDOR = ''' + copy(combo_vendedor.Text, 1,
        6) + '''';
      FRMMODULO.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: ' +
        combo_vendedor.Text;
    end;

    qrvendedor.CLOSE;
    qrvendedor.SQL.CLEAR;
    qrvendedor.SQL.Add('select c.*,  coalesce( comissao,0)COMISS from c000008 c');
    qrvendedor.OPEN;

    qrmeta.CLOSE;
    qrmeta.SQL.CLEAR;
    qrmeta.SQL.Add('select');
    qrmeta.SQL.Add('   codvendedor,');
    qrmeta.SQL.Add
      ('   sum(meio_dinheiro+meio_chequeav+meio_cartaodeb+meio_financeira) total_avista,');
    qrmeta.SQL.Add
      ('   sum(meio_cartaocred+meio_crediario+meio_convenio+meio_chequeap) total_aprazo,');
    qrmeta.SQL.Add('   count (codigo) as clientes_todos,');
    qrmeta.SQL.Add('   sum(iif(exists(select first 1 codigo from');
    qrmeta.SQL.Add
      ('           c000007 where codigo = c000048.codcliente and data_cadastro between :datai and :dataf ),1,0)) as clientes_novos');
    qrmeta.SQL.Add('from c000048');
    // qrmeta.sql.add('where c000048.codcliente = c000007.codigo');
    qrmeta.SQL.Add('where c000048.data between :datai and :dataf');
    qrmeta.SQL.Add(VENDEDOR);
    qrmeta.SQL.Add('group by codvendedor');
    qrmeta.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
    qrmeta.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
    qrmeta.OPEN;
    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').asstring :=
      'RELATÓRIO DE VENDAS/METAS';
    fxvenda.LoadFromFile('\OneMaker\server\rel\f000181.fr3');
    fxvenda.ShowReport;
  end;

  if combo_relatorio.Text = 'VENDAS DE PRODUTOS AGRUPADOS POR DIA' then
  begin
    qrvenda_produto2.CLOSE;
    qrvenda_produto2.SQL.CLEAR;

    if (combo_grupo.Text = 'TODOS') and (combo_fornecedor.Text = 'TODOS') and
      (combo_marca.Text = 'TODOS') then
    begin
      qrvenda_produto2.SQL.Add
        ('select * from c000032 where movimento in (2,7,9) and ' + periodo +
        cliente + VENDEDOR + PRODUTO + ' order by data, codIGO')
    end
    else
    begin
      if combo_vendedor.Text = 'TODOS' then
        VENDEDOR := ''
      else
      begin
        VENDEDOR := ' and VEN.CODVENDEDOR = ''' + copy(combo_vendedor.Text, 1,
          6) + '''';
        FRMMODULO.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: ' +
          combo_vendedor.Text;
      end;
      if combo_fornecedor.Text = 'TODOS' then
        FORNECEDOR := ''
      else
      begin
        FORNECEDOR := ' and PRO.CODFORNECEDOR = ''' +
          copy(combo_fornecedor.Text, 1, 6) + '''';
        FRMMODULO.qrrelatorio.fieldbyname('LINHA4').asstring := 'FORNECEDOR: ' +
          combo_fornecedor.Text;
      end;
      if combo_marca.Text = 'TODOS' then
        MARCA := ''
      else
      begin
        MARCA := ' and PRO.CODMARCA = ''' + copy(combo_marca.Text, 1, 6) + '''';
        FRMMODULO.qrrelatorio.fieldbyname('LINHA4').asstring := 'MARCA: ' +
          combo_marca.Text;
      end;
      // if combo_GRUPO.Text = 'TODOS' then GRUPO := '' else begin  GRUPO := ' and PRO.CODsubgrUpo = '''+copy(combo_grupo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: '+combo_GRUPO.TEXT; end;
      if rserial.Checked = false then
        if combo_grupo.Text = 'TODOS' then
          GRUPO := ''
        else
        begin
          GRUPO := ' and PRO.CODsubgrUpo = ''' + copy(combo_grupo.Text, 1,
            6) + '''';
          FRMMODULO.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: ' +
            combo_grupo.Text;
        end
      else if combo_grupo.Text = 'TODOS' then
        GRUPO := ''
      else
      begin
        GRUPO := ' and ven.CODsubgrUpo = ''' + copy(combo_grupo.Text, 1,
          6) + '''';
        FRMMODULO.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: ' +
          combo_grupo.Text;
      end;

      if combo_produto.Text = 'TODOS' then
        PRODUTO := ''
      else
      begin
        PRODUTO := ' and VEN.CODPRODUTO = ''' + copy(combo_produto.Text, 1,
          6) + '''';
        FRMMODULO.qrrelatorio.fieldbyname('LINHA5').asstring :=
          FRMMODULO.qrrelatorio.fieldbyname('LINHA5').asstring + 'PRODUTO: ' +
          combo_produto.Text;
      end;
      qrvenda_produto2.SQL.Add
        ('select VEN.*, PRO.CODSUBGRUPO, PRO.CODFORNECEDOR, PRO.CODMARCA from c000032 VEN, c000025 PRO where VEN.CODPRODUTO = PRO.CODIGO AND movimento in (2,7,9) and '
        + periodo + cliente + VENDEDOR + FORNECEDOR + MARCA + PRODUTO + GRUPO +
        ' order by data, codproduto')
    end;
    qrvenda_produto2.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
    qrvenda_produto2.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
    qrvenda_produto2.OPEN;

    FRMMODULO.qrrelatorio.fieldbyname('linha2').asstring := 'PERÍODO: ' +
      DateEdit1.Text + ' a ' + DateEdit2.Text;
    FRMMODULO.qrrelatorio.fieldbyname('LINHA1').asstring :=
      'VENDA DE PRODUTOS POR DIA';
    fxvenda.LoadFromFile('\OneMaker\server\rel\F000183.fr3');
    fxvenda.ShowReport;
  end;
  frmPrincipal.logUC('Abriu Relatorio Vendas - ' + frmPrincipal.RemoveAcentos
    (combo_relatorio.Text), 0);
end;

procedure Tfrmlista_venda2.combo_relatorioChange(Sender: TObject);
begin

  { RELAÇÃO SINTÉTICA
    RELAÇÃO ANALÍTICA
    VENDAS DE PRODUTOS
    RESUMO DE VENDAS DE PRODUTOS
    VENDAS / COMISSÃO
    CURVA ABC DE PRODUTOS
    RESUMO DE VENDAS POR VENDEDOR }

  COMBO_SITUACAO.visible := false;
  lsituacao.visible := false;

  if combo_relatorio.Text = 'COMISSÃO POR VENDA A VISTA/RECEBIMENTOS' then
  begin
    combo_cliente.visible := TRUE;
    combo_vendedor.visible := TRUE;
    combo_caixa.visible := TRUE;
    lcaixa.visible := TRUE;
    combo_forma.visible := TRUE;
    lforma.visible := TRUE;

    combo_produto.visible := TRUE;
    LPRODUTO.visible := TRUE;
    lgrupo.visible := TRUE;
    combo_grupo.visible := TRUE;

    lfornecedor.visible := TRUE;
    combo_fornecedor.visible := TRUE;
    lmarca.visible := TRUE;
    combo_marca.visible := TRUE;
    bTodos_Produtos.visible := false;
  end;

  if combo_relatorio.Text = 'RELAÇÃO SINTÉTICA' then
  begin
    combo_cliente.visible := TRUE;
    combo_vendedor.visible := TRUE;
    combo_caixa.visible := TRUE;
    lcaixa.visible := TRUE;
    combo_forma.visible := TRUE;
    lforma.visible := TRUE;

    combo_produto.visible := false;
    LPRODUTO.visible := false;
    lgrupo.visible := false;
    combo_grupo.visible := false;

    lfornecedor.visible := TRUE;
    combo_fornecedor.visible := TRUE;
    lmarca.visible := TRUE;
    combo_marca.visible := TRUE;
    COMBO_SITUACAO.visible := false;
    lsituacao.visible := false;
    bTodos_Produtos.visible := false;

  end;

  if combo_relatorio.Text = 'RESUMO DE VENDAS POR VENDEDOR' then
  begin
    combo_cliente.visible := TRUE;
    combo_vendedor.visible := TRUE;
    combo_caixa.visible := TRUE;
    lcaixa.visible := TRUE;
    combo_forma.visible := TRUE;
    lforma.visible := TRUE;

    combo_produto.visible := false;
    LPRODUTO.visible := false;
    lgrupo.visible := false;
    combo_grupo.visible := false;

    lfornecedor.visible := TRUE;
    combo_fornecedor.visible := TRUE;
    lmarca.visible := TRUE;
    combo_marca.visible := TRUE;
    bTodos_Produtos.visible := false;
  end;

  if combo_relatorio.Text = 'RELAÇÃO ANALÍTICA' then
  begin
    combo_cliente.visible := TRUE;
    combo_vendedor.visible := TRUE;
    combo_caixa.visible := false;
    lcaixa.visible := false;
    combo_forma.visible := false;
    lforma.visible := false;

    combo_produto.visible := TRUE;
    LPRODUTO.visible := TRUE;
    lgrupo.visible := false;
    combo_grupo.visible := false;

    lfornecedor.visible := TRUE;
    combo_fornecedor.visible := TRUE;
    lmarca.visible := TRUE;
    combo_marca.visible := TRUE;
    bTodos_Produtos.visible := false;
  end;

  if combo_relatorio.Text = 'VENDAS DE PRODUTOS' then
  begin
    combo_cliente.visible := TRUE;
    combo_vendedor.visible := TRUE;
    combo_caixa.visible := false;
    lcaixa.visible := false;
    combo_forma.visible := false;
    lforma.visible := false;

    combo_produto.visible := TRUE;
    LPRODUTO.visible := TRUE;
    lgrupo.visible := TRUE;
    combo_grupo.visible := TRUE;

    lfornecedor.visible := TRUE;
    combo_fornecedor.visible := TRUE;
    lmarca.visible := TRUE;
    combo_marca.visible := TRUE;
    bTodos_Produtos.visible := TRUE;
  end;
  {
    else
    begin
    bTodos_Produtos.Visible := False;
    end;
  }

  if combo_relatorio.Text = 'RESUMO DE VENDAS DE PRODUTOS' then
  begin
    combo_cliente.visible := TRUE;
    combo_vendedor.visible := TRUE;

    combo_caixa.visible := false;
    lcaixa.visible := false;
    combo_forma.visible := false;
    lforma.visible := false;

    combo_produto.visible := TRUE;
    LPRODUTO.visible := TRUE;
    lgrupo.visible := false;
    combo_grupo.visible := false;

    lfornecedor.visible := TRUE;
    combo_fornecedor.visible := TRUE;
    lmarca.visible := TRUE;
    combo_marca.visible := TRUE;

    bTodos_Produtos.visible := TRUE;
  end;
  { else
    begin
    bTodos_Produtos.Visible := False;
    END;
  }

  if combo_relatorio.Text = 'VENDAS / COMISSÃO' then
  begin
    combo_cliente.visible := TRUE;
    combo_vendedor.visible := TRUE;

    combo_caixa.visible := false;
    lcaixa.visible := false;
    combo_forma.visible := false;
    lforma.visible := false;

    combo_produto.visible := TRUE;
    LPRODUTO.visible := TRUE;
    lgrupo.visible := TRUE;
    combo_grupo.visible := TRUE;

    lfornecedor.visible := TRUE;
    combo_fornecedor.visible := TRUE;
    lmarca.visible := TRUE;
    combo_marca.visible := TRUE;
    bTodos_Produtos.visible := false;

  end;

  if combo_relatorio.Text = 'VENDAS / RECEBIMENTO' then
  begin

    combo_cliente.visible := TRUE;
    lcliente.visible := TRUE;

    combo_vendedor.visible := TRUE;
    lvendedor.visible := TRUE;

    combo_caixa.visible := false;
    lcaixa.visible := false;

    combo_forma.visible := false;
    lforma.visible := false;

    combo_produto.visible := false;
    LPRODUTO.visible := false;

    lgrupo.visible := false;
    combo_grupo.visible := false;

    lfornecedor.visible := TRUE;
    combo_fornecedor.visible := TRUE;
    lmarca.visible := TRUE;
    combo_marca.visible := TRUE;
    bTodos_Produtos.visible := false;

  end;

  if combo_relatorio.Text = 'RESUMO DE VENDAS / RECEBIMENTO' then
  begin

    combo_cliente.visible := false;
    lcliente.visible := false;

    combo_vendedor.visible := TRUE;
    lvendedor.visible := TRUE;

    // combo_marca.Visible := false;
    // lmarca.visible := false;

    combo_caixa.visible := false;
    lcaixa.visible := false;

    combo_forma.visible := false;
    lforma.visible := false;

    combo_produto.visible := false;
    LPRODUTO.visible := false;

    lgrupo.visible := false;
    combo_grupo.visible := false;

    lfornecedor.visible := TRUE;
    combo_fornecedor.visible := TRUE;
    lmarca.visible := TRUE;
    combo_marca.visible := TRUE;
    bTodos_Produtos.visible := false;

  end;

  if combo_relatorio.Text = 'CURVA ABC DE PRODUTOS' then
  begin
    combo_cliente.visible := TRUE;
    lcliente.visible := TRUE;
    combo_vendedor.visible := TRUE;
    combo_caixa.visible := TRUE;
    lcaixa.visible := TRUE;
    combo_forma.visible := false;
    lforma.visible := false;

    combo_produto.visible := false;
    LPRODUTO.visible := false;
    lgrupo.visible := false;
    combo_grupo.visible := false;

    lfornecedor.visible := TRUE;
    combo_fornecedor.visible := TRUE;
    lmarca.visible := TRUE;
    combo_marca.visible := TRUE;
    bTodos_Produtos.visible := false;
  end;

  if combo_relatorio.Text = 'RESUMO DE VENDAS / META POR VENDEDOR' then
  begin
    combo_cliente.visible := false;
    lcliente.visible := false;
    combo_vendedor.visible := TRUE;
    lvendedor.visible := TRUE;
    combo_caixa.visible := false;
    lcaixa.visible := false;
    combo_forma.visible := false;
    lforma.visible := false;
    combo_produto.visible := false;
    LPRODUTO.visible := false;
    lgrupo.visible := false;
    combo_grupo.visible := false;

    lfornecedor.visible := false;
    combo_fornecedor.visible := false;
    lmarca.visible := false;
    combo_marca.visible := false;

    bTodos_Produtos.visible := false;

  end;

  if combo_relatorio.Text = 'VENDAS DE PRODUTOS AGRUPADOS POR DIA' then
  begin
    combo_cliente.visible := TRUE;
    combo_vendedor.visible := TRUE;
    combo_caixa.visible := false;
    lcaixa.visible := false;
    combo_forma.visible := false;
    lforma.visible := false;

    combo_produto.visible := TRUE;
    LPRODUTO.visible := TRUE;
    lgrupo.visible := TRUE;
    combo_grupo.visible := TRUE;

    lfornecedor.visible := TRUE;
    combo_fornecedor.visible := TRUE;
    lmarca.visible := TRUE;
    combo_marca.visible := TRUE;
    bTodos_Produtos.visible := false;

  end;

end;

procedure Tfrmlista_venda2.Fechar1Click(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmlista_venda2.BitBtn1Click(Sender: TObject);
begin
  if not frmPrincipal.autentica('Editar Relatórios', 4) then
  begin
    application.MESSAGEBOX('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
    exit;
  end;

  if combo_relatorio.Text = 'PRODUTOS VENDIDOS EM CONDICIONAL' then
  begin
    fxvenda.LoadFromFile('\OneMaker\server\REL\F000158.fr3');
    fxvenda.designreport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO SINTÉTICA' then
  begin
    fxvenda.LoadFromFile('\OneMaker\server\rel\f000033.fr3');
    fxvenda.designreport;
  end;
  if combo_relatorio.Text = 'RESUMO DE VENDAS DE PRODUTOS' then
  begin
    fxvenda.LoadFromFile('\OneMaker\server\REL\F000032.fr3');
    fxvenda.designreport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO ANALÍTICA' then
  begin

    fxvenda.LoadFromFile('\OneMaker\server\REL\F000034.fr3');
    fxvenda.designreport;
  end;
  if combo_relatorio.Text = 'VENDAS DE PRODUTOS' then
  begin
    fxvenda.LoadFromFile('\OneMaker\server\REL\F000036.fr3');
    fxvenda.designreport;
  end;
  if combo_relatorio.Text = 'RESUMO DE VENDAS POR VENDEDOR' then
  begin
    fxvenda.LoadFromFile('\OneMaker\server\rel\f000037.fr3');
    fxvenda.designreport;
  end;

  if combo_relatorio.Text = 'VENDAS / COMISSÃO' then
  begin
    fxvenda.LoadFromFile('\OneMaker\server\rel\f000038.fr3');
    fxvenda.designreport;
  end;

  if combo_relatorio.Text = 'VENDAS / RECEBIMENTO' then
  begin
    fxvenda.LoadFromFile('\OneMaker\server\rel\f000099.fr3');
    fxvenda.designreport;
  end;

  if combo_relatorio.Text = 'CURVA ABC DE PRODUTOS' then
  begin
    fxvenda.LoadFromFile('\OneMaker\server\rel\f000039.fr3');
    fxvenda.designreport;

  end;
  if combo_relatorio.Text = 'COMISSÃO POR VENDA A VISTA/RECEBIMENTOS' then
  begin
    fxvenda.LoadFromFile('\OneMaker\server\rel\f000120.fr3');
    fxvenda.designreport;
  end;

  if combo_relatorio.Text = 'RESUMO DE VENDAS / META POR VENDEDOR' then
  begin
    fxvenda.LoadFromFile('\OneMaker\server\rel\f000181.fr3');
    fxvenda.designreport;
  end;
end;

procedure Tfrmlista_venda2.combo_grupoChange(Sender: TObject);
begin
  if combo_grupo.Text = 'SELECIONAR' then
  begin
    frmXloc_SUBGRUPO := tfrmXloc_SUBGRUPO.create(self);
    frmXloc_SUBGRUPO.showmodal;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_grupo.Items.Add(RESULTADO_PESQUISA1 + ' ' + resultado_pesquisa2);
      combo_grupo.ItemIndex := combo_grupo.Items.Count - 1;
    end
    else
      combo_grupo.ItemIndex := 0;
  end;
end;

procedure Tfrmlista_venda2.combo_fornecedorChange(Sender: TObject);
begin
  if combo_fornecedor.Text = 'SELECIONAR' then
  begin

    frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
    frmxloc_fornecedor.showmodal;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_fornecedor.Items.Add(RESULTADO_PESQUISA1 + ' ' +
        resultado_pesquisa2);
      combo_fornecedor.ItemIndex := combo_fornecedor.Items.Count - 1;
    end
    else
      combo_fornecedor.ItemIndex := 0;

  end;

end;

procedure Tfrmlista_venda2.combo_marcaChange(Sender: TObject);
begin
  if combo_marca.Text = 'SELECIONAR' then
  begin

    frmxloc_marca := tfrmxloc_marca.create(self);
    frmxloc_marca.showmodal;

    if RESULTADO_PESQUISA1 <> '' then
    begin
      combo_marca.Items.Add(RESULTADO_PESQUISA1 + ' ' + resultado_pesquisa2);
      combo_marca.ItemIndex := combo_marca.Items.Count - 1;
    end
    else
      combo_marca.ItemIndex := 0;

  end;

end;

procedure Tfrmlista_venda2.qrvendaCalcFields(DataSet: TDataSet);
begin
  if combo_forma.visible then
  begin
    case combo_forma.ItemIndex of
      0:
        qrvenda.fieldbyname('valor_selecionado').ASFLOAT :=
          qrvenda.fieldbyname('total').ASFLOAT;
      1:
        qrvenda.fieldbyname('valor_selecionado').ASFLOAT :=
          qrvenda.fieldbyname('meio_dinheiro').ASFLOAT;
      2:
        qrvenda.fieldbyname('valor_selecionado').ASFLOAT :=
          qrvenda.fieldbyname('meio_chequeav').ASFLOAT;
      3:
        qrvenda.fieldbyname('valor_selecionado').ASFLOAT :=
          qrvenda.fieldbyname('meio_chequeap').ASFLOAT;
      4:
        qrvenda.fieldbyname('valor_selecionado').ASFLOAT :=
          qrvenda.fieldbyname('meio_cartaocred').ASFLOAT;
      5:
        qrvenda.fieldbyname('valor_selecionado').ASFLOAT :=
          qrvenda.fieldbyname('meio_cartaodeb').ASFLOAT;
      6:
        qrvenda.fieldbyname('valor_selecionado').ASFLOAT :=
          qrvenda.fieldbyname('meio_crediario').ASFLOAT;
      7:
        qrvenda.fieldbyname('valor_selecionado').ASFLOAT :=
          qrvenda.fieldbyname('meio_convenio').ASFLOAT;
      8:
        qrvenda.fieldbyname('valor_selecionado').ASFLOAT :=
          qrvenda.fieldbyname('meio_financeira').ASFLOAT;
    end;
  end
  else
  begin
    qrvenda.fieldbyname('valor_selecionado').ASFLOAT :=
      qrvenda.fieldbyname('total').ASFLOAT;
  end;
end;

end.
