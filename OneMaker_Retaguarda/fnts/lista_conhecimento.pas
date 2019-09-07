unit lista_conhecimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton, JvExMask, JvToolEdit;

type
  Tfrmlista_conhecimento = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    fxdesenhar: TfrxDesigner;
    fxnota: TfrxReport;
    fsnota: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrnota: TZQuery;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    qrnota_item: TZQuery;
    fsnota_item: TfrxDBDataset;
    dsnota: TDataSource;
    Label4: TLabel;
    combo_situacao: TComboBox;
    ZQuery1: TZQuery;
    qrnota_itemproduto: TStringField;
    Panel1: TPanel;
    Bevel2: TBevel;
    qrnotaremetente: TStringField;
    qrnotadestinatario: TStringField;
    qrnota_itemCODNOTA: TWideStringField;
    qrnota_itemCODPRODUTO: TWideStringField;
    qrnota_itemQTDE: TFloatField;
    qrnota_itemUNITARIO: TFloatField;
    qrnota_itemTOTAL: TFloatField;
    qrnota_itemIPI: TFloatField;
    qrnota_itemICMS: TFloatField;
    qrnota_itemCFOP: TWideStringField;
    qrnota_itemCODGRADE: TWideStringField;
    qrnota_itemSERIAL: TWideStringField;
    qrnota_itemVALOR_IPI: TFloatField;
    qrnota_itemCLASSIFICACAO_FISCAL: TWideStringField;
    qrnota_itemCST: TWideStringField;
    qrnota_itemVALOR_ICMS: TFloatField;
    qrnota_itemICMS_REDUZIDO: TFloatField;
    qrnota_itemBASE_CALCULO: TFloatField;
    qrnota_itemMARGEM_AGREGADA: TFloatField;
    qrnota_itemBASE_SUB: TFloatField;
    qrnota_itemICMS_SUB: TFloatField;
    qrnota_itemISENTO: TFloatField;
    qrnota_itemCODLANCAMENTO: TWideStringField;
    qrnota_itemDESCONTO: TFloatField;
    qrnota_itemSUBTOTAL: TFloatField;
    qrnota_itemPESO_BRUTO: TFloatField;
    qrnota_itemPESO_LIQUIDO: TFloatField;
    qrnota_itemITEM: TIntegerField;
    qrnota_itemCODIGO: TWideStringField;
    qrnota_itemGRADE: TWideStringField;
    qrnota_itemOUTRAS: TFloatField;
    qrnota_itemPIS_ALIQUOTA: TFloatField;
    qrnota_itemPIS_BASE: TFloatField;
    qrnota_itemPIS_VALOR: TFloatField;
    qrnota_itemCOFINS_ALIQUOTA: TFloatField;
    qrnota_itemCOFINS_BASE: TFloatField;
    qrnota_itemCOFINS_VALOR: TFloatField;
    qrnota_itemCODBARRA: TWideStringField;
    qrnota_itemALTERA_ITEM: TIntegerField;
    qrnota_itemCSOSN: TWideStringField;
    qrnota_itemCOMPLEMENTO: TWideStringField;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    qrnotaCODIGO: TWideStringField;
    qrnotaNUMERO: TWideStringField;
    dtfldDATA: TDateField;
    qrnotaCFOP: TWideStringField;
    qrnotaCODREMETENTE: TWideStringField;
    qrnotaCODDESTINATARIO: TWideStringField;
    qrnotaSITUACAO: TIntegerField;
    qrnotaTIPO: TWideStringField;
    qrnotaCONSIG_NOME: TWideStringField;
    qrnotaCONSIG_ENDERECO: TWideStringField;
    qrnotaCONSIG_CIDADE: TWideStringField;
    qrnotaCONSIG_UF: TWideStringField;
    qrnotaCONSIG_TIPO: TWideStringField;
    qrnotaCONSIG_CALCULADO: TWideStringField;
    qrnotaREDE_NOME: TWideStringField;
    qrnotaREDE_ENDERECO: TWideStringField;
    qrnotaREDE_CIDADE: TWideStringField;
    qrnotaREDE_UF: TWideStringField;
    qrnotaREDE_TIPO: TWideStringField;
    qrnotaREDE_CNPJ: TWideStringField;
    qrnotaCARGA_NATUREZA: TWideStringField;
    qrnotaCARGA_NF: TWideStringField;
    qrnotaCARGA_VALOR: TFloatField;
    qrnotaCARGA_QTDE: TFloatField;
    qrnotaCARGA_VOL_QTDE: TFloatField;
    qrnotaCARGA_VOL_ESPECIE: TWideStringField;
    qrnotaCARGA_MARCA1: TWideStringField;
    qrnotaCARGA_MARCA2: TWideStringField;
    qrnotaFRETE_PESO: TFloatField;
    qrnotaFRETE_VALOR: TFloatField;
    qrnotaFRETE_ADICIONAL: TFloatField;
    qrnotaFRETE_SEGURO: TFloatField;
    qrnotaFRETE_DESPACHO: TFloatField;
    qrnotaFRETE_OUTROS: TFloatField;
    qrnotaFRETE_TOTAL: TFloatField;
    qrnotaFRETE_TARIFA: TFloatField;
    qrnotaFRETE_BASE: TFloatField;
    qrnotaFRETE_ALIQUOTA: TIntegerField;
    qrnotaFRETE_ICMS: TFloatField;
    qrnotaFRETE_PRONT: TWideStringField;
    qrnotaFRETE_APOLICE: TWideStringField;
    qrnotaFRETE_CIA: TWideStringField;
    qrnotaFRETE_CARREGAR: TWideStringField;
    qrnotaFRETE_DESCARREGAR: TWideStringField;
    qrnotaCODVEICULO: TWideStringField;
    qrnotaCODTRANSPORTADOR: TWideStringField;
    qrnotaOBS: TBlobField;
    qrnotaCODFILIAL: TWideStringField;
    qrnotaLOCAL: TWideStringField;
    qrnotaMOTIVO: TWideStringField;
    qrnotaVEICULO_LOCAL: TWideStringField;
    qrnotaVEICULO_UF: TWideStringField;
    qrnotaMODELO: TWideStringField;
    qrnotaESPECIE: TWideStringField;
    qrnotaSERIE: TWideStringField;
    qrnotaMODELO_NF: TWideStringField;
    qrnotaESPECIE_NF: TWideStringField;
    qrnotaSERIE_NF: TWideStringField;
    dtfldDATA_NF: TDateField;
    qrnotaVALOR_CONHECIMENTO: TFloatField;
    qrnotaINF1: TWideStringField;
    qrnotaINF2: TWideStringField;
    qrnotaINF3: TWideStringField;
    qrnotaINF4: TWideStringField;
    qrnotaINF5: TWideStringField;
    qrnotaCARGA_NATUREZA2: TWideStringField;
    qrnotaCARGA_NF2: TWideStringField;
    qrnotaCARGA_VALOR2: TFloatField;
    qrnotaCARGA_QTDE2: TFloatField;
    qrnotaCARGA_VOL_QTDE2: TFloatField;
    qrnotaCARGA_VOL_ESPECIE2: TWideStringField;
    qrnotaMODELO_NF2: TWideStringField;
    qrnotaESPECIE_NF2: TWideStringField;
    qrnotaSERIE_NF2: TWideStringField;
    dtfldDATA_NF2: TDateField;
    qrnotaVALOR_CONHECIMENTO2: TFloatField;
    qrnotaCHAVE_ACESSO: TWideStringField;
    qrnotaCHAVE_ACESSO2: TWideStringField;
    qrnotaCTE_XML: TWideStringField;
    qrnotaCTE_SITUACAO: TIntegerField;
    dtfldTESTE: TDateField;
    qrnotaORIGEM_CMUNINI: TWideStringField;
    qrnotaORIGEM_XMUNINI: TWideStringField;
    qrnotaORIGEM_UFINI: TWideStringField;
    qrnotaCMUNFIM: TWideStringField;
    qrnotaXMUNFIM: TWideStringField;
    qrnotaUFFIM: TWideStringField;
    qrnotaMODAL: TWideStringField;
    qrnotaTIPO_SERVICO: TWideStringField;
    qrnotaFINALIDADE_EMISSAO: TWideStringField;
    qrnotaFORMA_EMISSAO: TWideStringField;
    qrnotaFORMA_PAGAMENTO: TWideStringField;
    qrnotaFORMA_IMPRESSAO_DACTE: TWideStringField;
    qrnotaCHAVE_ACEESSO_REFERENCIADO: TWideStringField;
    qrnotaCARAC_AD_TRANSP: TWideStringField;
    qrnotaCARAC_AD_SERV: TWideStringField;
    qrnotaFUNC_EMISSOR: TWideStringField;
    qrnotaMUN_ORIGEM_CAL: TWideStringField;
    qrnotaMUN_DEST_CAL: TWideStringField;
    qrnotaCOD_ROTA_ENTREGA: TWideStringField;
    qrnotaROTA_ENTREGA_SIGLA_ORIGEM: TWideStringField;
    qrnotaROTA_ENTREGA_SIGLA_DEST: TWideStringField;
    dtfldPREV_ENTREGA_DATA_INI: TDateField;
    dtfldPREV_ENTREGA_DATA_FIM: TDateField;
    qrnotaPREV_ENTREGA_DATA_TIPO: TWideStringField;
    qrnotaPREV_ENTREGA_HORA_TIPO: TWideStringField;
    dtfldPREV_ENTREGA_HORA_INI: TDateField;
    dtfldPREV_ENTREGA_HORA_FIM: TDateField;
    qrnotaRECEBEDOR_RET_AFPE: TWideStringField;
    qrnotaDETALHES_RETIRADA: TWideStringField;
    qrnotaCOD_EMITENTE: TWideStringField;
    qrnotaCOD_TOMADOR: TWideStringField;
    qrnotaCOD_REMETENTE: TWideStringField;
    qrnotaREMETENTE_TIPO: TWideStringField;
    qrnotaREMETENTE_INFORMACOES_NF: TWideStringField;
    qrnotaCOD_EXPEDIDOR: TWideStringField;
    qrnotaEXPEDIDOR_TIPO: TWideStringField;
    qrnotaCOD_RECEBEDOR: TWideStringField;
    qrnotaRECEBEDOR_TIPO: TWideStringField;
    qrnotaCOD_DESTINATARIO: TWideStringField;
    qrnotaDESTINATARIO_TIPO: TWideStringField;
    qrnotaLOC_ENTREGA_DIF_END_DEST: TWideStringField;
    qrnotaCOD_ENTREGA_DIFERENTE: TWideStringField;
    qrnotaVTOTAL_SERVICO: TFloatField;
    qrnotaVL_ARECEBER: TFloatField;
    qrnotaVL_TOT_IMPOSTOS: TFloatField;
    qrnotaCOD_SIT_TRIBUT: TWideStringField;
    qrnotaINF_ADIC_INT_FISCO: TBlobField;
    qrnotaVL_BC_ICMS: TFloatField;
    qrnotaVL_ALIQ_ICMS: TFloatField;
    qrnotaVL_ICMS: TFloatField;
    qrnotaVL_CRED_OUT_PRESU: TFloatField;
    qrnotaVL_PERC_REDUCAP_BC: TFloatField;
    qrnotaVL_CARGA: TFloatField;
    qrnotaPROD_PREDOMINANTE: TWideStringField;
    qrnotaOUT_CARACT_PROD: TWideStringField;
    qrnotaRESP_SEGURO: TWideStringField;
    qrnotaNOME_SEGURADORA: TWideStringField;
    qrnotaNUMERO_APOLICE: TWideStringField;
    qrnotaNUMERO_AVERBACAO: TWideStringField;
    qrnotaVL_MERC_AVERB: TFloatField;
    qrnotaNUMERO_FAT: TWideStringField;
    qrnotaVL_ORIGINAL: TFloatField;
    qrnotaVL_DESCONTO: TFloatField;
    qrnotaVL_LIQUIDO: TFloatField;
    qrnotaRNTRC: TWideStringField;
    dtfldDATA_PREV_ENTREGA: TDateField;
    qrnotaIND_LOTACAO: TWideStringField;
    qrnotaCIOT: TWideStringField;
    qrnotaOBS_GERAIS: TBlobField;
    qrnotaVERSAO_XML: TWideStringField;
    qrnotaUF_EMISSAO: TWideStringField;
    qrnotaXMUN_EMISSAO: TWideStringField;
    qrnotaEMISSAO_CMUNINI: TWideStringField;
    qrnotaTOMADOR_TIPO: TWideStringField;
    qrnotaTOMADOR_CNPJ: TWideStringField;
    qrnotaTOMADOR_IE: TWideStringField;
    qrnotaTOMADOR_NOME: TWideStringField;
    qrnotaTOMADOR_FANT: TWideStringField;
    qrnotaTOMADOR_ENDERECO: TWideStringField;
    qrnotaTOMADOR_NUMERO: TWideStringField;
    qrnotaTOMADOR_COMPLEM: TWideStringField;
    qrnotaTOMADOR_BAIRRO: TWideStringField;
    qrnotaTOMADOR_CEP: TWideStringField;
    qrnotaTOMADOR_PAIS: TWideStringField;
    qrnotaTOMADOR_UF: TWideStringField;
    qrnotaTOMADOR_MUNICIPIO: TWideStringField;
    qrnotaTOMADOR_TELEFONE: TWideStringField;
    qrnotaDIF_ENDERECO: TWideStringField;
    qrnotaPAIS: TWideStringField;
    qrnotaCOD_PAIS: TWideStringField;
    qrnotaREM_BAIRRO: TWideStringField;
    qrnotaCTCHAVE: TIntegerField;
    qrnotaTOMADOR_QUEM: TWideStringField;
    qrnotaMODELO_NF3: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure combo_relatorioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_conhecimento: Tfrmlista_conhecimento;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor, compra_menu;

