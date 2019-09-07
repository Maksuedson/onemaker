unit lista_notasaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, JvExMask, JvToolEdit, AdvReflectionImage;

type
  Tfrmlista_notasaida = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    fxdesenhar: TfrxDesigner;
    Label6: TLabel;
    combo_ordem: TComboBox;
    fxnota: TfrxReport;
    fsnota: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrnota: TZQuery;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    qrnotanome: TStringField;
    qrnota_item: TZQuery;
    fsnota_item: TfrxDBDataset;
    dsnota: TDataSource;
    Label4: TLabel;
    combo_situacao: TComboBox;
    Label5: TLabel;
    combo_movimento: TComboBox;
    Label7: TLabel;
    ecfop: TEdit;
    ZQuery1: TZQuery;
    qrnota_itemproduto: TStringField;
    Panel1: TPanel;
    Bevel2: TBevel;
    qrnotatransportador: TStringField;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    qrnotaCODIGO: TWideStringField;
    qrnotaNUMERO: TWideStringField;
    qrnotaCFOP: TWideStringField;
    dtfldDATA: TDateField;
    qrnotaCODCLIENTE: TWideStringField;
    qrnotaVALOR_PRODUTOS: TFloatField;
    qrnotaTOTAL_NOTA: TFloatField;
    qrnotaBASE_CALCULO: TFloatField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaBASE_SUB: TFloatField;
    qrnotaICMS_SUB: TFloatField;
    qrnotaFRETE: TFloatField;
    qrnotaSEGURO: TFloatField;
    qrnotaOUTRAS_DESPESAS: TFloatField;
    qrnotaVALOR_TOTAL_IPI: TFloatField;
    qrnotaITENS: TIntegerField;
    qrnotaDESCONTO: TFloatField;
    qrnotaCODTRANSPORTADOR: TWideStringField;
    qrnotaFRETE_CONTA: TIntegerField;
    qrnotaPLACA: TWideStringField;
    qrnotaPLACA_UF: TWideStringField;
    qrnotaVOL_QTDE: TFloatField;
    qrnotaVOL_ESPECIE: TWideStringField;
    qrnotaVOL_MARCA: TWideStringField;
    qrnotaVOL_NUMERO: TWideStringField;
    qrnotaPESO_LIQUIDO: TFloatField;
    qrnotaPESO_BRUTO: TFloatField;
    qrnotaSITUACAO: TIntegerField;
    qrnotaMOTIVO: TWideStringField;
    dtfldFATURAMENTO_DATA1: TDateField;
    dtfldFATURAMENTO_DATA2: TDateField;
    dtfldFATURAMENTO_DATA3: TDateField;
    dtfldFATURAMENTO_DATA4: TDateField;
    qrnotaFATURAMENTO_NUMERO1: TWideStringField;
    qrnotaFATURAMENTO_NUMERO2: TWideStringField;
    qrnotaFATURAMENTO_NUMERO3: TWideStringField;
    qrnotaFATURAMENTO_NUMERO4: TWideStringField;
    qrnotaFATURAMENTO_VALOR1: TFloatField;
    qrnotaFATURAMENTO_VALOR2: TFloatField;
    qrnotaFATURAMENTO_VALOR3: TFloatField;
    qrnotaFATURAMENTO_VALOR4: TFloatField;
    qrnotaCODFILIAL: TWideStringField;
    qrnotaOBS1: TWideStringField;
    qrnotaOBS2: TWideStringField;
    qrnotaOBS3: TWideStringField;
    qrnotaINF1: TWideStringField;
    qrnotaINF2: TWideStringField;
    qrnotaINF3: TWideStringField;
    qrnotaINF4: TWideStringField;
    qrnotaINF5: TWideStringField;
    dtfldDATA_SAIDA: TDateField;
    qrnotaHORA: TWideStringField;
    qrnotaSITUACAO_A: TWideStringField;
    qrnotaMODELO_NF: TWideStringField;
    qrnotaSERIE_NF: TWideStringField;
    qrnotaVALOR_ISENTO_ICMS: TFloatField;
    qrnotaALIQUOTA_ICMS: TFloatField;
    qrnotaSIT: TWideStringField;
    qrnotaCODLANCAMENTO: TWideStringField;
    qrnotaMOVIMENTO: TWideStringField;
    qrnotaBAIXA_ESTOQUE: TWideStringField;
    qrnotaTIPO: TWideStringField;
    qrnotaOS_COD1: TWideStringField;
    qrnotaOS_COD2: TWideStringField;
    qrnotaOS_COD3: TWideStringField;
    qrnotaOS_COD4: TWideStringField;
    qrnotaOS_COD5: TWideStringField;
    qrnotaOS_COD6: TWideStringField;
    qrnotaOS_SERV1: TWideStringField;
    qrnotaOS_SERV2: TWideStringField;
    qrnotaOS_SERV3: TWideStringField;
    qrnotaOS_SERV4: TWideStringField;
    qrnotaOS_SERV5: TWideStringField;
    qrnotaOS_SERV6: TWideStringField;
    qrnotaOS_COMP1: TWideStringField;
    qrnotaOS_COMP2: TWideStringField;
    qrnotaOS_COMP3: TWideStringField;
    qrnotaOS_COMP4: TWideStringField;
    qrnotaOS_COMP5: TWideStringField;
    qrnotaOS_COMP6: TWideStringField;
    qrnotaOS_QTDE1: TFloatField;
    qrnotaOS_QTDE2: TFloatField;
    qrnotaOS_QTDE3: TFloatField;
    qrnotaOS_QTDE4: TFloatField;
    qrnotaOS_QTDE5: TFloatField;
    qrnotaOS_QTDE6: TFloatField;
    qrnotaOS_UNIT1: TFloatField;
    qrnotaOS_UNIT2: TFloatField;
    qrnotaOS_UNIT3: TFloatField;
    qrnotaOS_UNIT4: TFloatField;
    qrnotaOS_UNIT5: TFloatField;
    qrnotaOS_UNIT6: TFloatField;
    qrnotaOS_TOTAL1: TFloatField;
    qrnotaOS_TOTAL2: TFloatField;
    qrnotaOS_TOTAL3: TFloatField;
    qrnotaOS_TOTAL4: TFloatField;
    qrnotaOS_TOTAL5: TFloatField;
    qrnotaOS_TOTAL6: TFloatField;
    qrnotaOS_ISS: TFloatField;
    qrnotaOS_TOTAL_GERAL: TFloatField;
    qrnotaOS_TOTAL_ISS: TFloatField;
    qrnotaDESCONTO_ITEM: TFloatField;
    qrnotaOBS4: TWideStringField;
    qrnotaOBS5: TWideStringField;
    qrnotaCODIGOMODELO: TWideStringField;
    qrnotaCUSTO_VENDA: TWideStringField;
    qrnotaFAT_FORMA_PGTO: TWideStringField;
    qrnotaFAT_CONDI_PGTO: TWideStringField;
    qrnotaFAT_QTDE_PRESTACAO: TIntegerField;
    qrnotaFAT_GERAR_RECEBER: TIntegerField;
    qrnotaFAT_GERAR_DUPLICATA: TIntegerField;
    qrnotaPIS: TFloatField;
    qrnotaCOFINS: TFloatField;
    qrnotaFAT_TIPO: TIntegerField;
    qrnotaCODVENDEDOR: TWideStringField;
    qrnotaOPERACAO: TWideStringField;
    qrnotaINTEGRACAO: TIntegerField;
    qrnotaNFE_SITUACAO: TIntegerField;
    qrnotaNFE_XML: TWideStringField;
    qrnotaVAREJO_ATACADO: TWideStringField;
    qrnotaINDUSTRIALIZACAO: TWideStringField;
    qrnotaPERDA: TWideStringField;
    dtfldFATURAMENTO_DATA5: TDateField;
    dtfldFATURAMENTO_DATA6: TDateField;
    qrnotaFATURAMENTO_NUMERO5: TWideStringField;
    qrnotaFATURAMENTO_NUMERO6: TWideStringField;
    qrnotaFATURAMENTO_VALOR5: TFloatField;
    qrnotaFATURAMENTO_VALOR6: TFloatField;
    dtfldFATURAMENTO_DATA7: TDateField;
    dtfldFATURAMENTO_DATA8: TDateField;
    dtfldFATURAMENTO_DATA9: TDateField;
    qrnotaFATURAMENTO_NUMERO7: TWideStringField;
    qrnotaFATURAMENTO_NUMERO8: TWideStringField;
    qrnotaFATURAMENTO_NUMERO9: TWideStringField;
    qrnotaFATURAMENTO_VALOR7: TFloatField;
    qrnotaFATURAMENTO_VALOR8: TFloatField;
    qrnotaFATURAMENTO_VALOR9: TFloatField;
    qrnotaCHAVE: TWideStringField;
    qrnotaNATUREZA: TWideStringField;
    qrnotaTIPO_FINALIDADE: TIntegerField;
    qrnotaSEQEVENTO: TIntegerField;
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
    qrnota_itemCEST: TWideStringField;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
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
  frmlista_notasaida: Tfrmlista_notasaida;
    const
   sc_DragMove = $f012;
implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor, compra_menu;

{$R *.dfm}

procedure Tfrmlista_notasaida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_notasaida.FormShow(Sender: TObject);
begin
  frmmodulo.qrtransportador.open;


  combo_relatorio.ItemIndex := 0;

  combo_ordem.ItemIndex := 0;

  dateedit1.text := '01/' + copy(datetostr(incmonth(date, -1)), 4, 7);
  dateedit2.date := frmprincipal.UltimoDiaMes(date);



end;

procedure Tfrmlista_notasaida.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_notasaida.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmlista_notasaida.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_notasaida.bimprimirClick(Sender: TObject);
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



  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := 'MOVIMENTO: ' + COMBO_MOVIMENTO.TEXT;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := 'SITUACAO: ' + COMBO_SITUACAO.Text;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := 'CFOP: ' + ecfop.Text;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := 'PERIODO: ' + dateedit1.TEXT + ' A ' + dateedit2.TEXT;


  case COMBO_ORDEM.ITEMINDEX of
    0: ORDEM := ' ORDER BY DATA, NUMERO';
    1: ORDEM := ' ORDER BY DATA_SAIDA, NUMERO';
    2: ORDEM := ' ORDER BY NUMERO';
    3: ORDEM := ' ORDER BY CFOP';
  end;




  if combo_relatorio.Text = 'NOTA FISCAL DE SAÍDA' then

  begin

    fornecedor_imp := '';
    nota := '';

    if ecfop.text <> '' then cfop := ' and cfop = ''' + ecfop.text + '''' else cfop := '';
    if combo_movimento.ItemIndex = 0 then movimento := '';
    if combo_movimento.ItemIndex = 1 then movimento := ' and movimento = ''S''';
    if combo_movimento.ItemIndex = 2 then movimento := ' and movimento = ''E''';

    if combo_situacao.ItemIndex = 0 then
      situacao := '' else situacao := ' and situacao = ' + inttostr(combo_situacao.itemIndex);

    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf ' + fornecedor_imp + nota + situacao + movimento + cfop + ORDEM);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTA FISCAL DE SAÍDA';
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000089.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.Text = 'ITENS DA NOTA FISCAL DE SAÍDA' then
  begin
    if combo_situacao.ItemIndex = 0 then
      situacao := '' else situacao := ' and situacao = ' + inttostr(combo_situacao.itemIndex);

    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf ' + fornecedor_imp + nota + situacao + movimento + cfop + ORDEM);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE ITENS DA NOTA FISCAL DE SAIDA';
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000089_2.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.ItemIndex = 2 then
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf ' + fornecedor_imp + nota + situacao + movimento + cfop + ORDEM);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTAS POR CFOP';
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000061_2.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.ItemIndex = 3 then
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf ' + fornecedor_imp + nota + situacao + movimento + cfop + ORDEM);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTAS POR CFOP COM ITENS';
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000061_3.fr3');
    FXNOTA.ShowReport;
  end;


end;

procedure Tfrmlista_notasaida.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios', 4) then
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;



  if combo_relatorio.Text = 'NOTA FISCAL DE SAÍDA' then
  begin
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000089.fr3');
    FXNOTA.DesignReport;
  end;
  if combo_relatorio.Text = 'ITENS DA NOTA FISCAL DE SAÍDA' then
  begin
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000089_2.fr3');
    FXNOTA.DesignReport;
  end;

  if combo_relatorio.ItemIndex = 2 then
  begin
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000061_2.fr3');
    FXNOTA.DesignReport;
  end;

  if combo_relatorio.ItemIndex = 3 then
  begin
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000061_3.fr3');
    FXNOTA.DesignReport;
  end;

end;

procedure Tfrmlista_notasaida.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0)

end;

end.
