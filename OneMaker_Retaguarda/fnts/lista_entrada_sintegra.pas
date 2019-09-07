unit lista_entrada_sintegra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton;

type
  Tfrmlista_entrada_sintegra = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    ViewSplit1: TViewSplit;
    fxdesenhar: TfrxDesigner;
    fxnota: TfrxReport;
    fsnota: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrnota_item: TZQuery;
    fsnota_item: TfrxDBDataset;
    dsnota: TDataSource;
    ZQuery1: TZQuery;
    qrnota: TZQuery;
    QUERY: TZQuery;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    qrnotaCODIGO: TWideStringField;
    qrnotaTURBO: TIntegerField;
    qrnotaTIPO: TWideStringField;
    qrnotaCODIGO_EMPRESA: TIntegerField;
    qrnotaCFOP: TWideStringField;
    qrnotaNOTAFISCAL: TWideStringField;
    qrnotaSERIE: TWideStringField;
    qrnotaSUBSERIE: TWideStringField;
    qrnotaESPECIE: TWideStringField;
    qrnotaSINTEGRA: TWideStringField;
    qrnotaMODELO_NF: TWideStringField;
    qrnotaS_TRIB: TWideStringField;
    qrnotaCODIGO_CLIENTE: TIntegerField;
    qrnotaCPF_CLIENTE: TWideStringField;
    qrnotaCNPJ_CLIENTE: TWideStringField;
    qrnotaIE_CLIENTE: TWideStringField;
    qrnotaUF_IE_CLIENTE: TWideStringField;
    qrnotaTIPO_VENDA: TWideStringField;
    qrnotaTIPO_FRETE: TWideStringField;
    dtfldDATA: TDateField;
    dtfldDATA_ESCRITURACAO: TDateField;
    qrnotaCODIGO_CONTABIL: TIntegerField;
    qrnotaDESDOBRAMENTO: TWideStringField;
    qrnotaVALOR_CONTABIL: TFloatField;
    qrnotaVALOR_MERCADORIAS: TFloatField;
    qrnotaALIQUOTA_ICMS: TFloatField;
    qrnotaCONDPGTO: TWideStringField;
    qrnotaCONDICAO_PAGAMENTO: TWideStringField;
    qrnotaCODEMPRESA: TIntegerField;
    qrnotaOBS1: TWideStringField;
    qrnotaOBS2: TWideStringField;
    qrnotaCODLANCAMENTO: TWideStringField;
    qrnotaBASE_ICMS: TFloatField;
    qrnotaVALOR_ICMS_CREDITADO: TFloatField;
    qrnotaVALOR_ICMS_ISENTAS: TFloatField;
    qrnotaVALOR_ICMS_OUTRAS: TFloatField;
    qrnotaALIQUOTA_IPI: TFloatField;
    qrnotaBASE_IPI: TFloatField;
    qrnotaVALOR_IPI_CREDITADO: TFloatField;
    qrnotaVALOR_IPI_CREDITADO50: TFloatField;
    qrnotaVALOR_IPI_ISENTAS: TFloatField;
    qrnotaVALOR_IPI_OUTRAS: TFloatField;
    qrnotaVALOR_IPI_NAO_CREDITADO: TFloatField;
    qrnotaBASE_SUBSTITUICAO: TFloatField;
    qrnotaVALOR_SUBSTITUICAO: TFloatField;
    qrnotaVALOR_FRETE: TFloatField;
    qrnotaVALOR_SEGURO: TFloatField;
    qrnotaVALOR_DESPESAS: TFloatField;
    qrnotaALIQUOTA_ISS: TFloatField;
    qrnotaVALOR_ISS: TFloatField;
    qrnotaOBS3: TWideStringField;
    qrnotaCONTABIL: TIntegerField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaCODIGO_MINICIPIO: TIntegerField;
    qrnotaCNPJ: TWideStringField;
    qrnotaINSC_ESTADUAL: TWideStringField;
    qrnotaUF: TWideStringField;
    qrnotaCODIGO_PISCONFINS: TWideStringField;
    qrnotaNOTA_CANCELADA: TWideStringField;
    qrnotaOBSERVACAO: TBlobField;
    qrnotaTRANSPORTE_NOME: TWideStringField;
    qrnotaTRANSPORTE_PLACA: TWideStringField;
    qrnotaTRANSPORTE_UF: TWideStringField;
    qrnotaTRANSPORTE_CNPJCPF: TWideStringField;
    qrnotaTRANSPORTE_ENDERECO: TWideStringField;
    qrnotaTRANSPORTE_CIDADE: TWideStringField;
    qrnotaTRANSPORTE_MUNICIPIO_UF: TWideStringField;
    qrnotaTRANSPORTE_IE: TWideStringField;
    qrnotaTRANSPORTE_QUANTIDADE: TFloatField;
    qrnotaTRANSPORTE_MARCA: TWideStringField;
    qrnotaTRANSPORTE_ESPECIE: TWideStringField;
    qrnotaTRANSPORTE_NUMERO: TWideStringField;
    qrnotaTRANSPORTE_PESO_BRUTO: TFloatField;
    qrnotaTRANSPORTE_PESO_LIQUIDO: TFloatField;
    qrnotaBASEICMS_PRODUTOS: TIntegerField;
    qrnotaDESCONOT: TFloatField;
    qrnotaDESCONTO: TFloatField;
    qrnota_itemCODIGO: TWideStringField;
    qrnota_itemITEM: TWideStringField;
    qrnota_itemCODNOTA: TWideStringField;
    qrnota_itemCODPRODUTO: TWideStringField;
    qrnota_itemCODLANCAMENTO: TWideStringField;
    qrnota_itemUN_COMPRA: TWideStringField;
    qrnota_itemUN_FRACAO: TWideStringField;
    qrnota_itemFRACAO: TFloatField;
    qrnota_itemCST: TWideStringField;
    qrnota_itemCFOP: TWideStringField;
    qrnota_itemQTDE: TFloatField;
    qrnota_itemUNITARIO: TFloatField;
    qrnota_itemSUBTOTAL: TFloatField;
    qrnota_itemDESCONTO: TFloatField;
    qrnota_itemTOTAL: TFloatField;
    qrnota_itemDESCONTO_P: TFloatField;
    qrnota_itemICMS_RETIDO: TWideStringField;
    qrnota_itemICMS_ALIQUOTA: TFloatField;
    qrnota_itemICMS_REDUCAO: TFloatField;
    qrnota_itemICMS_BASE: TFloatField;
    qrnota_itemICMS_VALOR: TFloatField;
    qrnota_itemICMS_VALORRETIDO: TFloatField;
    qrnota_itemICMS_ISENTO: TFloatField;
    qrnota_itemICMS_NAOTRIBUTADO: TFloatField;
    qrnota_itemSUB_MARGEM: TFloatField;
    qrnota_itemSUB_BASE: TFloatField;
    qrnota_itemSUB_VALOR: TFloatField;
    qrnota_itemIPI_TIPO: TWideStringField;
    qrnota_itemIPI_ALIQUOTA: TFloatField;
    qrnota_itemIPI_BASE: TFloatField;
    qrnota_itemIPI_VALOR: TFloatField;
    qrnota_itemDATA: TDateField;
    qrnota_itemTIPO: TIntegerField;
    qrnota_itemNOTAFISCAL: TWideStringField;
    qrnota_itemFRETE: TFloatField;
    qrnota_itemOUTRAS: TFloatField;
    qrnota_itemSEGURO: TFloatField;
    qrnota_itemCLASSIFICACAO_FISCAL: TWideStringField;
    qrnota_itemSUB_PRODUTOS: TFloatField;
    qrnota_itemCODFORNECEDOR: TWideStringField;
    qrnota_itemITEM_ESPECIAL_VALOR: TFloatField;
    qrnota_itemICMS_OUTRAS: TFloatField;
    qrnota_itemALTERA_ITEM: TIntegerField;
    qrnota_itemCREDITO_ICMS: TFloatField;
    qrnota_itemCREDITO_ICMS_BASE: TFloatField;
    qrnota_itemPIS_BASE: TFloatField;
    qrnota_itemPIS: TFloatField;
    qrnota_itemCOFINS_BASE: TFloatField;
    qrnota_itemCOFINS: TFloatField;
    qrnota_itemLOTE_FABRICACAO: TWideStringField;
    qrnota_itemLOTE_VALIDADE: TDateField;
    qrnota_itemLOTE_FABRICACAO_DATA: TDateField;
    qrnota_itemCODBARRA: TWideStringField;
    qrnota_itemPRODUTO: TWideStringField;
    qrnota_itemPMARGEM: TSingleField;
    qrnota_itemPRECOVENDA: TSingleField;
    qrnota_itemPRECOCUSTO: TSingleField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrnotaCalcFields(DataSet: TDataSet);
    procedure combo_relatorioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_entrada_sintegra: Tfrmlista_entrada_sintegra;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor, compra_menu, sintegra_gerar;

