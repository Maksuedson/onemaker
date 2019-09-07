unit lista_notacompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton, MemDS, DBAccess, Vcl.Imaging.jpeg,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit,
  AdvReflectionImage;

type
  Tfrmlista_notacompra = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    fxdesenhar: TfrxDesigner;
    Label6: TLabel;
    combo_ordem: TComboBox;
    fxnota: TfrxReport;
    fsnota: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    qrnota_item: TZQuery;
    fsnota_item: TfrxDBDataset;
    dsnota: TDataSource;
    Label7: TLabel;
    ecfop: TEdit;
    ZQuery1: TZQuery;
    qrnota: TZQuery;
    StringField2: TStringField;
    StringField7: TStringField;
    Panel1: TPanel;
    qrcompra_produto: TZQuery;
    fscompra_produto: TfrxDBDataset;
    qrentrada: TZQuery;
    fxentrada: TfrxDBDataset;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    qrnotaCODIGO: TWideStringField;
    qrnotaNUMERO: TWideStringField;
    qrnotaCODEMPRESA: TWideStringField;
    qrnotaCODFORNECEDOR: TWideStringField;
    qrnotaMODELO: TWideStringField;
    qrnotaESPECIE: TWideStringField;
    qrnotaSERIE: TWideStringField;
    qrnotaCFOP: TWideStringField;
    dtfldDATA_EMISSAO: TDateField;
    dtfldDATA_LANCAMENTO: TDateField;
    qrnotaCONF_BASEICMS: TFloatField;
    qrnotaCONF_VALORICMS: TFloatField;
    qrnotaCONF_BASESUB: TFloatField;
    qrnotaCONF_VALORSUB: TFloatField;
    qrnotaCONF_FRETE: TFloatField;
    qrnotaCONF_SEGURO: TFloatField;
    qrnotaCONF_OUTRAS: TFloatField;
    qrnotaCONF_IPI: TFloatField;
    qrnotaCONF_DESCONTO: TFloatField;
    qrnotaCONF_TOTALPRODUTOS: TFloatField;
    qrnotaCONF_TOTALNOTA: TFloatField;
    qrnotaCONF_ICMSRETIDO: TFloatField;
    qrnotaCONF_ICMSREDITO_PERC: TFloatField;
    qrnotaBASE_ICMS: TFloatField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaBASE_SUB: TFloatField;
    qrnotaVALOR_SUB: TFloatField;
    qrnotaFRETE: TFloatField;
    qrnotaSEGURO: TFloatField;
    qrnotaOUTRAS: TFloatField;
    qrnotaIPI: TFloatField;
    qrnotaDESCONTO: TFloatField;
    qrnotaTOTAL_PRODUTOS: TFloatField;
    qrnotaTOTAL_NOTA: TFloatField;
    qrnotaTRANSP_NOME: TWideStringField;
    qrnotaTRANSP_FRETE: TWideStringField;
    qrnotaTRANSP_PLACA: TWideStringField;
    qrnotaTRANSP_PLACAUF: TWideStringField;
    qrnotaTRANSP_IE: TWideStringField;
    qrnotaTRANSP_CNPJ: TWideStringField;
    qrnotaTRANSP_ENDERECO: TWideStringField;
    qrnotaTRANSP_CIDADE: TWideStringField;
    qrnotaTRANSP_UF: TWideStringField;
    qrnotaTRANSP_QTDE: TFloatField;
    qrnotaTRANSP_ESPECIE: TWideStringField;
    qrnotaTRANSP_MARCA: TWideStringField;
    qrnotaTRANSP_NUMERO: TWideStringField;
    qrnotaTRANSP_PESOBRUTO: TFloatField;
    qrnotaTRANSP_PESOLIQUIDO: TFloatField;
    qrnotaOBS1: TWideStringField;
    qrnotaOBS2: TWideStringField;
    qrnotaOBS3: TWideStringField;
    qrnotaOBS4: TWideStringField;
    qrnotaOBS5: TWideStringField;
    qrnotaOBS6: TWideStringField;
    qrnotaOBS7: TWideStringField;
    qrnotaSITUACAO: TIntegerField;
    qrnotaITENS: TIntegerField;
    qrnotaTIPO: TWideStringField;
    qrnotaNOTA_FISCAL: TWideStringField;
    qrnotaVALOR_MERCADORIAS: TFloatField;
    qrnotaCODREMETENTE: TWideStringField;
    qrnotaICMS_ISENTO: TFloatField;
    qrnotaICMS_OUTRAS: TFloatField;
    qrnotaDESCONTO_INCIDENTE: TIntegerField;
    qrnotaITEM_FRETE_VALOR: TFloatField;
    qrnotaITEM_FRETE_BASE: TFloatField;
    qrnotaITEM_FRETE_ALIQUOTA: TFloatField;
    qrnotaITEM_FRETE_ICMS: TFloatField;
    qrnotaITEM_SEGURO_VALOR: TFloatField;
    qrnotaITEM_SEGURO_BASE: TFloatField;
    qrnotaITEM_SEGURO_ALIQUOTA: TFloatField;
    qrnotaITEM_SEGURO_ICMS: TFloatField;
    qrnotaITEM_PIS_VALOR: TFloatField;
    qrnotaITEM_PIS_BASE: TFloatField;
    qrnotaITEM_PIS_ALIQUOTA: TFloatField;
    qrnotaITEM_PIS_ICMS: TFloatField;
    qrnotaITEM_COMPLEMENTO_VALOR: TFloatField;
    qrnotaITEM_COMPLEMENTO_BASE: TFloatField;
    qrnotaITEM_COMPLEMENTO_ALIQUOTA: TFloatField;
    qrnotaITEM_COMPLEMENTO_ICMS: TFloatField;
    qrnotaITEM_SERVICO_VALOR: TFloatField;
    qrnotaITEM_SERVICO_BASE: TFloatField;
    qrnotaITEM_SERVICO_ALIQUOTA: TFloatField;
    qrnotaITEM_SERVICO_ICMS: TFloatField;
    qrnotaITEM_OUTRAS_VALOR: TFloatField;
    qrnotaITEM_OUTRAS_BASE: TFloatField;
    qrnotaITEM_OUTRAS_ALIQUOTA: TFloatField;
    qrnotaITEM_OUTRAS_ICMS: TFloatField;
    qrnotaITEM_ESPECIAL_TOTAL: TFloatField;
    qrnotaITEM_ESPECIAL_VALOR: TFloatField;
    qrnotaBASEICMS_PRODUTOS: TIntegerField;
    qrnotaCONF_ITEM_ESPECIAL: TFloatField;
    qrnotaOBS8: TWideStringField;
    qrnotaCREDITO_ICMS: TFloatField;
    qrnotaPIS: TFloatField;
    qrnotaCOFINS: TFloatField;
    qrnotaOPERACAO: TWideStringField;
    qrnotaINTEGRACAO: TIntegerField;
    qrnotaAPROVEITA_CREDITO_ICMS: TWideStringField;
    qrnotaCHAVE: TWideStringField;
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
    AdvReflectionImage1: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrnotaCalcFields(DataSet: TDataSet);
    procedure combo_relatorioKeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_notacompra: Tfrmlista_notacompra;
   const
   sc_DragMove = $f012;
implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor, compra_menu;

{$R *.dfm}

procedure Tfrmlista_notacompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_notacompra.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;

  combo_ordem.ItemIndex := 0;

  dateedit1.text := '01/' + copy(datetostr(incmonth(date, -1)), 4, 7);
  dateedit2.date := frmprincipal.UltimoDiaMes(date);



end;

procedure Tfrmlista_notacompra.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_notacompra.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmlista_notacompra.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_notacompra.bimprimirClick(Sender: TObject);
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


  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := 'CFOP: ' + ecfop.Text;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := 'PERIODO: ' + dateedit1.TEXT + ' A ' + dateedit2.TEXT;
  if combo_ordem.ItemIndex = 0 then ordem := 'data_lancamento';
  if combo_ordem.ItemIndex = 1 then ordem := 'numero';
  if combo_ordem.ItemIndex = 2 then ordem := 'cfop';





  if combo_relatorio.itemindex = 0 then

  begin

    fornecedor_imp := '';
    nota := '';

    if ecfop.text <> '' then cfop := ' and cfop = ''' + ecfop.text + '''' else cfop := '';


    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf ' + CFOP + ' order by ' + ordem);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;


    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTA FISCAL DE COMPRA';
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000088.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.itemindex = 1 then
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf ' + CFOP + ' order by ' + ordem);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE ITENS DA NOTA FISCAL DE COMPRA';
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000088_3.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.ItemIndex = 4 then
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '+CFOP+' order by cfop,'+ordem);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTAS POR CFOP';
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000088_2.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.ItemIndex = 5 then
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '+CFOP+' order by cfop,'+ordem);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTAS POR CFOP COM ITENS';
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000088_4.fr3');
    FXNOTA.ShowReport;
  end;


  if combo_relatorio.itemindex = 2 then
  begin
    qrcompra_produto.Close;
    qrcompra_produto.sql.clear;
    qrcompra_produto.sql.add('select');
    qrcompra_produto.sql.add('sum(c000088.qtde) total_compra,');
    qrcompra_produto.sql.add('c000088.codproduto,');
    qrcompra_produto.sql.add('c000025.produto');
    qrcompra_produto.sql.add('from');
    qrcompra_produto.sql.add('c000088,');
    qrcompra_produto.sql.add('c000025');
    qrcompra_produto.sql.add('where');
    qrcompra_produto.sql.add('c000088.codproduto = c000025.codigo');
    qrcompra_produto.sql.add('and data between :datai and :dataf');
    qrcompra_produto.sql.add('group by');
    qrcompra_produto.sql.add('c000088.codproduto,');
    qrcompra_produto.sql.add('c000025.produto');
    qrcompra_produto.sql.add('order by');
    qrcompra_produto.sql.add('c000025.produto');
    qrcompra_produto.params.ParamByName('datai').asdatetime := DateEdit1.date;
    qrcompra_produto.params.ParamByName('dataf').asdatetime := DateEdit2.date;
    qrcompra_produto.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE COMPRAS DE PRODUTOS';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'Período: ' + dateedit1.text + ' a ' + dateedit2.text;
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000088.fr3');
    FXNOTA.ShowReport;
  end;


  if combo_relatorio.itemindex = 3 then
  begin
    qrentrada.Close;
    qrentrada.sql.clear;
    qrentrada.sql.add('select');
    qrentrada.sql.add('sum(c000088.TOTAL) VALOR_TOTAL,');
    qrentrada.sql.add('sum(c000088.ICMS_BASE) BASE_CALCULO,');
    qrentrada.sql.add('sum(c000088.ICMS_VALOR) IMPOSTO,');
    qrentrada.sql.add('c000088.icms_aliquota,');
    qrentrada.sql.add('c000088.cst,');
    qrentrada.sql.add('c000088.cfop,');
    qrentrada.sql.add('c000087.numero,');
    qrentrada.sql.add('c000087.data_lancamento,');
    qrentrada.sql.add('c000087.especie,');
    qrentrada.sql.add('c000087.serie,');
    qrentrada.sql.add('c000009.uf');
    qrentrada.sql.add('from');
    qrentrada.sql.add('c000087,');
    qrentrada.sql.add('c000088,');
    qrentrada.sql.add('c000009');
    qrentrada.sql.add('where');
    qrentrada.sql.add('c000088.codnota = c000087.codigo');
    qrentrada.sql.add('and c000087.codfornecedor = c000009.codigo');
    qrentrada.sql.add('and C000087.data_lancamento between :datai and :dataf');
    qrentrada.sql.add('group by');
    qrentrada.sql.add('c000088.icms_aliquota,');
    qrentrada.sql.add('c000088.cst,');
    qrentrada.sql.add('c000088.cfop,');
    qrentrada.sql.add('c000087.numero,');
    qrentrada.sql.add('c000087.data_lancamento,');
    qrentrada.sql.add('c000087.especie,');
    qrentrada.sql.add('c000087.serie,');
    qrentrada.sql.add('c000009.uf');
    qrentrada.sql.add('order by');
    qrentrada.sql.add('c000087.numero');
    qrentrada.params.ParamByName('datai').asdatetime := DateEdit1.date;
    qrentrada.params.ParamByName('dataf').asdatetime := DateEdit2.date;
    qrentrada.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := dateedit1.text + ' a ' + dateedit2.text;
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000088_4.fr3');
    FXNOTA.ShowReport;
  end;





end;

procedure Tfrmlista_notacompra.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios', 4) then
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;



  if combo_relatorio.itemindex = 0 then
  begin
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000088.fr3');
    FXNOTA.DesignReport;
  end;
  if combo_relatorio.itemindex = 1 then
  begin
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000088_3.fr3');
    FXNOTA.DesignReport;
  end;

  if combo_relatorio.ItemIndex = 2 then
  begin
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000088_5.fr3');
    FXNOTA.DesignReport;
  end;

  if combo_relatorio.ItemIndex = 3 then
  begin
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000088_4.fr3');
    FXNOTA.DesignReport;
  end;


end;

procedure Tfrmlista_notacompra.qrnotaCalcFields(DataSet: TDataSet);
begin
  //if QRFORNECEDORTIPO.Value = 2 then QRFORNECEDORpessoa.Value := 'JURIDICA' else QRFORNECEDORpessoa.Value := 'FISICA';

end;

procedure Tfrmlista_notacompra.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0)

end;

end.
