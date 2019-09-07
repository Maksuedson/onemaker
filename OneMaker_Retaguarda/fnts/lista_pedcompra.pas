unit lista_pedcompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton;

type
  TFRMLISTA_PEDCOMPRA = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    FlatPanel1: TFlatPanel;
    ViewSplit1: TViewSplit;
    fxdesenhar: TfrxDesigner;
    fxnota: TfrxReport;
    fspedido: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    fspedido_item: TfrxDBDataset;
    ZQuery1: TZQuery;
    qrpedido_item: TZQuery;
    qrpedido_itemproduto: TStringField;
    qrpedido_itemunidade: TStringField;
    dspedido_item: TDataSource;
    qrpedido_produto: TZQuery;
    qrpedido_produtofornecedor: TStringField;
    dspedido: TDataSource;
    qrpedido_itemCODIGO: TWideStringField;
    qrpedido_itemCODNOTA: TWideStringField;
    qrpedido_itemCODPRODUTO: TWideStringField;
    qrpedido_itemQTDE: TFloatField;
    qrpedido_itemUNITARIO: TFloatField;
    qrpedido_itemTOTAL: TFloatField;
    qrpedido_itemRECEBIDO: TFloatField;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    qrpedido_produtoCODIGO: TWideStringField;
    qrpedido_produtoNUMERO: TWideStringField;
    qrpedido_produtoCFOP: TWideStringField;
    dtfld_produtoDATA: TDateField;
    qrpedido_produtoCODFORNECEDOR: TWideStringField;
    qrpedido_produtoTOTAL_NOTA: TFloatField;
    qrpedido_produtoITENS: TIntegerField;
    qrpedido_produtoSITUACAO: TIntegerField;
    dtfld_produtoPREVISAO: TDateField;
    qrpedido_produtoCONDPGTO: TWideStringField;
    qrpedido_produtoOBS1: TWideStringField;
    qrpedido_produtoOBS2: TWideStringField;
    qrpedido_produtoOBS3: TWideStringField;
    qrpedido_produtoOBS4: TWideStringField;
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
  FRMLISTA_PEDCOMPRA: TFRMLISTA_PEDCOMPRA;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor, compra_menu;

{$R *.dfm}

procedure TFRMLISTA_PEDCOMPRA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFRMLISTA_PEDCOMPRA.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;



end;

procedure TFRMLISTA_PEDCOMPRA.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFRMLISTA_PEDCOMPRA.bimprimirClick(Sender: TObject);
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



  if combo_relatorio.itemindex = 0 then

  begin


    qrpedido_item.close;
    qrpedido_item.sql.clear;
    qrpedido_item.SQL.add('select * from c000038 where codnota = ''' + frmmodulo.qrpedido_produto.fieldbyname('codigo').asstring + ''' order by codigo');
    qrpedido_item.open;


    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'PEDIDO DE COMPRA';

    if FRMMODULO.qrpedido_produto.FieldByName('SITUACAO').ASSTRING = '1' then
      FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := 'Aberto';
    if FRMMODULO.qrpedido_produto.FieldByName('SITUACAO').ASSTRING = '2' then
      FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := 'Recebido';
    if FRMMODULO.qrpedido_produto.FieldByName('SITUACAO').ASSTRING = '3' then
      FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := 'Cancelado';


    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000093.fr3');
    FXNOTA.ShowReport;
  end;


end;

procedure TFRMLISTA_PEDCOMPRA.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios', 4) then
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
    exit;
  end;



  if combo_relatorio.itemindex = 0 then
  begin
    FXNOTA.LoadFromFile('\OneMaker\server\rel\f000093.fr3');
    FXNOTA.DesignReport;
  end;

end;

procedure TFRMLISTA_PEDCOMPRA.qrnotaCalcFields(DataSet: TDataSet);
begin
  //if QRFORNECEDORTIPO.Value = 2 then QRFORNECEDORpessoa.Value := 'JURIDICA' else QRFORNECEDORpessoa.Value := 'FISICA';

end;

procedure TFRMLISTA_PEDCOMPRA.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0)

end;

end.