{$R *.dfm}

procedure Tfrmlista_entrada_sintegra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_entrada_sintegra.FormShow(Sender: TObject);
begin
  combo_relatorio.ItemIndex := 0;
end;

procedure Tfrmlista_entrada_sintegra.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_entrada_sintegra.bimprimirClick(Sender: TObject);
var
  fornecedor_imp, FORNECEDOR, ordem, nota: string;
  vqtde: integer;
  vtotal: double;
  SITUACAO: string;
  cfop, movimento: string;
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := 'PERIODO: ' + frmsintegra_gerar.dateedit1.TEXT + ' A ' + frmsintegra_gerar.dateedit2.TEXT;

  if XENTRADA then
  begin

    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.Text := frmsintegra_gerar.qrentrada_check.sql.text;
    qrnota.open;
  end
  else
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.Text := frmsintegra_gerar.QRsaida_check.sql.text;
    qrnota.open;
  end;


  if combo_relatorio.itemindex = 0 then
  begin
    if XENTRADA then
      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTA FISCAL DE COMPRA - FORNECEDOR'
    else
      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTA FISCAL DE EMITIDA - FORNECEDOR';

    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000094.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.itemindex = 1 then
  begin
    qrnota.close;
    qrnota.sql.clear;
    if XENTRADA then
    begin
      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTA FISCAL DE COMPRA POR CFOP';
      qrnota.SQL.ADD('SELECT * FROM SINTEGRA_ENTRADA ORDER BY CFOP,NOTAFISCAL');
    end
    else
    begin
      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTA FISCAL DE EMITIDA POR CFOP';
      qrnota.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA ORDER BY CFOP,NOTAFISCAL');
    end;
    qrnota.open;
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000095.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.itemindex = 2 then
  begin
    qrnota.close;
    qrnota.sql.clear;

    if XENTRADA then
    begin
      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DAS NOTAS FISCAIS DE ENTRADA';
      qrnota.SQL.ADD('SELECT * FROM SINTEGRA_ENTRADA ORDER BY DATA_ESCRITURACAO');
    end
    else
    begin
      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DAS NOTAS FISCAIS DE SAÍDA';
      qrnota.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA ORDER BY DATA_ESCRITURACAO');
    end;

    qrnota.open;
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000127.fr3');
    FXNOTA.ShowReport;
  end;


