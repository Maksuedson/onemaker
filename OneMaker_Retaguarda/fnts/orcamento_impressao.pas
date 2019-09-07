unit orcamento_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxDBSet, AdvGlowButton, AdvShapeButton, Mask,
  RzEdit, RzSpnEdt, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel,
  AdvReflectionImage;

type
  Tfrmorcamento_impressao = class(TForm)
    PopupMenu1: TPopupMenu;
    TPBobina: TMenuItem;
    tpa4logo: TMenuItem;
    tprazao: TMenuItem;
    tpcarta: TMenuItem;
    fsorcamento: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    fsorcamento_produto: TfrxDBDataset;
    fsorcamento_receber: TfrxDBDataset;
    fsorcamento_cliente: TfrxDBDataset;
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    Label1: TLabel;
    combo_modelo: TComboBox;
    fxorcamento: TfrxReport;
    ECF1: TMenuItem;
    evias: TRzSpinEdit;
    qrnotafiscal: TZQuery;
    qrnotafiscal_item: TZQuery;
    qrnotafiscal_itemproduto: TStringField;
    qrnotafiscal_itemunidade: TStringField;
    qrcliente: TZQuery;
    qrvenda3: TZQuery;
    IBQuery1: TZQuery;
    qrvenda: TZQuery;
    ZQuery1: TZQuery;
    qrcaixa_mov: TZQuery;
    qrapoio: TZQuery;
    qrapoioCODPRODUTO: TWideStringField;
    qrapoioPRODUTO: TWideStringField;
    qrapoioCF: TWideStringField;
    qrapoioSTR: TWideStringField;
    qrapoioUN: TWideStringField;
    qrapoioQTDE: TWideStringField;
    qrapoioUNITARIO: TWideStringField;
    qrapoioTOTAL: TWideStringField;
    qrapoioICMS: TWideStringField;
    qrapoioIPI: TWideStringField;
    qrapoioIPI_ALIQUOTA: TWideStringField;
    qrapoioTEXTO1: TWideStringField;
    qrapoioTEXTO2: TWideStringField;
    qrapoioTEXTO3: TWideStringField;
    qrapoioTEXTO4: TWideStringField;
    qrapoioTEXTO6: TWideStringField;
    qrapoioTEXTO7: TWideStringField;
    qrapoioTEXTO8: TWideStringField;
    qrapoioTEXTO9: TWideStringField;
    qrapoioTEXTO10: TWideStringField;
    qrapoioCLASSIFICACAO_FISCAL: TWideStringField;
    qrnotafiscal_itemCODNOTA: TWideStringField;
    qrnotafiscal_itemCODPRODUTO: TWideStringField;
    qrnotafiscal_itemQTDE: TFloatField;
    qrnotafiscal_itemUNITARIO: TFloatField;
    qrnotafiscal_itemTOTAL: TFloatField;
    qrnotafiscal_itemIPI: TFloatField;
    qrnotafiscal_itemICMS: TFloatField;
    qrnotafiscal_itemCFOP: TWideStringField;
    qrnotafiscal_itemCODGRADE: TWideStringField;
    qrnotafiscal_itemSERIAL: TWideStringField;
    qrnotafiscal_itemVALOR_IPI: TFloatField;
    qrnotafiscal_itemCLASSIFICACAO_FISCAL: TWideStringField;
    qrnotafiscal_itemCST: TWideStringField;
    qrnotafiscal_itemVALOR_ICMS: TFloatField;
    qrnotafiscal_itemICMS_REDUZIDO: TFloatField;
    qrnotafiscal_itemBASE_CALCULO: TFloatField;
    qrnotafiscal_itemMARGEM_AGREGADA: TFloatField;
    qrnotafiscal_itemBASE_SUB: TFloatField;
    qrnotafiscal_itemICMS_SUB: TFloatField;
    qrnotafiscal_itemISENTO: TFloatField;
    qrnotafiscal_itemCODLANCAMENTO: TWideStringField;
    qrnotafiscal_itemDESCONTO: TFloatField;
    qrnotafiscal_itemSUBTOTAL: TFloatField;
    qrnotafiscal_itemPESO_BRUTO: TFloatField;
    qrnotafiscal_itemPESO_LIQUIDO: TFloatField;
    qrnotafiscal_itemITEM: TIntegerField;
    qrnotafiscal_itemCODIGO: TWideStringField;
    qrnotafiscal_itemGRADE: TWideStringField;
    qrnotafiscal_itemOUTRAS: TFloatField;
    qrnotafiscal_itemPIS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemPIS_BASE: TFloatField;
    qrnotafiscal_itemPIS_VALOR: TFloatField;
    qrnotafiscal_itemCOFINS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemCOFINS_BASE: TFloatField;
    qrnotafiscal_itemCOFINS_VALOR: TFloatField;
    qrnotafiscal_itemCODBARRA: TWideStringField;
    qrnotafiscal_itemALTERA_ITEM: TIntegerField;
    qrnotafiscal_itemCSOSN: TWideStringField;
    qrnotafiscal_itemCOMPLEMENTO: TWideStringField;
    qrnotafiscal_itemCEST: TWideStringField;
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
    qrvendaCLIENTE: TWideStringField;
    qrvendaVENDEDOR: TWideStringField;
    qrvenda3CODIGO: TWideStringField;
    qrvenda3CODCAIXA: TWideStringField;
    qrvenda3CODVENDEDOR: TWideStringField;
    dtfldqrvenda3DATA: TDateField;
    qrvenda3CODCLIENTE: TWideStringField;
    qrvenda3OBS: TWideStringField;
    qrvenda3MEIO_DINHEIRO: TFloatField;
    qrvenda3MEIO_CHEQUEAV: TFloatField;
    qrvenda3MEIO_CHEQUEAP: TFloatField;
    qrvenda3MEIO_CARTAOCRED: TFloatField;
    qrvenda3MEIO_CARTAODEB: TFloatField;
    qrvenda3MEIO_CREDIARIO: TFloatField;
    qrvenda3SUBTOTAL: TFloatField;
    qrvenda3DESCONTO: TFloatField;
    qrvenda3ACRESCIMO: TFloatField;
    qrvenda3TOTAL: TFloatField;
    qrvenda3CUPOM_FISCAL: TIntegerField;
    qrvenda3NUMERO_CUPOM_FISCAL: TWideStringField;
    qrvenda3RETIRADO: TWideStringField;
    qrvenda3MEIO_CONVENIO: TFloatField;
    qrvenda3P5: TFloatField;
    qrvenda3P3: TFloatField;
    qrvenda3MEIO_FINANCEIRA: TFloatField;
    qrvenda3COD_FINANCEIRA: TWideStringField;
    qrvenda3COD_FINANCEIRA_LANCTO: TWideStringField;
    qrvenda3COD_FINANCEIRA_LACTO: TWideStringField;
    qrvenda3CODCONVENIO: TWideStringField;
    qrvenda3SITUACAO: TIntegerField;
    qrvenda3CODTRANSPORTADOR: TWideStringField;
    qrvenda3CODVEICULO: TWideStringField;
    qrvenda3FRETE_VALOR: TFloatField;
    qrvenda3FRETE_OBS: TWideStringField;
    qrvenda3FRETE_LANCAR: TIntegerField;
    qrvenda3ECF_SERIAL: TWideStringField;
    qrvenda3CODNFSAIDA: TWideStringField;
    qrvenda3ATACADO_VAREJO: TSmallintField;
    qrvenda3NRVENDA: TWideStringField;
    qrvenda3FILTRO: TIntegerField;
    qrvenda3CLIENTE: TWideStringField;
    qrvenda3VENDEDOR: TWideStringField;
    ZQuery1CODIGO: TWideStringField;
    ZQuery1CODBARRA: TWideStringField;
    ZQuery1PRODUTO: TWideStringField;
    ZQuery1UNIDADE: TWideStringField;
    ZQuery1DATA_CADASTRO: TDateField;
    ZQuery1CODGRUPO: TWideStringField;
    ZQuery1CODSUBGRUPO: TWideStringField;
    ZQuery1CODFORNECEDOR: TWideStringField;
    ZQuery1CODMARCA: TWideStringField;
    ZQuery1DATA_ULTIMACOMPRA: TDateField;
    ZQuery1NOTAFISCAL: TWideStringField;
    ZQuery1PRECOCUSTO: TFloatField;
    ZQuery1PRECOVENDA: TFloatField;
    ZQuery1DATA_ULTIMAVENDA: TDateField;
    ZQuery1ESTOQUE: TFloatField;
    ZQuery1ESTOQUEMINIMO: TFloatField;
    ZQuery1CODALIQUOTA: TWideStringField;
    ZQuery1APLICACAO: TWideMemoField;
    ZQuery1LOCALICAZAO: TWideStringField;
    ZQuery1PESO: TFloatField;
    ZQuery1VALIDADE: TWideStringField;
    ZQuery1COMISSAO: TFloatField;
    ZQuery1USA_BALANCA: TIntegerField;
    ZQuery1USA_SERIAL: TIntegerField;
    ZQuery1USA_GRADE: TIntegerField;
    ZQuery1CODRECEITA: TWideStringField;
    ZQuery1FOTO: TWideStringField;
    ZQuery1DATA_ULTIMACOMPRA_ANTERIOR: TDateField;
    ZQuery1NOTAFISCAL_ANTERIOR: TWideStringField;
    ZQuery1CODFORNECEDOR_ANTERIOR: TWideStringField;
    ZQuery1PRECOCUSTO_ANTERIOR: TFloatField;
    ZQuery1PRECOVENDA_ANTERIOR: TFloatField;
    ZQuery1CUSTOMEDIO: TFloatField;
    ZQuery1AUTO_APLICACAO: TWideStringField;
    ZQuery1AUTO_COMPLEMENTO: TWideStringField;
    ZQuery1DATA_REMARCACAO_CUSTO: TDateField;
    ZQuery1DATA_REMARCACAO_VENDA: TDateField;
    ZQuery1PRECO_PROMOCAO: TFloatField;
    ZQuery1DATA_PROMOCAO: TDateField;
    ZQuery1FIM_PROMOCAO: TDateField;
    ZQuery1CST: TWideStringField;
    ZQuery1CLASSIFICACAO_FISCAL: TWideStringField;
    ZQuery1NBM: TWideStringField;
    ZQuery1NCM: TWideStringField;
    ZQuery1ALIQUOTA: TFloatField;
    ZQuery1IPI: TFloatField;
    ZQuery1REDUCAO: TFloatField;
    ZQuery1QTDE_EMBALAGEM: TFloatField;
    ZQuery1TIPO: TWideStringField;
    ZQuery1PESO_LIQUIDO: TFloatField;
    ZQuery1FARMACIA_CONTROLADO: TWideStringField;
    ZQuery1FARMACIA_APRESENTACAO: TIntegerField;
    ZQuery1FARMACIA_REGISTRO_MEDICAMENTO: TWideStringField;
    ZQuery1FARMACIA_PMC: TFloatField;
    ZQuery1ULTIMA_ALTERACAO: TDateField;
    ZQuery1ULTIMA_CARGA: TDateField;
    ZQuery1DATA_INVENTARIO: TDateField;
    ZQuery1CUSTO_INVENTARIO: TFloatField;
    ZQuery1ESTOQUE_INVENTARIO: TFloatField;
    ZQuery1ESTOQUE_ANTERIOR: TFloatField;
    ZQuery1PRECOVENDA_NOVO: TFloatField;
    ZQuery1USA_RENTABILIDADE: TIntegerField;
    ZQuery1QUANTIDADE_MINIMA_FAB: TFloatField;
    ZQuery1APRESENTACAO: TWideStringField;
    ZQuery1SITUACAO: TIntegerField;
    ZQuery1PRECOVENDA1: TFloatField;
    ZQuery1PRECOVENDA2: TFloatField;
    ZQuery1PRECOVENDA3: TFloatField;
    ZQuery1PRECOVENDA4: TFloatField;
    ZQuery1PRECOVENDA5: TFloatField;
    ZQuery1DESCONTO_PRECOVENDA: TFloatField;
    ZQuery1DATA_INVENTARIO_ATUAL: TDateField;
    ZQuery1CUSTO_INVENTARIO_ATUAL: TFloatField;
    ZQuery1ESTOQUE_INVENTARIO_ATUAL: TFloatField;
    ZQuery1MARGEM_MINIMA: TFloatField;
    ZQuery1PISCOFINS: TWideStringField;
    ZQuery1REFERENCIA_FORNECEDOR: TWideStringField;
    ZQuery1COMISSAO1: TFloatField;
    ZQuery1MARGEM_DESCONTO: TFloatField;
    ZQuery1TAMANHO: TWideStringField;
    ZQuery1COR: TWideStringField;
    ZQuery1INCIDENCIA_PISCOFINS: TWideStringField;
    ZQuery1VEIC_CHASSI: TWideStringField;
    ZQuery1VEIC_SERIE: TWideStringField;
    ZQuery1VEIC_POTENCIA: TWideStringField;
    ZQuery1VEIC_PESO_LIQUIDO: TWideStringField;
    ZQuery1VEIC_PESO_BRUTO: TWideStringField;
    ZQuery1VEIC_TIPO_COMBUSTIVEL: TWideStringField;
    ZQuery1VEIC_RENAVAM: TWideStringField;
    ZQuery1VEIC_ANO_FABRICACAO: TIntegerField;
    ZQuery1VEIC_ANO_MODELO: TIntegerField;
    ZQuery1VEIC_TIPO: TWideStringField;
    ZQuery1VEIC_TIPO_PINTURA: TWideStringField;
    ZQuery1VEIC_COD_COR: TWideStringField;
    ZQuery1VEIC_COR: TWideStringField;
    ZQuery1VEIC_VIN: TWideStringField;
    ZQuery1VEIC_NUMERO_MOTOR: TWideStringField;
    ZQuery1VEIC_CMKG: TWideStringField;
    ZQuery1VEIC_CM3: TWideStringField;
    ZQuery1VEIC_DISTANCIA_EIXO: TWideStringField;
    ZQuery1VEIC_COD_MARCA: TWideStringField;
    ZQuery1VEIC_ESPECIE: TWideStringField;
    ZQuery1VEIC_CONDICAO: TWideStringField;
    ZQuery1LOTE_FABRICACAO: TWideStringField;
    ZQuery1LOTE_VALIDADE: TDateField;
    ZQuery1MARGEM_AGREGADA: TFloatField;
    ZQuery1CODBARRA_NOVARTIS: TWideStringField;
    ZQuery1FARMACIA_DCB: TWideStringField;
    ZQuery1FARMACIA_ABCFARMA: TWideStringField;
    ZQuery1FARMACIA_APRESENTACAO_CAIXA: TWideStringField;
    ZQuery1FARMACIA_PRINCIPIOATIVO: TWideStringField;
    ZQuery1ULTIMA_COMPRA: TDateField;
    ZQuery1FARMACIA_DATAVIGENCIA: TDateField;
    ZQuery1FARMACIA_TIPO: TWideStringField;
    ZQuery1USA_COMBUSTIVEL: TWideStringField;
    ZQuery1REFERENCIA: TWideStringField;
    ZQuery1PERDA: TFloatField;
    ZQuery1COMPOSICAO1: TWideStringField;
    ZQuery1COMPOSICAO2: TWideStringField;
    ZQuery1IAT: TWideStringField;
    ZQuery1IPPT: TWideStringField;
    ZQuery1SITUACAO_TRIBUTARIA: TWideStringField;
    ZQuery1FLAG_SIS: TWideStringField;
    ZQuery1FLAG_ACEITO: TWideStringField;
    ZQuery1FLAG_EST: TWideStringField;
    ZQuery1CSOSN: TWideStringField;
    ZQuery1CODORIGINAL: TWideStringField;
    ZQuery1CUSTO_ATACADO: TSingleField;
    ZQuery1UNIDADE_ATACADO: TWideStringField;
    ZQuery1QTDE_EMBALAGEMATACADO: TSingleField;
    ZQuery1PMARGEM1: TSingleField;
    ZQuery1PMARGEM2: TSingleField;
    ZQuery1PMARGEM3: TSingleField;
    ZQuery1PMARGEM4: TSingleField;
    ZQuery1PMARGEM5: TSingleField;
    ZQuery1PMARGEMATACADO1: TSingleField;
    ZQuery1PMARGEMATACADO2: TSingleField;
    ZQuery1PMARGEMATACADO3: TSingleField;
    ZQuery1PMARGEMATACADO4: TSingleField;
    ZQuery1PMARGEMATACADO5: TSingleField;
    ZQuery1PMARGEMATACADO6: TSingleField;
    ZQuery1PRECOATACADO1: TSingleField;
    ZQuery1PRECOATACADO2: TSingleField;
    ZQuery1PRECOATACADO3: TSingleField;
    ZQuery1PRECOATACADO4: TSingleField;
    ZQuery1PRECOATACADO5: TSingleField;
    ZQuery1IND_CFOP: TWideStringField;
    ZQuery1CFOP_DESC: TWideStringField;
    ZQuery1USA_LOTE: TIntegerField;
    ZQuery1IND_CFOP_VENDA_DENTRO: TWideStringField;
    ZQuery1CODCONTA: TWideStringField;
    ZQuery1IND_CFOP_VENDA_FORA: TWideStringField;
    ZQuery1IND_CFOP_DEVOLUCAO_DENTRO: TWideStringField;
    ZQuery1IND_CFOP_DEVOLUCAO_FORA: TWideStringField;
    ZQuery1IND_CFOP_GARANTIA_DENTRO: TWideStringField;
    ZQuery1IND_CFOP_GARANTIA_FORA: TWideStringField;
    ZQuery1USA_TB_PC: TWideStringField;
    ZQuery1ATIVA: TWideStringField;
    ZQuery1CEST: TWideStringField;
    AdvReflectionImage1: TAdvReflectionImage;
    AdvSmoothPanel1: TAdvSmoothPanel;
    bgravar: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure TPBobinaClick(Sender: TObject);
    procedure tpa4logoClick(Sender: TObject);
    procedure tpa4Click(Sender: TObject);
    procedure tprazaoClick(Sender: TObject);
    procedure tpcartaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ECF1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmorcamento_impressao: Tfrmorcamento_impressao;
  porta_impressora: string;
  CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO: string;
   const
   sc_DragMove = $f012;
implementation

uses modulo, principal, venda, venda_fechamento, ecf, orcamento, venda_nf,
  venda_impressao, nf_obs, RzDBEdit, cheque_avulso, cartao_ficha;

{$R *.dfm}

procedure Tfrmorcamento_impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmorcamento_impressao.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmorcamento_impressao.AdvSmoothExpanderPanel1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmorcamento_impressao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmorcamento_impressao.bgravarClick(Sender: TObject);
begin
{
01 - Papel A4
03 - Formulário Contínuo - Razão
04 - Formulário Contínuo - Carta
05 - Bobina
}
  qrapoio.Open;

  case combo_modelo.ItemIndex of
    //0: ECF1Click(frmorcamento_impressao);
    0: TPa4logoClick(frmorcamento_impressao); //TPrazaoClick(frmorcamento_impressao);
    1: TPcartaClick(frmorcamento_impressao);
    2: TPbobinaClick(frmorcamento_impressao);
    3: tpa4Click(frmorcamento_impressao);

    //4: TPNota_FiscalClick(frmorcamento_impressao);
  end;

  close;
end;

