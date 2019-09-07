unit venda_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxDBSet, AdvGlowButton, AdvShapeButton, DBAccess, Mask, RzEdit, RzSpnEdt;

type
  Tfrmvenda_impressao = class(TForm)
    PopupMenu1: TPopupMenu;
    TPCupom_Fiscal: TMenuItem;
    TPNota_Fiscal: TMenuItem;
    Button1: TButton;
    qrnotafiscal_item: TZQuery;
    qrnotafiscal_itemproduto: TStringField;
    qrnotafiscal_itemunidade: TStringField;
    BAPOIO: TButton;
    combo_modelo: TComboBox;
    Bevel2: TBevel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    bgravar: TAdvGlowButton;
    // evias: TSpinEdit;
    qrapoio: TZQuery;
    qrnotafiscal: TZQuery;
    qrvenda: TZQuery;
    IBQuery1: TZQuery;
    qrvenda3: TZQuery;
    qrcliente: TZQuery;
    evias: TRzSpinEdit;
    ZQuery1: TZQuery;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure TPImpressoClick(Sender: TObject);
    procedure TPPersonalizadoClick(Sender: TObject);
    procedure TPa4tintaClick(Sender: TObject);
    procedure TPCupom_FiscalClick(Sender: TObject);
    procedure Fechar2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BAPOIOClick(Sender: TObject);
    procedure NFCupom1Click(Sender: TObject);
    procedure NFNF1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    natureza: string;
  end;

var
  frmvenda_impressao: Tfrmvenda_impressao;
  porta_impressora: string;
  CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO,
    CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF,
    CLIENTE_CODIGO: string;

implementation

uses modulo, principal, venda, venda_fechamento, ecf,
  extenso1, venda_contasreceber, venda_nf, nf_obs, orcamento, OpNatureza;

{$R *.dfm}

procedure Tfrmvenda_impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmvenda_impressao.bgravarClick(Sender: TObject);
begin
  { opçoes do combo

    01 - Nota Fiscal Simples
    02 - Formulário Contínuo
    03 - Nota Fiscal Manual

    opcçoes do config
    NFE smples
    NFE composta
    Form COnt
    Nf Manual
    NF simples }

  case combo_modelo.ItemIndex of
    0:
      TPCupom_FiscalClick(frmvenda_impressao); // 01 - Nota Fiscal Simples
    1:
      TPImpressoClick(frmvenda_impressao); // 03 - Formulário Contínuo
    2:
      TPPersonalizadoClick(frmvenda_impressao); // 05 - Nota Fiscal Manual
  end;
  close;
end;