end;

procedure Tfrmlista_entrada_sintegra.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios', 4) then
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;



  if combo_relatorio.itemindex = 0 then
  begin
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000094.fr3');
    FXNOTA.DesignReport;
  end;
  if combo_relatorio.itemindex = 1 then
  begin
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000095.fr3');
    FXNOTA.DesignReport;
  end;
  if combo_relatorio.itemindex = 2 then
  begin
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000127.fr3');
    FXNOTA.DesignReport;
  end;

end;

procedure Tfrmlista_entrada_sintegra.qrnotaCalcFields(DataSet: TDataSet);
begin
  //if QRFORNECEDORTIPO.Value = 2 then QRFORNECEDORpessoa.Value := 'JURIDICA' else QRFORNECEDORpessoa.Value := 'FISICA';

  if XENTRADA then
  begin
    QUERY.CLOSE;
    QUERY.SQL.CLEAR;
    QUERY.SQL.ADD('SELECT * FROM C000009 WHERE CODIGO = ''' + frmPrincipal.zerarcodigo(QRNOTA.FIELDBYNAME('CODIGO_CLIENTE').ASSTRING, 6) + '''');
    QUERY.OPEN;

    QRNOTA.FIELDBYNAME('FORNECEDOR').ASSTRING := QUERY.FIELDBYNAME('NOME').ASSTRING;

  end
  else
  begin
    QUERY.CLOSE;
    QUERY.SQL.CLEAR;
    QUERY.SQL.ADD('SELECT * FROM C000007 WHERE CODIGO = ''' + frmPrincipal.zerarcodigo(QRNOTA.FIELDBYNAME('CODIGO_CLIENTE').ASSTRING, 6) + '''');
    QUERY.OPEN;

    QRNOTA.FIELDBYNAME('FORNECEDOR').ASSTRING := QUERY.FIELDBYNAME('NOME').ASSTRING;


  end;

end;

procedure Tfrmlista_entrada_sintegra.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0)

end;

end.