{$R *.dfm}

procedure Tfrmlista_conhecimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_conhecimento.FormShow(Sender: TObject);
begin
  combo_relatorio.ItemIndex := 0;
  dateedit1.text := '01/' + copy(datetostr(incmonth(date, -1)), 4, 7);
  dateedit2.date := frmprincipal.UltimoDiaMes(date);
end;

procedure Tfrmlista_conhecimento.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_conhecimento.bimprimirClick(Sender: TObject);
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



  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := 'SITUACAO: ' + COMBO_SITUACAO.Text;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := 'PERIODO: ' + dateedit1.TEXT + ' A ' + dateedit2.TEXT;



  if combo_situacao.ItemIndex = 0 then
    situacao := '' else situacao := ' and situacao = ' + inttostr(combo_situacao.itemIndex);

  qrnota.close;
  qrnota.sql.clear;
  qrnota.SQL.add('select * from c000068 where data BETWEEN :datai and :dataf ' + situacao + ' order by data');
  qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
  qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
  qrnota.open;

  frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE CONHECIMENTOS DE TRANSPORTE';
  FXNOTA.LoadFromFile('\OneMaker\server\rel\f000068_2.fr3');
  FXNOTA.ShowReport;


end;

procedure Tfrmlista_conhecimento.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios', 4) then
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;



  FXNOTA.LoadFromFile('\OneMaker\server\rel\f000068_2.fr3');
  FXNOTA.DesignReport;

end;

procedure Tfrmlista_conhecimento.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0)

end;

end.