procedure Tfrmvenda_impressao.FormShow(Sender: TObject);
begin

  qrvenda.close;
  qrvenda.sql.clear;
  qrvenda.sql.add('select venda.*,');
  qrvenda.sql.add('cli.nome cliente,');
  qrvenda.sql.add('vend.nome vendedor');
  qrvenda.sql.add('from');
  qrvenda.sql.add('c000048 venda,');
  qrvenda.sql.add('c000007 cli,');
  qrvenda.sql.add('c000008 vend');
  qrvenda.sql.add('where');
  qrvenda.sql.add('venda.codcliente = cli.codigo and');
  qrvenda.sql.add('venda.codvendedor = vend.codigo');
  qrvenda.sql.add('and venda.codigo = ''' +
    frmvenda.lvenda_codigo.caption + '''');
  qrvenda.open;

  frmmodulo.qrconfig.open;
  // combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger;
  evias.IntValue := frmmodulo.qrconfig.FieldByName('VENDA_QTDE_VIAS_NOTA')
    .asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName
    ('VENDA_PORTA_IMPRESSORA').asstring;

  frmvenda.qrvenda_produto.First;
  while not frmvenda.qrvenda_produto.Eof do
  begin

    if frmvenda.qrvenda_produto.FieldByName('qtde').asfloat < 0 then
    begin
      if frmvenda_fechamento.rcrediario.Value > 0 then
        combo_modelo.ItemIndex := 3
      else
        combo_modelo.ItemIndex := 2;
      break;
    end;
    frmvenda.qrvenda_produto.Next;
  end;

  if frmmodulo.qrconfigNF_TIPO.asinteger = 1 then
    combo_modelo.ItemIndex := 0;
  if frmmodulo.qrconfigNF_TIPO.asinteger = 2 then
    combo_modelo.ItemIndex := 1;
  if frmmodulo.qrconfigNF_TIPO.asinteger = 3 then
    combo_modelo.ItemIndex := 2;
  // if frmmodulo.qrconfigNF_TIPO.AsInteger = 4 then combo_modelo.ItemIndex := 3;
  // if frmmodulo.qrconfigNF_TIPO.AsInteger = 5 then combo_modelo.ItemIndex := 4;

  CLIENTE_NOME := frmvenda.qrcliente.FieldByName('nome').asstring;
  CLIENTE_ENDERECO := frmvenda.qrcliente.FieldByName('endereco').asstring;
  CLIENTE_BAIRRO := frmvenda.qrcliente.FieldByName('bairro').asstring;
  CLIENTE_CIDADE := frmvenda.qrcliente.FieldByName('cidade').asstring;
  CLIENTE_UF := frmvenda.qrcliente.FieldByName('uf').asstring;
  CLIENTE_CEP := frmvenda.qrcliente.FieldByName('cep').asstring;
  CLIENTE_TELEFONE := frmvenda.qrcliente.FieldByName('telefone1').asstring + '/'
    + frmvenda.qrcliente.FieldByName('celular').asstring + '/' +
    frmvenda.qrcliente.FieldByName('telefone2').asstring;
  CLIENTE_CPF := frmvenda.qrcliente.FieldByName('cpf').asstring;
  CLIENTE_RG := frmvenda.qrcliente.FieldByName('rg').asstring;
  CLIENTE_CODIGO := frmvenda.qrcliente.FieldByName('CODIGO').asstring;
end;

procedure Tfrmvenda_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmvenda_impressao.eviasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmvenda_impressao.TPNota_FiscalClick(Sender: TObject);
var
  f, arquivo: textfile;
  TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7: string;
  i, a: integer;
  xitemserv, NNOTA, cfops: integer;

  vvalor_cfop1, vvalor_cfop2: double;
  vcfop1, vcfop2: string;
  cfop: string;
  linha: integer;
  BASE_CALCULO, ICMS, tn: real;
  xtotserv, desconto_nota: real;
begin



  frmmodulo.qrconfig.open;
  // if (FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'NORMAL') or (FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'LIGHT') or (FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'FARMA') then
  begin
    (* M O N T A R     D A D O S    P A R A     A   N O T A    F I S C A L *)
    // traz desconto do frmvenda_fechamento

    // teste
    try

      desconto_nota := frmvenda_fechamento.rdesconto2.Value;
      qrcliente.close;
      qrcliente.sql.clear;
      qrcliente.sql.add('select * from c000007 where codigo = ''' +
        frmvenda.lcliente_codigo.caption + '''');
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
      qrnotafiscal.FieldByName('codigo').asstring :=
        frmprincipal.codifica('000061');

      frmmodulo.qrfilial.open;
      frmmodulo.qrfilial.Locate('codigo', '000001', [loCaseInsensitive]);

      { frmvenda_nf := tfrmvenda_nf.create(self);
        frmvenda_nf.Tag := 50;
        frmvenda_nf.enf.text := frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring, 6);
        frmvenda_nf.showmodal; }

      numero_notaz := frmprincipal.zerarcodigo
        (frmmodulo.qrfilial.FieldByName('notafiscal').asstring, 6);
      // correcoes
      qrnotafiscal.FieldByName('numero').asstring := numero_notaz;
      qrnotafiscal.FieldByName('data').asstring := DateToStr(Date);
      qrnotafiscal.FieldByName('data_saida').asstring := DateToStr(Date);
      qrnotafiscal.FieldByName('hora').asstring := TimeToStr(Now);
      qrnotafiscal.FieldByName('codcliente').asstring :=
        frmvenda.lcliente_codigo.caption;
      qrnotafiscal.FieldByName('valor_produtos').asfloat :=
        qrvenda.FieldByName('subtotal').asfloat;
      qrnotafiscal.FieldByName('total_nota').asfloat :=
        qrvenda.FieldByName('total').asfloat;
      qrnotafiscal.FieldByName('desconto').asfloat :=
        qrvenda.FieldByName('desconto').asfloat;

      // modelo de nf
      qrnotafiscal.FieldByName('situacao').asinteger := 1;
      qrnotafiscal.FieldByName('NFE_SITUACAO').asinteger := 3;
      qrnotafiscal.FieldByName('situacao_A').asstring := 'A';
      qrnotafiscal.FieldByName('MODELO_NF').asstring := '55';
      frmmodulo.qrfilial.open;
      qrnotafiscal.FieldByName('SERIE_NF').asstring :=
        IntToStr(frmmodulo.qrfilial.FieldByName('CONHECIMENTO').asinteger);
      qrnotafiscal.FieldByName('SIT').asstring := 'N';
      qrnotafiscal.FieldByName('MOVIMENTO').asstring := 'S';
      qrnotafiscal.FieldByName('BAIXA_ESTOQUE').asstring := 'S';

      qrnotafiscal_item.close;
      qrnotafiscal_item.sql.clear;
      qrnotafiscal_item.sql.add('select * from c000062 where codnota = ''' +
        qrnotafiscal.FieldByName('codigo').asstring + '''');
      qrnotafiscal_item.open;

      BASE_CALCULO := 0.00;
      ICMS := 0.00;

      tn := 0.00;

      qrnotafiscal.FieldByName('INF1').asstring := '';
      qrnotafiscal.FieldByName('INF2').asstring := '';
      qrnotafiscal.FieldByName('INF3').asstring := '';

      texto1 := '';
      texto2 := '';
      texto3 := '';

      qrnotafiscal_item.close;
      qrnotafiscal_item.sql.clear;
      qrnotafiscal_item.sql.add('select * from c000062 where codnota = ''' +
        qrnotafiscal.FieldByName('codigo').asstring + '''');
      qrnotafiscal_item.open;

      // inserir servicos
      frmvenda.qrvenda_produto.First;
      xitemserv := 0;
      xtotserv := 0.00;

      while not frmvenda.qrvenda_produto.Eof do
      begin
        if frmvenda.qrvenda_produtoNUMERACAO.asstring = 'OS' then
        begin
          xitemserv := xitemserv + 1;
          if xitemserv = 1 then
          begin
            qrnotafiscal.FieldByName('OS_COD1').asstring :=
              frmvenda.qrvenda_produto.FieldByName('CODPRODUTO').asstring;
            qrnotafiscal.FieldByName('OS_SERV1').asstring :=
              frmvenda.qrvenda_produto.FieldByName('PRODUTO').asstring;
            qrnotafiscal.FieldByName('OS_QTDE1').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('QTDE').asfloat;
            qrnotafiscal.FieldByName('OS_TOTAL1').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('TOTAL').asfloat;
            qrnotafiscal.FieldByName('OS_TOTAL_GERAL').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('TOTAL').asfloat;
            qrnotafiscal.FieldByName('OS_UNIT1').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('unitario').asfloat;

          end;
          if xitemserv = 2 then
          begin
            qrnotafiscal.FieldByName('OS_COD2').asstring :=
              frmvenda.qrvenda_produto.FieldByName('CODPRODUTO').asstring;
            qrnotafiscal.FieldByName('OS_SERV2').asstring :=
              frmvenda.qrvenda_produto.FieldByName('PRODUTO').asstring;
            qrnotafiscal.FieldByName('OS_QTDE2').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('QTDE').asfloat;
            qrnotafiscal.FieldByName('OS_TOTAL2').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('TOTAL').asfloat;
            qrnotafiscal.FieldByName('OS_TOTAL_GERAL').asfloat :=
              qrnotafiscal.FieldByName('OS_TOTAL_GERAL').asfloat +
              qrnotafiscal.FieldByName('OS_TOTAL2').asfloat;
            qrnotafiscal.FieldByName('OS_UNIT2').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('unitario').asfloat;
          end;
          if xitemserv = 3 then
          begin
            qrnotafiscal.FieldByName('OS_COD3').asstring :=
              frmvenda.qrvenda_produto.FieldByName('CODPRODUTO').asstring;
            qrnotafiscal.FieldByName('OS_SERV3').asstring :=
              frmvenda.qrvenda_produto.FieldByName('PRODUTO').asstring;
            qrnotafiscal.FieldByName('OS_QTDE3').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('QTDE').asfloat;
            qrnotafiscal.FieldByName('OS_TOTAL3').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('TOTAL').asfloat;
            qrnotafiscal.FieldByName('OS_TOTAL_GERAL').asfloat :=
              qrnotafiscal.FieldByName('OS_TOTAL_GERAL').asfloat +
              qrnotafiscal.FieldByName('OS_TOTAL3').asfloat;
            qrnotafiscal.FieldByName('OS_UNIT3').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('unitario').asfloat;
          end;
          if xitemserv = 4 then
          begin
            qrnotafiscal.FieldByName('OS_COD4').asstring :=
              frmvenda.qrvenda_produto.FieldByName('CODPRODUTO').asstring;
            qrnotafiscal.FieldByName('OS_SERV4').asstring :=
              frmvenda.qrvenda_produto.FieldByName('PRODUTO').asstring;
            qrnotafiscal.FieldByName('OS_QTDE4').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('QTDE').asfloat;
            qrnotafiscal.FieldByName('OS_TOTAL4').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('TOTAL').asfloat;
            qrnotafiscal.FieldByName('OS_TOTAL_GERAL').asfloat :=
              qrnotafiscal.FieldByName('OS_TOTAL_GERAL').asfloat +
              qrnotafiscal.FieldByName('OS_TOTAL4').asfloat;
            qrnotafiscal.FieldByName('OS_UNIT4').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('unitario').asfloat;
          end;
          if xitemserv = 5 then
          begin
            qrnotafiscal.FieldByName('OS_COD5').asstring :=
              frmvenda.qrvenda_produto.FieldByName('CODPRODUTO').asstring;
            qrnotafiscal.FieldByName('OS_SERV5').asstring :=
              frmvenda.qrvenda_produto.FieldByName('PRODUTO').asstring;
            qrnotafiscal.FieldByName('OS_QTDE5').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('QTDE').asfloat;
            qrnotafiscal.FieldByName('OS_TOTAL5').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('TOTAL').asfloat;
            qrnotafiscal.FieldByName('OS_TOTAL_GERAL').asfloat :=
              qrnotafiscal.FieldByName('OS_TOTAL_GERAL').asfloat +
              qrnotafiscal.FieldByName('OS_TOTAL5').asfloat;
            qrnotafiscal.FieldByName('OS_UNIT5').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('unitario').asfloat;
          end;
          if xitemserv = 6 then
          begin
            qrnotafiscal.FieldByName('OS_COD6').asstring :=
              frmvenda.qrvenda_produto.FieldByName('CODPRODUTO').asstring;
            qrnotafiscal.FieldByName('OS_SERV6').asstring :=
              frmvenda.qrvenda_produto.FieldByName('PRODUTO').asstring;
            qrnotafiscal.FieldByName('OS_QTDE6').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('QTDE').asfloat;
            qrnotafiscal.FieldByName('OS_TOTAL6').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('TOTAL').asfloat;
            qrnotafiscal.FieldByName('OS_TOTAL_GERAL').asfloat :=
              qrnotafiscal.FieldByName('OS_TOTAL_GERAL').asfloat +
              qrnotafiscal.FieldByName('OS_TOTAL6').asfloat;
            qrnotafiscal.FieldByName('OS_UNIT6').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('unitario').asfloat;

          end;
          frmvenda.qrvenda_produto.Next;
        end
        else
          frmvenda.qrvenda_produto.Next;
      end;

      // total dos produtos
      qrnotafiscal.FieldByName('valor_produtos').asfloat :=
        qrvenda.FieldByName('total').asfloat - qrnotafiscal.FieldByName
        ('OS_TOTAL_GERAL').asfloat;

      VENDA_VEICULO := False;
      if VENDA_VEICULO then
      begin
        qrnotafiscal_item.insert;
        qrnotafiscal_item.FieldByName('CODNOTA').asstring :=
          qrnotafiscal.FieldByName('CODIGO').asstring;
        qrnotafiscal_item.FieldByName('CODPRODUTO').asstring :=
          frmvenda.qrvenda_produto.FieldByName('CODPRODUTO').asstring;
        qrnotafiscal_item.FieldByName('QTDE').asfloat :=
          frmvenda.qrvenda_produto.FieldByName('QTDE').asfloat;
        qrnotafiscal_item.FieldByName('TOTAL').asfloat :=
          frmvenda.qrvenda_produto.FieldByName('total').asfloat;

        qrnotafiscal_item.FieldByName('UNITARIO').asfloat :=
          frmvenda.qrvenda_produto.FieldByName('TOTAL').asfloat /
          frmvenda.qrvenda_produto.FieldByName('QTDE').asfloat;
        if qrcliente.FieldByName('uf').asstring = frmmodulo.qrfilial.FieldByName
          ('uf').asstring then
        begin
          vcfop1 := '5102';
          qrnotafiscal_item.FieldByName('CST').asstring := '060';
          qrnotafiscal_item.FieldByName('icms').asstring := '17';
          qrnotafiscal_item.FieldByName('cfop').asstring := '5102';
        end
        else
        begin
          vcfop1 := '6102';
          qrnotafiscal_item.FieldByName('CST').asstring := '060';
          qrnotafiscal_item.FieldByName('icms').asstring := '17';
          qrnotafiscal_item.FieldByName('cfop').asstring := '6102';
        end;
        texto1 := 'ISENTO DE ICMS CONF. SUB. TRIB. CONV. 52/93 E 88/94';
        texto2 := frmvenda.EDIT1.text;
        qrnotafiscal_item.Post;

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
            qrapoio.FieldByName('codproduto').asstring :=
              qrnotafiscal_item.FieldByName('codproduto').asstring
          else
            qrapoio.FieldByName('codproduto').asstring := '';
          qrapoio.FieldByName('produto').asstring := frmvenda.Memo1.Lines[i];
          if i = (frmvenda.Memo1.Lines.Count - 1) then
          begin
            qrapoio.FieldByName('qtde').asstring :=
              formatfloat('###,###,##0.000',
              qrnotafiscal_item.FieldByName('qtde').asfloat);
            qrapoio.FieldByName('unitario').asstring :=
              formatfloat('###,###,##0.0000',
              qrnotafiscal_item.FieldByName('unitario').asfloat);
            qrapoio.FieldByName('total').asstring :=
              formatfloat('###,###,##0.00',
              qrnotafiscal_item.FieldByName('total').asfloat);
            qrapoio.FieldByName('cf').asstring := qrnotafiscal_item.FieldByName
              ('classificacao_fiscal').asstring;
            qrapoio.FieldByName('str').asstring := qrnotafiscal_item.FieldByName
              ('cst').asstring;
            qrapoio.FieldByName('un').asstring := qrnotafiscal_item.FieldByName
              ('unidade').asstring;
            qrapoio.FieldByName('icms').asstring :=
              qrnotafiscal_item.FieldByName('icms').asstring;
            qrapoio.FieldByName('ipi').asstring := qrnotafiscal_item.FieldByName
              ('ipi').asstring;
          end;
          qrapoio.FieldByName('texto10').asstring :=
            frmprincipal.zerarcodigo(IntToStr(a), 6);
          a := a + 1;
          qrapoio.Post;
        end;
        // mudanca base calculo
        if frmmodulo.qrfilial.FieldByName('OPTANTE_SIMPLES').asstring = 'S' then
        begin
          texto1 := 'DOCUMENTO EMITIDO POR ME OU EPP';
          texto2 := 'OPTANTE PELO SIMPLES NACIOMAL';
          texto3 := 'NAO GERA DIREITO A CREDITO FISCAL DE ICMS E DE ISS E DE IPI';
          qrnotafiscal.FieldByName('BASE_CALCULO').asfloat := 0.00;
          qrnotafiscal.FieldByName('VALOR_ICMS').asfloat := 0.00;
          qrnotafiscal.Post;
        end
        else
        begin
          qrnotafiscal.FieldByName('BASE_CALCULO').asfloat := BASE_CALCULO;
          qrnotafiscal.FieldByName('VALOR_ICMS').asfloat := ICMS;
          qrnotafiscal.FieldByName('cfop').asstring := vcfop1;
          qrnotafiscal.Post;
        end;
      end
      else
      begin
        frmvenda.qrvenda_produto.First;

        while not frmvenda.qrvenda_produto.Eof do
        begin
          if frmvenda.qrvenda_produtoNUMERACAO.asstring <> 'OS' then
          begin
            qrnotafiscal_item.insert;
            qrnotafiscal_item.FieldByName('ITEM').ASINTEGER := frmvenda.qrvenda_produtoITEM.AsInteger;
            qrnotafiscal_item.FieldByName('CODNOTA').asstring :=
              qrnotafiscal.FieldByName('CODIGO').asstring;
            qrnotafiscal_item.FieldByName('CODPRODUTO').asstring :=
              frmvenda.qrvenda_produto.FieldByName('CODPRODUTO').asstring;
            qrnotafiscal_item.FieldByName('QTDE').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('QTDE').asfloat;
            qrnotafiscal_item.FieldByName('desconto').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('desconto').asfloat;
            qrnotafiscal_item.FieldByName('subtotal').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('total').asfloat -
              frmvenda.qrvenda_produto.FieldByName('desconto').asfloat;
            qrnotafiscal_item.FieldByName('UNITARIO').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('unitario').asfloat;
            qrnotafiscal_item.FieldByName('TOTAL').asfloat :=
              frmvenda.qrvenda_produto.FieldByName('TOTAL').asfloat;

            if frmmodulo.qrproduto.Locate('CODIGO',
              frmvenda.qrvenda_produto.FieldByName('CODPRODUTO').asstring,
              [loCaseInsensitive]) then
            begin
              qrnotafiscal_item.FieldByName('CLASSIFICACAO_FISCAL').asstring :=
                frmmodulo.qrprodutoCLASSIFICACAO_FISCAL.asstring;
              qrnotafiscal_item.FieldByName('CSOSN').asstring :=
                frmmodulo.qrprodutoCSOSN.asstring;
              qrnotafiscal_item.FieldByName('CODBARRA').asstring :=
                frmmodulo.qrprodutoCODBARRA.asstring;
            end;

            if desconto_nota > 0 then
            begin
              qrnotafiscal_item.FieldByName('desconto').asfloat :=
                qrnotafiscal_item.FieldByName('desconto').asfloat +
                (desconto_nota *
                (((qrnotafiscal_item.FieldByName('TOTAL').asfloat * 100) /
                frmvenda_fechamento.rsubtotal.Value) / 100));
              qrnotafiscal_item.FieldByName('TOTAL').asfloat :=
                qrnotafiscal_item.FieldByName('UNITARIO').asfloat *
                qrnotafiscal_item.FieldByName('QTDE').asfloat -
                qrnotafiscal_item.FieldByName('desconto').asfloat;
            end;

            if frmvenda.qrvenda_produto.recordcount > 0 then
            begin
              if frmvenda.qrvenda_produto.FieldByName('cst').asstring = '000'
              then
              begin
                if qrcliente.FieldByName('uf')
                  .asstring = frmmodulo.qrfilial.FieldByName('uf').asstring then
                begin
                  vcfop1 := '5102';
                  qrnotafiscal_item.FieldByName('CST').asstring := '000';
                  qrnotafiscal_item.FieldByName('icms').asstring :=
                    frmvenda.qrvenda_produto.FieldByName('ALIQUOTA').asstring;
                  qrnotafiscal_item.FieldByName('cfop').asstring := '5102';
                end
                else
                begin
                  vcfop1 := '6102';
                  qrnotafiscal_item.FieldByName('CST').asstring := '000';
                  qrnotafiscal_item.FieldByName('icms').asstring :=
                    frmvenda.qrvenda_produto.FieldByName('ALIQUOTA').asstring;
                  qrnotafiscal_item.FieldByName('cfop').asstring := '6102';
                end;

                BASE_CALCULO := BASE_CALCULO + qrnotafiscal_item.FieldByName
                  ('TOTAL').asfloat;
                if frmvenda.qrvenda_produto.FieldByName('ALIQUOTA').asfloat > 0
                then
                  ICMS := ICMS + (qrnotafiscal_item.FieldByName('TOTAL').asfloat
                    * (frmvenda.qrvenda_produto.FieldByName('ALIQUOTA')
                    .asfloat / 100))
              end
              else
              begin
                if qrcliente.FieldByName('uf')
                  .asstring = frmmodulo.qrfilial.FieldByName('uf').asstring then
                begin
                  vcfop2 := '5403';
                  qrnotafiscal_item.FieldByName('CST').asstring :=
                    frmvenda.qrvenda_produto.FieldByName('cst').asstring;
                  qrnotafiscal_item.FieldByName('icms').asstring :=
                    frmvenda.qrvenda_produto.FieldByName('ALIQUOTA').asstring;
                  qrnotafiscal_item.FieldByName('cfop').asstring := '5403';
                end
                else
                begin
                  vcfop2 := '6411';
                  qrnotafiscal_item.FieldByName('CST').asstring :=
                    frmvenda.qrvenda_produto.FieldByName('cst').asstring;
                  qrnotafiscal_item.FieldByName('icms').asstring :=
                    frmvenda.qrvenda_produto.FieldByName('ALIQUOTA').asstring;
                  qrnotafiscal_item.FieldByName('cfop').asstring := '6411';
                end;

              end;
            end
            else
            begin
              if qrcliente.FieldByName('uf')
                .asstring = frmmodulo.qrfilial.FieldByName('uf').asstring then
              begin
                vcfop1 := '5933';
                qrnotafiscal_item.FieldByName('CST').asstring := '000';
                qrnotafiscal_item.FieldByName('icms').asstring := '17';
                qrnotafiscal_item.FieldByName('cfop').asstring := '5933';
              end
              else
              begin
                vcfop1 := '6933';
                qrnotafiscal_item.FieldByName('CST').asstring := '000';
                qrnotafiscal_item.FieldByName('icms').asstring := '17';
                qrnotafiscal_item.FieldByName('cfop').asstring := '6933';
              end;
              texto1 := 'DOCUMENTO EMITIDO POR ME OU EPP';
              texto2 := 'OPTANTE PELO SIMPLES NACIOMAL';
              texto3 := 'NAO GERA DIREITO A CREDITO FISCAL DE ICMS E DE ISS E DE IPI';
              BASE_CALCULO := BASE_CALCULO + qrnotafiscal_item.FieldByName
                ('TOTAL').asfloat;
              if frmvenda.qrvenda_produto.FieldByName('ALIQUOTA').asfloat > 0
              then
                ICMS := ICMS + (qrnotafiscal_item.FieldByName('TOTAL').asfloat *
                  (frmvenda.qrvenda_produto.FieldByName('ALIQUOTA')
                  .asfloat / 100))

            end;

            tn := tn + qrnotafiscal_item.FieldByName('TOTAL').asfloat;
            qrnotafiscal_item.Post;
            frmvenda.qrvenda_produto.Next;
          end
          else
            frmvenda.qrvenda_produto.Next;
        end;

        if vcfop1 = '' then
        begin
          vcfop1 := vcfop2;
          vcfop2 := '';
        end;

        // mudanca base calculo
        if frmmodulo.qrfilial.FieldByName('OPTANTE_SIMPLES').asstring = 'S' then
        begin
          texto1 := 'DOCUMENTO EMITIDO POR ME OU EPP';
          texto2 := 'OPTANTE PELO SIMPLES NACIOMAL';
          texto3 := 'NAO GERA DIREITO A CREDITO FISCAL DE ICMS E DE ISS E DE IPI';
          qrnotafiscal.FieldByName('BASE_CALCULO').asfloat := 0.00;
          qrnotafiscal.FieldByName('VALOR_ICMS').asfloat := 0.00;
          qrnotafiscal.FieldByName('cfop').asstring := vcfop1;
          qrnotafiscal.Post;

        end
        else
        begin
          qrnotafiscal.FieldByName('BASE_CALCULO').asfloat := BASE_CALCULO;
          qrnotafiscal.FieldByName('VALOR_ICMS').asfloat := ICMS;
          qrnotafiscal.FieldByName('cfop').asstring := vcfop1;
          qrnotafiscal.Post;
        end;

        qrapoio.close;
        qrapoio.sql.clear;
        qrapoio.sql.add('delete from cl00004');
        qrapoio.execsql;
        qrapoio.close;
        qrapoio.sql.clear;
        qrapoio.sql.add('select * from cl00004 order by texto10');
        qrapoio.open;

        i := 1;
        qrnotafiscal_item.First;
        while not qrnotafiscal_item.Eof do
        begin
          qrapoio.insert;
          qrapoio.FieldByName('codproduto').asstring :=
            qrnotafiscal_item.FieldByName('codproduto').asstring;
          qrapoio.FieldByName('produto').asstring :=
            qrnotafiscal_item.FieldByName('produto').asstring;
          if qrnotafiscal_item.FieldByName('qtde').asfloat > 0 then
            qrapoio.FieldByName('qtde').asstring :=
              formatfloat('###,###,##0.000',
              qrnotafiscal_item.FieldByName('qtde').asfloat);
          if qrnotafiscal_item.FieldByName('unitario').asfloat > 0 then
            qrapoio.FieldByName('unitario').asstring :=
              formatfloat('###,###,##0.0000',
              qrnotafiscal_item.FieldByName('unitario').asfloat);

          if desconto_nota > 0 then
          begin
            if qrnotafiscal_item.FieldByName('total').asfloat > 0 then
            begin
              qrapoio.FieldByName('total').asstring :=
                formatfloat('###,###,##0.00',
                qrnotafiscal_item.FieldByName('subtotal').asfloat);
              qrapoio.FieldByName('unitario').asstring :=
                formatfloat('###,###,##0.00',
                qrnotafiscal_item.FieldByName('subtotal').asfloat);
            end
            else if qrnotafiscal_item.FieldByName('total').asfloat > 0 then
              qrapoio.FieldByName('total').asstring :=
                formatfloat('###,###,##0.00',
                qrnotafiscal_item.FieldByName('total').asfloat);
          end
          else
          begin
            qrapoio.FieldByName('total').asstring :=
              formatfloat('###,###,##0.00',
              qrnotafiscal_item.FieldByName('total').asfloat);
          end;

          qrapoio.FieldByName('cf').asstring := qrnotafiscal_item.FieldByName
            ('classificacao_fiscal').asstring;
          qrapoio.FieldByName('str').asstring := qrnotafiscal_item.FieldByName
            ('cst').asstring;
          qrapoio.FieldByName('un').asstring := qrnotafiscal_item.FieldByName
            ('unidade').asstring;
          qrapoio.FieldByName('icms').asstring := qrnotafiscal_item.FieldByName
            ('icms').asstring;
          qrapoio.FieldByName('ipi').asstring := qrnotafiscal_item.FieldByName
            ('ipi').asstring;
          qrapoio.FieldByName('texto8').asstring :=
            qrnotafiscal_item.FieldByName('cfop').asstring;
          qrapoio.FieldByName('texto7').asstring :=
            qrnotafiscal_item.FieldByName('codgrade').asstring;
          qrapoio.FieldByName('TEXTO10').asstring :=
            frmprincipal.zerarcodigo(IntToStr(i), 6);
          qrapoio.Post;
          i := i + 1;

          qrnotafiscal_item.Next;
        end;

        if qrvenda.FieldByName('DESCONTO').asfloat > 0 then
        begin
          qrapoio.insert;
          qrapoio.FieldByName('codproduto').asstring := '';
          qrapoio.FieldByName('produto').asstring := 'D E S C O N T O ';
          qrapoio.FieldByName('total').asstring := formatfloat('###,###,##0.00',
            qrvenda.FieldByName('DESCONTO').asfloat);
          qrapoio.FieldByName('TEXTO10').asstring :=
            frmprincipal.zerarcodigo(IntToStr(i), 6);
          qrapoio.Post;
          i := i + 1;

        end;

      end;

      qrapoio.REFRESH;

      frmmodulo.gera_nf := 1;
       //obs
      // if frmmodulo.qrconfigNF_TIPO.AsInteger = 1 then frmrel_nf.quickrep1.Preview;

      {frmnf_obs := tfrmnf_obs.create(self);
      frmnf_obs.EDIT1.text := texto1;
      frmnf_obs.edit2.text := texto2;
      frmnf_obs.edit3.text := texto3;
      frmnf_obs.showmodal; }

    except
      on e: Exception do
      begin
        ShowMessage(e.ClassName + ' ' + e.Message);
        frmmodulo.Conexao.Rollback;
        frmmodulo.Conexao.Commit
      end;
    end;

  end;
   if Self.Visible then
  close;
end;

procedure Tfrmvenda_impressao.TPImpressoClick(Sender: TObject);
begin
  TPNota_FiscalClick(frmvenda_impressao);
  // formulario continuo
end;

procedure Tfrmvenda_impressao.TPPersonalizadoClick(Sender: TObject);
begin
  TPNota_FiscalClick(frmvenda_impressao);
  // formulario manual
end;

procedure Tfrmvenda_impressao.TPa4tintaClick(Sender: TObject);
begin
  TPNota_FiscalClick(frmvenda_impressao);
  // nota fiscal eletronica composta
end;

procedure Tfrmvenda_impressao.TPCupom_FiscalClick(Sender: TObject);
begin
  frmmodulo.gera_nf := 0;
  frmmodulo.Conexao.Commit;
  close;

end;

procedure Tfrmvenda_impressao.Fechar2Click(Sender: TObject);
begin
  application.messagebox('Favor escolher o meio de impressao e clicar em "OK"!',
    'Atenção', mb_ok + mb_iconwarning);
  exit;
end;

procedure Tfrmvenda_impressao.Button1Click(Sender: TObject);
var
  f: textfile;
  DI, ME, AN, CID, texto: string;
  ITEM: integer;
begin
  ITEM := 1;
  if frmvenda.qrvenda_contasreceber.recordcount > 0 then
  begin
    ASSIGNFILE(f, porta_impressora);
    REWRITE(f);
    frmvenda.qrvenda_contasreceber.First;
    while not frmvenda.qrvenda_contasreceber.Eof do
    begin
      writeln(f, #27 + #51);
      writeln(f, #18 + #27#72 + #20, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      DI := copy(frmvenda.lvenda_data.caption, 1, 2);
      ME := copy(frmvenda.lvenda_data.caption, 4, 2);
      AN := copy(frmvenda.lvenda_data.caption, 7, 4);
      writeln(f,
        '                                                                   ' +
        DI + '  ' + ME + '  ' + AN); // 66
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');

      writeln(f, '  ' + frmprincipal.texto_justifica
        (formatfloat('###,###,###,##0.00', VALOR_NOTAZ), 10, ' ', 'E') +
        '       ' + frmprincipal.texto_justifica(numero_notaz, 10, ' ', 'D') +
        '   ' + frmprincipal.texto_justifica(formatfloat('###,###,###,##0.00',
        frmvenda.qrvenda_contasreceber.FieldByName('VALOR').asfloat), 10, ' ',
        'E') + '   ' + frmprincipal.texto_justifica(numero_notaz + '/' +
        frmprincipal.zerarcodigo(IntToStr(ITEM), 2), 10, ' ', 'D') + ' ' +
        frmprincipal.texto_justifica
        (DateToStr(frmvenda.qrvenda_contasreceber.FieldByName('vencimento')
        .asdatetime), 10, ' ', 'D'));

      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');

      writeln(f, '');
      writeln(f, '                             ' +
        frmvenda.qrcliente.FieldByName('nome').asstring); // 31
      writeln(f, '');
      writeln(f, '                             ' +
        frmvenda.qrcliente.FieldByName('ENDERECO').asstring);
      writeln(f, '');
      writeln(f, '');
      CID := frmvenda.qrcliente.FieldByName('Cidade').asstring;
      texto := CID + frmvenda.qrcliente.FieldByName('uf').asstring;
      while length(texto) < 36 do
      begin
        CID := CID + ' ';
        texto := CID + frmvenda.qrcliente.FieldByName('uf').asstring;
      end;
      texto := texto + '    ' + frmvenda.qrcliente.FieldByName('cep').asstring;
      writeln(f, '                             ' + texto); // 31
      writeln(f, '');
      writeln(f, '                               ' + EMITENTE_CIDADE); // 31
      writeln(f, '');
      writeln(f, '                               ' +
        frmvenda.qrcliente.FieldByName('cpf').asstring); // 31
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');

      texto := AnsiUpperCase
        (extenso(frmvenda.qrvenda_contasreceber.FieldByName('VALOR').asfloat));
      if copy(texto, 1, 2) = ' E' then
        DELETE(texto, 1, 2);
      writeln(f, '                          ' + #15 + #27#72 + #20 + texto);
      // 28
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');
      writeln(f, '');

      frmvenda.qrvenda_contasreceber.Next;
      ITEM := ITEM + 1;

    end;
    CLOSEFILE(f);

  end;

end;

procedure Tfrmvenda_impressao.BAPOIOClick(Sender: TObject);
var
  f: textfile;
  TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7: string;
  i: integer;
  NNOTA: integer;
begin
  frmvenda.qrcliente.close;
  frmvenda.qrcliente.sql.clear;
  frmvenda.qrcliente.sql.add('select * from c000007 where codigo = ''' +
    frmmodulo.qrnotafiscal.FieldByName('codcliente').asstring + '''');
  frmvenda.qrcliente.open;

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.sql.add('select * from c000010 where codigo = ''' +
    frmmodulo.qrnotafiscal.FieldByName('codtransportador').asstring + '''');
  frmmodulo.qrtransportador.open;

  cod_apoio := 1;
  frmvenda.qrapoio.close;
  frmvenda.qrapoio.sql.clear;
  frmvenda.qrapoio.sql.add('delete from cl00004');
  frmvenda.qrapoio.execsql;
  frmvenda.qrapoio.close;
  frmvenda.qrapoio.sql.clear;
  frmvenda.qrapoio.sql.add('select * from cl00004 order by texto10');
  frmvenda.qrapoio.open;

  frmmodulo.qrconfig.open;
  NNOTA := 0;

  i := 1;
  qrnotafiscal_item.REFRESH;
  qrnotafiscal_item.First;
  while not qrnotafiscal_item.Eof do
  begin
    if i = frmmodulo.qrconfig.FieldByName('NF_ITENS_PAGINA').asinteger then
    begin
      while i <> frmmodulo.qrconfig.FieldByName('NF_SALTO_PAGINA').asinteger do
      begin
        i := i + 1;
        if i = frmmodulo.qrconfig.FieldByName('NF_LINHA_TRANSPORTE').asinteger
        then
        begin
          frmvenda.qrapoio.insert;
          frmvenda.qrapoio.FieldByName('TOTAL').asstring := 'TRANSPORTAR';
          frmvenda.qrapoio.FieldByName('TEXTO1').asstring := 'XXXXXXXXXX';
          frmvenda.qrapoio.FieldByName('TEXTO2').asstring := 'XXXXXXXXXX';
          frmvenda.qrapoio.FieldByName('TEXTO3').asstring := 'XXXXXXXXXX';
          frmvenda.qrapoio.FieldByName('TEXTO4').asstring := 'XXXXXXXXXX';

          frmvenda.qrapoio.Post;
        end
        else
        begin
          frmvenda.qrapoio.insert;
          if i = frmmodulo.qrconfig.FieldByName('NF_LINHA_SUBTOTAL').asinteger
          then
          begin
            frmvenda.qrapoio.FieldByName('TEXTO1').asstring := 'XXXXXXXXXX';
            frmvenda.qrapoio.FieldByName('TEXTO2').asstring := 'XXXXXXXXXX';
            frmvenda.qrapoio.FieldByName('TEXTO3').asstring := 'XXXXXXXXXX';
            frmvenda.qrapoio.FieldByName('TEXTO4').asstring := 'XXXXXXXXXX';
            frmvenda.qrapoio.FieldByName('TEXTO6').asstring := 'XXXXXXXXXX';
          end;
          frmvenda.qrapoio.Post;
        end;
      end;
      frmvenda.qrapoio.insert;
      frmvenda.qrapoio.FieldByName('PRODUTO').asstring :=
        '*** T R A N S P O R T A D O ***';
      frmvenda.qrapoio.Post;
      frmvenda.qrapoio.insert;
      frmvenda.qrapoio.FieldByName('codproduto').asstring :=
        qrnotafiscal_item.FieldByName('codproduto').asstring;
      frmvenda.qrapoio.FieldByName('produto').asstring :=
        qrnotafiscal_item.FieldByName('produto').asstring;
      if qrnotafiscal_item.FieldByName('qtde').asfloat > 0 then
        frmvenda.qrapoio.FieldByName('qtde').asstring :=
          formatfloat('###,###,##0.000',
          qrnotafiscal_item.FieldByName('qtde').asfloat);
      if qrnotafiscal_item.FieldByName('unitario').asfloat > 0 then
        frmvenda.qrapoio.FieldByName('unitario').asstring :=
          formatfloat('###,###,##0.00',
          qrnotafiscal_item.FieldByName('unitario').asfloat);
      if qrnotafiscal_item.FieldByName('total').asfloat > 0 then
        frmvenda.qrapoio.FieldByName('total').asstring :=
          formatfloat('###,###,##0.00',
          qrnotafiscal_item.FieldByName('total').asfloat);
      frmvenda.qrapoio.FieldByName('cf').asstring :=
        qrnotafiscal_item.FieldByName('classificacao_fiscal').asstring;
      frmvenda.qrapoio.FieldByName('str').asstring :=
        qrnotafiscal_item.FieldByName('cst').asstring;
      frmvenda.qrapoio.FieldByName('un').asstring :=
        qrnotafiscal_item.FieldByName('unidade').asstring;
      frmvenda.qrapoio.FieldByName('icms').asstring :=
        qrnotafiscal_item.FieldByName('icms').asstring;
      frmvenda.qrapoio.FieldByName('ipi').asstring :=
        qrnotafiscal_item.FieldByName('ipi').asstring;
      frmvenda.qrapoio.Post;
      NNOTA := NNOTA + 1;
      i := 2;
    end
    else
    begin
      frmvenda.qrapoio.insert;
      frmvenda.qrapoio.FieldByName('codproduto').asstring :=
        qrnotafiscal_item.FieldByName('codproduto').asstring;
      frmvenda.qrapoio.FieldByName('produto').asstring :=
        qrnotafiscal_item.FieldByName('produto').asstring;
      if qrnotafiscal_item.FieldByName('qtde').asfloat > 0 then
        frmvenda.qrapoio.FieldByName('qtde').asstring :=
          formatfloat('###,###,##0.000',
          qrnotafiscal_item.FieldByName('qtde').asfloat);
      if qrnotafiscal_item.FieldByName('unitario').asfloat > 0 then
        frmvenda.qrapoio.FieldByName('unitario').asstring :=
          formatfloat('###,###,##0.00',
          qrnotafiscal_item.FieldByName('unitario').asfloat);
      if qrnotafiscal_item.FieldByName('total').asfloat > 0 then
        frmvenda.qrapoio.FieldByName('total').asstring :=
          formatfloat('###,###,##0.00',
          qrnotafiscal_item.FieldByName('total').asfloat);
      frmvenda.qrapoio.FieldByName('cf').asstring :=
        qrnotafiscal_item.FieldByName('classificacao_fiscal').asstring;
      frmvenda.qrapoio.FieldByName('str').asstring :=
        qrnotafiscal_item.FieldByName('cst').asstring;
      frmvenda.qrapoio.FieldByName('un').asstring :=
        qrnotafiscal_item.FieldByName('unidade').asstring;
      frmvenda.qrapoio.FieldByName('icms').asstring :=
        qrnotafiscal_item.FieldByName('icms').asstring;
      frmvenda.qrapoio.FieldByName('ipi').asstring :=
        qrnotafiscal_item.FieldByName('ipi').asstring;
      frmvenda.qrapoio.Post;
    end;
    qrnotafiscal_item.Next;
    i := i + 1;
  end;
  if frmmodulo.qrnotafiscal.FieldByName('desconto').asfloat > 0 then
  begin
    frmvenda.qrapoio.insert;
    frmvenda.qrapoio.FieldByName('produto').asstring := 'D E S C O N T O ';
    frmvenda.qrapoio.FieldByName('total').asstring :=
      formatfloat('###,###,##0.00', frmmodulo.qrnotafiscal.FieldByName
      ('DESCONTO').asfloat);
    frmvenda.qrapoio.Post;
  end;

  while i < frmmodulo.qrconfig.FieldByName('NF_ITENS_PAGINA').asinteger do
  begin
    frmvenda.qrapoio.insert;
    frmvenda.qrapoio.Post;
    i := i + 1;
  end;

  frmvenda.qrapoio.REFRESH;

end;

procedure Tfrmvenda_impressao.NFCupom1Click(Sender: TObject);
var
  arquivo: textfile;
  texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7, TEXTO8: string;
  BASE_CALCULO, ICMS: real;
  desconto_acrescimo, tn: real;
  tp_desconto_acrescimo, numero_cupom, aliquota: string;
  produto: string;
begin

  // NORMAL               --> #18+#27#72+#20
  // NORMAL NEGRITO       --> #18+#27#71+#20
  // FONTE GRANDE         --> #27#72+#14
  // FONTE GRANDE NEGRITO --> #27#71+#14
  // CONDENSADO           --> #15+#27#72+#20
  // CONDENSADO NEGRITO   --> #15+#27#71+#20
  // MEIA LINHA           --> #27#51
  // LINHA NORMAL         --> #27#50

  frmmodulo.qrnotafiscal.close;
  frmmodulo.qrnotafiscal.sql.clear;
  frmmodulo.qrnotafiscal.sql.add('select * from c000061');
  frmmodulo.qrnotafiscal.open;

  frmmodulo.qrnotafiscal.insert;
  frmmodulo.qrnotafiscal.FieldByName('codfilial').asstring := '000001';
  frmmodulo.qrnotafiscal.FieldByName('codigo').asstring :=
    frmprincipal.codifica('000061');
  frmmodulo.qrfilial.open;
  frmmodulo.qrfilial.Locate('codigo', '000001', [loCaseInsensitive]);

  frmvenda_nf := tfrmvenda_nf.create(self);
  frmvenda_nf.enf.text := frmprincipal.zerarcodigo
    (frmmodulo.qrfilial.FieldByName('notafiscal').asstring, 6);
  frmvenda_nf.showmodal;
  frmmodulo.qrnotafiscal.FieldByName('numero').asstring := numero_notaz;

  frmmodulo.qrnotafiscal.FieldByName('cfop').asstring := '1202';
  frmmodulo.qrnotafiscal.FieldByName('data').asstring :=
    frmvenda.lvenda_data.caption;
  frmmodulo.qrnotafiscal.FieldByName('data_saida').asstring :=
    frmvenda.lvenda_data.caption;
  frmmodulo.qrnotafiscal.FieldByName('hora').asstring := TimeToStr(time);
  frmmodulo.qrnotafiscal.FieldByName('codcliente').asstring :=
    frmvenda.lcliente_codigo.caption;
  frmmodulo.qrnotafiscal.FieldByName('desconto').asfloat := 0;
  frmmodulo.qrnotafiscal.FieldByName('situacao').asinteger := 1;
  frmmodulo.qrnotafiscal.FieldByName('INF1').asstring :=
    'DOCUMENTO EMITIDO POR ME OU EPP';

  if frmprincipal.vfil_simples = 'S' then
    frmmodulo.qrnotafiscal.FieldByName('INF2').asstring :=
      'OPTANTE PELO SIMPLES NACIONAL';
  if frmprincipal.vfil_ssimples = 'S' then
    frmmodulo.qrnotafiscal.FieldByName('INF2').asstring :=
      'OPTANTE PELO SUPER SIMPLES';

  frmmodulo.qrnotafiscal.FieldByName('INF3').asstring :=
    'NAO GERA DIREITO A CREDITO FISCAL DE ICMS E DE ISS';
  frmmodulo.qrnotafiscal.FieldByName('situacao_A').asstring := 'A';
  frmmodulo.qrnotafiscal.FieldByName('MODELO_NF').asstring := '01';
  frmmodulo.qrnotafiscal.FieldByName('SERIE_NF').asstring := '';
  frmmodulo.qrnotafiscal.FieldByName('SIT').asstring := 'N';
  frmmodulo.qrnotafiscal.FieldByName('MOVIMENTO').asstring := 'E';

  qrnotafiscal_item.close;
  qrnotafiscal_item.sql.clear;
  qrnotafiscal_item.sql.add('select * from c000062 where codnota = ''' +
    frmmodulo.qrnotafiscal.FieldByName('codigo').asstring + '''');
  qrnotafiscal_item.open;

  BASE_CALCULO := 0;
  ICMS := 0;

  tn := 0;
  frmvenda.qrvenda_produto.First;
  while not frmvenda.qrvenda_produto.Eof do
  begin
    if frmvenda.qrvenda_produto.FieldByName('qtde').asfloat < 0 then
    begin
      qrnotafiscal_item.insert;
      qrnotafiscal_item.FieldByName('CODNOTA').asstring :=
        frmmodulo.qrnotafiscal.FieldByName('CODIGO').asstring;
      qrnotafiscal_item.FieldByName('CODPRODUTO').asstring :=
        frmvenda.qrvenda_produto.FieldByName('CODPRODUTO').asstring;
      qrnotafiscal_item.FieldByName('QTDE').asfloat :=
        frmvenda.qrvenda_produto.FieldByName('QTDE').asfloat * (-1);
      qrnotafiscal_item.FieldByName('TOTAL').asfloat :=
        frmvenda.qrvenda_produto.FieldByName('TOTAL').asfloat * (-1);
      qrnotafiscal_item.FieldByName('UNITARIO').asfloat :=
        qrnotafiscal_item.FieldByName('TOTAL').asfloat /
        qrnotafiscal_item.FieldByName('QTDE').asfloat;
      qrnotafiscal_item.FieldByName('CFOP').asstring := '1202';
      qrnotafiscal_item.FieldByName('CST').asstring :=
        frmvenda.qrvenda_produto.FieldByName('CST').asstring;
      qrnotafiscal_item.FieldByName('ICMS').asstring := '0';
      qrnotafiscal_item.FieldByName('codlancamento').asstring := 'XXXXXX';
      tn := tn + (frmvenda.qrvenda_produto.FieldByName('TOTAL').asfloat * (-1));
      qrnotafiscal_item.Post;
    end;

    frmvenda.qrvenda_produto.Next;
  end;
  frmmodulo.qrnotafiscal.FieldByName('valor_produtos').asfloat := tn;
  frmmodulo.qrnotafiscal.FieldByName('total_nota').asfloat := tn;

  frmmodulo.qrnotafiscal.FieldByName('BASE_CALCULO').asfloat := 0;
  frmmodulo.qrnotafiscal.FieldByName('VALOR_ICMS').asfloat := 0;
  frmmodulo.qrnotafiscal.Post;

  VALOR_NOTAZ := frmmodulo.qrnotafiscal.FieldByName('total_nota').asfloat;

  BAPOIOClick(frmvenda_impressao);

  ASSIGNFILE(arquivo, porta_impressora);
  REWRITE(arquivo);
  writeln(arquivo, #27 + #51);
  writeln(arquivo, #15 + #27#72 + #20, '');
  writeln(arquivo, '');
  writeln(arquivo,
    '                                                                                                                             '
    + #18 + #27#71 + #20 + frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('numero').asstring, 6, '0', 'E') + #15 +
    #27#72 + #20);
  writeln(arquivo,
    '                                                                                                  X');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('natureza').asstring, 41, ' ', 'D') +
    ' ' + frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('CFOP').asstring, 6, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica(frmvenda.qrcliente.FieldByName
    ('NOME').asstring, 90, ' ', 'D') + ' ' + frmprincipal.texto_justifica
    (frmvenda.qrcliente.FieldByName('CPF').asstring, 32, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName('DATA')
    .asstring, 10, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica(frmvenda.qrcliente.FieldByName
    ('ENDERECO').asstring, 68, ' ', 'D') + ' ' + frmprincipal.texto_justifica
    (frmvenda.qrcliente.FieldByName('BAIRRO').asstring, 24, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(frmvenda.qrcliente.FieldByName('CEP').asstring,
    29, ' ', 'D') + ' ' + frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('DATA').asstring, 10, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica(frmvenda.qrcliente.FieldByName
    ('CIDADE').asstring, 50, ' ', 'D') + ' ' + frmprincipal.texto_justifica
    (frmvenda.qrcliente.FieldByName('TELEFONE1').asstring + '  ' +
    frmvenda.qrcliente.FieldByName('TELEFONE2').asstring, 27, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(frmvenda.qrcliente.FieldByName('UF').asstring,
    6, ' ', 'D') + ' ' + frmprincipal.texto_justifica
    (frmvenda.qrcliente.FieldByName('RG').asstring, 38, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(TimeToStr(time), 10, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  if frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR1').asfloat <> 0 then
    texto1 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR1').asfloat);
  if frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR2').asfloat <> 0 then
    texto2 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR2').asfloat);
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_NUMERO1').asstring, 31,
    ' ', 'D') + ' ' + frmprincipal.texto_justifica(texto1, 15, ' ', 'E') +
    '     ' + frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_DATA1').asstring, 17, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_NUMERO2').asstring, 31, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(texto2, 16, ' ', 'E') + '     ' +
    frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_DATA2').asstring, 10, ' ', 'D'));
  writeln(arquivo, '');
  if frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR3').asfloat <> 0 then
    texto1 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR1').asfloat)
  else
    texto1 := '';
  if frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR4').asfloat <> 0 then
    texto2 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR2').asfloat)
  else
    texto2 := '';
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_NUMERO3').asstring, 31,
    ' ', 'D') + ' ' + frmprincipal.texto_justifica(texto1, 15, ' ', 'E') +
    '     ' + frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_DATA3').asstring, 17, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_NUMERO4').asstring, 31, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(texto2, 16, ' ', 'E') + '     ' +
    frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_DATA4').asstring, 10, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  // writeln(arquivo,'');
  // writeln(arquivo,'');
  // writeln(arquivo,'');
  // writeln(arquivo,'');
  // writeln(arquivo,'');

  frmvenda.qrapoio.open;
  frmvenda.REFRESH;
  frmvenda.qrapoio.First;
  while not frmvenda.qrapoio.Eof do
  begin
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('codproduto').asstring, 9, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('Produto').asstring, 59, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('CF').asstring, 0, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('STR').asstring, 5, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('UN').asstring, 3, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('QTDE').asstring, 9, ' ', 'E') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('UNITARIO').asstring, 13, ' ', 'E') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('TOTAL').asstring, 18, ' ', 'E') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('ICMS').asstring, 4, ' ', 'E') + ' ');
    writeln(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('IPI').asstring, 3, ' ', 'E'));
    writeln(arquivo, '');
    frmvenda.qrapoio.Next;
  end;

  if (frmmodulo.qrnotafiscal.FieldByName('BASE_CALCULO').asfloat <> 0) and
    (frmprincipal.vfil_ssimples = 'N') then
    texto1 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('BASE_CALCULO').asfloat)
  else
    texto1 := '';
  if (frmmodulo.qrnotafiscal.FieldByName('VALOR_ICMS').asfloat <> 0) and
    (frmprincipal.vfil_ssimples = 'N') then
    texto2 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('VALOR_ICMS').asfloat)
  else
    texto2 := '';
  if (frmmodulo.qrnotafiscal.FieldByName('BASE_SUB').asfloat <> 0) and
    (frmprincipal.vfil_ssimples = 'N') then
    texto3 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('BASE_SUB').asfloat)
  else
    texto3 := '';
  if (frmmodulo.qrnotafiscal.FieldByName('ICMS_SUB').asfloat <> 0) and
    (frmprincipal.vfil_ssimples = 'N') then
    texto4 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('ICMS_SUB').asfloat)
  else
    texto4 := '';

  if frmmodulo.qrnotafiscal.FieldByName('VALOR_PRODUTOS').asfloat <> 0 then
    texto5 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('VALOR_PRODUTOS').asfloat)
  else
    texto5 := '';
  write(arquivo, frmprincipal.texto_justifica(texto1, 24, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto2, 25, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto3, 25, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto4, 25, ' ', 'E') + ' ');
  writeln(arquivo, frmprincipal.texto_justifica(texto5, 25, ' ', 'E') + ' ');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  if frmmodulo.qrnotafiscal.FieldByName('FRETE').asfloat <> 0 then
    texto1 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('FRETE').asfloat)
  else
    texto1 := '';
  if frmmodulo.qrnotafiscal.FieldByName('SEGURO').asfloat <> 0 then
    texto2 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('SEGURO').asfloat)
  else
    texto2 := '';
  if frmmodulo.qrnotafiscal.FieldByName('OUTRAS_DESPESAS').asfloat <> 0 then
    texto3 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('OUTRAS_DESPESAS').asfloat)
  else
    texto3 := '';
  if frmmodulo.qrnotafiscal.FieldByName('VALOR_TOTAL_IPI').asfloat <> 0 then
    texto4 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('VALOR_TOTAL_IPI').asfloat)
  else
    texto4 := '';
  if frmmodulo.qrnotafiscal.FieldByName('TOTAL_NOTA').asfloat <> 0 then
    texto5 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('TOTAL_NOTA').asfloat)
  else
    texto5 := '';
  write(arquivo, frmprincipal.texto_justifica(texto1, 24, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto2, 25, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto3, 25, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto4, 25, ' ', 'E') + ' ');
  writeln(arquivo, frmprincipal.texto_justifica(texto5, 25, ' ', 'E') + ' ');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('transportador').asstring, 74, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FRETE_CONTA').asstring, 4, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('placa').asstring, 18, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('placa_uf').asstring, 8, ' ', 'D') + ' ');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('transp_cpf').asstring, 25, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('transp_ENDERECO').asstring, 59, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('TRANSP_CIDADE').asstring, 37, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('TRANSP_UF').asstring, 15, ' ', 'D') + ' ');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('transp_RG').asstring, 25, ' ', 'D'));
  // writeln(arquivo,'');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('VOL_QTDE').asstring, 22, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('VOL_ESPECIE').asstring, 25, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('VOL_MARCA').asstring, 20, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('VOL_NUMERO').asstring, 25, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('PESO_BRUTO').asstring, 20, ' ', 'D') + ' ');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('PESO_LIQUIDO').asstring, 20,
    ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('INF1').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('INF2').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('INF3').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('INF4').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('INF5').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');

  writeln(arquivo,
    '                                                                                                                             '
    + #18 + #27#71 + #20 + frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('numero').asstring, 6, '0', 'E') + #15 +
    #27#72 + #20);
  writeln(arquivo, #27 + #50);
  // WRITELN(ARQUIVO,#12);

  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');

  IBQuery1.close;
  IBQuery1.sql.clear;
  IBQuery1.sql.add('update c000048 set NUMERO_CUPOM_FISCAL = ''' +
    frmmodulo.qrnotafiscal.FieldByName('NUMERO').asstring + '''');
  IBQuery1.sql.add('where codigo = ''' + qrvenda.FieldByName('codigo')
    .asstring + '''');
  IBQuery1.execsql;

  CLOSEFILE(arquivo);

  frmmodulo.qrfilial.edit;
  frmmodulo.qrfilial.FieldByName('notafiscal').asinteger :=
    frmmodulo.qrfilial.FieldByName('notafiscal').asinteger + 1;
  frmmodulo.qrfilial.Post;

  application.messagebox('Pressione [ENTER] para Imprimir o Cupom Fiscal.',
    'Aviso', mb_ok + MB_ICONINFORMATION);



  // TRY

  frmmodulo.qrconfig.open;
  if frmmodulo.qrconfig.FieldByName('ECF_TIPO').asstring = 'ECF-Remoto' then
  begin
    // lançamento do cupom
    frmmodulo.qrecf_comando.open;
    frmmodulo.qrecf_comando.insert;
    frmmodulo.qrecf_comando.FieldByName('sequencia').asstring :=
      frmprincipal.codifica('000072');
    frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'VENDA';
    frmmodulo.qrecf_comando.FieldByName('numero').asstring :=
      qrvenda.FieldByName('codigo').asstring;
    frmmodulo.qrecf_comando.FieldByName('desconto').asfloat :=
      qrvenda.FieldByName('desconto').asfloat;
    frmmodulo.qrecf_comando.FieldByName('acrescimo').asfloat :=
      qrvenda.FieldByName('acrescimo').asfloat;
    frmmodulo.qrecf_comando.FieldByName('dinheiro').asfloat :=
      qrvenda.FieldByName('meio_dinheiro').asfloat;
    frmmodulo.qrecf_comando.FieldByName('chequeav').asfloat :=
      qrvenda.FieldByName('meio_chequeav').asfloat;
    frmmodulo.qrecf_comando.FieldByName('chequeap').asfloat :=
      qrvenda.FieldByName('meio_chequeap').asfloat;
    frmmodulo.qrecf_comando.FieldByName('cartaocred').asfloat :=
      qrvenda.FieldByName('meio_cartaocred').asfloat;
    frmmodulo.qrecf_comando.FieldByName('cartaodeb').asfloat :=
      qrvenda.FieldByName('meio_cartaodeb').asfloat;
    frmmodulo.qrecf_comando.FieldByName('promissoria').asfloat :=
      qrvenda.FieldByName('meio_crediario').asfloat;

    frmmodulo.qrecf_comando.FieldByName('cliente').asstring := CLIENTE_NOME;
    frmmodulo.qrecf_comando.FieldByName('endereco').asstring :=
      CLIENTE_ENDERECO;
    frmmodulo.qrecf_comando.FieldByName('cidade').asstring := CLIENTE_CIDADE +
      '/' + CLIENTE_UF;
    frmmodulo.qrecf_comando.FieldByName('cpf').asstring := CLIENTE_CPF;
    frmmodulo.qrecf_comando.FieldByName('convenio').asstring := '';
    frmmodulo.qrecf_comando.FieldByName('vendedor').asstring :=
      qrvenda.FieldByName('codvendedor').asstring;
    frmmodulo.qrecf_comando.Post;
    // lancamento dos itens do cupom
    frmvenda.qrvenda_produto.First;

    while not frmvenda.qrvenda_produto.Eof do
    begin
      frmmodulo.qrproduto.close;
      frmmodulo.qrproduto.sql.clear;
      frmmodulo.qrproduto.sql.add('SELECT * FROM C000025 WHERE CODIGO = ''' +
        frmvenda.qrvenda_produto.FieldByName('codproduto').asstring + '''');
      frmmodulo.qrproduto.open;
      if frmmodulo.qrproduto.RECno = 1 then
      begin
        if frmvenda.qrvenda_produto.FieldByName('serial').asstring <> '' then
          produto := frmmodulo.qrproduto.FieldByName('produto').asstring + ' ['
            + frmvenda.qrvenda_produto.FieldByName('serial').asstring + ']'
        else
          produto := frmmodulo.qrproduto.FieldByName('produto').asstring;

        frmmodulo.qrecf_item.open;
        frmmodulo.qrecf_item.insert;
        frmmodulo.qrecf_item.FieldByName('numero').asstring :=
          qrvenda.FieldByName('codigo').asstring;
        frmmodulo.qrecf_item.FieldByName('codproduto').asstring :=
          frmmodulo.qrproduto.FieldByName('codigo').asstring;
        frmmodulo.qrecf_item.FieldByName('produto').asstring :=
          frmmodulo.qrproduto.FieldByName('produto').asstring;
        frmmodulo.qrecf_item.FieldByName('unidade').asstring :=
          frmmodulo.qrproduto.FieldByName('unidade').asstring;
        if frmmodulo.qrproduto.FieldByName('codaliquota').asstring = '' then
          frmmodulo.qrecf_item.FieldByName('aliquota').asstring := 'FF'
        else
          frmmodulo.qrecf_item.FieldByName('aliquota').asstring :=
            frmmodulo.qrproduto.FieldByName('codaliquota').asstring;
        frmmodulo.qrecf_item.FieldByName('qtde').asfloat :=
          frmvenda.qrvenda_produto.FieldByName('qtde').asfloat;
        frmmodulo.qrecf_item.FieldByName('valor').asfloat :=
          frmvenda.qrvenda_produto.FieldByName('unitario').asfloat;
        frmmodulo.qrecf_item.FieldByName('desconto').asfloat :=
          frmvenda.qrvenda_produto.FieldByName('desconto').asfloat;
        frmmodulo.qrecf_item.FieldByName('acrescimo').asfloat :=
          frmvenda.qrvenda_produto.FieldByName('acrescimo').asfloat;

        frmmodulo.qrecf_item.Post;
      end;

      frmvenda.qrvenda_produto.Next;
    end;
    frmmodulo.Conexao.Commit;
    frmmodulo.conexao_ecfserver.Commit;
  end
  else
  begin

    tn := 0;

    frmvenda.qrvenda_produto.First;

    if ecf_abre_cupom(ecf_modelo, '') = 'ERRO' then
      exit;
    numero_cupomx := ecf_numero_cupom(ecf_modelo);

    while not frmvenda.qrvenda_produto.Eof do
    begin
      if frmvenda.qrvenda_produto.FieldByName('qtde').asfloat > 0 then
      begin
        frmmodulo.qrproduto.close;
        frmmodulo.qrproduto.sql.clear;
        frmmodulo.qrproduto.sql.add('SELECT * FROM C000025 WHERE CODIGO = ''' +
          frmvenda.qrvenda_produto.FieldByName('codproduto').asstring + '''');
        frmmodulo.qrproduto.open;
        if frmmodulo.qrproduto.RECno = 1 then
        begin
          if frmvenda.qrvenda_produto.FieldByName('serial').asstring <> '' then
          begin
            produto := frmmodulo.qrproduto.FieldByName('produto').asstring +
              ' [' + frmvenda.qrvenda_produto.FieldByName('serial')
              .asstring + ']';
          end
          else
          begin
            produto := frmmodulo.qrproduto.FieldByName('produto').asstring;
          end;

          desconto_acrescimo := frmvenda.qrvenda_produto.FieldByName('desconto')
            .asfloat - frmvenda.qrvenda_produto.FieldByName
            ('acrescimo').asfloat;
          if desconto_acrescimo < 0 then
            tp_desconto_acrescimo := 'A'
          else
            tp_desconto_acrescimo := 'D';

          if (frmmodulo.qrproduto.FieldByName('CST').asstring = '060') or
            (frmmodulo.qrproduto.FieldByName('CST').asstring = '010') or
            (frmmodulo.qrproduto.FieldByName('CST').asstring = '070') then
            aliquota := 'FF'
          else if (frmmodulo.qrproduto.FieldByName('CST').asstring = '040') or
            (frmmodulo.qrproduto.FieldByName('CST').asstring = '030') then
            aliquota := 'II'
          else if (frmmodulo.qrproduto.FieldByName('CST').asstring = '041') or
            (frmmodulo.qrproduto.FieldByName('CST').asstring = '050') or
            (frmmodulo.qrproduto.FieldByName('CST').asstring = '051') or
            (frmmodulo.qrproduto.FieldByName('CST').asstring = '090') then
            aliquota := 'NN'
          else
          begin
            aliquota := formatfloat('00.00',
              frmmodulo.qrproduto.FieldByName('aliquota').asfloat);
          end;

          if ecf_vende_item_completo(ecf_modelo,
            frmmodulo.qrproduto.FieldByName('codigo').asstring,
            frmprincipal.RemoveAcentos(produto), aliquota,
            frmvenda.qrvenda_produto.FieldByName('UNITARIO').asfloat,
            frmvenda.qrvenda_produto.FieldByName('QTDE').asfloat,
            frmvenda.qrvenda_produto.FieldByName('desconto').asfloat,
            frmvenda.qrvenda_produto.FieldByName('acrescimo').asfloat,
            frmmodulo.qrproduto.FieldByName('unidade').asstring, 0) = 'ERRO'
          then
          begin
            application.messagebox
              ('Houve erro na impressão do item! Favor verificar!', 'Atenção',
              mb_ok + mb_iconerror);
            exit;
          end;
          tn := tn + (frmvenda.qrvenda_produto.FieldByName('qtde').asfloat *
            frmvenda.qrvenda_produto.FieldByName('unitario').asfloat);
        end;
      end;
      frmvenda.qrvenda_produto.Next;
    end;

    tn := tn + frmvenda_fechamento.rtotal.Value;

    (* -----------------INICIAR FECHAMENTO DO CUPOM------------------------- *)

    desconto_acrescimo := frmvenda_fechamento.rdesconto2.Value -
      frmvenda_fechamento.racrescimo2.Value;
    if desconto_acrescimo < 0 then
    begin
      tp_desconto_acrescimo := 'A';
      desconto_acrescimo := desconto_acrescimo * (-1);
    end
    else
      tp_desconto_acrescimo := 'D';

    if ecf_inicia_fechamento_cupom(ecf_modelo, tp_desconto_acrescimo, '$',
      desconto_acrescimo, 0) = 'ERRO' then
      exit;
    (* --------------------------------------------------------------------- *)

    (* ---------------- LANÇAR AS FORMAS DE PAGAMENTO ---------------------- *)
    if frmvenda_fechamento.rdinheiro.Value > 0 then
    begin
      if ecf_efetua_forma_pgto(ecf_modelo, 'Dinheiro',
        tn - frmvenda_fechamento.rdinheiro.Value) = 'ERRO' then
        exit;
    end;
  end;
  if frmvenda_fechamento.rchequeav.Value > 0 then
  begin
    if ecf_efetua_forma_pgto(ecf_modelo, 'Cheque',
      tn - frmvenda_fechamento.rchequeav.Value) = 'ERRO' then
      exit;
  end;
  if frmvenda_fechamento.rchequeap.Value > 0 then
  begin
    if ecf_efetua_forma_pgto(ecf_modelo, 'Cheque-pre',
      tn - frmvenda_fechamento.rchequeap.Value) = 'ERRO' then
      exit;
  end;
  if frmvenda_fechamento.rcartaocred.Value > 0 then
  begin
    if ecf_efetua_forma_pgto(ecf_modelo, 'Cartao',
      tn - frmvenda_fechamento.rcartaocred.Value) = 'ERRO' then
      exit;
  end;
  if frmvenda_fechamento.rcartaodeb.Value > 0 then
  begin
    if ecf_efetua_forma_pgto(ecf_modelo, 'Cartao',
      tn - frmvenda_fechamento.rcartaodeb.Value) = 'ERRO' then
      exit;
  end;
  if frmvenda_fechamento.rcrediario.Value > 0 then
  begin
    if ecf_efetua_forma_pgto(ecf_modelo, 'Promissoria',
      tn - frmvenda_fechamento.rcrediario.Value) = 'ERRO' then
      exit;
  end;
  (* --------------------------------------------------------------------- *)

  (* ---------------- IDENTIFICACAO DO CONSUMIDOR------------------------- *)

  if frmvenda.qrcliente.FieldByName('codigo').asstring <>
    frmvenda.lcliente_codigo.caption then
  begin
    frmvenda.qrcliente.close;
    frmvenda.qrcliente.sql.clear;
    frmvenda.qrcliente.sql.add('select * from c000007 where codigo = ''' +
      frmvenda.lcliente_codigo.caption + '''');
    frmvenda.qrcliente.open;
  end;

  if ecf_termina_fechamento(ecf_modelo,
    frmprincipal.texto_justifica('CLIENTE.: ' + frmvenda.qrcliente.FieldByName
    ('nome').asstring, 48, ' ', 'D') + #10 + frmprincipal.texto_justifica
    (('ENDERECO: ' + frmvenda.qrcliente.FieldByName('endereco').asstring + ' ' +
    frmvenda.qrcliente.FieldByName('bairro').asstring + ' ' +
    frmvenda.qrcliente.FieldByName('cidade').asstring), 48, ' ', 'D') + #10 +
    frmprincipal.texto_justifica('CPF/CNPJ: ' + frmvenda.qrcliente.FieldByName
    ('cpf').asstring, 42, ' ', 'D') + #10 +
    '------------------------------------------------' + #10 +
    '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' then
    exit;

  IBQuery1.close;
  IBQuery1.sql.clear;
  IBQuery1.sql.add
    ('update c000048 set cupom_fiscal = 1, NUMERO_CUPOM_FISCAL = ''' +
    numero_cupomx + '''');
  IBQuery1.sql.add('where codigo = ''' + qrvenda.FieldByName('codigo')
    .asstring + '''');
  IBQuery1.execsql;




  // EXCEPT
  // showmessage('Esta função gerou erro! O procedimento foi abortado!');
  // END;
  // JOAQUIM

end;

procedure Tfrmvenda_impressao.NFNF1Click(Sender: TObject);
var
  arquivo: textfile;
  texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7, TEXTO8: string;
  BASE_CALCULO, ICMS: real;
  desconto_acrescimo, tn: real;
  tp_desconto_acrescimo, numero_cupom, aliquota: string;
  produto: string;
begin

  // NORMAL               --> #18+#27#72+#20
  // NORMAL NEGRITO       --> #18+#27#71+#20
  // FONTE GRANDE         --> #27#72+#14
  // FONTE GRANDE NEGRITO --> #27#71+#14
  // CONDENSADO           --> #15+#27#72+#20
  // CONDENSADO NEGRITO   --> #15+#27#71+#20
  // MEIA LINHA           --> #27#51
  // LINHA NORMAL         --> #27#50

  frmmodulo.qrnotafiscal.close;
  frmmodulo.qrnotafiscal.sql.clear;
  frmmodulo.qrnotafiscal.sql.add('select * from c000061');
  frmmodulo.qrnotafiscal.open;

  frmmodulo.qrnotafiscal.insert;
  frmmodulo.qrnotafiscal.FieldByName('codfilial').asstring := '000001';
  frmmodulo.qrnotafiscal.FieldByName('codigo').asstring :=
    frmprincipal.codifica('000061');
  frmmodulo.qrfilial.open;
  frmmodulo.qrfilial.Locate('codigo', '000001', [loCaseInsensitive]);

  frmvenda_nf := tfrmvenda_nf.create(self);
  frmvenda_nf.enf.text := frmprincipal.zerarcodigo
    (frmmodulo.qrfilial.FieldByName('notafiscal').asstring, 6);
  frmvenda_nf.showmodal;
  frmmodulo.qrnotafiscal.FieldByName('numero').asstring := numero_notaz;

  frmmodulo.qrnotafiscal.FieldByName('cfop').asstring := '1202';
  frmmodulo.qrnotafiscal.FieldByName('data').asstring :=
    frmvenda.lvenda_data.caption;
  frmmodulo.qrnotafiscal.FieldByName('data_saida').asstring :=
    frmvenda.lvenda_data.caption;
  frmmodulo.qrnotafiscal.FieldByName('hora').asstring := TimeToStr(time);
  frmmodulo.qrnotafiscal.FieldByName('codcliente').asstring :=
    frmvenda.lcliente_codigo.caption;
  frmmodulo.qrnotafiscal.FieldByName('desconto').asfloat := 0;
  frmmodulo.qrnotafiscal.FieldByName('situacao').asinteger := 1;
  frmmodulo.qrnotafiscal.FieldByName('INF1').asstring :=
    'DOCUMENTO EMITIDO POR ME OU EPP';
  if frmprincipal.vfil_simples = 'S' then
    frmmodulo.qrnotafiscal.FieldByName('INF2').asstring :=
      'OPTANTE PELO SIMPLES NACIONAL';
  if frmprincipal.vfil_ssimples = 'S' then
    frmmodulo.qrnotafiscal.FieldByName('INF2').asstring :=
      'OPTANTE PELO SUPER SIMPLES';

  frmmodulo.qrnotafiscal.FieldByName('INF3').asstring :=
    'NAO GERA DIREITO A CREDITO FISCAL DE ICMS E DE ISS';
  frmmodulo.qrnotafiscal.FieldByName('situacao_A').asstring := 'A';
  frmmodulo.qrnotafiscal.FieldByName('MODELO_NF').asstring := '01';
  frmmodulo.qrfilial.open;
  frmmodulo.qrnotafiscal.FieldByName('SERIE_NF').asstring :=
    IntToStr(frmmodulo.qrfilial.FieldByName('NOTAFISCAL').asinteger);
  frmmodulo.qrnotafiscal.FieldByName('SIT').asstring := 'N';
  frmmodulo.qrnotafiscal.FieldByName('MOVIMENTO').asstring := 'E';

  qrnotafiscal_item.close;
  qrnotafiscal_item.sql.clear;
  qrnotafiscal_item.sql.add('select * from c000062 where codnota = ''' +
    frmmodulo.qrnotafiscal.FieldByName('codigo').asstring + '''');
  qrnotafiscal_item.open;

  BASE_CALCULO := 0;
  ICMS := 0;

  tn := 0;
  frmvenda.qrvenda_produto.First;
  while not frmvenda.qrvenda_produto.Eof do
  begin
    if frmvenda.qrvenda_produto.FieldByName('qtde').asfloat < 0 then
    begin
      qrnotafiscal_item.insert;
      qrnotafiscal_item.FieldByName('CODNOTA').asstring :=
        frmmodulo.qrnotafiscal.FieldByName('CODIGO').asstring;
      qrnotafiscal_item.FieldByName('CODPRODUTO').asstring :=
        frmvenda.qrvenda_produto.FieldByName('CODPRODUTO').asstring;
      qrnotafiscal_item.FieldByName('QTDE').asfloat :=
        frmvenda.qrvenda_produto.FieldByName('QTDE').asfloat * (-1);
      qrnotafiscal_item.FieldByName('TOTAL').asfloat :=
        frmvenda.qrvenda_produto.FieldByName('TOTAL').asfloat * (-1);
      qrnotafiscal_item.FieldByName('UNITARIO').asfloat :=
        qrnotafiscal_item.FieldByName('TOTAL').asfloat /
        qrnotafiscal_item.FieldByName('QTDE').asfloat;
      if ZQuery1.Locate('codigo', qrnotafiscal_item.FieldByName('CODPRODUTO')
        .asstring, [loCaseInsensitive]) then
      begin
        qrnotafiscal_item.FieldByName('CFOP').asstring :=
          ZQuery1.FieldByName('IND_CFOP').asstring;
      end;
      qrnotafiscal_item.FieldByName('CST').asstring :=
        frmvenda.qrvenda_produto.FieldByName('CST').asstring;
      qrnotafiscal_item.FieldByName('ICMS').asstring := '0';
      qrnotafiscal_item.FieldByName('codlancamento').asstring := 'XXXXXX';
      tn := tn + (frmvenda.qrvenda_produto.FieldByName('TOTAL').asfloat * (-1));
      qrnotafiscal_item.Post;
    end;

    frmvenda.qrvenda_produto.Next;
  end;
  frmmodulo.qrnotafiscal.FieldByName('valor_produtos').asfloat := tn;
  frmmodulo.qrnotafiscal.FieldByName('total_nota').asfloat := tn;

  frmmodulo.qrnotafiscal.FieldByName('BASE_CALCULO').asfloat := 0;
  frmmodulo.qrnotafiscal.FieldByName('VALOR_ICMS').asfloat := 0;
  frmmodulo.qrnotafiscal.Post;

  VALOR_NOTAZ := frmmodulo.qrnotafiscal.FieldByName('total_nota').asfloat;

  BAPOIOClick(frmvenda_impressao);

  ASSIGNFILE(arquivo, porta_impressora);
  REWRITE(arquivo);
  writeln(arquivo, #27 + #51);
  writeln(arquivo, #15 + #27#72 + #20, '');
  writeln(arquivo, '');
  writeln(arquivo,
    '                                                                                                                             '
    + #18 + #27#71 + #20 + frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('numero').asstring, 6, '0', 'E') + #15 +
    #27#72 + #20);
  writeln(arquivo,
    '                                                                                                  X');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('natureza').asstring, 41, ' ', 'D') +
    ' ' + frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('CFOP').asstring, 6, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica(frmvenda.qrcliente.FieldByName
    ('NOME').asstring, 90, ' ', 'D') + ' ' + frmprincipal.texto_justifica
    (frmvenda.qrcliente.FieldByName('CPF').asstring, 32, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName('DATA')
    .asstring, 10, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica(frmvenda.qrcliente.FieldByName
    ('ENDERECO').asstring, 68, ' ', 'D') + ' ' + frmprincipal.texto_justifica
    (frmvenda.qrcliente.FieldByName('BAIRRO').asstring, 24, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(frmvenda.qrcliente.FieldByName('CEP').asstring,
    29, ' ', 'D') + ' ' + frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('DATA').asstring, 10, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica(frmvenda.qrcliente.FieldByName
    ('CIDADE').asstring, 50, ' ', 'D') + ' ' + frmprincipal.texto_justifica
    (frmvenda.qrcliente.FieldByName('TELEFONE1').asstring + '  ' +
    frmvenda.qrcliente.FieldByName('TELEFONE2').asstring, 27, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(frmvenda.qrcliente.FieldByName('UF').asstring,
    6, ' ', 'D') + ' ' + frmprincipal.texto_justifica
    (frmvenda.qrcliente.FieldByName('RG').asstring, 38, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(TimeToStr(time), 10, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  if frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR1').asfloat <> 0 then
    texto1 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR1').asfloat);
  if frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR2').asfloat <> 0 then
    texto2 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR2').asfloat);
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_NUMERO1').asstring, 31,
    ' ', 'D') + ' ' + frmprincipal.texto_justifica(texto1, 15, ' ', 'E') +
    '     ' + frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_DATA1').asstring, 17, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_NUMERO2').asstring, 31, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(texto2, 16, ' ', 'E') + '     ' +
    frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_DATA2').asstring, 10, ' ', 'D'));
  writeln(arquivo, '');
  if frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR3').asfloat <> 0 then
    texto1 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR1').asfloat)
  else
    texto1 := '';
  if frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR4').asfloat <> 0 then
    texto2 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR2').asfloat)
  else
    texto2 := '';
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_NUMERO3').asstring, 31,
    ' ', 'D') + ' ' + frmprincipal.texto_justifica(texto1, 15, ' ', 'E') +
    '     ' + frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_DATA3').asstring, 17, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_NUMERO4').asstring, 31, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(texto2, 16, ' ', 'E') + '     ' +
    frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_DATA4').asstring, 10, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  // writeln(arquivo,'');
  // writeln(arquivo,'');
  // writeln(arquivo,'');
  // writeln(arquivo,'');
  // writeln(arquivo,'');

  frmvenda.qrapoio.open;
  frmvenda.REFRESH;
  frmvenda.qrapoio.First;
  while not frmvenda.qrapoio.Eof do
  begin
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('codproduto').asstring, 9, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('Produto').asstring, 59, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('CF').asstring, 0, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('STR').asstring, 5, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('UN').asstring, 3, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('QTDE').asstring, 9, ' ', 'E') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('UNITARIO').asstring, 13, ' ', 'E') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('TOTAL').asstring, 18, ' ', 'E') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('ICMS').asstring, 4, ' ', 'E') + ' ');
    writeln(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('IPI').asstring, 3, ' ', 'E'));
    writeln(arquivo, '');
    frmvenda.qrapoio.Next;
  end;

  if (frmmodulo.qrnotafiscal.FieldByName('BASE_CALCULO').asfloat <> 0) and
    (frmprincipal.vfil_ssimples = 'N') then
    texto1 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('BASE_CALCULO').asfloat)
  else
    texto1 := '';
  if (frmmodulo.qrnotafiscal.FieldByName('VALOR_ICMS').asfloat <> 0) and
    (frmprincipal.vfil_ssimples = 'N') then
    texto2 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('VALOR_ICMS').asfloat)
  else
    texto2 := '';
  if (frmmodulo.qrnotafiscal.FieldByName('BASE_SUB').asfloat <> 0) and
    (frmprincipal.vfil_ssimples = 'N') then
    texto3 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('BASE_SUB').asfloat)
  else
    texto3 := '';
  if (frmmodulo.qrnotafiscal.FieldByName('ICMS_SUB').asfloat <> 0) and
    (frmprincipal.vfil_ssimples = 'N') then
    texto4 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('ICMS_SUB').asfloat)
  else
    texto4 := '';

  if frmmodulo.qrnotafiscal.FieldByName('VALOR_PRODUTOS').asfloat <> 0 then
    texto5 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('VALOR_PRODUTOS').asfloat)
  else
    texto5 := '';
  write(arquivo, frmprincipal.texto_justifica(texto1, 24, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto2, 25, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto3, 25, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto4, 25, ' ', 'E') + ' ');
  writeln(arquivo, frmprincipal.texto_justifica(texto5, 25, ' ', 'E') + ' ');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  if frmmodulo.qrnotafiscal.FieldByName('FRETE').asfloat <> 0 then
    texto1 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('FRETE').asfloat)
  else
    texto1 := '';
  if frmmodulo.qrnotafiscal.FieldByName('SEGURO').asfloat <> 0 then
    texto2 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('SEGURO').asfloat)
  else
    texto2 := '';
  if frmmodulo.qrnotafiscal.FieldByName('OUTRAS_DESPESAS').asfloat <> 0 then
    texto3 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('OUTRAS_DESPESAS').asfloat)
  else
    texto3 := '';
  if frmmodulo.qrnotafiscal.FieldByName('VALOR_TOTAL_IPI').asfloat <> 0 then
    texto4 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('VALOR_TOTAL_IPI').asfloat)
  else
    texto4 := '';
  if frmmodulo.qrnotafiscal.FieldByName('TOTAL_NOTA').asfloat <> 0 then
    texto5 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('TOTAL_NOTA').asfloat)
  else
    texto5 := '';
  write(arquivo, frmprincipal.texto_justifica(texto1, 24, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto2, 25, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto3, 25, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto4, 25, ' ', 'E') + ' ');
  writeln(arquivo, frmprincipal.texto_justifica(texto5, 25, ' ', 'E') + ' ');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('transportador').asstring, 74, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FRETE_CONTA').asstring, 4, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('placa').asstring, 18, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('placa_uf').asstring, 8, ' ', 'D') + ' ');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('transp_cpf').asstring, 25, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('transp_ENDERECO').asstring, 59, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('TRANSP_CIDADE').asstring, 37, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('TRANSP_UF').asstring, 15, ' ', 'D') + ' ');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('transp_RG').asstring, 25, ' ', 'D'));
  // writeln(arquivo,'');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('VOL_QTDE').asstring, 22, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('VOL_ESPECIE').asstring, 25, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('VOL_MARCA').asstring, 20, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('VOL_NUMERO').asstring, 25, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('PESO_BRUTO').asstring, 20, ' ', 'D') + ' ');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('PESO_LIQUIDO').asstring, 20,
    ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('INF1').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('INF2').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('INF3').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('INF4').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('INF5').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');

  writeln(arquivo,
    '                                                                                                                             '
    + #18 + #27#71 + #20 + frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('numero').asstring, 6, '0', 'E') + #15 +
    #27#72 + #20);
  writeln(arquivo, #27 + #50);
  // WRITELN(ARQUIVO,#12);

  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');

  IBQuery1.close;
  IBQuery1.sql.clear;
  IBQuery1.sql.add('update c000048 set NUMERO_CUPOM_FISCAL = ''' +
    frmmodulo.qrnotafiscal.FieldByName('NUMERO').asstring + '''');
  IBQuery1.sql.add('where codigo = ''' + qrvenda.FieldByName('codigo')
    .asstring + '''');
  IBQuery1.execsql;

  CLOSEFILE(arquivo);

  frmmodulo.qrfilial.edit;
  frmmodulo.qrfilial.FieldByName('notafiscal').asinteger :=
    frmmodulo.qrfilial.FieldByName('notafiscal').asinteger + 1;
  frmmodulo.qrfilial.Post;

  application.messagebox
    ('Pressione [ENTER] para Imprimir a Nota Fiscal de Saída.', 'Aviso',
    mb_ok + MB_ICONINFORMATION);

  frmmodulo.qrnotafiscal.close;
  frmmodulo.qrnotafiscal.sql.clear;
  frmmodulo.qrnotafiscal.sql.add('select * from c000061');
  frmmodulo.qrnotafiscal.open;

  frmmodulo.qrnotafiscal.insert;
  frmmodulo.qrnotafiscal.FieldByName('codfilial').asstring := '000001';
  frmmodulo.qrnotafiscal.FieldByName('codigo').asstring :=
    frmprincipal.codifica('000061');
  frmmodulo.qrfilial.open;
  frmmodulo.qrfilial.Locate('codigo', '000001', [loCaseInsensitive]);

  frmvenda_nf := tfrmvenda_nf.create(self);
  frmvenda_nf.enf.text := frmprincipal.zerarcodigo
    (frmmodulo.qrfilial.FieldByName('notafiscal').asstring, 6);
  frmvenda_nf.showmodal;
  frmmodulo.qrnotafiscal.FieldByName('numero').asstring := numero_notaz;

  frmmodulo.qrnotafiscal.FieldByName('cfop').asstring := '5102';
  frmmodulo.qrnotafiscal.FieldByName('data').asstring :=
    frmvenda.lvenda_data.caption;
  frmmodulo.qrnotafiscal.FieldByName('data_saida').asstring :=
    frmvenda.lvenda_data.caption;
  frmmodulo.qrnotafiscal.FieldByName('hora').asstring := TimeToStr(time);
  frmmodulo.qrnotafiscal.FieldByName('codcliente').asstring :=
    frmvenda.lcliente_codigo.caption;

  frmmodulo.qrnotafiscal.FieldByName('desconto').asfloat :=
    qrvenda.FieldByName('desconto').asfloat;
  frmmodulo.qrnotafiscal.FieldByName('situacao').asinteger := 1;
  frmmodulo.qrnotafiscal.FieldByName('INF1').asstring :=
    'DOCUMENTO EMITIDO POR ME OU EPP';

  if frmprincipal.vfil_simples = 'S' then
    frmmodulo.qrnotafiscal.FieldByName('INF2').asstring :=
      'OPTANTE PELO SIMPLES NACIONAL';
  if frmprincipal.vfil_ssimples = 'S' then
    frmmodulo.qrnotafiscal.FieldByName('INF2').asstring :=
      'OPTANTE PELO SUPER SIMPLES';

  frmmodulo.qrnotafiscal.FieldByName('INF3').asstring :=
    'NAO GERA DIREITO A CREDITO FISCAL DE ICMS E DE ISS';
  frmmodulo.qrnotafiscal.FieldByName('situacao_A').asstring := 'A';
  frmmodulo.qrnotafiscal.FieldByName('MODELO_NF').asstring := '01';
  frmmodulo.qrfilial.open;
  frmmodulo.qrnotafiscal.FieldByName('SERIE_NF').asstring :=
    IntToStr(frmmodulo.qrfilial.FieldByName('NOTAFISCAL').asinteger);
  frmmodulo.qrnotafiscal.FieldByName('SIT').asstring := 'N';

  qrnotafiscal_item.close;
  qrnotafiscal_item.sql.clear;
  qrnotafiscal_item.sql.add('select * from c000062 where codnota = ''' +
    frmmodulo.qrnotafiscal.FieldByName('codigo').asstring + '''');
  qrnotafiscal_item.open;

  BASE_CALCULO := 0;
  ICMS := 0;

  tn := 0;
  frmvenda.qrvenda_produto.First;
  while not frmvenda.qrvenda_produto.Eof do
  begin
    if frmvenda.qrvenda_produto.FieldByName('qtde').asfloat > 0 then
    begin
      qrnotafiscal_item.insert;
      qrnotafiscal_item.FieldByName('CODNOTA').asstring :=
        frmmodulo.qrnotafiscal.FieldByName('CODIGO').asstring;
      qrnotafiscal_item.FieldByName('CODPRODUTO').asstring :=
        frmvenda.qrvenda_produto.FieldByName('CODPRODUTO').asstring;
      qrnotafiscal_item.FieldByName('QTDE').asfloat :=
        frmvenda.qrvenda_produto.FieldByName('QTDE').asfloat;
      qrnotafiscal_item.FieldByName('UNITARIO').asfloat :=
        frmvenda.qrvenda_produto.FieldByName('TOTAL').asfloat /
        frmvenda.qrvenda_produto.FieldByName('QTDE').asfloat;
      qrnotafiscal_item.FieldByName('TOTAL').asfloat :=
        frmvenda.qrvenda_produto.FieldByName('TOTAL').asfloat;
      if ZQuery1.Locate('codigo', qrnotafiscal_item.FieldByName('CODPRODUTO')
        .asstring, [loCaseInsensitive]) then
      begin
        qrnotafiscal_item.FieldByName('CFOP').asstring :=
          ZQuery1.FieldByName('IND_CFOP').asstring;
      end;
      qrnotafiscal_item.FieldByName('CST').asstring :=
        frmvenda.qrvenda_produto.FieldByName('CST').asstring;
      qrnotafiscal_item.FieldByName('ICMS').asstring :=
        frmvenda.qrvenda_produto.FieldByName('ALIQUOTA').asstring;
      qrnotafiscal_item.FieldByName('codlancamento').asstring := 'XXXXXX';

      tn := tn + frmvenda.qrvenda_produto.FieldByName('TOTAL').asfloat;

      if frmvenda.qrvenda_produto.FieldByName('ALIQUOTA').asfloat > 0 then
      begin
        BASE_CALCULO := BASE_CALCULO + frmvenda.qrvenda_produto.FieldByName
          ('TOTAL').asfloat;
        ICMS := ICMS +
          (BASE_CALCULO * (frmvenda.qrvenda_produto.FieldByName('ALIQUOTA')
          .asfloat / 100));
      end;
      qrnotafiscal_item.Post;
    end;

    // tn := tn + FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT;

    frmvenda.qrvenda_produto.Next;
  end;
  frmmodulo.qrnotafiscal.FieldByName('BASE_CALCULO').asfloat := BASE_CALCULO;
  frmmodulo.qrnotafiscal.FieldByName('VALOR_ICMS').asfloat := ICMS;

  frmmodulo.qrnotafiscal.FieldByName('valor_produtos').asfloat := tn;
  frmmodulo.qrnotafiscal.FieldByName('total_nota').asfloat := tn;

  frmmodulo.qrnotafiscal.Post;

  VALOR_NOTAZ := frmmodulo.qrnotafiscal.FieldByName('total_nota').asfloat;

  BAPOIOClick(frmvenda_impressao);

  ASSIGNFILE(arquivo, porta_impressora);
  REWRITE(arquivo);
  writeln(arquivo, #27 + #51);
  writeln(arquivo, #15 + #27#72 + #20, '');
  writeln(arquivo, '');
  writeln(arquivo,
    '                                                                                                                             '
    + #18 + #27#71 + #20 + frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('numero').asstring, 6, '0', 'E') + #15 +
    #27#72 + #20);
  writeln(arquivo,
    '                                                                                   X');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('natureza').asstring, 41, ' ', 'D') +
    ' ' + frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('CFOP').asstring, 6, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica(frmvenda.qrcliente.FieldByName
    ('NOME').asstring, 90, ' ', 'D') + ' ' + frmprincipal.texto_justifica
    (frmvenda.qrcliente.FieldByName('CPF').asstring, 32, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName('DATA')
    .asstring, 10, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica(frmvenda.qrcliente.FieldByName
    ('ENDERECO').asstring, 68, ' ', 'D') + ' ' + frmprincipal.texto_justifica
    (frmvenda.qrcliente.FieldByName('BAIRRO').asstring, 24, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(frmvenda.qrcliente.FieldByName('CEP').asstring,
    29, ' ', 'D') + ' ' + frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('DATA').asstring, 10, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica(frmvenda.qrcliente.FieldByName
    ('CIDADE').asstring, 50, ' ', 'D') + ' ' + frmprincipal.texto_justifica
    (frmvenda.qrcliente.FieldByName('TELEFONE1').asstring + '  ' +
    frmvenda.qrcliente.FieldByName('TELEFONE2').asstring, 27, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(frmvenda.qrcliente.FieldByName('UF').asstring,
    6, ' ', 'D') + ' ' + frmprincipal.texto_justifica
    (frmvenda.qrcliente.FieldByName('RG').asstring, 38, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(TimeToStr(time), 10, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  if frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR1').asfloat <> 0 then
    texto1 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR1').asfloat);
  if frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR2').asfloat <> 0 then
    texto2 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR2').asfloat);
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_NUMERO1').asstring, 31,
    ' ', 'D') + ' ' + frmprincipal.texto_justifica(texto1, 15, ' ', 'E') +
    '     ' + frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_DATA1').asstring, 17, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_NUMERO2').asstring, 31, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(texto2, 16, ' ', 'E') + '     ' +
    frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_DATA2').asstring, 10, ' ', 'D'));
  writeln(arquivo, '');
  if frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR3').asfloat <> 0 then
    texto1 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR1').asfloat)
  else
    texto1 := '';
  if frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR4').asfloat <> 0 then
    texto2 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_VALOR2').asfloat)
  else
    texto2 := '';
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('FATURAMENTO_NUMERO3').asstring, 31,
    ' ', 'D') + ' ' + frmprincipal.texto_justifica(texto1, 15, ' ', 'E') +
    '     ' + frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_DATA3').asstring, 17, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_NUMERO4').asstring, 31, ' ', 'D') + ' ' +
    frmprincipal.texto_justifica(texto2, 16, ' ', 'E') + '     ' +
    frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FATURAMENTO_DATA4').asstring, 10, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  // writeln(arquivo,'');
  // writeln(arquivo,'');
  // writeln(arquivo,'');
  // writeln(arquivo,'');
  // writeln(arquivo,'');

  frmvenda.qrapoio.open;
  frmvenda.REFRESH;
  frmvenda.qrapoio.First;
  while not frmvenda.qrapoio.Eof do
  begin
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('codproduto').asstring, 9, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('Produto').asstring, 59, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('CF').asstring, 0, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('STR').asstring, 5, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('UN').asstring, 3, ' ', 'D') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('QTDE').asstring, 9, ' ', 'E') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('UNITARIO').asstring, 13, ' ', 'E') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('TOTAL').asstring, 18, ' ', 'E') + ' ');
    write(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('ICMS').asstring, 4, ' ', 'E') + ' ');
    writeln(arquivo, frmprincipal.texto_justifica(frmvenda.qrapoio.FieldByName
      ('IPI').asstring, 3, ' ', 'E'));
    writeln(arquivo, '');
    frmvenda.qrapoio.Next;
  end;

  if (frmmodulo.qrnotafiscal.FieldByName('BASE_CALCULO').asfloat <> 0) and
    (frmprincipal.vfil_ssimples = 'N') then
    texto1 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('BASE_CALCULO').asfloat)
  else
    texto1 := '';
  if (frmmodulo.qrnotafiscal.FieldByName('VALOR_ICMS').asfloat <> 0) and
    (frmprincipal.vfil_ssimples = 'N') then
    texto2 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('VALOR_ICMS').asfloat)
  else
    texto2 := '';
  if (frmmodulo.qrnotafiscal.FieldByName('BASE_SUB').asfloat <> 0) and
    (frmprincipal.vfil_ssimples = 'N') then
    texto3 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('BASE_SUB').asfloat)
  else
    texto3 := '';
  if (frmmodulo.qrnotafiscal.FieldByName('ICMS_SUB').asfloat <> 0) and
    (frmprincipal.vfil_ssimples = 'N') then
    texto4 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('ICMS_SUB').asfloat)
  else
    texto4 := '';

  if frmmodulo.qrnotafiscal.FieldByName('VALOR_PRODUTOS').asfloat <> 0 then
    texto5 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('VALOR_PRODUTOS').asfloat)
  else
    texto5 := '';
  write(arquivo, frmprincipal.texto_justifica(texto1, 24, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto2, 25, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto3, 25, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto4, 25, ' ', 'E') + ' ');
  writeln(arquivo, frmprincipal.texto_justifica(texto5, 25, ' ', 'E') + ' ');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  if frmmodulo.qrnotafiscal.FieldByName('FRETE').asfloat <> 0 then
    texto1 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('FRETE').asfloat)
  else
    texto1 := '';
  if frmmodulo.qrnotafiscal.FieldByName('SEGURO').asfloat <> 0 then
    texto2 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('SEGURO').asfloat)
  else
    texto2 := '';
  if frmmodulo.qrnotafiscal.FieldByName('OUTRAS_DESPESAS').asfloat <> 0 then
    texto3 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('OUTRAS_DESPESAS').asfloat)
  else
    texto3 := '';
  if frmmodulo.qrnotafiscal.FieldByName('VALOR_TOTAL_IPI').asfloat <> 0 then
    texto4 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('VALOR_TOTAL_IPI').asfloat)
  else
    texto4 := '';
  if frmmodulo.qrnotafiscal.FieldByName('TOTAL_NOTA').asfloat <> 0 then
    texto5 := formatfloat('###,###,##0.00',
      frmmodulo.qrnotafiscal.FieldByName('TOTAL_NOTA').asfloat)
  else
    texto5 := '';
  write(arquivo, frmprincipal.texto_justifica(texto1, 24, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto2, 25, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto3, 25, ' ', 'E') + ' ');
  write(arquivo, frmprincipal.texto_justifica(texto4, 25, ' ', 'E') + ' ');
  writeln(arquivo, frmprincipal.texto_justifica(texto5, 25, ' ', 'E') + ' ');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('transportador').asstring, 74, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('FRETE_CONTA').asstring, 4, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('placa').asstring, 18, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('placa_uf').asstring, 8, ' ', 'D') + ' ');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('transp_cpf').asstring, 25, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('transp_ENDERECO').asstring, 59, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('TRANSP_CIDADE').asstring, 37, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('TRANSP_UF').asstring, 15, ' ', 'D') + ' ');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('transp_RG').asstring, 25, ' ', 'D'));
  // writeln(arquivo,'');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('VOL_QTDE').asstring, 22, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('VOL_ESPECIE').asstring, 25, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('VOL_MARCA').asstring, 20, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('VOL_NUMERO').asstring, 25, ' ', 'D') + ' ');
  write(arquivo, frmprincipal.texto_justifica(frmmodulo.qrnotafiscal.FieldByName
    ('PESO_BRUTO').asstring, 20, ' ', 'D') + ' ');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('PESO_LIQUIDO').asstring, 20,
    ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('INF1').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('INF2').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('INF3').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('INF4').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('INF5').asstring, 80, ' ', 'D'));
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');

  writeln(arquivo,
    '                                                                                                                             '
    + #18 + #27#71 + #20 + frmprincipal.texto_justifica
    (frmmodulo.qrnotafiscal.FieldByName('numero').asstring, 6, '0', 'E') + #15 +
    #27#72 + #20);
  writeln(arquivo, #27 + #50);
  // WRITELN(ARQUIVO,#12);

  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');
  writeln(arquivo, '');

  IBQuery1.close;
  IBQuery1.sql.clear;
  IBQuery1.sql.add('update c000048 set NUMERO_CUPOM_FISCAL = ''' +
    frmmodulo.qrnotafiscal.FieldByName('NUMERO').asstring + '''');
  IBQuery1.sql.add('where codigo = ''' + qrvenda.FieldByName('codigo')
    .asstring + '''');
  IBQuery1.execsql;

  CLOSEFILE(arquivo);

  frmmodulo.qrfilial.edit;
  frmmodulo.qrfilial.FieldByName('notafiscal').asinteger :=
    frmmodulo.qrfilial.FieldByName('notafiscal').asinteger + 1;
  frmmodulo.qrfilial.Post;

  {
    IF APPLICATION.MESSAGEBOX('Deseja imprimir as duplicatas?','Aviso',mb_yesno+mb_iconquestion) = idyes then
    begin
    button1click(frmvenda_impressao);

    end;
  }

end;

end.