procedure Tfrmorcamento_impressao.FormShow(Sender: TObject);
begin
  qrcliente.close;
  qrcliente.sql.clear;
  qrcliente.sql.add('select * from c000007 where codigo = ''' + frmOrcamento.ecliente.Text + '''');
  qrcliente.open;
  frmmodulo.qrcliente.locate('codigo', frmmodulo.qrorcamento.fieldbyname('codcliente').asstring, [loCaseInsensitive]);


  if FRMMODULO.QRorcamento.FIELDBYNAME('CODCLIENTE').ASSTRING = 'S/CLIE' then
  begin
    CLIENTE_NOME := 'CLIENTE ESPECIAL';
    CLIENTE_ENDERECO := '';
    CLIENTE_BAIRRO := '';
    CLIENTE_CIDADE := '';
    CLIENTE_UF := '';
    CLIENTE_CEP := '';
    CLIENTE_TELEFONE := '';
    CLIENTE_CPF := '';
    CLIENTE_RG := '';
    CLIENTE_CODIGO := 'S/CLIE';
  end
  else
  begin
    CLIENTE_NOME := frmmodulo.qrcliente.fieldbyname('nome').asstring;
    CLIENTE_ENDERECO := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
    CLIENTE_BAIRRO := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
    CLIENTE_CIDADE := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
    CLIENTE_UF := frmmodulo.qrcliente.fieldbyname('uf').asstring;
    CLIENTE_CEP := frmmodulo.qrcliente.fieldbyname('cep').asstring;
    CLIENTE_TELEFONE := frmmodulo.qrcliente.fieldbyname('telefone1').asstring + '/' + frmmodulo.qrcliente.fieldbyname('celular').asstring + '/' + frmmodulo.qrcliente.fieldbyname('telefone2').asstring;
    CLIENTE_CPF := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
    CLIENTE_RG := frmmodulo.qrcliente.fieldbyname('rg').asstring;
    CLIENTE_CODIGO := frmmodulo.qrcliente.fieldbyname('CODIGO').asstring;
  end;
  frmmodulo.qrconfig.open;
  combo_modelo.ItemIndex := frmmodulo.qrconfig.FieldByName('orcamento_TIPONOTA').asinteger;
  evias.intValue := frmmodulo.qrconfig.FieldByName('orcamento_QTDE_VIAS_NOTA').asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName('orcamento_PORTA_IMPRESSORA').asstring;
  impressora_venda := 'C:\TEXTE.TXT';
end;

procedure Tfrmorcamento_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmorcamento_impressao.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmorcamento_impressao.TPNota_FiscalClick(Sender: TObject);
var f, arquivo: textfile;
  TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7: string;
  i, a, parcela: integer;
  xitemserv, NNOTA, cfops, parcinvalida: INTEGER;
  vvalor_cfop1, vvalor_cfop2: double;
  vcfop1, vcfop2: string;
  cfop: string;
  linha, VITEM, processar: integer;
  BASE_CALCULO, ICMS, tn: real;
  codcaixa, xproxvenda, xcfopServ: string;
  totdinheiro, totcheqav, totcheqap, totcartcred, totcartdeb, totcarteira, totboleto: Real;
  lote_anterior: integer;
  xtotprod, xtotserv, desconto_nota: real;

begin


  frmOrcamento.qrorcamento_contasreceber.sql.clear;
  frmOrcamento.qrorcamento_contasreceber.SQL.Add('select * from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
  frmOrcamento.qrorcamento_contasreceber.open;

  frmOrcamento.qrorcamento_contasreceber.open;
  frmOrcamento.qrorcamento_contasreceber.First;
  parcinvalida := 0;

  while not frmOrcamento.qrorcamento_contasreceber.Eof do
  begin
    if frmOrcamento.qrorcamento_contasreceberTIPO.AsString = '' then
    begin
      parcinvalida := parcinvalida + 1;
    end;
    frmOrcamento.qrorcamento_contasreceber.next;
  end;

  if frmOrcamento.qrorcamento_contasreceber.RecordCount = 0 then
  begin
    Application.messagebox(' Defina as Formas de Pagamento!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;

  if parcinvalida > 0 then
  begin
    Application.messagebox(Pchar('Existe ' + InttoStr(parcinvalida) + ' Formas de Pagamento Inválida!'), 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;

  FRMMODULO.qrconfig.OPEN;
  //teste para uso de caixa padrao do usuario autenticado   USA_CAIXA_PADRAO_USUARIO

  if frmmodulo.qrconfig.FieldByName('USA_CAIXA_PADRAO_USUARIO').asinteger = 1 then //usa
  begin
    frmmodulo.qrUsuario.Open;

    if frmmodulo.qrUsuario.FieldByName('COD_CAIXA').AsString <> '' then
    begin
      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
      begin

      end
      else
      begin
        APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
        Exit;
      end;
    end
    else
    begin
      APPLICATION.MESSAGEBOX('Voce não possui um caixa padrão! Favor verificar com o Administrador!', 'Atenção', mb_ok + MB_ICONWARNING);
      Exit;
    end;

  end
  else
  begin

    if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 4 then
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
      begin
        if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
        begin

        end
        else
        begin
          APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
          Exit;
        end;
      end
      else
      begin
        APPLICATION.MESSAGEBOX('Não autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
        Exit;
      end;
    end
    else
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
      begin
        if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
        begin

        end
        else
        begin
          APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
          Exit;
        end;
      end
      else
      begin
        APPLICATION.MESSAGEBOX('Não autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
        Exit;
      end;
    end;
  end;

  codcaixa := frmmodulo.qrcaixa_operador.FieldByName('codigo').asstring;

  frmmodulo.qrconfig.Open;
  if (FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'NORMAL') or (FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'FARMA') then
  begin

  // gera NF

    (* M O N T A R     D A D O S    P A R A     A   N O T A    F I S C A L *)

    desconto_nota := frmOrcamento.rsubtotal.Value - frmOrcamento.rtotal.Value;
    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from c000007 where codigo = ''' + frmOrcamento.ecliente.Text + '''');
    qrcliente.open;
    vcfop1 := '';
    vcfop2 := '';

    qrnotafiscal.close;
    qrnotafiscal.sql.clear;
    qrnotafiscal.sql.add('select * from c000061');
    qrnotafiscal.open;

    qrnotafiscal.insert;
    qrnotafiscal.FieldByName('codfilial').asstring := '000001';
    qrnotafiscal.FieldByName('natureza').asstring := frmmodulo.natoperacao;
    qrnotafiscal.FieldByName('codigo').asstring := frmprincipal.codifica('000061');
    frmmodulo.qrfilial.open;
    frmmodulo.qrfilial.Locate('codigo', '000001', [loCaseInsensitive]);

    {frmvenda_nf := tfrmvenda_nf.create(self);
    frmvenda_nf.Tag := 50;
    frmvenda_nf.enf.text := frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring, 6);
    frmvenda_nf.showmodal; }

    numero_notaz := frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring, 6);
     //correcoes
    qrnotafiscal.fieldbyname('numero').asstring := numero_notaz;
    qrnotafiscal.fieldbyname('data').asstring := DateToStr(Date);
    qrnotafiscal.fieldbyname('data_saida').asstring := DateToStr(Date);
    qrnotafiscal.fieldbyname('hora').asstring := formatdatetime ('hh:mm:ss',now);
    qrnotafiscal.fieldbyname('codcliente').asstring := frmOrcamento.ecliente.Text;
    qrnotafiscal.fieldbyname('valor_produtos').asfloat := frmOrcamento.rtotal.Value;
    qrnotafiscal.fieldbyname('total_nota').asfloat := frmOrcamento.rtotal.Value;
    qrnotafiscal.fieldbyname('desconto').asfloat := frmOrcamento.rsubtotal.Value - frmOrcamento.rtotal.Value;
    // modelo de nf
    qrnotafiscal.fieldbyname('situacao').asinteger := 1;
    qrnotafiscal.fieldbyname('NFE_SITUACAO').asinteger := 3;
    qrnotafiscal.fieldbyname('situacao_A').ASSTRING := 'A';
    qrnotafiscal.fieldbyname('MODELO_NF').ASSTRING := '55';
    frmmodulo.qrFilial.Open;
    qrnotafiscal.fieldbyname('SERIE_NF').ASSTRING := IntToStr(frmmodulo.qrFilial.FieldByName('CONHECIMENTO').AsInteger);
    qrnotafiscal.fieldbyname('SIT').ASSTRING := 'N';
    qrnotafiscal.FIELDBYNAME('MOVIMENTO').ASSTRING := 'S';
    QRNOTAFISCAL.FIELDBYNAME('BAIXA_ESTOQUE').ASSTRING := 'S';

    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.SQL.add('select * from c000062 where codnota = ''' + qrnotafiscal.fieldbyname('codigo').asstring + '''');
    qrnotafiscal_item.open;

    BASE_CALCULO := 0;
    ICMS := 0;

    tn := 0;

    qrnotafiscal.fieldbyname('INF1').asSTRING := '';
    qrnotafiscal.fieldbyname('INF2').asSTRING := '';
    qrnotafiscal.fieldbyname('INF3').asSTRING := '';
    texto1 := '';
    texto2 := '';
    texto3 := '';

    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.SQL.add('select * from c000062 where codnota = ''' + qrnotafiscal.fieldbyname('codigo').asstring + '''');
    qrnotafiscal_item.open;

    //inserir servicos
    frmOrcamento.qrorcamento_produto.First;
    xitemserv := 0;
    xtotserv := 0.00;
    while not frmOrcamento.qrorcamento_produto.Eof do
    begin
      if frmOrcamento.qrorcamento_produto.FieldByName('UNIDADE').AsString = 'OS' then
      begin

        if qrcliente.fieldbyname('uf').asstring = frmmodulo.qrFilial.fieldbyname('uf').asstring then
        begin
          xcfopServ := '5933';
          vcfop2 := '5933';
        end
        else
        begin
          xcfopServ := '6933';
          vcfop2 := '6933';
        end;

        xitemserv := xitemserv + 1;
        if xitemserv = 1 then
        begin
          qrnotafiscal.fieldbyname('OS_COD1').asstring := frmOrcamento.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
          qrnotafiscal.fieldbyname('OS_SERV1').asstring := frmOrcamento.qrorcamento_produto.FIELDBYNAME('PRODUTO').ASSTRING;
          qrnotafiscal.fieldbyname('OS_QTDE1').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('QTDE').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_TOTAL1').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_TOTAL_GERAL').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_UNIT1').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('unitario').ASFLOAT;

        end;
        if xitemserv = 2 then
        begin
          qrnotafiscal.fieldbyname('OS_COD2').asstring := frmOrcamento.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
          qrnotafiscal.fieldbyname('OS_SERV2').asstring := frmOrcamento.qrorcamento_produto.FIELDBYNAME('PRODUTO').ASSTRING;
          qrnotafiscal.fieldbyname('OS_QTDE2').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('QTDE').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_TOTAL2').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_TOTAL_GERAL').ASFLOAT := qrnotafiscal.fieldbyname('OS_TOTAL_GERAL').ASFLOAT + qrnotafiscal.fieldbyname('OS_TOTAL2').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_UNIT2').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('unitario').ASFLOAT;

        end;
        if xitemserv = 3 then
        begin
          qrnotafiscal.fieldbyname('OS_COD3').asstring := frmOrcamento.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
          qrnotafiscal.fieldbyname('OS_SERV3').asstring := frmOrcamento.qrorcamento_produto.FIELDBYNAME('PRODUTO').ASSTRING;
          qrnotafiscal.fieldbyname('OS_QTDE3').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('QTDE').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_TOTAL3').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_TOTAL_GERAL').ASFLOAT := qrnotafiscal.fieldbyname('OS_TOTAL_GERAL').ASFLOAT + qrnotafiscal.fieldbyname('OS_TOTAL3').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_UNIT3').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('unitario').ASFLOAT;

        end;
        if xitemserv = 4 then
        begin
          qrnotafiscal.fieldbyname('OS_COD4').asstring := frmOrcamento.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
          qrnotafiscal.fieldbyname('OS_SERV4').asstring := frmOrcamento.qrorcamento_produto.FIELDBYNAME('PRODUTO').ASSTRING;
          qrnotafiscal.fieldbyname('OS_QTDE4').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('QTDE').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_TOTAL4').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_TOTAL_GERAL').ASFLOAT := qrnotafiscal.fieldbyname('OS_TOTAL_GERAL').ASFLOAT + qrnotafiscal.fieldbyname('OS_TOTAL4').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_UNIT4').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('unitario').ASFLOAT;

        end;
        if xitemserv = 5 then
        begin
          qrnotafiscal.fieldbyname('OS_COD5').asstring := frmOrcamento.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
          qrnotafiscal.fieldbyname('OS_SERV5').asstring := frmOrcamento.qrorcamento_produto.FIELDBYNAME('PRODUTO').ASSTRING;
          qrnotafiscal.fieldbyname('OS_QTDE5').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('QTDE').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_TOTAL5').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_TOTAL_GERAL').ASFLOAT := qrnotafiscal.fieldbyname('OS_TOTAL_GERAL').ASFLOAT + qrnotafiscal.fieldbyname('OS_TOTAL5').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_UNIT5').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('unitario').ASFLOAT;

        end;
        if xitemserv = 6 then
        begin
          qrnotafiscal.fieldbyname('OS_COD6').asstring := frmOrcamento.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
          qrnotafiscal.fieldbyname('OS_SERV6').asstring := frmOrcamento.qrorcamento_produto.FIELDBYNAME('PRODUTO').ASSTRING;
          qrnotafiscal.fieldbyname('OS_QTDE6').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('QTDE').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_TOTAL6').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_TOTAL_GERAL').ASFLOAT := qrnotafiscal.fieldbyname('OS_TOTAL_GERAL').ASFLOAT + qrnotafiscal.fieldbyname('OS_TOTAL6').ASFLOAT;
          qrnotafiscal.fieldbyname('OS_UNIT6').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('unitario').ASFLOAT;

        end;
        frmOrcamento.qrorcamento_produto.Next;
      end
      else
        frmOrcamento.qrorcamento_produto.Next;
    end;


    VENDA_VEICULO := False;
    if VENDA_VEICULO then
    begin
      QRNOTAFISCAL_ITEM.INSERT;
      QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING := qrnotafiscal.FIELDBYNAME('CODIGO').ASSTRING;
      QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := frmvenda.qrvenda_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
      QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT := frmvenda.qrvenda_produto.FIELDBYNAME('QTDE').ASFLOAT;
      QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := frmvenda.qrvenda_produto.FIELDBYNAME('total').ASFLOAT;
      QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT := FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT / FRMVENDA.qrvenda_produto.FIELDBYNAME('QTDE').ASFLOAT;
      if qrcliente.fieldbyname('uf').asstring = frmmodulo.qrFilial.fieldbyname('uf').asstring then
      begin
        vcfop1 := '5102';
        QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := '060';
        qrnotafiscal_item.fieldbyname('icms').asstring := '17';
        qrnotafiscal_item.fieldbyname('cfop').asstring := '5102';
      end
      else
      begin
        vcfop1 := '6102';
        QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := '060';
        qrnotafiscal_item.fieldbyname('icms').asstring := '17';
        qrnotafiscal_item.fieldbyname('cfop').asstring := '6102';
      end;
      texto1 := 'ISENTO DE ICMS CONF. SUB. TRIB. CONV. 52/93 E 88/94';
      TEXTO2 := FRMVENDA.EDIT1.TEXT;
      QRNOTAFISCAL_ITEM.POST;

      qrapoio.close;
      qrapoio.sql.clear;
      qrapoio.sql.add('delete from cl00004');
      qrapoio.execsql;
      qrapoio.close;
      qrapoio.sql.clear;
      qrapoio.sql.add('select * from cl00004 order by texto10');
      qrapoio.open;
      a := 1;

      for i := 0 to frmvenda.Memo1.Lines.Count - 1 do
      begin
        qrapoio.insert;
        if i = 0 then
          qrapoio.fieldbyname('codproduto').asstring := qrnotafiscal_item.fieldbyname('codproduto').asstring
        else
          qrapoio.fieldbyname('codproduto').asstring := '';
        qrapoio.fieldbyname('produto').asstring := FRMVENDA.Memo1.Lines[i];
        if i = (frmvenda.Memo1.Lines.Count - 1) then
        begin


          qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000', qrnotafiscal_item.fieldbyname('qtde').asfloat);
          qrapoio.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000', qrnotafiscal_item.fieldbyname('unitario').asfloat);
          qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);

          qrapoio.fieldbyname('cf').asstring := qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
          qrapoio.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname('cst').asstring;
          qrapoio.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname('unidade').asstring;
          qrapoio.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
          qrapoio.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname('ipi').asstring;
          qrapoio.fieldbyname('CLASSIFICACAO_FISCAL').asstring := qrnotafiscal_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring;
        end;
        qrapoio.fieldbyname('texto10').asstring := frmprincipal.zerarcodigo(inttostr(a), 6);
        a := a + 1;
        qrapoio.post;
      end;
      qrnotafiscal.FIELDBYNAME('BASE_CALCULO').ASFLOAT := BASE_CALCULO;
      qrnotafiscal.FIELDBYNAME('VALOR_ICMS').ASFLOAT := ICMS;
      qrnotafiscal.fieldbyname('cfop').asstring := vcfop1;
      qrnotafiscal.post;
    end
    else
    begin
      xtotprod := 0.00;
      frmOrcamento.qrorcamento_produto.First;
      while not frmOrcamento.qrorcamento_produto.Eof do
      begin
        if frmOrcamento.qrorcamento_produto.FieldByName('UNIDADE').AsString <> 'OS' then
        begin
          QRNOTAFISCAL_ITEM.INSERT;
          QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING := qrnotafiscal.FIELDBYNAME('CODIGO').ASSTRING;
          QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := frmOrcamento.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
          QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('QTDE').ASFLOAT;
          QRNOTAFISCAL_ITEM.FIELDBYNAME('desconto').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('desconto').ASFLOAT;
          QRNOTAFISCAL_ITEM.FIELDBYNAME('subtotal').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('total').ASFLOAT - frmOrcamento.qrorcamento_produto.FIELDBYNAME('desconto').ASFLOAT;
          QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('unitario').ASFLOAT;
          QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;
          //ver o arredondamento
          xtotprod := xtotprod + QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT;
          if frmmodulo.qrproduto.LOCATE('CODIGO', frmOrcamento.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING, [loCaseInsensitive]) then
          begin
            QRNOTAFISCAL_ITEM.FIELDBYNAME('CLASSIFICACAO_FISCAL').AsString := frmmodulo.qrprodutoCLASSIFICACAO_FISCAL.AsString;
            QRNOTAFISCAL_ITEM.FIELDBYNAME('CSOSN').AsString := frmmodulo.qrprodutoCSOSN.AsString;
            QRNOTAFISCAL_ITEM.FIELDBYNAME('CODBARRA').AsString := frmmodulo.qrprodutoCODBARRA.AsString;
          end;

          if desconto_nota > 0 then
          begin
            QRNOTAFISCAL_ITEM.FIELDBYNAME('desconto').ASFLOAT := QRNOTAFISCAL_ITEM.FIELDBYNAME('desconto').ASFLOAT +
              (desconto_nota * (((QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT * 100) / frmOrcamento.rsubtotal.value) / 100));
            QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT * QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT - QRNOTAFISCAL_ITEM.FIELDBYNAME('desconto').ASFLOAT;
          end;

          if frmOrcamento.qrorcamento_produto.recordcount > 0 then
          begin
            if frmOrcamento.qrorcamento_produto.FieldByName('cst').asstring = '000' then
            begin
              if qrcliente.fieldbyname('uf').asstring = frmmodulo.qrFilial.fieldbyname('uf').asstring then
              begin
                vcfop1 := '5102';
                QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := '000';
                qrnotafiscal_item.fieldbyname('icms').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('ALIQUOTA').asstring;
                qrnotafiscal_item.fieldbyname('cfop').asstring := '5102';
              end
              else
              begin
                vcfop1 := '6102';
                QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := '000';
                qrnotafiscal_item.fieldbyname('icms').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('ALIQUOTA').asstring;
                qrnotafiscal_item.fieldbyname('cfop').asstring := '6102';
              end;

              base_calculo := base_calculo + QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT;
              if frmOrcamento.qrorcamento_produto.fieldbyname('ALIQUOTA').asfloat > 0 then
                ICMS := icms + (QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT * (frmOrcamento.qrorcamento_produto.fieldbyname('ALIQUOTA').asfloat / 100))
            end
            else
            begin
              if qrcliente.fieldbyname('uf').asstring = frmmodulo.qrFilial.fieldbyname('uf').asstring then
              begin
                vcfop2 := '5403';
                QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := frmOrcamento.qrorcamento_produto.fieldbyname('cst').asstring;
                qrnotafiscal_item.fieldbyname('icms').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('ALIQUOTA').asstring;
                qrnotafiscal_item.fieldbyname('cfop').asstring := '5403';
              end
              else
              begin
                vcfop2 := '6411';
                QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := frmOrcamento.qrorcamento_produto.fieldbyname('cst').asstring;
                qrnotafiscal_item.fieldbyname('icms').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('ALIQUOTA').asstring;
                qrnotafiscal_item.fieldbyname('cfop').asstring := '6411';
              end;

            end;
          end
          else
          begin
            if qrcliente.fieldbyname('uf').asstring = frmmodulo.qrFilial.fieldbyname('uf').asstring then
            begin
              vcfop1 := '5933';
              QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := '000';
              qrnotafiscal_item.fieldbyname('icms').asstring := '17';
              qrnotafiscal_item.fieldbyname('cfop').asstring := '5933';
            end
            else
            begin
              vcfop1 := '6933';
              QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := '000';
              qrnotafiscal_item.fieldbyname('icms').asstring := '17';
              qrnotafiscal_item.fieldbyname('cfop').asstring := '6933';
            end;
            texto1 := 'DOCUMENTO EMITIDO POR ME OU EPP';
            TEXTO2 := 'OPTANTE PELO SIMPLES NACIOMAL';
            texto3 := 'NAO GERA DIREITO A CREDITO FISCAL DE ICMS E DE ISS E DE IPI';
            base_calculo := base_calculo + QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT;
            if frmOrcamento.qrorcamento_produto.fieldbyname('ALIQUOTA').asfloat > 0 then
              ICMS := icms + (QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT * (frmOrcamento.qrorcamento_produto.fieldbyname('ALIQUOTA').asfloat / 100))

          end;

          tn := tn + QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT;
          QRNOTAFISCAL_ITEM.POST;
          frmOrcamento.qrorcamento_produto.NEXT;
        end
        else
          frmOrcamento.qrorcamento_produto.NEXT;
      end;

      if vcfop1 = '' then
      begin
        vcfop1 := vcfop2;
        vcfop2 := '';
      end;

      //total dos produtos
      qrnotafiscal.fieldbyname('valor_produtos').asfloat := xtotprod;

      //mudanca base calculo
      if frmmodulo.qrfilial.fieldbyname('OPTANTE_SIMPLES').asstring = 'S' then
      begin
        texto1 := 'DOCUMENTO EMITIDO POR ME OU EPP';
        TEXTO2 := 'OPTANTE PELO SIMPLES NACIOMAL';
        texto3 := 'NAO GERA DIREITO A CREDITO FISCAL DE ICMS E DE ISS E DE IPI';
        qrnotafiscal.FIELDBYNAME('BASE_CALCULO').ASFLOAT := 0;
        qrnotafiscal.FIELDBYNAME('VALOR_ICMS').ASFLOAT := 0;
        qrnotafiscal.fieldbyname('cfop').asstring := vcfop1;
        qrnotafiscal.post;

      end
      else
      begin
        qrnotafiscal.FIELDBYNAME('BASE_CALCULO').ASFLOAT := BASE_CALCULO;
        qrnotafiscal.FIELDBYNAME('VALOR_ICMS').ASFLOAT := ICMS;
        qrnotafiscal.fieldbyname('cfop').asstring := vcfop1;
        qrnotafiscal.post;
      end;

      qrapoio.close;
      qrapoio.sql.clear;
      qrapoio.sql.add('delete from cl00004');
      qrapoio.execsql;
      qrapoio.close;
      qrapoio.sql.clear;
      qrapoio.sql.add('select * from cl00004 order by texto10');
      qrapoio.open;

      I := 1;
      QRNOTAFISCAL_ITEM.FIRST;
      while not QRNOTAFISCAL_ITEM.EOF do
      begin
        qrapoio.insert;
        qrapoio.fieldbyname('codproduto').asstring := qrnotafiscal_item.fieldbyname('codproduto').asstring;
        qrapoio.fieldbyname('produto').asstring := qrnotafiscal_item.fieldbyname('produto').asstring;
        if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000', qrnotafiscal_item.fieldbyname('qtde').asfloat);
        if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then qrapoio.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000', qrnotafiscal_item.fieldbyname('unitario').asfloat);

        if desconto_nota > 0 then
        begin
          if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then
          begin
            qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('subtotal').asfloat);
            qrapoio.FieldByName('unitario').AsString := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('subtotal').asfloat);
          end
          else
            if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then
              qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);
        end
        else
        begin
          qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);
        end;

        qrapoio.fieldbyname('cf').asstring := qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
        qrapoio.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname('cst').asstring;
        qrapoio.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname('unidade').asstring;
        qrapoio.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
        qrapoio.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname('ipi').asstring;
        qrapoio.fieldbyname('texto8').asstring := qrnotafiscal_item.fieldbyname('cfop').asstring;
        qrapoio.fieldbyname('texto7').asstring := qrnotafiscal_item.fieldbyname('codgrade').asstring;
        QRAPOIO.FIELDBYNAME('TEXTO10').ASSTRING := FRMPRINCIPAL.zerarcodigo(INTTOSTR(I), 6);
        qrapoio.post;
        I := I + 1;

        QRNOTAFISCAL_ITEM.NEXT;
      end;

      if qrvenda.FIELDBYNAME('DESCONTO').ASFLOAT > 0 then
      begin
        qrapoio.insert;
        qrapoio.fieldbyname('codproduto').asstring := '';
        qrapoio.fieldbyname('produto').asstring := 'D E S C O N T O ';
        qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00', QRvenda.FIELDBYNAME('DESCONTO').ASFLOAT);
        QRAPOIO.FIELDBYNAME('TEXTO10').ASSTRING := FRMPRINCIPAL.zerarcodigo(INTTOSTR(I), 6);
        qrapoio.post;
        I := I + 1;

      end;
    end;


    QRAPOIO.open;

    QRAPOIO.REFRESH;

    begin
      if qrnotafiscal.fieldbyname('OS_TOTAL1').ASFLOAT <> 0.00 then
      begin

      end;

      if qrnotafiscal.fieldbyname('OS_UNIT2').ASFLOAT <> 0.00 then
      begin
      end;

      if qrnotafiscal.fieldbyname('OS_UNIT3').ASFLOAT <> 0.00 then
      begin
      end;

      if qrnotafiscal.fieldbyname('OS_UNIT4').ASFLOAT <> 0.00 then
      begin
      end;

      if qrnotafiscal.fieldbyname('OS_UNIT5').ASFLOAT <> 0.00 then
      begin
      end;

      if qrnotafiscal.fieldbyname('OS_UNIT6').ASFLOAT <> 0.00 then
      begin
      end;

      if qrnotafiscal.fieldbyname('OS_TOTAL_GERAL').ASFLOAT <> 0.00 then
      begin
      end;

      //retirado do total por item dos servicos





      //se existir servicos colocar o CFOP TBM


      if VCFOP1 <> '' then
      begin
        frmmodulo.qrcfop.close;
        frmmodulo.qrCFOP.sql.Clear;
        frmmodulo.qrcfop.sql.add('select * from c000030 where cfop = ''' + vcfop1 + '''');
        frmmodulo.qrcfop.open;


      end;

      if VCFOP2 <> '' then
      begin
        frmmodulo.qrcfop.close;
        frmmodulo.qrCFOP.sql.Clear;
        frmmodulo.qrcfop.sql.add('select * from c000030 where cfop = ''' + vcfop2 + '''');
        frmmodulo.qrcfop.open;


      end;

      if VCFOP1 = '5933' then
      begin
        frmmodulo.qrcfop.close;
        frmmodulo.qrCFOP.sql.Clear;
        frmmodulo.qrcfop.sql.add('select * from c000030 where cfop = ''' + vcfop1 + '''');
        frmmodulo.qrcfop.open;

      end;



    //datas e valores das faturas

      frmOrcamento.qrorcamento_contasreceber.First;
      i := 1;
      while not frmOrcamento.qrorcamento_contasreceber.eof do
      begin
        case i of
          1: begin
            end;
          2: begin
            end;
          3: begin
            end;
          4: begin
            end;
          5: begin
            end;
          6: begin
            end;
          7: begin
            end;
          8: begin
            end;
          9: begin
            end;
        end;
        i := i + 1;
        frmOrcamento.qrorcamento_contasreceber.next;
      end;

      {frmnf_obs := tfrmnf_obs.create(self);
      frmnf_obs.edit1.text := texto1;
      frmnf_obs.edit2.text := texto2;
      frmnf_obs.edit3.text := texto3;
      frmnf_obs.showmodal; }


    end;

    if sUsa_NFE <> '1' then
    begin
      //mostra relatorio para impressao
    end;


    QRAPOIO.open;

    // grava numero nf no orcamento
    frmmodulo.qrorcamento.edit;
    frmmodulo.qrorcamento.FieldByName('CODNF').AsString := numero_notaz;
    frmmodulo.qrorcamento.post;

    //variavel para o proximo numero da venda
    if frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString = '' then xproxvenda := frmprincipal.codifica('000048');

    //gera o proximo numero da nf
    frmmodulo.qrfilial.edit;
    frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger := frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
    frmmodulo.qrfilial.post;

    // finaliza venda
    // se nao foi faturado como simples fatura e gera venda para associar a NF
    //se ja foi gerado venda nao gera o contas a receber pois se nao duplica
    //lancamentos no mov de caixa
    totdinheiro := 0;
    totcheqav := 0;
    totcheqap := 0;
    totcartcred := 0;
    totcartdeb := 0;
    totcarteira := 0;
    totboleto := 0;


    frmOrcamento.qrorcamento_contasreceber.Close;
    frmOrcamento.qrorcamento_contasreceber.sql.clear;
    frmOrcamento.qrorcamento_contasreceber.SQL.Add('select * from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
    frmOrcamento.qrorcamento_contasreceber.open;

    if frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString = '' then
    begin
      while not frmOrcamento.qrorcamento_contasreceber.eof do
      begin
        if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'DINHEIRO' then
        begin
          totdinheiro := totdinheiro + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
        end;
        if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CHEQUE Á VISTA' then
        begin
          totcheqav := totcheqav + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
        end;

        if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CHEQUE PRÉ-DATADO' then
        begin
          totcheqap := totcheqap + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
        end;

        if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CARTÃO DE DÉBITO' then
        begin
          totcartdeb := totcartdeb + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
        end;

        if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CARTÃO DE CRÉDITO' then
        begin
          totcartcred := totcartcred + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
        end;

        if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CARTEIRA' then
        begin
          totcarteira := totcarteira + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
        end;

        if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'BOLETO BANCÁRIO' then
        begin
          totboleto := totboleto + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
        end;
        frmOrcamento.qrorcamento_contasreceber.Next;
      end;
    end;


    if frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString = '' then
    begin
     // lancamento da venda  (notas de venda)
      ibquery1.close;
      ibquery1.SQL.clear;
      ibquery1.sql.add('insert into c000048');
      ibquery1.sql.add('(codigo,data,codcliente,codvendedor,codcaixa,');
      ibquery1.sql.add(' total,subtotal,meio_dinheiro,meio_chequeav,meio_chequeap,');
      ibquery1.sql.add(' meio_cartaocred,meio_cartaodeb,meio_crediario,meio_convenio,meio_financeira,');
      ibquery1.sql.add(' desconto,acrescimo,obs,NUMERO_CUPOM_FISCAL,cupom_fiscal,retirado,cod_financeira,cod_financeira_lancto,nrvenda)');
      ibquery1.sql.add('values');
      ibquery1.sql.add('(:codigo,:data,:codcliente,:codvendedor,:codcaixa,');
      ibquery1.sql.add(' :total,:subtotal,:meio_dinheiro,:meio_chequeav,:meio_chequeap,');
      ibquery1.sql.add(' :meio_cartaocred,:meio_cartaodeb,:meio_crediario,:meio_convenio,:meio_financeira,');
      ibquery1.sql.add(' :desconto,:acrescimo,:obs,:NUMERO_CUPOM_FISCAL,:cupom_fiscal,:retirado,:cod_financeira,:cod_financeira_lancto,:nrvenda)');

      ibquery1.parambyname('codigo').asstring := xproxvenda;
      ibquery1.parambyname('data').asdatetime := date;
      ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
      ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
      ibquery1.parambyname('codcaixa').asstring := codcaixa;
      ibquery1.parambyname('TOTAL').asfloat := frmOrcamento.rtotal.value;
      ibquery1.parambyname('SUBTOTAL').asfloat := frmOrcamento.rsubtotal.value;
      ibquery1.parambyname('meio_dinheiro').asfloat := totdinheiro;
      ibquery1.parambyname('meio_chequeav').asfloat := totcheqav;
      ibquery1.parambyname('meio_chequeap').asfloat := totcheqap;
      ibquery1.parambyname('meio_cartaocred').asfloat := totcartcred;
      ibquery1.parambyname('meio_cartaodeb').asfloat := totcartdeb;
      ibquery1.parambyname('meio_crediario').asfloat := totcarteira + totboleto;
      ibquery1.parambyname('meio_convenio').AsFloat := 0;
      ibquery1.parambyname('meio_financeira').AsFloat := 0;
      ibquery1.parambyname('nrvenda').AsString := xproxvenda;
      ibquery1.parambyname('desconto').asfloat := frmOrcamento.rdesconto.Value;
      ibquery1.parambyname('acrescimo').asfloat := frmOrcamento.racrescimo.Value;
      ibquery1.parambyname('OBS').asstring := '';
      ibquery1.parambyname('COD_FINANCEIRA').asstring := '';
      ibquery1.parambyname('COD_FINANCEIRA_LANCTO').asstring := '';
      ibquery1.parambyname('NUMERO_CUPOM_FISCAL').ASSTRING := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
      //esqueci onde configuro para funcionar
      if numero_cupomx <> '' then ibquery1.parambyname('cupom_fiscal').asinteger := 1;
      //else ibquery1.parambyname('cupom_fiscal').asinteger := 0;

      ibquery1.execsql;
    end;



    if frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString = '' then
    begin
     //movimento de caixa

      if totdinheiro <> 0 then
      begin
        qrcaixa_mov.close;
        qrcaixa_mov.sql.clear;
        qrcaixa_mov.sql.add('insert into c000044');
        qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
        qrcaixa_mov.sql.add('values');
        qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

        qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
        qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
        qrcaixa_mov.parambyname('saida').asfloat := 0;
        qrcaixa_mov.parambyname('entrada').asfloat := frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
        qrcaixa_mov.parambyname('valor').asfloat := totdinheiro;

        frmmodulo.qrconfig.open;
        qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
        qrcaixa_mov.parambyname('movimento').asINTEGER := 3; // venda em dinheiro
        qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + xproxvenda + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

        qrcaixa_mov.ExecSQL;

      end;

      if totcheqav <> 0 then
      begin

        qrcaixa_mov.close;
        qrcaixa_mov.sql.clear;
        qrcaixa_mov.sql.add('insert into c000044');
        qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
        qrcaixa_mov.sql.add('values');
        qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

        qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
        qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
        qrcaixa_mov.parambyname('saida').asfloat := 0;
        qrcaixa_mov.parambyname('entrada').asfloat := 0;
        qrcaixa_mov.parambyname('valor').asfloat := totcheqav;
        frmmodulo.qrconfig.open;
        qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
        qrcaixa_mov.parambyname('movimento').asINTEGER := 5; // venda em cheque a vista
        qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + xproxvenda + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

        qrcaixa_mov.ExecSQL;
      end;

      if totcheqap <> 0 then
      begin
        qrcaixa_mov.close;
        qrcaixa_mov.sql.clear;
        qrcaixa_mov.sql.add('insert into c000044');
        qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
        qrcaixa_mov.sql.add('values');
        qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

        qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
        qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
        qrcaixa_mov.parambyname('saida').asfloat := 0;
        qrcaixa_mov.parambyname('entrada').asfloat := 0;
        qrcaixa_mov.parambyname('valor').asfloat := totcheqap;
        frmmodulo.qrconfig.open;
        qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
        qrcaixa_mov.parambyname('movimento').asINTEGER := 6; // venda em cheque a prazo
        qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + xproxvenda + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

        qrcaixa_mov.ExecSQL;
      end;

      if totcartdeb <> 0 then
      begin

        qrcaixa_mov.close;
        qrcaixa_mov.sql.clear;
        qrcaixa_mov.sql.add('insert into c000044');
        qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
        qrcaixa_mov.sql.add('values');
        qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

        qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
        qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
        qrcaixa_mov.parambyname('saida').asfloat := 0;
        qrcaixa_mov.parambyname('entrada').asfloat := 0;
        qrcaixa_mov.parambyname('valor').asfloat := totcartdeb;
        frmmodulo.qrconfig.open;
        qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
        qrcaixa_mov.parambyname('movimento').asINTEGER := 8; // venda em cartao de debito
        qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + xproxvenda + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

        qrcaixa_mov.execsql;
      end;

      if totcartcred <> 0 then
      begin
        qrcaixa_mov.close;
        qrcaixa_mov.sql.clear;
        qrcaixa_mov.sql.add('insert into c000044');
        qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
        qrcaixa_mov.sql.add('values');
        qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');


        qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
        qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
        qrcaixa_mov.parambyname('saida').asfloat := 0;
        qrcaixa_mov.parambyname('entrada').asfloat := 0;
        qrcaixa_mov.parambyname('valor').asfloat := totcartcred;
        frmmodulo.qrconfig.open;
        qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
        qrcaixa_mov.parambyname('movimento').asINTEGER := 7; // venda em cartao de credito
        qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + xproxvenda + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

        qrcaixa_mov.execsql;
      end;

      if totcarteira <> 0 then
      begin
        qrcaixa_mov.close;
        qrcaixa_mov.sql.clear;
        qrcaixa_mov.sql.add('insert into c000044');
        qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
        qrcaixa_mov.sql.add('values');
        qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

        qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
        qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
        qrcaixa_mov.parambyname('saida').asfloat := 0;
        qrcaixa_mov.parambyname('entrada').asfloat := 0;
        qrcaixa_mov.parambyname('valor').asfloat := totcarteira;
        frmmodulo.qrconfig.open;
        qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
        qrcaixa_mov.parambyname('movimento').asINTEGER := 4; // venda crediario
        qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + xproxvenda + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

        qrcaixa_mov.ExecSQL;

      end;

      if totboleto <> 0 then
      begin

        qrcaixa_mov.close;
        qrcaixa_mov.sql.clear;
        qrcaixa_mov.sql.add('insert into c000044');
        qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
        qrcaixa_mov.sql.add('values');
        qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

        qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
        qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
        qrcaixa_mov.parambyname('saida').asfloat := 0;
        qrcaixa_mov.parambyname('entrada').asfloat := 0;
        qrcaixa_mov.parambyname('valor').asfloat := totboleto;
        frmmodulo.qrconfig.open;
        qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
        qrcaixa_mov.parambyname('movimento').asINTEGER := 4; // venda BOLETO
        qrcaixa_mov.parambyname('historico').asstring := copy('Venda BOLETO No. ' + xproxvenda + ' - ' + qrcliente.fieldbyname('nome').asstring, 1, 60);

        qrcaixa_mov.ExecSQL;
      end;

    end;


    VITEM := 1;
    FRMMODULO.QRPRODUTO_MOV.OPEN;
    frmmodulo.qrproduto.open;
    //movimento de produto verificar se esta correto o estoque
    //Verificar se ja fio gerado venda simples e nao movimentar estoque

    if frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString = '' then
    begin
      frmOrcamento.qrorcamento_produto.First;
      while not frmOrcamento.qrorcamento_produto.Eof do
      begin
        vitem := vitem + 1;
        if frmmodulo.qrproduto.Locate('codigo', frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').AsString, [loCaseInsensitive]) then
        begin
          ibquery1.CLOSE;
          ibquery1.SQL.CLEAR;
          ibquery1.SQL.Add('insert into c000032');
          ibquery1.SQL.add('(codigo,codnota,numeronota,');
          ibquery1.SQL.add('codproduto,qtde,unitario,');
          ibquery1.SQL.add('total,desconto,acrescimo,unidade,aliquota,cst,');
          ibquery1.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
          ibquery1.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,');
          ibquery1.sql.add('serial,codgrade,movimento_estoque,pis,cofins,credito_icms,codsubgrupo,codbarra,cfop,produto)');
          ibquery1.SQL.add('values');
          ibquery1.SQL.add('(:xcodigo,:xcodnota,:xnumeronota,');
          ibquery1.SQL.add(':xcodproduto,:xqtde,:xunitario,');
          ibquery1.SQL.add(':xtotal,:xdesconto,:xacrescimo,:xunidade,:xaliquota,:xcst,');
          ibquery1.SQL.add(':xcupom_item,:xcupom_numero,:xcupom_modelo,');
          ibquery1.SQL.add(':xecf_serie,:xecf_caixa,:xcodcliente,:xcodvendedor,:xmovimento,:xdata,');
          ibquery1.sql.add(':xserial,:xcodgrade,:xmovimento_estoque,:xpis,:xcofins,:xcredito_icms,:xsubgrupo,:xcodbarra,:xcfop,:xproduto)');

          ibquery1.params.parambyname('xcodigo').AsString := frmprincipal.codifica('000032');
          ibquery1.params.parambyname('xcodnota').AsString := xproxvenda;
          ibquery1.params.parambyname('xnumeronota').AsString := frmOrcamento.DBEdit1.Text;
          ibquery1.params.parambyname('xcodproduto').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').asstring;
          ibquery1.params.parambyname('xqtde').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').asfloat;
          ibquery1.params.parambyname('xunitario').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('unitario').asfloat;
          ibquery1.params.parambyname('xtotal').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat;
          ibquery1.params.parambyname('xdesconto').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('desconto').asfloat;
          ibquery1.params.parambyname('xacrescimo').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('acrescimo').asfloat;
          ibquery1.params.parambyname('xunidade').asstring := frmmodulo.qrproduto.fieldbyname('UNIDADE').AsString;
          ibquery1.params.parambyname('xALIQUOTA').asFLOAT := frmmodulo.qrproduto.fieldbyname('aliquota').asFLOAT;
          ibquery1.params.parambyname('xCST').asSTRING := frmmodulo.qrproduto.fieldbyname('CST').asSTRING;
          ibquery1.params.parambyname('xcupom_item').asstring := FRMPRINCIPAL.zerarcodigo(IntToStr(VITEM), 3);
          ibquery1.params.parambyname('xcfop').asstring := '5403';
          ibquery1.params.parambyname('xcupom_numero').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
          ibquery1.params.parambyname('xcupom_modelo').asstring := '';
          ibquery1.params.parambyname('xSERIAL').Asstring := '';
          ibquery1.params.parambyname('xcodgrade').Asstring := '';
          ibquery1.params.parambyname('xmovimento_estoque').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').asfloat * (-1);
          ibquery1.params.parambyname('xcredito_icms').asfloat := 0;
          ibquery1.params.parambyname('xsubgrupo').asstring := frmmodulo.qrproduto.fieldbyname('codsubgrupo').asstring;
          ibquery1.params.parambyname('xcodbarra').asstring := frmmodulo.qrproduto.fieldbyname('CODBARRA').asstring;
          ibquery1.params.parambyname('xproduto').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('produto').asstring;
          if frmOrcamento.qrapoioPISCOFINS.AsString = 'S' then
          begin
            ibquery1.params.parambyname('xpis').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat * vpis / 100;
            ibquery1.params.parambyname('xcofins').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat * vcofins / 100;
          end
          else
          begin
            ibquery1.params.parambyname('xpis').asfloat := 0;
            ibquery1.params.parambyname('xcofins').asfloat := 0;
          end;

          if ecf_modelo <> '' then
          begin
            //ibquery1.params.parambyname('xecf_serie').asstring := frmprincipal.pstatus.Panels[11].Text;
            //ibquery1.params.parambyname('xecf_caixa').asstring := frmprincipal.pstatus.Panels[9].Text;
          end;
          ibquery1.params.parambyname('xcodcliente').AsString := frmOrcamento.ecliente.Text;
          ibquery1.params.parambyname('xcodvendedor').AsString := frmOrcamento.evendedor.Text;
          ibquery1.params.parambyname('xMOVIMENTO').AsInteger := 2;

            {CASE frmOrcamento.qrorcamento_produto.FieldByName('tipo').asinteger of
              0 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA
              1 : BEGIN
                    ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA SERIAL
                    ibquery1.params.parambyname('xSERIAL').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
                  END;
              2 : begin
                    ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA grade
                    ibquery1.params.parambyname('xcodgrade').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
                  end;

              7 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// devolucao de VENDA


              10 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA
              11 : BEGIN
                     ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA SERIAL
                    ibquery1.params.parambyname('xSERIAL').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
                   END;
              12 : begin
                    ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA grade
                     ibquery1.params.parambyname('xcodgrade').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
                   end;

              20 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA
              21 : BEGIN
                     ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA SERIAL
                    ibquery1.params.parambyname('xSERIAL').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
                   END;
             22 : begin
                    ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA grade
                     ibquery1.params.parambyname('xcodgrade').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
                  end;
            end;}
          ibquery1.params.parambyname('xdata').asdatetime := date;
          ibquery1.ExecSQL;
        end;
        frmOrcamento.qrorcamento_produto.next;
      end;
    end;

    //atualiza historico do cliente
    if frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString = '' then
    begin
      ibquery1.close;
      ibquery1.sql.clear;
      ibquery1.sql.add('update c000007 set data_ultimacompra = :data where codigo = ''' + frmOrcamento.ecliente.Text + '''');
      ibquery1.parambyname('data').Asdatetime := date;
      ibquery1.ExecSQL;
    end;

    if frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString = '' then
    begin

      // lancamento do contas a receber
      frmOrcamento.qrorcamento_contasreceber.Open;
      frmOrcamento.qrorcamento_contasreceber.First;
      parcela := 1;
      while not frmOrcamento.qrorcamento_contasreceber.eof do
      begin
        if totdinheiro <> 0 then
        begin
          ibquery1.close;
          ibquery1.SQL.clear;
          ibquery1.sql.add('insert into c000049');
          ibquery1.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
          ibquery1.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
          ibquery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom, email_enviado)');
          ibquery1.sql.add('values');
          ibquery1.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
          ibquery1.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
          ibquery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom, :email_enviado)');
          ibquery1.parambyname('codigo').asstring := xproxvenda;
          ibquery1.parambyname('codvenda').asstring := xproxvenda;
          ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
          ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
          ibquery1.parambyname('codcaixa').asstring := codcaixa;
          ibquery1.parambyname('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.AsDateTime;
          ibquery1.parambyname('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
          ibquery1.parambyname('valor_original').asfloat := totdinheiro;
          ibquery1.parambyname('valor_pago').asfloat := totdinheiro;
          ibquery1.parambyname('valor_atual').asfloat := 0;
          ibquery1.parambyname('documento').asstring := 'ENTRADA';
          ibquery1.parambyname('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
          ibquery1.parambyname('situacao').asinteger := 2;
          ibquery1.parambyname('filtro').asinteger := 0;
          ibquery1.parambyname('numero_cupom').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
          ibquery1.parambyname('email_enviado').asinteger := 0;
          ibquery1.ExecSQL;
        end;

        if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').asstring = 'CARTEIRA' then
        begin
          ibquery1.close;
          ibquery1.SQL.clear;
          ibquery1.sql.add('insert into c000049');
          ibquery1.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
          ibquery1.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
          ibquery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom, email_enviado)');
          ibquery1.sql.add('values');
          ibquery1.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
          ibquery1.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
          ibquery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom, :email_enviado)');

          ibquery1.parambyname('codigo').asstring := 'CR' + xproxvenda + '/' + frmprincipal.zerarcodigo(IntToStr(parcela), 2);
          ibquery1.parambyname('codvenda').asstring := xproxvenda;
          ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
          ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
          ibquery1.parambyname('codcaixa').asstring := codcaixa;
          ibquery1.parambyname('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.AsDateTime;
          ibquery1.parambyname('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
          ibquery1.parambyname('valor_original').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
          ibquery1.parambyname('valor_atual').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
          ibquery1.parambyname('documento').asstring := 'CR' + xproxvenda + '/' + frmprincipal.zerarcodigo(IntToStr(parcela), 2);
          ibquery1.parambyname('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
          ibquery1.parambyname('situacao').asinteger := 1;
          ibquery1.parambyname('filtro').asinteger := 0;
          ibquery1.parambyname('numero_cupom').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
          ibquery1.parambyname('email_enviado').asinteger := 0;
          ibquery1.ExecSQL;
          parcela := parcela + 1;
        end;

        if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').asstring = 'BOLETO BANCÁRIO' then
        begin
          ibquery1.close;
          ibquery1.SQL.clear;
          ibquery1.sql.add('insert into c000049');
          ibquery1.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
          ibquery1.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
          ibquery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom, email_enviado)');
          ibquery1.sql.add('values');
          ibquery1.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
          ibquery1.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
          ibquery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom, :email_enviado)');

          ibquery1.parambyname('codigo').asstring := 'BL' + xproxvenda + '/' + frmprincipal.zerarcodigo(IntToStr(parcela), 2);
          ibquery1.parambyname('codvenda').asstring := xproxvenda;
          ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
          ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
          ibquery1.parambyname('codcaixa').asstring := codcaixa;
          ibquery1.parambyname('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.AsDateTime;
          ibquery1.parambyname('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
          ibquery1.parambyname('valor_original').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
          ibquery1.parambyname('valor_atual').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
          ibquery1.parambyname('documento').asstring := 'BL' + xproxvenda + '/' + frmprincipal.zerarcodigo(IntToStr(parcela), 2);
          ibquery1.parambyname('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
          ibquery1.parambyname('situacao').asinteger := 1;
          ibquery1.parambyname('filtro').asinteger := 0;
          ibquery1.parambyname('numero_cupom').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
          ibquery1.parambyname('email_enviado').asinteger := 0;
          ibquery1.ExecSQL;
          parcela := parcela + 1;
        end;
        frmOrcamento.qrorcamento_contasreceber.next
      end;
    end;

    if totcheqap <> 0 then
    begin
      frmmodulo.qrconfig.open;
      if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
      begin
        CHEQUE_CODCLIENTE := frmOrcamento.ecliente.Text;
        CHEQUE_VENDA := xproxvenda;
        frmcheque_avulso := Tfrmcheque_avulso.CREATE(SELF);
        frmcheque_avulso.rsoma.Value := totcheqap;
        frmcheque_avulso.rdiferenca.Value := 0.00;
        frmcheque_avulso.SHOWMODAL;
      end;
    end;

    if totcheqap <> 0 then
    begin
      frmmodulo.qrconfig.open;
      if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
      begin
        CHEQUE_CODCLIENTE := frmOrcamento.ecliente.Text;
        CHEQUE_VENDA := xproxvenda;
        frmcheque_avulso := Tfrmcheque_avulso.CREATE(SELF);
        frmcheque_avulso.rsoma.Value := frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
        frmcheque_avulso.rdiferenca.Value := 0.00;
        frmcheque_avulso.SHOWMODAL;
      end;
    end;

    if totcartcred <> 0 then
    begin
      frmmodulo.qrconfig.open;
      if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CARTAO').asinteger = 1 then
      begin
      // cadastrar cartoes de credito
        frmCartao_ficha := tfrmCartao_ficha.create(self);
        frmCartao_ficha.rsoma.Value := totcartcred;
        frmCartao_ficha.rdiferenca.Value := 0.00;
        frmcartao_ficha.ed_venda.Text := xproxvenda;
        frmCartao_ficha.showmodal;
      end;
    end;

    if totcartdeb <> 0 then
    begin
      frmmodulo.qrconfig.open;
      if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CARTAO').asinteger = 1 then
      begin
      // cadastrar cartoes de credito
        frmCartao_ficha := tfrmCartao_ficha.create(self);
        frmCartao_ficha.rsoma.Value := totcartdeb;
        frmCartao_ficha.rdiferenca.Value := 0.00;
        frmcartao_ficha.ed_venda.Text := xproxvenda;
        frmCartao_ficha.showmodal;
      end;
    end;

    if frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString = '' then
    begin
      frmmodulo.qrorcamento.edit;
      frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString := xproxvenda;
      frmmodulo.qrorcamento.post;
    end;


    frmmodulo.Conexao.Commit;
  end;


end;

procedure Tfrmorcamento_impressao.TPBobinaClick(Sender: TObject);
var f, arquivo: textfile;
  TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7: string;
  i, a, parcela: integer;
  NNOTA, cfops, parcinvalida: INTEGER;

  vvalor_cfop1, vvalor_cfop2: double;
  vcfop1, vcfop2: string;
  cfop: string;
  linha, VITEM, processar: integer;
  BASE_CALCULO, ICMS, tn: real;
  desconto_nota: real;
  codcaixa: string;
  totdinheiro, totcheqav, totcheqap, totcartcred, totcartdeb, totcarteira, totboleto: Real;

begin

  if frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString <> '' then
  begin
    Application.messagebox('Já Foi Gerado Venda Para Esse Orçamento,Impossível gerar NF!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;


  if frmmodulo.qrorcamento.FieldByName('CODNF').AsString <> '' then
  begin
    Application.messagebox('Já Foi Emitido Uma Nota Fiscal Para Esse Orçamento!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;


  frmOrcamento.qrorcamento_contasreceber.sql.clear;
  frmOrcamento.qrorcamento_contasreceber.SQL.Add('select * from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
  frmOrcamento.qrorcamento_contasreceber.open;

  frmOrcamento.qrorcamento_contasreceber.open;
  frmOrcamento.qrorcamento_contasreceber.First;
  parcinvalida := 0;
  while not frmOrcamento.qrorcamento_contasreceber.Eof do
  begin
    if frmOrcamento.qrorcamento_contasreceberTIPO.AsString = '' then
    begin
      parcinvalida := parcinvalida + 1;
    end;
    frmOrcamento.qrorcamento_contasreceber.next;
  end;

  if frmOrcamento.qrorcamento_contasreceber.RecordCount = 0 then
  begin
    Application.messagebox(' Defina as Formas de Pagamento!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;

  if parcinvalida > 0 then
  begin
    Application.messagebox(Pchar('Existe ' + InttoStr(parcinvalida) + ' Formas de Pagamento Inválida!'), 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    //combotipo.SetFocus;
    exit;
  end;

  FRMMODULO.qrconfig.OPEN;
  if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 4 then
  begin
    if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
    begin
      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
      begin

      end
      else
      begin
        APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
        Exit;
      end;
    end
    else
    begin
      APPLICATION.MESSAGEBOX('Não autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
      Exit;
    end;
  end
  else
  begin
    if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
    begin
      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
      begin

      end
      else
      begin
        APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
        Exit;
      end;
    end
    else
    begin
      APPLICATION.MESSAGEBOX('Não autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
      Exit;
    end;
  end;

  codcaixa := frmmodulo.qrcaixa_operador.FieldByName('codigo').asstring;

  frmmodulo.qrconfig.Open;
  if FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'NORMAL' then
  begin

  // gera NF

    (* M O N T A R     D A D O S    P A R A     A   N O T A    F I S C A L *)

    desconto_nota := frmOrcamento.rsubtotal.Value - frmOrcamento.rtotal.Value;

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from c000007 where codigo = ''' + frmOrcamento.ecliente.Text + '''');
    qrcliente.open;

    vcfop1 := '';
    vcfop2 := '';

    qrnotafiscal.close;
    qrnotafiscal.sql.clear;
    qrnotafiscal.sql.add('select * from c000061');
    qrnotafiscal.open;

    qrnotafiscal.insert;
    qrnotafiscal.FieldByName('codfilial').asstring := '000001';
    qrnotafiscal.FieldByName('codigo').asstring := frmprincipal.codifica('000061');
    frmmodulo.qrfilial.open;
    frmmodulo.qrfilial.Locate('codigo', '000001', [loCaseInsensitive]);

    frmvenda_nf := tfrmvenda_nf.create(self);
    frmvenda_nf.Tag := 50;
    frmvenda_nf.enf.text := frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring, 6);
    frmvenda_nf.showmodal;

    qrnotafiscal.fieldbyname('numero').asstring := numero_notaz;
    qrnotafiscal.fieldbyname('data').asstring := DateToStr(Date);
    qrnotafiscal.fieldbyname('data_saida').asstring := DateToStr(Date);
    qrnotafiscal.fieldbyname('hora').asstring := timetostr(time);
    qrnotafiscal.fieldbyname('codcliente').asstring := frmOrcamento.ecliente.Text;

    qrnotafiscal.fieldbyname('valor_produtos').asfloat := frmOrcamento.rtotal.Value;
    qrnotafiscal.fieldbyname('total_nota').asfloat := frmOrcamento.rtotal.Value;



    qrnotafiscal.fieldbyname('desconto').asfloat := frmOrcamento.rsubtotal.Value - frmOrcamento.rtotal.Value;
    // modelo de nf
    qrnotafiscal.fieldbyname('situacao').asinteger := 1;
    qrnotafiscal.fieldbyname('situacao_A').ASSTRING := 'A';
    qrnotafiscal.fieldbyname('MODELO_NF').ASSTRING := '01';
    frmmodulo.qrfilial.open;
    qrnotafiscal.fieldbyname('SERIE_NF').ASSTRING := IntToStr(frmmodulo.qrFilial.FieldByName('CONHECIMENTO').AsInteger);
    qrnotafiscal.fieldbyname('SIT').ASSTRING := 'N';
    qrnotafiscal.FIELDBYNAME('MOVIMENTO').ASSTRING := 'S';
    QRNOTAFISCAL.FIELDBYNAME('BAIXA_ESTOQUE').ASSTRING := 'S';

    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.SQL.add('select * from c000062 where codnota = ''' + qrnotafiscal.fieldbyname('codigo').asstring + '''');
    qrnotafiscal_item.open;

    BASE_CALCULO := 0;
    ICMS := 0;

    tn := 0;

    qrnotafiscal.fieldbyname('INF1').asSTRING := '';
    qrnotafiscal.fieldbyname('INF2').asSTRING := '';
    qrnotafiscal.fieldbyname('INF3').asSTRING := '';
    texto1 := '';
    texto2 := '';
    texto3 := '';




    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.SQL.add('select * from c000062 where codnota = ''' + qrnotafiscal.fieldbyname('codigo').asstring + '''');
    qrnotafiscal_item.open;

    VENDA_VEICULO := False;
    if VENDA_VEICULO then
    begin
      QRNOTAFISCAL_ITEM.INSERT;
      QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING := qrnotafiscal.FIELDBYNAME('CODIGO').ASSTRING;
      QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := frmvenda.qrvenda_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
      QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT := frmvenda.qrvenda_produto.FIELDBYNAME('QTDE').ASFLOAT;
      QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := frmvenda.qrvenda_produto.FIELDBYNAME('total').ASFLOAT;






      QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT := FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT / FRMVENDA.qrvenda_produto.FIELDBYNAME('QTDE').ASFLOAT;
      if qrcliente.fieldbyname('uf').asstring = frmmodulo.qrFilial.fieldbyname('uf').asstring then
      begin
        vcfop1 := '5102';
        QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := '060';
        qrnotafiscal_item.fieldbyname('icms').asstring := '17';
        qrnotafiscal_item.fieldbyname('cfop').asstring := '5102';
      end
      else
      begin
        vcfop1 := '6102';
        QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := '060';
        qrnotafiscal_item.fieldbyname('icms').asstring := '17';
        qrnotafiscal_item.fieldbyname('cfop').asstring := '6102';
      end;
      texto1 := 'ISENTO DE ICMS CONF. SUB. TRIB. CONV. 52/93 E 88/94';
      TEXTO2 := FRMVENDA.EDIT1.TEXT;
      QRNOTAFISCAL_ITEM.POST;

      qrapoio.close;
      qrapoio.sql.clear;
      qrapoio.sql.add('delete from cl00004');
      qrapoio.execsql;
      qrapoio.close;
      qrapoio.sql.clear;
      qrapoio.sql.add('select * from cl00004 order by texto10');
      qrapoio.open;
      a := 1;

      for i := 0 to frmvenda.Memo1.Lines.Count - 1 do
      begin
        qrapoio.insert;
        if i = 0 then
          qrapoio.fieldbyname('codproduto').asstring := qrnotafiscal_item.fieldbyname('codproduto').asstring
        else
          qrapoio.fieldbyname('codproduto').asstring := '';
        qrapoio.fieldbyname('produto').asstring := FRMVENDA.Memo1.Lines[i];
        if i = (frmvenda.Memo1.Lines.Count - 1) then
        begin


          qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000', qrnotafiscal_item.fieldbyname('qtde').asfloat);
          qrapoio.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000', qrnotafiscal_item.fieldbyname('unitario').asfloat);
          qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);

          qrapoio.fieldbyname('cf').asstring := qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
          qrapoio.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname('cst').asstring;
          qrapoio.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname('unidade').asstring;
          qrapoio.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
          qrapoio.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname('ipi').asstring;
          qrapoio.fieldbyname('CLASSIFICACAO_FISCAL').asstring := qrnotafiscal_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring;
        end;
        qrapoio.fieldbyname('texto10').asstring := frmprincipal.zerarcodigo(inttostr(a), 6);
        a := a + 1;
        qrapoio.post;
      end;
      qrnotafiscal.FIELDBYNAME('BASE_CALCULO').ASFLOAT := BASE_CALCULO;
      qrnotafiscal.FIELDBYNAME('VALOR_ICMS').ASFLOAT := ICMS;
      qrnotafiscal.fieldbyname('cfop').asstring := vcfop1;
      qrnotafiscal.post;






    end
    else
    begin


      frmOrcamento.qrorcamento_produto.First;
      while not frmOrcamento.qrorcamento_produto.Eof do
      begin

        QRNOTAFISCAL_ITEM.INSERT;
        QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING := qrnotafiscal.FIELDBYNAME('CODIGO').ASSTRING;
        QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := frmOrcamento.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
        QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('QTDE').ASFLOAT;
        QRNOTAFISCAL_ITEM.FIELDBYNAME('desconto').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('desconto').ASFLOAT;
        QRNOTAFISCAL_ITEM.FIELDBYNAME('subtotal').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;
        QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('unitario').ASFLOAT;
        QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := frmOrcamento.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;
        if frmmodulo.qrproduto.LOCATE('CODIGO', frmOrcamento.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING, [loCaseInsensitive]) then
        begin
          QRNOTAFISCAL_ITEM.FIELDBYNAME('CLASSIFICACAO_FISCAL').AsString := frmmodulo.qrprodutoCLASSIFICACAO_FISCAL.AsString;
          QRNOTAFISCAL_ITEM.FIELDBYNAME('CSOSN').AsString := frmmodulo.qrprodutoCSOSN.AsString;
          QRNOTAFISCAL_ITEM.FIELDBYNAME('CODBARRA').AsString := frmmodulo.qrprodutoCODBARRA.AsString;
        end;



        if desconto_nota > 0 then
        begin
          QRNOTAFISCAL_ITEM.FIELDBYNAME('desconto').ASFLOAT := QRNOTAFISCAL_ITEM.FIELDBYNAME('desconto').ASFLOAT +

          (desconto_nota * (((QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT * 100) / frmOrcamento.rsubtotal.value) / 100));

          QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT * QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT - QRNOTAFISCAL_ITEM.FIELDBYNAME('desconto').ASFLOAT;
        end;

        if frmOrcamento.qrorcamento_produto.recordcount > 0 then
          if ZQuery1.Locate('codigo', frmOrcamento.qrorcamento_produto.fieldbyname('CODPRODUTO').AsString, [loCaseInsensitive]) then
          begin
            if qrcliente.fieldbyname('uf').asstring = frmmodulo.qrFilial.fieldbyname('uf').asstring then
            begin
              frmmodulo.qrconfig.open;
              vcfop2 := frmmodulo.qrconfig.FieldByName('IND_CFOP_DEVOLUCAO_DENTRO').AsString;
              QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := ZQuery1.fieldbyname('cst').asstring;
              qrnotafiscal_item.fieldbyname('icms').asstring := ZQuery1.fieldbyname('ALIQUOTA').asstring;
              qrnotafiscal_item.fieldbyname('cfop').asstring := ZQuery1.FieldByName('IND_CFOP').AsString;
            end
            else
            begin
              frmmodulo.qrconfig.open;
              vcfop2 := frmmodulo.qrconfig.FieldByName('IND_CFOP_DEVOLUCAO_FORA').AsString;
              QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := ZQuery1.fieldbyname('cst').asstring;
              qrnotafiscal_item.fieldbyname('icms').asstring := ZQuery1.fieldbyname('ALIQUOTA').asstring;
              qrnotafiscal_item.fieldbyname('cfop').asstring := ZQuery1.FieldByName('IND_CFOP').AsString;
            end;
            texto1 := 'DOCUMENTO EMITIDO POR ME OU EPP';
            TEXTO2 := 'OPTANTE PELO SIMPLES NACIOMAL';
            texto3 := 'NAO GERA DIREITO A CREDITO FISCAL DE ICMS , DE ISS E DE IPI';
          end;

        tn := tn + QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT;
        QRNOTAFISCAL_ITEM.POST;
        frmOrcamento.qrorcamento_produto.NEXT;
      end;
      if vcfop1 = '' then
      begin
        vcfop1 := vcfop2;
        vcfop2 := '';
      end;




      qrnotafiscal.FIELDBYNAME('BASE_CALCULO').ASFLOAT := BASE_CALCULO;
      qrnotafiscal.FIELDBYNAME('VALOR_ICMS').ASFLOAT := ICMS;

      qrnotafiscal.fieldbyname('cfop').asstring := vcfop1;

      qrnotafiscal.post;



      qrapoio.close;
      qrapoio.sql.clear;
      qrapoio.sql.add('delete from cl00004');
      qrapoio.execsql;
      qrapoio.close;
      qrapoio.sql.clear;
      qrapoio.sql.add('select * from cl00004 order by texto10');
      qrapoio.open;

      I := 1;
      QRNOTAFISCAL_ITEM.FIRST;
      while not QRNOTAFISCAL_ITEM.EOF do
      begin
        qrapoio.insert;
        qrapoio.fieldbyname('codproduto').asstring := qrnotafiscal_item.fieldbyname('codproduto').asstring;
        qrapoio.fieldbyname('produto').asstring := qrnotafiscal_item.fieldbyname('produto').asstring;
        if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000', qrnotafiscal_item.fieldbyname('qtde').asfloat);
        if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then qrapoio.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000', qrnotafiscal_item.fieldbyname('unitario').asfloat);

        if desconto_nota > 0 then
        begin
          if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then
          begin
            qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('subtotal').asfloat);
            qrapoio.FieldByName('unitario').AsString := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('subtotal').asfloat);
          end
          else
            if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then
              qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);
        end
        else
        begin
          qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);
        end;



        qrapoio.fieldbyname('CF').asstring := qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
        qrapoio.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname('cst').asstring;
        qrapoio.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname('unidade').asstring;
        qrapoio.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
        qrapoio.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname('ipi').asstring;
        qrapoio.fieldbyname('texto8').asstring := qrnotafiscal_item.fieldbyname('cfop').asstring;
        qrapoio.fieldbyname('texto7').asstring := qrnotafiscal_item.fieldbyname('codgrade').asstring;
        QRAPOIO.FIELDBYNAME('TEXTO10').ASSTRING := FRMPRINCIPAL.zerarcodigo(INTTOSTR(I), 6);
        qrapoio.post;
        I := I + 1;

        QRNOTAFISCAL_ITEM.NEXT;
      end;

              {IF qrvenda.FIELDBYNAME('DESCONTO').ASFLOAT > 0 THEN
                BEGIN
                 qrapoio.insert;
                  qrapoio.fieldbyname('codproduto').asstring :=    '';
                  qrapoio.fieldbyname('produto').asstring :=       'D E S C O N T O ';
                   qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00',QRvenda.FIELDBYNAME('DESCONTO').ASFLOAT);
                 QRAPOIO.FIELDBYNAME('TEXTO10').ASSTRING := FRMPRINCIPAL.zerarcodigo(INTTOSTR(I),6);
                 qrapoio.post;
                   I := I + 1;

                END; }





    end;



    QRAPOIO.REFRESH;

    begin




      if VCFOP1 <> '' then
      begin
        frmmodulo.qrcfop.close;
        frmmodulo.qrCFOP.sql.Clear;
        frmmodulo.qrcfop.sql.add('select * from c000030 where cfop = ''' + vcfop1 + '''');
        frmmodulo.qrcfop.open;

      end;

      if VCFOP2 <> '' then
      begin
        frmmodulo.qrcfop.close;
        frmmodulo.qrCFOP.sql.Clear;
        frmmodulo.qrcfop.sql.add('select * from c000030 where cfop = ''' + vcfop2 + '''');
        frmmodulo.qrcfop.open;

      end;




    //datas e valores das faturas




      frmnf_obs := tfrmnf_obs.create(self);
      frmnf_obs.edit1.text := texto1;
      frmnf_obs.edit2.text := texto2;
      frmnf_obs.edit3.text := texto3;
      frmnf_obs.showmodal;






    end;

    //gera o proximo numero da nf
    frmmodulo.qrfilial.edit;
    frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger := frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
    frmmodulo.qrfilial.post;

    // grava numero nf no orcamento
    frmmodulo.qrorcamento.edit;
    frmmodulo.qrorcamento.FieldByName('CODNF').AsString := numero_notaz;
    frmmodulo.qrorcamento.post;

    // finaliza venda

    frmmodulo.qrorcamento.edit;
    frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString := frmprincipal.codifica('000048');
    frmmodulo.qrorcamento.post;



     // lancamento da venda  (notas de venda)
    begin
      ibquery1.close;
      ibquery1.SQL.clear;
      ibquery1.sql.add('insert into c000048');
      ibquery1.sql.add('(codigo,data,codcliente,codvendedor,codcaixa,');
      ibquery1.sql.add(' total,subtotal,meio_dinheiro,meio_chequeav,meio_chequeap,');
      ibquery1.sql.add(' meio_cartaocred,meio_cartaodeb,meio_crediario,meio_convenio,meio_financeira,');
      ibquery1.sql.add(' desconto,acrescimo,obs,NUMERO_CUPOM_FISCAL,cupom_fiscal,retirado,cod_financeira,cod_financeira_lancto,nrvenda)');
      ibquery1.sql.add('values');
      ibquery1.sql.add('(:codigo,:data,:codcliente,:codvendedor,:codcaixa,');
      ibquery1.sql.add(' :total,:subtotal,:meio_dinheiro,:meio_chequeav,:meio_chequeap,');
      ibquery1.sql.add(' :meio_cartaocred,:meio_cartaodeb,:meio_crediario,:meio_convenio,:meio_financeira,');
      ibquery1.sql.add(' :desconto,:acrescimo,:obs,:NUMERO_CUPOM_FISCAL,:cupom_fiscal,:retirado,:cod_financeira,:cod_financeira_lancto,:nrvenda)');

      ibquery1.parambyname('codigo').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
      ibquery1.parambyname('data').asdatetime := date;
      ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
      ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
      ibquery1.parambyname('codcaixa').asstring := codcaixa;
      ibquery1.parambyname('TOTAL').asfloat := frmOrcamento.rtotal.value;
      ibquery1.parambyname('SUBTOTAL').asfloat := frmOrcamento.rsubtotal.value;
      ibquery1.parambyname('meio_dinheiro').asfloat := totdinheiro;
      ibquery1.parambyname('meio_chequeav').asfloat := totcheqav;
      ibquery1.parambyname('meio_chequeap').asfloat := totcheqap;
      ibquery1.parambyname('meio_cartaocred').asfloat := totcartcred;
      ibquery1.parambyname('meio_cartaodeb').asfloat := totcartdeb;
      ibquery1.parambyname('meio_crediario').asfloat := totcarteira + totboleto;
      ibquery1.parambyname('meio_convenio').AsFloat := 0;
      ibquery1.parambyname('meio_financeira').AsFloat := 0;
      ibquery1.parambyname('nrvenda').AsString := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
      ibquery1.parambyname('desconto').asfloat := frmOrcamento.rdesconto.Value;
      ibquery1.parambyname('acrescimo').asfloat := frmOrcamento.racrescimo.Value;
      ibquery1.parambyname('OBS').asstring := '';
      ibquery1.parambyname('COD_FINANCEIRA').asstring := '';
      ibquery1.parambyname('COD_FINANCEIRA_LANCTO').asstring := '';
      ibquery1.parambyname('NUMERO_CUPOM_FISCAL').ASSTRING := numero_notaz;
      //esqueci onde configuro para funcionar
      if numero_cupomx <> '' then ibquery1.parambyname('cupom_fiscal').asinteger := 1
      else ibquery1.parambyname('cupom_fiscal').asinteger := 0;

      ibquery1.execsql;


    end;

     //movimento de produto verificar se esta correto o estoque
    VITEM := 1;
    FRMMODULO.QRPRODUTO_MOV.OPEN;
    frmOrcamento.qrorcamento_produto.First;
    while not frmOrcamento.qrorcamento_produto.Eof do
    begin
      if frmOrcamento.qrapoio.Locate('codigo', frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').AsString, [loCaseInsensitive]) then
      begin
        ibquery1.CLOSE;
        ibquery1.SQL.CLEAR;
        ibquery1.SQL.Add('insert into c000032');
        ibquery1.SQL.add('(codigo,codnota,numeronota,');
        ibquery1.SQL.add('codproduto,qtde,unitario,');
        ibquery1.SQL.add('total,desconto,acrescimo,unidade,aliquota,cst,');
        ibquery1.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
        ibquery1.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,');
        ibquery1.sql.add('serial,codgrade,movimento_estoque,pis,cofins,credito_icms,codsubgrupo,codbarra,cfop)');
        ibquery1.SQL.add('values');
        ibquery1.SQL.add('(:xcodigo,:xcodnota,:xnumeronota,');
        ibquery1.SQL.add(':xcodproduto,:xqtde,:xunitario,');
        ibquery1.SQL.add(':xtotal,:xdesconto,:xacrescimo,:xunidade,:xaliquota,:xcst,');
        ibquery1.SQL.add(':xcupom_item,:xcupom_numero,:xcupom_modelo,');
        ibquery1.SQL.add(':xecf_serie,:xecf_caixa,:xcodcliente,:xcodvendedor,:xmovimento,:xdata,');
        ibquery1.sql.add(':xserial,:xcodgrade,:xmovimento_estoque,:xpis,:xcofins,:xcredito_icms,:xsubgrupo,:xcodbarra,:xcfop)');

        ibquery1.params.parambyname('xcodigo').AsString := frmprincipal.codifica('000032');
        ibquery1.params.parambyname('xcodnota').AsString := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
        ibquery1.params.parambyname('xnumeronota').AsString := frmOrcamento.DBEdit1.Text;
        ibquery1.params.parambyname('xcodproduto').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').asstring;
        ibquery1.params.parambyname('xqtde').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').asfloat;
        ibquery1.params.parambyname('xunitario').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('unitario').asfloat;
        ibquery1.params.parambyname('xtotal').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat;
        ibquery1.params.parambyname('xdesconto').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('desconto').asfloat;
        ibquery1.params.parambyname('xacrescimo').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('acrescimo').asfloat;
        ibquery1.params.parambyname('xunidade').asstring := frmOrcamento.qrapoio.fieldbyname('UNIDADE').AsString;
        ibquery1.params.parambyname('xALIQUOTA').asFLOAT := frmOrcamento.qrapoio.fieldbyname('aliquota').asFLOAT;
        ibquery1.params.parambyname('xCST').asSTRING := frmOrcamento.qrapoio.fieldbyname('CST').asSTRING;
        ibquery1.params.parambyname('xcupom_item').asstring := FRMPRINCIPAL.zerarcodigo(IntToStr(VITEM), 3);
        ibquery1.params.parambyname('xcfop').asstring := '5403';
        ibquery1.params.parambyname('xcupom_numero').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
        ibquery1.params.parambyname('xcupom_modelo').asstring := 'NF';
        ibquery1.params.parambyname('xSERIAL').Asstring := '';
        ibquery1.params.parambyname('xcodgrade').Asstring := '';
        ibquery1.params.parambyname('xmovimento_estoque').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').asfloat * (-1);
        ibquery1.params.parambyname('xcredito_icms').asfloat := 0;
        ibquery1.params.parambyname('xsubgrupo').asstring := frmOrcamento.qrapoio.fieldbyname('codsubgrupo').asstring;
        ibquery1.params.parambyname('xcodbarra').asstring := frmOrcamento.qrapoio.fieldbyname('CODBARRA').asstring;

        if frmOrcamento.qrapoioPISCOFINS.AsString = 'S' then
        begin
          ibquery1.params.parambyname('xpis').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat * vpis / 100;
          ibquery1.params.parambyname('xcofins').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat * vcofins / 100;
        end
        else
        begin
          ibquery1.params.parambyname('xpis').asfloat := 0;
          ibquery1.params.parambyname('xcofins').asfloat := 0;
        end;

        if ecf_modelo <> '' then
        begin
//          ibquery1.params.parambyname('xecf_serie').asstring := frmprincipal.pstatus.Panels[11].Text;
  //        ibquery1.params.parambyname('xecf_caixa').asstring := frmprincipal.pstatus.Panels[9].Text;
        end;
        ibquery1.params.parambyname('xcodcliente').AsString := frmOrcamento.ecliente.Text;
        ibquery1.params.parambyname('xcodvendedor').AsString := frmOrcamento.evendedor.Text;
        ibquery1.params.parambyname('xMOVIMENTO').AsInteger := 2;
           { CASE frmOrcamento.qrorcamento_produto.FieldByName('tipo').asinteger of
              0 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA
              1 : BEGIN
                    ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA SERIAL
                    ibquery1.params.parambyname('xSERIAL').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
                  END;
              2 : begin
                    ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA grade
                    ibquery1.params.parambyname('xcodgrade').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
                  end;

              7 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// devolucao de VENDA


              10 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA
              11 : BEGIN
                     ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA SERIAL
                    ibquery1.params.parambyname('xSERIAL').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
                   END;
              12 : begin
                    ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA grade
                     ibquery1.params.parambyname('xcodgrade').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
                   end;

              20 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA
              21 : BEGIN
                     ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA SERIAL
                    ibquery1.params.parambyname('xSERIAL').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
                   END;
             22 : begin
                    ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA grade
                     ibquery1.params.parambyname('xcodgrade').Asstring    := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
                  end;
            end;}
        ibquery1.params.parambyname('xdata').asdatetime := date;
        ibquery1.ExecSQL;
        frmOrcamento.qrorcamento_produto.next;
        vitem := vitem + 1;
      end
    end;

  end;

end;

procedure Tfrmorcamento_impressao.tpa4logoClick(Sender: TObject);
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;
  if frmOrcamento.qrorcamento_produto.RecordCount > 28 then
    frmmodulo.qrrelatorio.FieldByName('linha8').asstring := '2'
  else
    frmmodulo.qrrelatorio.FieldByName('linha8').asstring := '1';
  frmmodulo.qrrelatorio.post;
  fxorcamento.LoadFromFile('\OneMaker\server\rel\f000069.fr3');
  fxorcamento.ShowReport;

end;

procedure Tfrmorcamento_impressao.tpa4Click(Sender: TObject);
var arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  subir_papel, conta_formas: integer;
  dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario: real;
  prestacao: integer;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20



  frmmodulo.qrconfig.open;
  subir_papel := frmmodulo.qrconfig.fieldbyname('bobina_subirpapel').asinteger;
  impressora_venda := frmmodulo.qrconfig.fieldbyname('VENDA_PORTA_IMPRESSORA').AsString;

  assignfile(arquivo, impressora_venda);
  rewrite(arquivo);
  writeln(arquivo, #18 + #27#71 + #20, frmprincipal.Texto_Justifica(emitente_fantasia, 52, ' ', 'C'));
  writeln(arquivo, #15 + #27#72 + #20, frmprincipal.Texto_Justifica(emitente_endereco, 52, ' ', 'C'));
  writeln(arquivo, #15 + #27#72 + #20, frmprincipal.Texto_Justifica(emitente_cidade + ' - CEP ' + emitente_cep, 52, ' ', 'C'));
  writeln(arquivo, #15 + #27#72 + #20, frmprincipal.Texto_Justifica('Telefone: ' + emitente_telefone, 52, ' ', 'C'));
  writeln(arquivo, #15 + #27#72 + #20, '------------------------------------------------');
  writeln(arquivo, #15 + #27#72 + #20, 'No. ' + frmprincipal.Texto_Justifica(frmmodulo.QRORCAMENTO.fieldbyname('codigo').asstring, 6, '0', 'E') +
    '  Emis: ' + frmprincipal.Texto_Justifica(frmmodulo.QRORCAMENTO.fieldbyname('data').asstring, 10, ' ', 'E') +
    ' ' + frmprincipal.Texto_Justifica(timetostr(time), 5, ' ', 'E') +
    '  Vd: ' + frmprincipal.Texto_Justifica(frmmodulo.QRORCAMENTO.fieldbyname('vendedor').asstring, 11, ' ', 'D'));
  writeln(arquivo, #18 + #27#72 + #14, '    O R C A M E N T O');

   // informacoes do cliente  implantar na tela de configurações
   //if frmconfig.CheckBox_ImprimeDadosCLiente.Checked then
  begin
    writeln(arquivo, #15 + #27#72 + #20, '------------------------------------------------');
    writeln(arquivo, #15 + #27#72 + #20, 'Cliente...: ' + frmprincipal.Texto_Justifica(CLIENTE_CODIGO, 6, '0', 'E') + ' ' + frmprincipal.Texto_Justifica(CLIENTE_nome, 32, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, 'Endereco..: ' + frmprincipal.Texto_Justifica(CLIENTE_endereco + ' ' + CLIENTE_bairro, 39, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, 'Cid/UF/CEP: ' + frmprincipal.Texto_Justifica(CLIENTE_cidade + '/' + CLIENTE_uf + '  ' + CLIENTE_cep, 39, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, 'Tefones...: ' + frmprincipal.Texto_Justifica(CLIENTE_telefone, 39, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, 'CPF/CNPJ..: ' + frmprincipal.Texto_Justifica(CLIENTE_cpf, 39, ' ', 'D'));
    writeln(arquivo, #15 + #27#72 + #20, 'RG/IE.....: ' + frmprincipal.Texto_Justifica(CLIENTE_rg, 39, ' ', 'D'));
  end;

  writeln(arquivo, #15 + #27#72 + #20, '------------------------------------------------');
  writeln(arquivo, #15 + #27#72 + #20, 'P R O D U T O   QTDE.  X  UNITARIO  =  VLR.TOTAL');
  writeln(arquivo, #15 + #27#72 + #20, '------------------------------------------------');

  frmorcamento.qrorcamento_produto.first;
  while not frmorcamento.qrorcamento_produto.eof do
  begin
    texto1 := '';
     {Cod Produto + Nome}
    writeln(arquivo, #15 + #27#72 + #20,
      frmprincipal.Texto_Justifica(frmorcamento.qrorcamento_produto.fieldbyname('codproduto').asstring, 6, '0', 'E') + ' ' +
      frmprincipal.Texto_Justifica(frmorcamento.qrorcamento_produto.fieldbyname('produto').asstring, 40, ' ', 'D') + ' ' + texto1);

     {QTD x Vl.Unit = Vl.Total}
    writeln(arquivo, #15 + #27#72 + #20, '       ' +
      frmprincipal.Texto_Justifica(formatfloat(mascara_qtde, frmorcamento.qrorcamento_produto.fieldbyname('qtde').asfloat), 10, ' ', 'E') + ' ' +
      frmprincipal.Texto_Justifica(frmorcamento.qrorcamento_produto.fieldbyname('unidade').asstring, 2, ' ', 'D') + '   X ' +
      frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmorcamento.qrorcamento_produto.fieldbyname('unitario').asfloat), 08, ' ', 'E') + '  = ' +
      frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmorcamento.qrorcamento_produto.fieldbyname('total').asfloat), 11, ' ', 'E'));
    frmorcamento.qrorcamento_produto.Next;
  end;

  writeln(arquivo, #15 + #27#72 + #20, '------------------------------------------------');
  writeln(arquivo, #15 + #27#72 + #20, 'OBSERVACOES             | SUBTOTAL  |' + frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmmodulo.QRORCAMENTO.fieldbyname('subtotal').asfloat), 11, ' ', 'E'));
  writeln(arquivo, #15 + #27#72 + #20, frmprincipal.Texto_Justifica(FRMMODULO.QRORCAMENTO.FIELDBYNAME('OBS1').ASSTRING, 24, ' ', 'D') + '| DESCONTO  |' + frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmmodulo.QRORCAMENTO.fieldbyname('desconto').asfloat), 11, ' ', 'E'));
  writeln(arquivo, #15 + #27#72 + #20, frmprincipal.Texto_Justifica(FRMMODULO.QRORCAMENTO.FIELDBYNAME('OBS2').ASSTRING, 24, ' ', 'D') + '| ACRESCIMO |' + frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmmodulo.QRORCAMENTO.fieldbyname('acrescimo').asfloat), 11, ' ', 'E'));
  writeln(arquivo, #15 + #27#72 + #20, frmprincipal.Texto_Justifica(FRMMODULO.QRORCAMENTO.FIELDBYNAME('OBS3').ASSTRING, 24, ' ', 'D') + '|----------------------');
  writeln(arquivo, #15 + #27#72 + #20, frmprincipal.Texto_Justifica(FRMMODULO.QRORCAMENTO.FIELDBYNAME('OBS4').ASSTRING, 24, ' ', 'D') + '| T O T A L |' + frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmmodulo.QRORCAMENTO.fieldbyname('total').asfloat), 11, ' ', 'E'));
  Writeln(arquivo, #15 + #27#72 + #20, '------------------------------------------------');
  Writeln(arquivo, #15 + #27#72 + #20, '                COND. DE PAGAMENTO              ');
  Writeln(arquivo, #15 + #27#72 + #20, '------------------------------------------------');
  Writeln(arquivo, #15 + #27#72 + #20, 'No.  Vencimento          Tipo           Valor-R$');
  Writeln(arquivo, #15 + #27#72 + #20, '------------------------------------------------');
  frmorcamento.qrorcamento_contasreceber.First;
  prestacao := 1;
  while not frmorcamento.qrorcamento_contasreceber.eof do
  begin
    writeln(arquivo, #15 + #27#72 + #20, frmprincipal.Texto_Justifica(inttostr(prestacao), 3, '0', 'E') + '  ' +
      frmprincipal.Texto_Justifica(frmorcamento.qrorcamento_contasreceber.fieldbyname('vencimento').asstring, 10, ' ', 'D') + '   ' +
      frmprincipal.Texto_Justifica('', 06, ' ', 'D') + ' ' +
      frmprincipal.Texto_Justifica(frmorcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring, 11, ' ', 'D') + ' ' +
      frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmorcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat), 11, ' ', 'E'));


    prestacao := prestacao + 1;
    frmorcamento.qrorcamento_contasreceber.next;
  end;




  Writeln(arquivo, #15 + #27#72 + #20, '------------------------------------------------');
  Writeln(arquivo, #15 + #27#72 + #20, '');
  Writeln(arquivo, #15 + #27#72 + #20, '');
  Writeln(arquivo, #15 + #27#72 + #20, '');
  Writeln(arquivo, #15 + #27#72 + #20, '         ------------------------------------   ');
  WRiteln(arquivo, #15 + #27#72 + #20, '                      Assinatura');

  while subir_papel <> 0 do
  begin
    Writeln(arquivo, #15 + #27#72 + #20, '');
    subir_papel := subir_papel - 1;
  end;


  closefile(arquivo);

end;

procedure Tfrmorcamento_impressao.tprazaoClick(Sender: TObject);
var arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  conta_formas, I, VIAS: integer;
  dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario: real;
  prestacao: integer;

  formapgto, v1, v2: string;
  y: integer;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// impressao 12 cpi     --> #27#77
// impressao 10 cpi     --> #27#80



  assignfile(arquivo, impressora_venda);
  rewrite(arquivo);

  VIAS := EVIAS.intValue;


  while VIAS <> 0 do
  begin




    writeln(arquivo, #27#77 + #15 + #27#71 + #14, frmprincipal.Texto_Justifica(emitente_fantasia, 15, ' ', 'D') + #27#77 + #18 + #27#72 + #20 + ' ' + frmprincipal.Texto_Justifica(emitente_telefone, 13, ' ', 'D') +
      #27#77 + #18 + #27#72 + #20 + ' ORCAMENTO: ' + #27#77 + #18 + #27#71 + #20 + frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('codigo').asstring, 6, '0', 'E') +
      #27#77 + #18 + #27#72 + #20 + '  DATA: ' + frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('data').asstring, 10, ' ', 'E') + ' ' + frmprincipal.Texto_Justifica(timetostr(time), 5, ' ', 'E') +
      ' VD: ' + frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('vendedor').asstring, 16, ' ', 'D'));
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'Cliente...: ' + #27#77 + #15 + #27#71 + #14 + frmprincipal.Texto_Justifica(CLIENTE_CODIGO, 6, '0', 'E') + ' ' + frmprincipal.Texto_Justifica(CLIENTE_nome, 32, ' ', 'D'));
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'Endereco..: ' + frmprincipal.Texto_Justifica(CLIENTE_endereco + ' ' + CLIENTE_bairro, 39, ' ', 'D') + '  ' + frmprincipal.Texto_Justifica(CLIENTE_cidade + '/' + CLIENTE_uf + '  CEP: ' + CLIENTE_cep, 39, ' ', 'D'));
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'Telefones.: ' + frmprincipal.Texto_Justifica(CLIENTE_telefone, 20, ' ', 'D') + ' CPF/CNPJ: ' + frmprincipal.Texto_Justifica(CLIENTE_cpf, 25, ' ', 'D') + 'RG/IE: ' + frmprincipal.Texto_Justifica(CLIENTE_rg, 20, ' ', 'D'));
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'CODIGO PRODUTO                                               QTDE UN  X   UNITARIO =    TOTAL-R$');
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
    I := 0;
    frmorcamento.qrorcamento_produto.first;
    while not frmorcamento.qrorcamento_produto.eof do
    begin
      texto1 := '';

      writeln(arquivo, #27#77 + #18 + #27#72 + #20, frmprincipal.Texto_Justifica(frmorcamento.qrorcamento_produto.fieldbyname('codproduto').asstring, 6, '0', 'E') + ' ' +
        frmprincipal.Texto_Justifica(frmorcamento.qrorcamento_produto.fieldbyname('produto').asstring, 45 - length(texto1), ' ', 'D') + ' ' + texto1 + ' ' +
        frmprincipal.Texto_Justifica(formatfloat(mascara_qtde, frmorcamento.qrorcamento_produto.fieldbyname('qtde').asfloat), 11, ' ', 'E') + ' ' +
        frmprincipal.Texto_Justifica(frmorcamento.qrorcamento_produto.fieldbyname('unidade').asstring, 2, ' ', 'D') +
        '  X ' + frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmorcamento.qrorcamento_produto.fieldbyname('unitario').asfloat), 10, ' ', 'E') + ' =  ' +
        frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmorcamento.qrorcamento_produto.fieldbyname('total').asfloat), 10, ' ', 'E'));
      frmorcamento.qrorcamento_produto.Next;
      I := I + 1;
      if i = 16 then
      begin
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, '                                                            **** Continua na proxima pagina ****');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, #27#77 + #15 + #27#71 + #14, frmprincipal.Texto_Justifica(emitente_fantasia, 15, ' ', 'D') + #27#77 + #18 + #27#72 + #20 + ' ' + frmprincipal.Texto_Justifica(emitente_telefone, 13, ' ', 'D') +
          #27#77 + #18 + #27#72 + #20 + ' ORCAMENTO: ' + #27#77 + #18 + #27#71 + #20 + frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('codigo').asstring, 6, '0', 'E') +
          #27#77 + #18 + #27#72 + #20 + '  DATA: ' + frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('data').asstring, 10, ' ', 'E') + ' ' + frmprincipal.Texto_Justifica(timetostr(time), 5, ' ', 'E') +
          ' VD: ' + frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('vendedor').asstring, 16, ' ', 'D'));
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'Cliente...: ' + #27#77 + #15 + #27#71 + #14 + frmprincipal.Texto_Justifica(CLIENTE_CODIGO, 6, '0', 'E') + ' ' + frmprincipal.Texto_Justifica(CLIENTE_nome, 32, ' ', 'D'));
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'Endereco..: ' + frmprincipal.Texto_Justifica(CLIENTE_endereco + ' ' + CLIENTE_bairro, 39, ' ', 'D') + '  ' + frmprincipal.Texto_Justifica(CLIENTE_cidade + '/' + CLIENTE_uf + '  CEP: ' + CLIENTE_cep, 39, ' ', 'D'));
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'Telefones.: ' + frmprincipal.Texto_Justifica(CLIENTE_telefone, 20, ' ', 'D') + ' CPF/CNPJ: ' + frmprincipal.Texto_Justifica(CLIENTE_cpf, 25, ' ', 'D') + 'RG/IE: ' + frmprincipal.Texto_Justifica(CLIENTE_rg, 20, ' ', 'D'));
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'CODIGO PRODUTO                                               QTDE UN  X   UNITARIO =    TOTAL-R$');
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
        I := 0;
      end;


    end;
    while I <> 16 do
    begin
      WRITELN(ARQUIVO, '');
      I := I + 1;
    end;
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'SUBTOTAL: ' + frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat), 10, ' ', 'E') +
      '      DESCONTO: ' + frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmmodulo.qrorcamento.fieldbyname('desconto').asfloat), 10, ' ', 'E') +
      '     ACRESCIMO: ' + frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat), 10, ' ', 'E') +
      '      TOTAL: ' + frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmmodulo.qrorcamento.fieldbyname('total').asfloat), 10, ' ', 'E'));

    writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
    formapgto := 'COND. DE PAGAMENTO: ';

    y := 0;
    v1 := '';
    v2 := '';


    frmorcamento.qrorcamento_contasreceber.Open;
    frmorcamento.qrorcamento_contasreceber.first;
    while not frmorcamento.qrorcamento_contasreceber.Eof do
    begin
      if y > 5 then
      begin
        v2 := v2 + frmorcamento.qrorcamento_contasreceber.fieldbyname('vencimento').asstring + ' -> ' + formatfloat(mascara_valor, frmorcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat) + ' | ';
      end
      else
      begin
        v1 := v1 + frmorcamento.qrorcamento_contasreceber.fieldbyname('vencimento').asstring + ' -> ' + formatfloat(mascara_valor, frmorcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat) + ' | ';
        y := y + 1;
      end;
      frmorcamento.qrorcamento_contasreceber.next;
    end;
    writeln(arquivo, #27#77 + #15#27#72 + #20, frmprincipal.Texto_Justifica(FORMAPGTO, 25, ' ', 'D') + '  ' + V1);
    writeln(arquivo, '');
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, '                                                               ----------- Assinatura ----------');

    VIAS := VIAS - 1;
    writeln(arquivo, '');
    writeln(arquivo, '');
    writeln(arquivo, '');

  end;




  closefile(arquivo);

end;

procedure Tfrmorcamento_impressao.tpcartaClick(Sender: TObject);
var arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  conta_formas, I, VIAS: integer;
  dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario: real;
  prestacao: integer;

  formapgto, v1, v2: string;
  y: integer;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// impressao 12 cpi     --> #27#77
// impressao 10 cpi     --> #27#80



  assignfile(arquivo, impressora_venda);
  rewrite(arquivo);

  VIAS := EVIAS.intValue;


  while VIAS <> 0 do
  begin




    writeln(arquivo, #27#77 + #15 + #27#71 + #14, frmprincipal.Texto_Justifica(emitente_fantasia, 15, ' ', 'D') + #27#77 + #18 + #27#72 + #20 + ' ' + frmprincipal.Texto_Justifica(emitente_telefone, 13, ' ', 'D') +
      #27#77 + #18 + #27#72 + #20 + ' ORCAMENTO: ' + #27#77 + #18 + #27#71 + #20 + frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('codigo').asstring, 6, '0', 'E') +
      #27#77 + #18 + #27#72 + #20 + '  DATA: ' + frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('data').asstring, 10, ' ', 'E') + ' ' + frmprincipal.Texto_Justifica(timetostr(time), 5, ' ', 'E') +
      ' VD: ' + frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('vendedor').asstring, 16, ' ', 'D'));
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'Cliente...: ' + #27#77 + #15 + #27#71 + #14 + frmprincipal.Texto_Justifica(CLIENTE_CODIGO, 6, '0', 'E') + ' ' + frmprincipal.Texto_Justifica(CLIENTE_nome, 32, ' ', 'D'));
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'Endereco..: ' + frmprincipal.Texto_Justifica(CLIENTE_endereco + ' ' + CLIENTE_bairro, 39, ' ', 'D') + '  ' + frmprincipal.Texto_Justifica(CLIENTE_cidade + '/' + CLIENTE_uf + '  CEP: ' + CLIENTE_cep, 39, ' ', 'D'));
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'Telefones.: ' + frmprincipal.Texto_Justifica(CLIENTE_telefone, 20, ' ', 'D') + ' CPF/CNPJ: ' + frmprincipal.Texto_Justifica(CLIENTE_cpf, 25, ' ', 'D') + 'RG/IE: ' + frmprincipal.Texto_Justifica(CLIENTE_rg, 20, ' ', 'D'));
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'CODIGO PRODUTO                                               QTDE UN  X   UNITARIO =    TOTAL-R$');
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
    I := 0;
    frmorcamento.qrorcamento_produto.first;
    while not frmorcamento.qrorcamento_produto.eof do
    begin
      texto1 := '';

      writeln(arquivo, #27#77 + #18 + #27#72 + #20, frmprincipal.Texto_Justifica(frmorcamento.qrorcamento_produto.fieldbyname('codproduto').asstring, 6, '0', 'E') + ' ' +
        frmprincipal.Texto_Justifica(frmorcamento.qrorcamento_produto.fieldbyname('produto').asstring, 45 - length(texto1), ' ', 'D') + ' ' + texto1 + ' ' +
        frmprincipal.Texto_Justifica(formatfloat(mascara_qtde, frmorcamento.qrorcamento_produto.fieldbyname('qtde').asfloat), 11, ' ', 'E') + ' ' +
        frmprincipal.Texto_Justifica(frmorcamento.qrorcamento_produto.fieldbyname('unidade').asstring, 2, ' ', 'D') +
        '  X ' + frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmorcamento.qrorcamento_produto.fieldbyname('unitario').asfloat), 10, ' ', 'E') + ' =  ' +
        frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmorcamento.qrorcamento_produto.fieldbyname('total').asfloat), 10, ' ', 'E'));
      frmorcamento.qrorcamento_produto.Next;
      I := I + 1;
      if i = 40 then
      begin
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, '                                                            **** Continua na proxima pagina ****');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, '');
        writeln(arquivo, #27#77 + #15 + #27#71 + #14, frmprincipal.Texto_Justifica(emitente_fantasia, 15, ' ', 'D') + #27#77 + #18 + #27#72 + #20 + ' ' + frmprincipal.Texto_Justifica(emitente_telefone, 13, ' ', 'D') +
          #27#77 + #18 + #27#72 + #20 + ' ORCAMENTO: ' + #27#77 + #18 + #27#71 + #20 + frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('codigo').asstring, 6, '0', 'E') +
          #27#77 + #18 + #27#72 + #20 + '  DATA: ' + frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('data').asstring, 10, ' ', 'E') + ' ' + frmprincipal.Texto_Justifica(timetostr(time), 5, ' ', 'E') +
          ' VD: ' + frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('vendedor').asstring, 16, ' ', 'D'));
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'Cliente...: ' + #27#77 + #15 + #27#71 + #14 + frmprincipal.Texto_Justifica(CLIENTE_CODIGO, 6, '0', 'E') + ' ' + frmprincipal.Texto_Justifica(CLIENTE_nome, 32, ' ', 'D'));
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'Endereco..: ' + frmprincipal.Texto_Justifica(CLIENTE_endereco + ' ' + CLIENTE_bairro, 39, ' ', 'D') + '  ' + frmprincipal.Texto_Justifica(CLIENTE_cidade + '/' + CLIENTE_uf + '  CEP: ' + CLIENTE_cep, 39, ' ', 'D'));
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'Telefones.: ' + frmprincipal.Texto_Justifica(CLIENTE_telefone, 20, ' ', 'D') + ' CPF/CNPJ: ' + frmprincipal.Texto_Justifica(CLIENTE_cpf, 25, ' ', 'D') + 'RG/IE: ' + frmprincipal.Texto_Justifica(CLIENTE_rg, 20, ' ', 'D'));
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'CODIGO PRODUTO                                               QTDE UN  X   UNITARIO =    TOTAL-R$');
        writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
        I := 0;
      end;


    end;
    while I <> 40 do
    begin
      WRITELN(ARQUIVO, '');
      I := I + 1;
    end;
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'SUBTOTAL: ' + frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat), 10, ' ', 'E') +
      '      DESCONTO: ' + frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmmodulo.qrorcamento.fieldbyname('desconto').asfloat), 10, ' ', 'E') +
      '     ACRESCIMO: ' + frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat), 10, ' ', 'E') +
      '      TOTAL: ' + frmprincipal.Texto_Justifica(formatfloat(mascara_valor, frmmodulo.qrorcamento.fieldbyname('total').asfloat), 10, ' ', 'E'));

    writeln(arquivo, #27#77 + #18 + #27#72 + #20, '------------------------------------------------------------------------------------------------');
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, 'Observacoes: ' + frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('obs1').asstring, 60, ' ', 'D'));
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, '             ' + frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('obs2').asstring, 60, ' ', 'D'));
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, '             ' + frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('obs3').asstring, 60, ' ', 'D'));
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, '             ' + frmprincipal.Texto_Justifica(frmmodulo.qrorcamento.fieldbyname('obs4').asstring, 60, ' ', 'D'));



    formapgto := 'COND. DE PAGAMENTO: ';

    y := 0;
    v1 := '';
    v2 := '';


    frmorcamento.qrorcamento_contasreceber.Open;
    frmorcamento.qrorcamento_contasreceber.first;
    while not frmorcamento.qrorcamento_contasreceber.Eof do
    begin
      if y > 5 then
      begin
        v2 := v2 + frmorcamento.qrorcamento_contasreceber.fieldbyname('vencimento').asstring + ' -> ' + formatfloat(mascara_valor, frmorcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat) + ' | ';
      end
      else
      begin
        v1 := v1 + frmorcamento.qrorcamento_contasreceber.fieldbyname('vencimento').asstring + ' -> ' + formatfloat(mascara_valor, frmorcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat) + ' | ';
        y := y + 1;
      end;
      frmorcamento.qrorcamento_contasreceber.next;
    end;
    writeln(arquivo, #27#77 + #15#27#72 + #20, frmprincipal.Texto_Justifica(FORMAPGTO, 25, ' ', 'D') + '  ' + V1);
    writeln(arquivo, '');
    writeln(arquivo, #27#77 + #18 + #27#72 + #20, '                                                               ----------- Assinatura ----------');


    VIAS := VIAS - 1;
    WRITELN(ARQUIVO, #12);

  end;




  closefile(arquivo);

end;

procedure Tfrmorcamento_impressao.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios', 4) then
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;

  if combo_modelo.ItemIndex = 0 then
  begin
    fxorcamento.LoadFromFile('\OneMaker\server\rel\f000069.fr3');
    fxorcamento.designreport;
  end;
end;

procedure Tfrmorcamento_impressao.ECF1Click(Sender: TObject);
var formapgto, v1, v2: string;
  y, xx: integer;
  f, arquivo: textfile;
  TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7: string;
  i, a, parcela: integer;
  NNOTA, cfops: INTEGER;

  vvalor_cfop1, vvalor_cfop2: double;
  vcfop1, vcfop2: string;
  cfop: string;
  linha, VITEM, processar, parcinvalida: integer;
  BASE_CALCULO, ICMS, tn: real;
  desconto_nota: real;
  codcaixa: string;
  totdinheiro, totcheqav, totcheqap, totcartcred, totcartdeb, totcarteira, totboleto: Real;
begin
  frmOrcamento.qrapoio.Open;
  frmOrcamento.qrorcamento_contasreceber.sql.clear;
  frmOrcamento.qrorcamento_contasreceber.SQL.Add('select * from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
  frmOrcamento.qrorcamento_contasreceber.open;

  frmOrcamento.qrorcamento_contasreceber.open;
  frmOrcamento.qrorcamento_contasreceber.First;
  parcinvalida := 0;

  while not frmOrcamento.qrorcamento_contasreceber.Eof do
  begin
    if frmOrcamento.qrorcamento_contasreceberTIPO.AsString = '' then
    begin
      parcinvalida := parcinvalida + 1;
    end;
    frmOrcamento.qrorcamento_contasreceber.next;
  end;

  if frmOrcamento.qrorcamento_contasreceber.RecordCount = 0 then
  begin
    Application.messagebox(' Defina as Formas de Pagamento!', 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;

  if parcinvalida > 0 then
  begin
    Application.messagebox(Pchar('Existe ' + InttoStr(parcinvalida) + ' Formas de Pagamento Inválida!'), 'Atenção!', mb_ok + MB_ICONEXCLAMATION);
    exit;
  end;


  FRMMODULO.qrconfig.OPEN;

  //teste para uso de caixa padrao do usuario autenticado   USA_CAIXA_PADRAO_USUARIO

  if frmmodulo.qrconfig.FieldByName('USA_CAIXA_PADRAO_USUARIO').asinteger = 1 then //usa
  begin
    frmmodulo.qrUsuario.Open;

    if frmmodulo.qrUsuario.FieldByName('COD_CAIXA').AsString <> '' then
    begin
      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
      begin

      end
      else
      begin
        APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
        Exit;
      end;
    end
    else
    begin
      APPLICATION.MESSAGEBOX('Voce não possui um caixa padrão! Favor verificar com o Administrador!', 'Atenção', mb_ok + MB_ICONWARNING);
      Exit;
    end;

  end
  else
  begin

    if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 4 then
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
      begin
        if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
        begin

        end
        else
        begin
          APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
          Exit;
        end;
      end
      else
      begin
        APPLICATION.MESSAGEBOX('Não autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
        Exit;
      end;
    end
    else
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda', 0) then
      begin
        if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
        begin

        end
        else
        begin
          APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...', 'Atenção', mb_ok + MB_ICONWARNING);
          Exit;
        end;
      end
      else
      begin
        APPLICATION.MESSAGEBOX('Não autorizado!', 'Aviso', mb_ok + MB_ICONERROR);
        Exit;
      end;
    end;
  end;

  codcaixa := frmmodulo.qrcaixa_operador.FieldByName('codigo').asstring;

  frmmodulo.qrconfig.Open;
  if (FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'NORMAL') or (FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'FARMA') then
  begin

    // finaliza venda

    frmmodulo.qrorcamento.edit;
    frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString := frmprincipal.codifica('000048');
    frmmodulo.qrorcamento.post;


    frmOrcamento.qrorcamento_contasreceber.Close;
    frmOrcamento.qrorcamento_contasreceber.sql.clear;
    frmOrcamento.qrorcamento_contasreceber.SQL.Add('select * from c000060 where codorcamento = ''' + frmmodulo.qrorcamento.fieldbyname('codigo').asstring + ''' order by prestacao ');
    frmOrcamento.qrorcamento_contasreceber.open;

    //lancamentos no mov de caixa

    totdinheiro := 0;
    totcheqav := 0;
    totcheqap := 0;
    totcartcred := 0;
    totcartdeb := 0;
    totcarteira := 0;
    totboleto := 0;

    while not frmOrcamento.qrorcamento_contasreceber.eof do
    begin
      if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'DINHEIRO' then
      begin
        totdinheiro := totdinheiro + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
      end;
      if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CHEQUE Á VISTA' then
      begin
        totcheqav := totcheqav + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
      end;

      if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CHEQUE PRÉ-DATADO' then
      begin
        totcheqap := totcheqap + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
      end;

      if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CARTÃO DE DÉBITO' then
      begin
        totcartdeb := totcartdeb + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
      end;

      if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CARTÃO DE CRÉDITO' then
      begin
        totcartcred := totcartcred + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
      end;

      if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'CARTEIRA' then
      begin
        totcarteira := totcarteira + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
      end;

      if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').AsString = 'BOLETO BANCÁRIO' then
      begin
        totboleto := totboleto + frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
      end;

      frmOrcamento.qrorcamento_contasreceber.Next;
    end;

    {//teste

    VITEM := 1;
    FRMMODULO.QRPRODUTO_MOV.OPEN;
    frmOrcamento.qrorcamento_produto.First;
    while not frmOrcamento.qrorcamento_produto.Eof do
    begin
      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into c000044');
      qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

      qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
      qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
      qrcaixa_mov.parambyname('saida').asfloat := 0;
      //qrcaixa_mov.parambyname('entrada').asfloat := frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
      qrcaixa_mov.parambyname('valor').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('UNITARIO').value;

      frmmodulo.qrconfig.open;
      qrcaixa_mov.parambyname('codconta').asstring := '000027';//frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
      //qrcaixa_mov.parambyname('movimento').asINTEGER := 3; // venda em dinheiro
      qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + frmOrcamento.enomecliente.Text, 1, 60);

      qrcaixa_mov.ExecSQL;
      frmOrcamento.qrorcamento_produto.Next;
    end; }

    //Movimento de Caixa
    if totdinheiro <> 0 then
    begin
      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into c000044');
      qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

      qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
      qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
      qrcaixa_mov.parambyname('saida').asfloat := 0;
      qrcaixa_mov.parambyname('entrada').asfloat := frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
      qrcaixa_mov.parambyname('valor').asfloat := totdinheiro;

      frmmodulo.qrconfig.open;
      qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
      qrcaixa_mov.parambyname('movimento').asINTEGER := 3; // venda em dinheiro
      qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + frmOrcamento.enomecliente.Text, 1, 60);

      qrcaixa_mov.ExecSQL;

    end;

    if totcheqav <> 0 then
    begin

      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into c000044');
      qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

      qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
      qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
      qrcaixa_mov.parambyname('saida').asfloat := 0;
      qrcaixa_mov.parambyname('entrada').asfloat := 0;
      qrcaixa_mov.parambyname('valor').asfloat := totcheqav;
      frmmodulo.qrconfig.open;
      qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
      qrcaixa_mov.parambyname('movimento').asINTEGER := 5; // venda em cheque a vista
      qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + frmOrcamento.enomecliente.Text, 1, 60);

      qrcaixa_mov.ExecSQL;
    end;

    if totcheqap <> 0 then
    begin
      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into c000044');
      qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

      qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
      qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
      qrcaixa_mov.parambyname('saida').asfloat := 0;
      qrcaixa_mov.parambyname('entrada').asfloat := 0;
      qrcaixa_mov.parambyname('valor').asfloat := totcheqap;
      frmmodulo.qrconfig.open;
      qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
      qrcaixa_mov.parambyname('movimento').asINTEGER := 6; // venda em cheque a prazo
      qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + frmOrcamento.enomecliente.Text, 1, 60);

      qrcaixa_mov.ExecSQL;
    end;

    if totcartdeb <> 0 then
    begin

      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into c000044');
      qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

      qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
      qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
      qrcaixa_mov.parambyname('saida').asfloat := 0;
      qrcaixa_mov.parambyname('entrada').asfloat := 0;
      qrcaixa_mov.parambyname('valor').asfloat := totcartdeb;
      frmmodulo.qrconfig.open;
      qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
      qrcaixa_mov.parambyname('movimento').asINTEGER := 8; // venda em cartao de debito
      qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + frmOrcamento.enomecliente.Text, 1, 60);

      qrcaixa_mov.execsql;
    end;

    if totcartcred <> 0 then
    begin
      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into c000044');
      qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');


      qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
      qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
      qrcaixa_mov.parambyname('saida').asfloat := 0;
      qrcaixa_mov.parambyname('entrada').asfloat := 0;
      qrcaixa_mov.parambyname('valor').asfloat := totcartcred;
      frmmodulo.qrconfig.open;
      qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
      qrcaixa_mov.parambyname('movimento').asINTEGER := 7; // venda em cartao de credito
      qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + frmOrcamento.enomecliente.Text, 1, 60);

      qrcaixa_mov.execsql;
    end;

    if totcarteira <> 0 then
    begin
      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into c000044');
      qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

      qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
      qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
      qrcaixa_mov.parambyname('saida').asfloat := 0;
      qrcaixa_mov.parambyname('entrada').asfloat := 0;
      qrcaixa_mov.parambyname('valor').asfloat := totcarteira;
      frmmodulo.qrconfig.open;
      qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
      qrcaixa_mov.parambyname('movimento').asINTEGER := 4; // venda crediario
      qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + frmOrcamento.enomecliente.Text, 1, 60);

      qrcaixa_mov.ExecSQL;

    end;

    if totboleto <> 0 then
    begin

      qrcaixa_mov.close;
      qrcaixa_mov.sql.clear;
      qrcaixa_mov.sql.add('insert into c000044');
      qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
      qrcaixa_mov.sql.add('values');
      qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

      qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
      qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
      qrcaixa_mov.parambyname('saida').asfloat := 0;
      qrcaixa_mov.parambyname('entrada').asfloat := 0;
      qrcaixa_mov.parambyname('valor').asfloat := totboleto;
      frmmodulo.qrconfig.open;
      qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
      qrcaixa_mov.parambyname('movimento').asINTEGER := 4; // venda BOLETO
      qrcaixa_mov.parambyname('historico').asstring := copy('Venda BOLETO No. ' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + ' - ' + frmOrcamento.enomecliente.Text, 1, 60);

      qrcaixa_mov.ExecSQL;
    end;


     // lancamento da venda  (notas de venda)
    begin
      ibquery1.close;
      ibquery1.SQL.clear;
      ibquery1.sql.add('insert into c000048');
      ibquery1.sql.add('(codigo,data,codcliente,codvendedor,codcaixa,');
      ibquery1.sql.add(' total,subtotal,meio_dinheiro,meio_chequeav,meio_chequeap,');
      ibquery1.sql.add(' meio_cartaocred,meio_cartaodeb,meio_crediario,meio_convenio,meio_financeira,');
      ibquery1.sql.add(' desconto,acrescimo,obs,NUMERO_CUPOM_FISCAL,cupom_fiscal,retirado,cod_financeira,cod_financeira_lancto,nrvenda)');
      ibquery1.sql.add('values');
      ibquery1.sql.add('(:codigo,:data,:codcliente,:codvendedor,:codcaixa,');
      ibquery1.sql.add(' :total,:subtotal,:meio_dinheiro,:meio_chequeav,:meio_chequeap,');
      ibquery1.sql.add(' :meio_cartaocred,:meio_cartaodeb,:meio_crediario,:meio_convenio,:meio_financeira,');
      ibquery1.sql.add(' :desconto,:acrescimo,:obs,:NUMERO_CUPOM_FISCAL,:cupom_fiscal,:retirado,:cod_financeira,:cod_financeira_lancto,:nrvenda)');

      ibquery1.parambyname('codigo').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
      ibquery1.parambyname('data').asdatetime := date;
      ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
      ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
      ibquery1.parambyname('codcaixa').asstring := codcaixa;
      ibquery1.parambyname('TOTAL').asfloat := frmOrcamento.rtotal.value;
      ibquery1.parambyname('SUBTOTAL').asfloat := frmOrcamento.rsubtotal.value;
      ibquery1.parambyname('meio_dinheiro').asfloat := totdinheiro;
      ibquery1.parambyname('meio_chequeav').asfloat := totcheqav;
      ibquery1.parambyname('meio_chequeap').asfloat := totcheqap;
      ibquery1.parambyname('meio_cartaocred').asfloat := totcartcred;
      ibquery1.parambyname('meio_cartaodeb').asfloat := totcartdeb;
      ibquery1.parambyname('meio_crediario').asfloat := totcarteira + totboleto;
      ibquery1.parambyname('meio_convenio').AsFloat := 0;
      ibquery1.parambyname('meio_financeira').AsFloat := 0;
      ibquery1.parambyname('nrvenda').AsString := frmmodulo.qrorcamento.FieldByName('CODIGO').AsString;
      ibquery1.parambyname('desconto').asfloat := frmOrcamento.rdesconto.Value;
      ibquery1.parambyname('acrescimo').asfloat := frmOrcamento.racrescimo.Value;
      ibquery1.parambyname('OBS').asstring := '';
      ibquery1.parambyname('COD_FINANCEIRA').asstring := '';
      ibquery1.parambyname('COD_FINANCEIRA_LANCTO').asstring := '';
      ibquery1.parambyname('NUMERO_CUPOM_FISCAL').ASSTRING := '';
      //esqueci onde configuro para funcionar
      if numero_cupomx <> '' then ibquery1.parambyname('cupom_fiscal').asinteger := 1
      else ibquery1.parambyname('cupom_fiscal').asinteger := 0;

      ibquery1.execsql;


    end;

    //movimento de produto verificar se esta correto o estoque
    VITEM := 1;
    frmmodulo.qrservico.Close;
    frmmodulo.qrservico.Open;
    FRMMODULO.QRPRODUTO_MOV.OPEN;
    frmOrcamento.qrorcamento_produto.First;
    while not frmOrcamento.qrorcamento_produto.Eof do
    begin
      vitem := vitem + 1;
      if frmOrcamento.qrapoio.Locate('codigo', frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').AsString, [loCaseInsensitive]) then
      begin
        ibquery1.CLOSE;
        ibquery1.SQL.CLEAR;
        ibquery1.SQL.Add('insert into c000032');
        ibquery1.SQL.add('(codigo,codnota,numeronota,');
        ibquery1.SQL.add('codproduto,qtde,unitario,');
        ibquery1.SQL.add('total,desconto,acrescimo,unidade,aliquota,cst,');
        ibquery1.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
        ibquery1.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,');
        ibquery1.sql.add('serial,codgrade,movimento_estoque,pis,cofins,credito_icms,codsubgrupo,codbarra,cfop,PRODUTO)');
        ibquery1.SQL.add('values');
        ibquery1.SQL.add('(:xcodigo,:xcodnota,:xnumeronota,');
        ibquery1.SQL.add(':xcodproduto,:xqtde,:xunitario,');
        ibquery1.SQL.add(':xtotal,:xdesconto,:xacrescimo,:xunidade,:xaliquota,:xcst,');
        ibquery1.SQL.add(':xcupom_item,:xcupom_numero,:xcupom_modelo,');
        ibquery1.SQL.add(':xecf_serie,:xecf_caixa,:xcodcliente,:xcodvendedor,:xmovimento,:xdata,');
        ibquery1.sql.add(':xserial,:xcodgrade,:xmovimento_estoque,:xpis,:xcofins,:xcredito_icms,:xsubgrupo,:xcodbarra,:xcfop,:XPRODUTO)');

        ibquery1.params.parambyname('xcodigo').AsString := frmprincipal.codifica('000032');
        ibquery1.params.parambyname('xcodnota').AsString := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
        ibquery1.params.parambyname('xnumeronota').AsString := frmOrcamento.DBEdit1.Text;
        ibquery1.params.parambyname('xcodproduto').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').asstring;
        ibquery1.params.parambyname('xqtde').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').asfloat;
        ibquery1.params.parambyname('xunitario').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('unitario').asfloat;
        ibquery1.params.parambyname('xtotal').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat;
        ibquery1.params.parambyname('xdesconto').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('desconto').asfloat;
        ibquery1.params.parambyname('xacrescimo').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('acrescimo').asfloat;
        ibquery1.params.parambyname('xunidade').asstring := frmOrcamento.qrapoio.fieldbyname('UNIDADE').AsString;
        ibquery1.params.parambyname('xALIQUOTA').asFLOAT := frmOrcamento.qrapoio.fieldbyname('aliquota').asFLOAT;
        ibquery1.params.parambyname('xCST').asSTRING := frmOrcamento.qrapoio.fieldbyname('CST').asSTRING;
        ibquery1.params.parambyname('xcupom_item').asstring := FRMPRINCIPAL.zerarcodigo(IntToStr(VITEM), 3);
        ibquery1.params.parambyname('xcfop').asstring := '5403';
        ibquery1.params.parambyname('xcupom_numero').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
        ibquery1.params.parambyname('xcupom_modelo').asstring := '';
        ibquery1.params.parambyname('xSERIAL').Asstring := '';
        ibquery1.params.parambyname('xcodgrade').Asstring := '';
        ibquery1.params.parambyname('xmovimento_estoque').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').asfloat * (-1);
        ibquery1.params.parambyname('xcredito_icms').asfloat := 0;
        ibquery1.params.parambyname('xsubgrupo').asstring := frmOrcamento.qrapoio.fieldbyname('codsubgrupo').asstring;
        ibquery1.params.parambyname('xcodbarra').asstring := frmOrcamento.qrapoio.fieldbyname('CODBARRA').asstring;
        ibquery1.params.parambyname('XPRODUTO').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('produto').asstring;
        if frmOrcamento.qrapoioPISCOFINS.AsString = 'S' then
        begin
          ibquery1.params.parambyname('xpis').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat * vpis / 100;
          ibquery1.params.parambyname('xcofins').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat * vcofins / 100;
        end
        else
        begin
          ibquery1.params.parambyname('xpis').asfloat := 0;
          ibquery1.params.parambyname('xcofins').asfloat := 0;
        end;

        if ecf_modelo <> '' then
        begin
          //ibquery1.params.parambyname('xecf_serie').asstring := frmprincipal.pstatus.Panels[11].Text;
          //ibquery1.params.parambyname('xecf_caixa').asstring := frmprincipal.pstatus.Panels[9].Text;
        end;
        ibquery1.params.parambyname('xcodcliente').AsString := frmOrcamento.ecliente.Text;
        ibquery1.params.parambyname('xcodvendedor').AsString := frmOrcamento.evendedor.Text;
        case frmOrcamento.qrorcamento_produto.FieldByName('tipo').asinteger of
          0: ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2; // VENDA
          1: begin
              ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2; // VENDA SERIAL
              ibquery1.params.parambyname('xSERIAL').Asstring := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
            end;
          2: begin
              ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2; // VENDA grade
              ibquery1.params.parambyname('xcodgrade').Asstring := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
            end;

          7: ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7; // devolucao de VENDA


          10: ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7; // VENDA
          11: begin
              ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7; // VENDA SERIAL
              ibquery1.params.parambyname('xSERIAL').Asstring := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
            end;
          12: begin
              ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7; // VENDA grade
              ibquery1.params.parambyname('xcodgrade').Asstring := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
            end;

          20: ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2; // VENDA
          21: begin
              ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2; // VENDA SERIAL
              ibquery1.params.parambyname('xSERIAL').Asstring := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
            end;
          22: begin
              ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2; // VENDA grade
              ibquery1.params.parambyname('xcodgrade').Asstring := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
            end;
        end;
        ibquery1.params.parambyname('xdata').asdatetime := date;
        ibquery1.ExecSQL;
      end;

      //incluir servicos
      if frmmodulo.qrservico.Locate('codigo', frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').AsString, [loCaseInsensitive]) then
      begin
        ibquery1.CLOSE;
        ibquery1.SQL.CLEAR;
        ibquery1.SQL.Add('insert into c000032');
        ibquery1.SQL.add('(codigo,codnota,numeronota,');
        ibquery1.SQL.add('codproduto,qtde,unitario,');
        ibquery1.SQL.add('total,desconto,acrescimo,unidade,aliquota,cst,');
        ibquery1.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
        ibquery1.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,');
        ibquery1.sql.add('serial,codgrade,movimento_estoque,pis,cofins,credito_icms,codsubgrupo,codbarra,cfop,PRODUTO)');
        ibquery1.SQL.add('values');
        ibquery1.SQL.add('(:xcodigo,:xcodnota,:xnumeronota,');
        ibquery1.SQL.add(':xcodproduto,:xqtde,:xunitario,');
        ibquery1.SQL.add(':xtotal,:xdesconto,:xacrescimo,:xunidade,:xaliquota,:xcst,');
        ibquery1.SQL.add(':xcupom_item,:xcupom_numero,:xcupom_modelo,');
        ibquery1.SQL.add(':xecf_serie,:xecf_caixa,:xcodcliente,:xcodvendedor,:xmovimento,:xdata,');
        ibquery1.sql.add(':xserial,:xcodgrade,:xmovimento_estoque,:xpis,:xcofins,:xcredito_icms,:xsubgrupo,:xcodbarra,:xcfop,:XPRODUTO)');

        ibquery1.params.parambyname('xcodigo').AsString := frmprincipal.codifica('000032');
        ibquery1.params.parambyname('xcodnota').AsString := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
        ibquery1.params.parambyname('xnumeronota').AsString := frmOrcamento.DBEdit1.Text;
        ibquery1.params.parambyname('xcodproduto').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('codproduto').asstring;
        ibquery1.params.parambyname('xqtde').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').asfloat;
        ibquery1.params.parambyname('xunitario').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('unitario').asfloat;
        ibquery1.params.parambyname('xtotal').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat;
        ibquery1.params.parambyname('xdesconto').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('desconto').asfloat;
        ibquery1.params.parambyname('xacrescimo').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('acrescimo').asfloat;
        ibquery1.params.parambyname('xunidade').asstring := 'OS';
        ibquery1.params.parambyname('xALIQUOTA').asFLOAT := frmOrcamento.qrapoio.fieldbyname('aliquota').asFLOAT;
        ibquery1.params.parambyname('xCST').asSTRING := frmOrcamento.qrapoio.fieldbyname('CST').asSTRING;
        ibquery1.params.parambyname('xcupom_item').asstring := FRMPRINCIPAL.zerarcodigo(IntToStr(VITEM), 3);
        ibquery1.params.parambyname('xcfop').asstring := '5403';
        ibquery1.params.parambyname('xcupom_numero').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
        ibquery1.params.parambyname('xcupom_modelo').asstring := '';
        ibquery1.params.parambyname('xSERIAL').Asstring := '';
        ibquery1.params.parambyname('xcodgrade').Asstring := '';
        ibquery1.params.parambyname('xmovimento_estoque').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('qtde').asfloat * (-1);
        ibquery1.params.parambyname('xcredito_icms').asfloat := 0;
        ibquery1.params.parambyname('xsubgrupo').asstring := frmOrcamento.qrapoio.fieldbyname('codsubgrupo').asstring;
        ibquery1.params.parambyname('xcodbarra').asstring := frmOrcamento.qrapoio.fieldbyname('CODBARRA').asstring;
        ibquery1.params.parambyname('XPRODUTO').asstring := frmOrcamento.qrorcamento_produto.fieldbyname('produto').asstring;
        if frmOrcamento.qrapoioPISCOFINS.AsString = 'S' then
        begin
          ibquery1.params.parambyname('xpis').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat * vpis / 100;
          ibquery1.params.parambyname('xcofins').asfloat := frmOrcamento.qrorcamento_produto.fieldbyname('total').asfloat * vcofins / 100;
        end
        else
        begin
          ibquery1.params.parambyname('xpis').asfloat := 0;
          ibquery1.params.parambyname('xcofins').asfloat := 0;
        end;

        if ecf_modelo <> '' then
        begin
          //ibquery1.params.parambyname('xecf_serie').asstring := frmprincipal.pstatus.Panels[11].Text;
          //ibquery1.params.parambyname('xecf_caixa').asstring := frmprincipal.pstatus.Panels[9].Text;
        end;
        ibquery1.params.parambyname('xcodcliente').AsString := frmOrcamento.ecliente.Text;
        ibquery1.params.parambyname('xcodvendedor').AsString := frmOrcamento.evendedor.Text;
        case frmOrcamento.qrorcamento_produto.FieldByName('tipo').asinteger of
          0: ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2; // VENDA
          1: begin
              ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2; // VENDA SERIAL
              ibquery1.params.parambyname('xSERIAL').Asstring := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
            end;
          2: begin
              ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2; // VENDA grade
              ibquery1.params.parambyname('xcodgrade').Asstring := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
            end;

          7: ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7; // devolucao de VENDA


          10: ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7; // VENDA
          11: begin
              ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7; // VENDA SERIAL
              ibquery1.params.parambyname('xSERIAL').Asstring := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
            end;
          12: begin
              ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7; // VENDA grade
              ibquery1.params.parambyname('xcodgrade').Asstring := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
            end;

          20: ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2; // VENDA
          21: begin
              ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2; // VENDA SERIAL
              ibquery1.params.parambyname('xSERIAL').Asstring := frmOrcamento.qrorcamento_produto.fieldbyname('serial').asstring;
            end;
          22: begin
              ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2; // VENDA grade
              ibquery1.params.parambyname('xcodgrade').Asstring := frmOrcamento.qrorcamento_produto.fieldbyname('codgrade').asstring;
            end;
        end;
        ibquery1.params.parambyname('xdata').asdatetime := date;
        ibquery1.ExecSQL;
      end;


      frmOrcamento.qrorcamento_produto.next;
    end;

      //atualiza historico do cliente
    ibquery1.close;
    ibquery1.sql.clear;
    ibquery1.sql.add('update c000007 set data_ultimacompra = :data where codigo = ''' + frmOrcamento.ecliente.Text + '''');
    ibquery1.parambyname('data').Asdatetime := date;
    ibquery1.ExecSQL;


      // lancamento do contas a receber
    qrapoio.Open;

    if totdinheiro <> 0 then
    begin
      ibquery1.close;
      ibquery1.SQL.clear;
      ibquery1.sql.add('insert into c000049');
      ibquery1.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
      ibquery1.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
      ibquery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom, email_enviado)');
      ibquery1.sql.add('values');
      ibquery1.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
      ibquery1.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
      ibquery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom, :email_enviado)');

      ibquery1.parambyname('codigo').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
      ibquery1.parambyname('codvenda').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
      ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
      //ibquery1.parambyname('codregiao').asstring       := frmvenda.qrcliente.fieldbyname('codregiao').asstring;
      ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
      ibquery1.parambyname('codcaixa').asstring := codcaixa;
      ibquery1.parambyname('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.AsDateTime;
      ibquery1.parambyname('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
      ibquery1.parambyname('valor_original').asfloat := totdinheiro;
      ibquery1.parambyname('valor_pago').asfloat := totdinheiro;
      ibquery1.parambyname('valor_atual').asfloat := 0;
      ibquery1.parambyname('documento').asstring := 'ENTRADA';
      ibquery1.parambyname('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
      ibquery1.parambyname('situacao').asinteger := 2;
      ibquery1.parambyname('filtro').asinteger := 0;
      ibquery1.parambyname('numero_cupom').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
      ibquery1.parambyname('email_enviado').AsInteger := 1;
      ibquery1.ExecSQL;
    end;

    frmOrcamento.qrorcamento_contasreceber.Open;
    frmOrcamento.qrorcamento_contasreceber.First;
    parcela := 1;
    while not frmOrcamento.qrorcamento_contasreceber.eof do
    begin
      if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').asstring = 'CARTEIRA' then
      begin
        ibquery1.close;
        ibquery1.SQL.clear;
        ibquery1.sql.add('insert into c000049');
        ibquery1.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
        ibquery1.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
        ibquery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom, email_enviado)');
        ibquery1.sql.add('values');
        ibquery1.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
        ibquery1.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
        ibquery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom, :email_enviado)');


        ibquery1.parambyname('codigo').asstring := 'CR' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + '/' + frmprincipal.zerarcodigo(IntToStr(parcela), 2);
        ibquery1.parambyname('codvenda').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
        ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
        ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
        ibquery1.parambyname('codcaixa').asstring := codcaixa;
        ibquery1.parambyname('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.AsDateTime;
        ibquery1.parambyname('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
        ibquery1.parambyname('valor_original').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
        ibquery1.parambyname('valor_atual').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
        ibquery1.parambyname('documento').asstring := 'CR' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + '/' + frmprincipal.zerarcodigo(IntToStr(parcela), 2);
        ibquery1.parambyname('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
        ibquery1.parambyname('situacao').asinteger := 1;
        ibquery1.parambyname('filtro').asinteger := 0;
        ibquery1.parambyname('numero_cupom').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
        ibquery1.parambyname('email_enviado').AsInteger := 0;
        ibquery1.ExecSQL;

        frmOrcamento.qrorcamento_contasreceber.next;
        parcela := parcela + 1;
      end
      else
        frmOrcamento.qrorcamento_contasreceber.next
    end;

    frmOrcamento.qrorcamento_contasreceber.Open;
    frmOrcamento.qrorcamento_contasreceber.First;
    parcela := 1;
    while not frmOrcamento.qrorcamento_contasreceber.eof do
    begin
      if frmOrcamento.qrorcamento_contasreceber.FieldByName('TIPO').asstring = 'BOLETO BANCÁRIO' then
      begin
        ibquery1.close;
        ibquery1.SQL.clear;
        ibquery1.sql.add('insert into c000049');
        ibquery1.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
        ibquery1.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
        ibquery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom, email_enviado)');
        ibquery1.sql.add('values');
        ibquery1.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
        ibquery1.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
        ibquery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom, :email_enviado)');


        ibquery1.parambyname('codigo').asstring := 'BL' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + '/' + frmprincipal.zerarcodigo(IntToStr(parcela), 2);
        ibquery1.parambyname('codvenda').asstring := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
        ibquery1.parambyname('codcliente').asstring := frmOrcamento.ecliente.Text;
        ibquery1.parambyname('codvendedor').asstring := frmOrcamento.evendedor.Text;
        ibquery1.parambyname('codcaixa').asstring := codcaixa;
        ibquery1.parambyname('data_emissao').asdatetime := frmmodulo.qrorcamentoDATA.AsDateTime;
        ibquery1.parambyname('data_vencimento').asdatetime := frmOrcamento.qrorcamento_contasreceber.fieldbyname('VENCIMENTO').Value;
        ibquery1.parambyname('valor_original').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
        ibquery1.parambyname('valor_atual').asfloat := frmOrcamento.qrorcamento_contasreceber.fieldbyname('valor').asfloat;
        ibquery1.parambyname('documento').asstring := 'BL' + frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString + '/' + frmprincipal.zerarcodigo(IntToStr(parcela), 2);
        ibquery1.parambyname('tipo').asstring := frmOrcamento.qrorcamento_contasreceber.fieldbyname('tipo').asstring;
        ibquery1.parambyname('situacao').asinteger := 1;
        ibquery1.parambyname('filtro').asinteger := 0;
        ibquery1.parambyname('numero_cupom').asstring := frmmodulo.qrorcamento.FieldByName('CODNF').AsString;
        ibquery1.parambyname('email_enviado').AsInteger := 0;
        ibquery1.ExecSQL;

        frmOrcamento.qrorcamento_contasreceber.next;
        parcela := parcela + 1;
      end
      else
        frmOrcamento.qrorcamento_contasreceber.next
    end;

    if totcheqap <> 0 then
    begin
      frmmodulo.qrconfig.open;
      if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
      begin
        CHEQUE_CODCLIENTE := frmOrcamento.ecliente.Text;
        CHEQUE_VENDA := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
        frmcheque_avulso := Tfrmcheque_avulso.CREATE(SELF);
        frmcheque_avulso.Tag := 11; //cheque a prazo orcamento
        frmcheque_avulso.rsoma.Value := totcheqap;
        frmcheque_avulso.rdiferenca.Value := 0.00;
        frmcheque_avulso.SHOWMODAL;
      end;
    end;

    if totcheqap <> 0 then
    begin
      frmmodulo.qrconfig.open;
      if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
      begin
        CHEQUE_CODCLIENTE := frmOrcamento.ecliente.Text;
        CHEQUE_VENDA := frmmodulo.qrorcamento.FieldByName('CODVENDA').AsString;
        frmcheque_avulso := Tfrmcheque_avulso.CREATE(SELF);
        frmcheque_avulso.rsoma.Value := frmOrcamento.qrorcamento_contasreceber.FieldByName('VALOR').value;
        frmcheque_avulso.rdiferenca.Value := 0.00;
        frmcheque_avulso.SHOWMODAL;
      end;
    end;

    frmmodulo.Conexao.Commit;

  end;

end;
end.

