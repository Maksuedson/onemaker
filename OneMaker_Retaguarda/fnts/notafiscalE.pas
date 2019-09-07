unit notafiscalE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, PageView, Wwdbigrd,
  Wwdbgrid, wwdbedit, wwdblook, ScrollView, CustomGridViewControl,
  CustomGridView, GridView, ComCtrls, frxClass, frxDBSet, frxDesgn, JvExMask,
  JvToolEdit, JvDBControls;

type
  TfrmnotafiscalE = class(TForm)
    HeaderView1: THeaderView;
    bincluir: TBitBtn;
    balterar: TBitBtn;
    bexcluir: TBitBtn;
    blocalizar: TBitBtn;
    bfechar: TBitBtn;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    plocalizar1: TFlatPanel;
    LOC: TEdit;
    BLOC: TBitBtn;
    plocalizar2: THeaderView;
    DBGrid1: TDBGrid;
    dsnotafiscal2: TDataSource;
    qrnotafiscal: TZQuery;
    FlatPanel1: TFlatPanel;
    rnome: TRadioButton;
    rcodigo: TRadioButton;
    BitBtn5: TBitBtn;
    Relatrios1: TMenuItem;
    rapelido: TRadioButton;
    dsnotafiscal: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    panel99: TPanel;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    efilial: TDBEdit;
    edata_cadastro: TJvDBDateEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    ecfop: TDBEdit;
    bloccfop: TBitBtn;
    DBEdit21: TDBEdit;
    Label6: TLabel;
    ecliente: TDBEdit;
    bloccliente: TBitBtn;
    DBEdit23: TDBEdit;
    panel22: TPanel;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    ViewSplit1: TViewSplit;
    qrnotafiscal_item: TZQuery;
    dsnotafiscal_item: TDataSource;
    qrnotafiscal_itemproduto: TStringField;
    Panel2: TPanel;
    Panel1: TPanel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    FlatPanel3: TFlatPanel;
    Label17: TLabel;
    DBText1: TDBText;
    grid1: TwwDBGrid;
    N1: TMenuItem;
    Incluiritem1: TMenuItem;
    Excluiritem1: TMenuItem;
    AlterarItem1: TMenuItem;
    panel_item: TFlatPanel;
    qrnf: TZQuery;
    qrcliente: TZQuery;
    qrnotafiscal_itemunidade: TStringField;
    Finalizar1: TMenuItem;
    Panel3: TPanel;
    bincluir_item: TBitBtn;
    balterar_item: TBitBtn;
    bexcluir_item: TBitBtn;
    BitBtn6: TBitBtn;
    PageSheet3: TPageSheet;
    PageSheet4: TPageSheet;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBDateEdit1: TJvDBDateEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBDateEdit2: TJvDBDateEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBDateEdit3: TJvDBDateEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBDateEdit4: TJvDBDateEdit;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    BitBtn7: TBitBtn;
    ETRANSPORTADOR: TDBEdit;
    bloctransportador: TBitBtn;
    DBEdit25: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit26: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Label27: TLabel;
    DBEdit29: TDBEdit;
    Label28: TLabel;
    DBEdit30: TDBEdit;
    Label29: TLabel;
    DBEdit31: TDBEdit;
    Label30: TLabel;
    DBEdit32: TDBEdit;
    Label31: TLabel;
    DBEdit33: TDBEdit;
    Label32: TLabel;
    DBEdit34: TDBEdit;
    blocfilial: TBitBtn;
    enomefilial: TDBEdit;
    bcancelarnf: TBitBtn;
    CancelarNF1: TMenuItem;
    DBEdit1: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    pcancel: THeaderView;
    DBText2: TDBText;
    Label33: TLabel;
    GroupBox1: TGroupBox;
    DBEdit24: TDBEdit;
    qrapoio: TZQuery;
    BitBtn8: TBitBtn;
    Imprimir1: TMenuItem;
    fxnotafiscal: TfrxReport;
    fsnotafiscal: TfrxDBDataset;
    fsnotafiscal_item: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure rnomeKeyPress(Sender: TObject; var Key: Char);
    procedure rcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure BLOCClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure efilialEnter(Sender: TObject);
    procedure efilialExit(Sender: TObject);
    procedure efilialKeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FecharLocalizao1Click(Sender: TObject);
    procedure edata_cadastroExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure bexcluir_itemClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure ecfopExit(Sender: TObject);
    procedure bloccfopClick(Sender: TObject);
    procedure blocclienteClick(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure efilialChange(Sender: TObject);
    procedure bincluir_itemClick(Sender: TObject);
    procedure balterar_itemClick(Sender: TObject);
    procedure grid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure rapelidoClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure blocfilialClick(Sender: TObject);
    procedure bcancelarnfClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure edata_cadastroKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit41KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure DBEdit19Enter(Sender: TObject);
    procedure DBEdit22Enter(Sender: TObject);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn7Click(Sender: TObject);
    procedure bloctransportadorClick(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure DBEdit34KeyPress(Sender: TObject; var Key: Char);
    procedure ETRANSPORTADORExit(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit24Change(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnotafiscalE: TfrmnotafiscalE;
  comando: string;

implementation

uses modulo, principal, loc_cfop, Math, loc_cliente, notafiscalE_item,
  loc_filial, loc_transportador, notafiscalE_impressao,
  xloc_cliente;

{$R *.dfm}


procedure TfrmnotafiscalE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (frmmodulo.qrnotafiscal.State = dsinsert) or (frmmodulo.qrnotafiscal.State = dsedit) then
    bcancelarclick(frmnotafiscalE);
  qrnotafiscal_item.close;
  action := cafree;
end;

procedure TfrmnotafiscalE.FormShow(Sender: TObject);
begin
  panel_item.top := 194;
  panel_item.left := 4;


  pgravar.visible := false;
  pgravar.Align := alClient;
  plocalizar2.Align := alclient;
  plocalizar1.Align := alclient;
//  plocalizar1.Align := alnone;

  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 order by produto');
  frmmodulo.qrproduto.open;
  frmmodulo.qrproduto.indexfieldnames := 'produto';

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.SQL.add('select * from c000010 order by nome');
  frmmodulo.qrtransportador.open;
  frmmodulo.qrtransportador.IndexFieldNames := 'nome';



  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.open;
  frmmodulo.qrcliente.IndexFieldNames := 'nome';

  frmmodulo.qrfilial.close;
  frmmodulo.qrfilial.sql.clear;
  frmmodulo.qrfilial.SQL.add('select * from c000004 order by filial');
  frmmodulo.qrfilial.open;

  frmmodulo.qrcfop.close;
  frmmodulo.qrcfop.sql.clear;
  frmmodulo.qrcfop.SQL.add('select * from c000030 where tipo = 2 order by NATUREZA');
  frmmodulo.qrcfop.open;
  frmmodulo.qrcfop.IndexFieldNames := 'NATUREZA';

  frmmodulo.qrnotafiscal.close;
  frmmodulo.qrnotafiscal.SQL.clear;
  frmmodulo.qrnotafiscal.SQL.add('select * from c000061 order by numero');
  frmmodulo.qrnotafiscal.open;
  frmmodulo.qrnotafiscal.last;

  pficha.Enabled := false;
  bincluir.SetFocus;
end;

procedure TfrmnotafiscalE.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmnotafiscalE.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure TfrmnotafiscalE.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrnotafiscal.insert;
  frmmodulo.qrnotafiscal.fieldbyname('codigo').asstring := frmprincipal.codifica('000087');
  pficha.Enabled := true;

  efilial.setfocus;
  pgravar.Visible := true;

  panel1.Enabled := true;
  panel2.Enabled := true;
  panel_item.visible := false;

  PopupMenu := pop2;
end;

procedure TfrmnotafiscalE.balterarClick(Sender: TObject);
begin

  if dbedit2.Text <> '' then
  begin
    panel2.Enabled := true;
    panel1.Enabled := true;
    panel_item.visible := false;

    frmmodulo.qrcfop.Locate('cfop', frmmodulo.qrnotafiscal.fieldbyname('cfop').asstring, [loCaseInsensitive]);



    frmmodulo.qrnotafiscal.Edit;
    pficha.Enabled := true;
    dbedit2.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  end
  else
  begin
    Showmessage('Nenhum registro foi selecionado!');
  end;

end;

procedure TfrmnotafiscalE.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir NF', 4) then
  begin
    while qrnotafiscal_item.RecordCount <> 0 do
    begin
      qrnotafiscal_item.delete;
    end;
    frmmodulo.qrnotafiscal.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure TfrmnotafiscalE.blocalizarClick(Sender: TObject);
begin
  plocalizar1.visible := true;
  plocalizar2.visible := true;
  PopupMenu := POP3;


  rnome.setfocus;
end;

procedure TfrmnotafiscalE.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmnotafiscalE.bgravarClick(Sender: TObject);
var situacao, tipo: integer;
  DATA: string;
begin
  if qrnotafiscal_item.RecordCount <> 0 then
  begin
    if (frmmodulo.qrnotafiscal.State = dsinsert) or (frmmodulo.qrnotafiscal.State = dsedit) then
    begin
      if frmmodulo.qrnotafiscal.State = dsinsert then
      begin
        frmmodulo.qrnotafiscal.FieldByName('situacao').asinteger := 1;
        frmmodulo.qrfilial.edit;
        frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger := frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
        frmmodulo.qrfilial.post;
      end;

      frmmodulo.qrnotafiscal.post;
    end;
    frmmodulo.Conexao.Commit;
    pficha.Enabled := false;
    pgravar.Visible := false;
    PopupMenu := pop1;
    bincluir.setfocus;

    panel2.Enabled := false;
    panel1.Enabled := false;
    panel_item.visible := true;



    PageView1.ActivePageIndex := 0;


    BitBtn8Click(frmnotafiscalE);

  end
  else
  begin
    application.messagebox('Não há nenhum produto lançado para esta nota! Impossível GRAVAR!', 'Atenção', mb_ok + mb_iconwarning);
    grid1.setfocus;

  end;


end;

procedure TfrmnotafiscalE.bcancelarClick(Sender: TObject);
begin


  if (frmmodulo.qrnotafiscal.State = dsinsert) or (frmmodulo.qrnotafiscal.State = dsedit) then
    frmmodulo.qrnotafiscal.cancel;


  frmmodulo.Conexao.Rollback;

  FRMMODULO.qrnotafiscal.Refresh;


  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';

  panel2.Enabled := false;
  panel1.Enabled := false;
  panel_item.visible := true;

  PageView1.ActivePageIndex := 0;
end;

procedure TfrmnotafiscalE.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmnotafiscalE.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrnotafiscal.first;
end;

procedure TfrmnotafiscalE.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrnotafiscal.last;

end;

procedure TfrmnotafiscalE.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrnotafiscal.prior;

end;

procedure TfrmnotafiscalE.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrnotafiscal.next;

end;

procedure TfrmnotafiscalE.rnomeKeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then LOC.SetFocus
end;

procedure TfrmnotafiscalE.rcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then LOC.SETFOCUS;
end;

procedure TfrmnotafiscalE.LOCKeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then BLOC.SETFOCUS;
end;

procedure TfrmnotafiscalE.BLOCClick(Sender: TObject);
begin
  qrnotafiscal.close;
  qrnotafiscal.sql.clear;
  if rnome.Checked then
  begin
    qrnotafiscal.sql.add('select * from c000061 where upper(numero) = ''' + ansiuppercase(frmprincipal.zerarcodigo(LOC.text, 6)) + ''' order by numero');
  end;
  if rcodigo.Checked then
  begin
    qrnotafiscal.sql.add('select * from c000061 where data = :datai order by data');
    qrnotafiscal.Params.ParamByName('datai').value := strtodate(loc.text);
  end;
  if rapelido.Checked then
  begin
    qrnotafiscal.sql.add('select * from c000061 where codcliente = ''' + copy(loc.text, 1, 6) + ''' order by numero');
  end;

  qrnotafiscal.open;
  dbgrid1.setfocus;

end;

procedure TfrmnotafiscalE.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    try
      frmmodulo.qrnotafiscal.Locate('codigo', qrnotafiscal.fieldbyname('codigo').asstring, [loCaseInsensitive]);
      qrnotafiscal.close;
    except
    end;

    PopupMenu := POP1;

    plocalizar1.Visible := false;
    plocalizar2.visible := false;
  end;
end;

procedure TfrmnotafiscalE.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure TfrmnotafiscalE.edata_cadastroEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  if frmmodulo.qrnotafiscal.state = dsinsert then
    EDATA_CADASTRO.Date := DATE;
end;

procedure TfrmnotafiscalE.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure TfrmnotafiscalE.efilialEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmnotafiscalE.efilialExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrnotafiscal.state = dsinsert) or (frmmodulo.qrnotafiscal.State = dsedit) then
  begin
    if efilial.text <> '' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrfilial, efilial.text, 'codigo') then
      begin
        blocfilialclick(frmnotafiscalE);
      end
      else
      begin
        if frmmodulo.qrnotafiscal.State = dsinsert then
        begin
          frmmodulo.qrnotafiscal.FieldByName('numero').asstring :=
            frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring, 6);
        end;
        edata_cadastro.setfocus;
      end;
    end
    else
      blocfilial.SetFocus;
  end;

end;

procedure TfrmnotafiscalE.efilialKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmnotafiscalE.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure TfrmnotafiscalE.FecharLocalizao1Click(Sender: TObject);
begin
  PopupMenu := POP1;
  qrnotafiscal.close;
  plocalizar1.Visible := false;
  plocalizar2.visible := false;
end;

procedure TfrmnotafiscalE.edata_cadastroExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

  if TJvDBDateEdit(sender).text <> '  /  /    ' then
  begin
    try
      TJvDBDateEdit(sender).Date := strtodate(TJvDBDateEdit(sender).text);
    except
      showmessage('Data Inválida');
      TJvDBDateEdit(sender).SetFocus;
    end;
  end;


end;

procedure TfrmnotafiscalE.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure TfrmnotafiscalE.bexcluir_itemClick(Sender: TObject);
begin

  if frmprincipal.autentica('Excluir produto NF', 4) then
  begin


    frmmodulo.qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat :=
      frmmodulo.qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat -
      dsnotafiscal_item.dataset.fieldbyname('BASE_CALCULO').asfloat;

    frmmodulo.qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat :=
      frmmodulo.qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat -
      dsnotafiscal_item.dataset.fieldbyname('VALOR_ICMS').asfloat;





    frmmodulo.qrnotafiscal.FieldByName('VALOR_TOTAL_IPI').asfloat :=
      frmmodulo.qrnotafiscal.FieldByName('VALOR_TOTAL_IPI').asfloat - dsnotafiscal_item.dataset.fieldbyname('valor_ipi').asfloat;




    frmmodulo.qrnotafiscal.FieldByName('VALOR_PRODUTOS').asfloat := frmmodulo.qrnotafiscal.FieldByName('VALOR_PRODUTOS').asfloat -
      dsnotafiscal_item.DataSet.fieldbyname('TOTAL').asfloat;

    frmmodulo.qrnotafiscal.FieldByName('TOTAL_NOTA').asfloat := frmmodulo.qrnotafiscal.FieldByName('VALOR_PRODUTOS').asfloat +
      frmmodulo.qrnotafiscal.FieldByName('frete').asfloat +
      frmmodulo.qrnotafiscal.FieldByName('seguro').asfloat +
      frmmodulo.qrnotafiscal.FieldByName('outras_despesas').asfloat +
      frmmodulo.qrnotafiscal.FieldByName('valor_total_ipi').asfloat -
      frmmodulo.qrnotafiscal.FieldByName('desconto').asfloat;

    frmmodulo.qrnotafiscal.FieldByName('itens').asinteger :=
      frmmodulo.qrnotafiscal.FieldByName('itens').asinteger - 1;


    dsnotafiscal_item.DataSet.Delete;
    grid1.setfocus;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;




end;

procedure TfrmnotafiscalE.DBEdit2Exit(Sender: TObject);
begin
  if (frmmodulo.qrnotafiscal.State = dsinsert) or (frmmodulo.qrnotafiscal.State = dsedit) then
    frmmodulo.qrnotafiscal.FieldByName('numero').asstring := frmprincipal.zerarcodigo(dbedit2.text, 6);
  tedit(sender).Color := clwindow;
end;

procedure TfrmnotafiscalE.ecfopExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrnotafiscal.state = dsinsert) or (frmmodulo.qrnotafiscal.State = dsedit) then
  begin
    if ecfop.text <> '' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrcfop, ecfop.text, 'cfop') then bloccfopclick(frmnotafiscalE)
      else
      begin

        FRMMODULO.qrnotafiscal.FieldByName('INF1').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS1').ASSTRING;
        FRMMODULO.qrnotafiscal.FieldByName('INF2').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS2').ASSTRING;
        FRMMODULO.qrnotafiscal.FieldByName('INF3').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS3').ASSTRING;
        FRMMODULO.qrnotafiscal.FieldByName('INF4').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS4').ASSTRING;
        ecliente.setfocus;
      end;
    end
    else
      bloccfop.SetFocus;

  end;

end;

procedure TfrmnotafiscalE.bloccfopClick(Sender: TObject);
begin


  frmloc_cfop := tfrmloc_cfop.create(self);
  frmloc_cfop.showmodal;
  frmmodulo.qrnotafiscal.fieldbyname('cfop').asstring := frmmodulo.qrcfop.fieldbyname('cfop').asstring;

  FRMMODULO.qrnotafiscal.FieldByName('INF1').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS1').ASSTRING;
  FRMMODULO.qrnotafiscal.FieldByName('INF2').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS2').ASSTRING;
  FRMMODULO.qrnotafiscal.FieldByName('INF3').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS3').ASSTRING;
  FRMMODULO.qrnotafiscal.FieldByName('INF4').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS4').ASSTRING;
  ecliente.setfocus;
end;

procedure TfrmnotafiscalE.blocclienteClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  frmmodulo.qrnotafiscal.fieldbyname('CODcliente').asstring := RESULTADO_PESQUISA1;
  edata_cadastro.setfocus;
end;

procedure TfrmnotafiscalE.eclienteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrnotafiscal.state = dsinsert) or (frmmodulo.qrnotafiscal.State = dsedit) then
  begin
    frmmodulo.qrnotafiscal.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecliente.text, 6);
    if ecliente.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrcliente, ecliente.text, 'codigo') then
      begin
        blocclienteclick(frmnotafiscalE)
      end
      else
      begin
        edata_cadastro.SetFocus;
      end;
    end
    else
      bloccliente.SetFocus;
  end;

end;

procedure TfrmnotafiscalE.efilialChange(Sender: TObject);
begin
  try
    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.SQL.add('select * from c000062 where codnota = ''' + frmmodulo.qrnotafiscal.fieldbyname('codigo').asstring + '''');
    qrnotafiscal_item.open;

    frmmodulo.qrCFOP.Locate('cfop', frmmodulo.qrnotafiscal.fieldbyname('cfop').asstring, [loCaseInsensitive]);

  except
  end;
end;

procedure TfrmnotafiscalE.bincluir_itemClick(Sender: TObject);
begin
  qrnotafiscal_item.Insert;
  qrnotafiscal_item.FieldByName('cfop').asstring := frmmodulo.qrnotafiscal.fieldbyname('cfop').asstring;
  frmnotafiscalE_item := tfrmnotafiscalE_item.create(self);
  frmnotafiscalE_item.showmodal;
  grid1.setfocus;
  qrnotafiscal_item.Refresh;

end;

procedure TfrmnotafiscalE.balterar_itemClick(Sender: TObject);
begin
  qrnotafiscal_item.edit;
  frmnotafiscalE_item := tfrmnotafiscalE_item.create(self);
  frmnotafiscalE_item.showmodal;
  grid1.setfocus;
end;

procedure TfrmnotafiscalE.grid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then dbedit3.setfocus;
end;

procedure TfrmnotafiscalE.DBEdit7Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrnotafiscal.State = dsinsert) or (frmmodulo.qrnotafiscal.State = dsedit) then
  begin
    frmmodulo.qrnotafiscal.FieldByName('TOTAL_NOTA').asfloat :=
      frmmodulo.qrnotafiscal.FieldByName('VALOR_PRODUTOS').asfloat -
      frmmodulo.qrnotafiscal.FieldByName('DESCONTO').asfloat +
      frmmodulo.qrnotafiscal.FieldByName('FRETE').asfloat +
      frmmodulo.qrnotafiscal.FieldByName('seguro').asfloat +
      frmmodulo.qrnotafiscal.FieldByName('OUTRAS_DESPESAS').asfloat +
      frmmodulo.qrnotafiscal.FieldByName('VALOR_TOTAL_IPI').asfloat;
  end;
end;

procedure TfrmnotafiscalE.DBEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    PageView1.ActivePageIndex := 1;
    DBDATEEDIT1.SetFocus;
  end;
end;

procedure TfrmnotafiscalE.rapelidoClick(Sender: TObject);
begin
  frmloc_cliente := tfrmloc_cliente.create(self);
  frmloc_cliente.showmodal;
  loc.Text := frmmodulo.qrcliente.fieldbyname('codigo').asstring + '-' + frmmodulo.qrcliente.fieldbyname('nome').asstring;
  loc.setfocus;
end;

procedure TfrmnotafiscalE.Panel1Click(Sender: TObject);
begin
  //VERIFICAR
end;

procedure TfrmnotafiscalE.DBEdit12Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrnotafiscal.State = dsinsert) or (frmmodulo.qrnotafiscal.State = dsedit) then
  begin
    frmmodulo.qrnotafiscal.FieldByName('TOTAL_NOTA').asfloat :=
      frmmodulo.qrnotafiscal.FieldByName('VALOR_PRODUTOS').asfloat -
      frmmodulo.qrnotafiscal.FieldByName('DESCONTO').asfloat +
      frmmodulo.qrnotafiscal.FieldByName('FRETE').asfloat +
      frmmodulo.qrnotafiscal.FieldByName('seguro').asfloat +
      frmmodulo.qrnotafiscal.FieldByName('OUTRAS_DESPESAS').asfloat +
      frmmodulo.qrnotafiscal.FieldByName('VALOR_TOTAL_IPI').asfloat;
  end;

end;

procedure TfrmnotafiscalE.BitBtn6Click(Sender: TObject);
begin
  dbedit3.setfocus;
end;

procedure TfrmnotafiscalE.FormCreate(Sender: TObject);
begin

  qrnotafiscal_itemQTDE.DisplayFormat := mascara_qtde;

  qrnotafiscal_itemunitario.DisplayFormat := mascara_valor;


end;

procedure TfrmnotafiscalE.blocfilialClick(Sender: TObject);
begin
  frmloc_filial := tfrmloc_filial.create(self);
  frmloc_filial.showmodal;
  frmmodulo.qrnotafiscal.fieldbyname('codfilial').asstring := frmmodulo.qrfilial.fieldbyname('codigo').asstring;
  if frmmodulo.qrnotafiscal.State = dsinsert then
  begin
    frmmodulo.qrnotafiscal.FieldByName('numero').asstring :=
      frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring, 6);
  end;
  dbedit2.setfocus;
end;

procedure TfrmnotafiscalE.bcancelarnfClick(Sender: TObject);
begin
  if frmprincipal.autentica('Cancelar/Ativar NF', 4) then
  begin
    if frmmodulo.qrnotafiscal.fieldbyname('situacao').AsInteger = 1 then
    begin
      if application.messagebox('Confirma o cancelamento desta NF?', 'Atenção', mb_yesno + MB_ICONWARNING) = idyes then
      begin
        frmmodulo.qrnotafiscal.edit;
        frmmodulo.qrnotafiscal.FieldByName('motivo').asstring := inputbox('Cancelar NF', 'Informe o motivo do Cancelamento:', '');
        frmmodulo.qrnotafiscal.fieldbyname('situacao').AsInteger := 2;
        frmmodulo.qrnotafiscal.post;
        frmmodulo.Conexao.Commit;
        pcancel.Visible := true;
      end;
    end
    else
    begin
      if application.messagebox('Esta nota fiscal está CANCELADA! Deseja ativá-la?', 'Atenção', mb_yesno + mb_iconquestion) = idyes then
      begin
        frmmodulo.qrnotafiscal.edit;
        frmmodulo.qrnotafiscal.FieldByName('motivo').asstring := '';
        frmmodulo.qrnotafiscal.fieldbyname('situacao').AsInteger := 1;
        frmmodulo.qrnotafiscal.post;
        frmmodulo.Conexao.Commit;
        pcancel.Visible := false;
      end;
    end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!', mb_ok + mb_iconerror);
  end;
end;

procedure TfrmnotafiscalE.BitBtn5Click(Sender: TObject);
begin
// verificar
end;

procedure TfrmnotafiscalE.edata_cadastroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then
  begin
    PageView1.ActivePageIndex := 0;
    GRID1.SETFOCUS;
  end;
end;

procedure TfrmnotafiscalE.DBEdit1Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure TfrmnotafiscalE.DBEdit41KeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then
  begin
    PageView1.ActivePageIndex := 0;
    BGRAVAR.SETFOCUS;
  end;
end;

procedure TfrmnotafiscalE.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmnotafiscalE.DBDateEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmnotafiscalE.DBDateEdit1Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure TfrmnotafiscalE.DBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then
  begin
    if TEDIT(SENDER).Text = '  /  /    ' then
    begin
      PageView1.ActivePageINDEX := 2;
      ETRANSPORTADOR.SetFocus;
    end
    else
      PERFORM(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmnotafiscalE.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmnotafiscalE.DBEdit15Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR1').ASFLOAT :=
    FRMMODULO.qrnotafiscal.FieldByName('TOTAL_NOTA').ASFLOAT -
    (FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR1').ASFLOAT +
    FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR2').ASFLOAT +
    FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR3').ASFLOAT +
    FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR4').ASFLOAT);



end;

procedure TfrmnotafiscalE.DBEdit17Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR2').ASFLOAT :=
    FRMMODULO.qrnotafiscal.FieldByName('TOTAL_NOTA').ASFLOAT -
    (FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR1').ASFLOAT +
    FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR2').ASFLOAT +
    FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR3').ASFLOAT +
    FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR4').ASFLOAT);

end;

procedure TfrmnotafiscalE.DBEdit19Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR3').ASFLOAT :=
    FRMMODULO.qrnotafiscal.FieldByName('TOTAL_NOTA').ASFLOAT -
    (FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR1').ASFLOAT +
    FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR2').ASFLOAT +
    FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR3').ASFLOAT +
    FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR4').ASFLOAT);

end;

procedure TfrmnotafiscalE.DBEdit22Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR4').ASFLOAT :=
    FRMMODULO.qrnotafiscal.FieldByName('TOTAL_NOTA').ASFLOAT -
    (FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR1').ASFLOAT +
    FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR2').ASFLOAT +
    FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR3').ASFLOAT +
    FRMMODULO.qrnotafiscal.FieldByName('FATURAMENTO_VALOR4').ASFLOAT);

end;

procedure TfrmnotafiscalE.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then
  begin
    PageView1.ActivePageIndex := 2;
    ETRANSPORTADOR.SETFOCUS;
  end;
end;

procedure TfrmnotafiscalE.BitBtn7Click(Sender: TObject);
begin
  // verificar
end;

procedure TfrmnotafiscalE.bloctransportadorClick(Sender: TObject);
begin
  frmloc_transportador := tfrmloc_transportador.create(self);
  frmloc_transportador.showmodal;
  frmmodulo.qrnotafiscal.fieldbyname('codtransportador').asstring := frmmodulo.qrtransportador.fieldbyname('codigo').asstring;

  FRMMODULO.qrnotafiscal.FieldByName('placa').ASSTRING := FRMMODULO.qrtransportador.FIELDBYNAME('placa').ASSTRING;
  FRMMODULO.qrnotafiscal.FieldByName('placa_uf').ASSTRING := FRMMODULO.qrtransportador.FIELDBYNAME('ufplaca').ASSTRING;
  dbedit26.setfocus;
end;

procedure TfrmnotafiscalE.DBEdit26Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TfrmnotafiscalE.DBEdit34KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    PageView1.ActivePageIndex := 3;
    dbedit1.setfocus;
  end;
end;

procedure TfrmnotafiscalE.ETRANSPORTADORExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrnotafiscal.state = dsinsert) or (frmmodulo.qrnotafiscal.State = dsedit) then
  begin
    frmmodulo.qrnotafiscal.fieldbyname('codtransportador').asstring := frmprincipal.zerarcodigo(etransportador.text, 6);
    if etransportador.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrtransportador, etransportador.text, 'codigo') then bloctransportadorclick(frmnotafiscalE)
      else
      begin
        FRMMODULO.qrnotafiscal.FieldByName('placa').ASSTRING := FRMMODULO.qrtransportador.FIELDBYNAME('placa').ASSTRING;
        FRMMODULO.qrnotafiscal.FieldByName('placa_uf').ASSTRING := FRMMODULO.qrtransportador.FIELDBYNAME('ufplaca').ASSTRING;
        dbedit26.setfocus;
      end;
    end
    else
      bloctransportador.SetFocus;

  end;
end;

procedure TfrmnotafiscalE.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure TfrmnotafiscalE.DBEdit3Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TfrmnotafiscalE.DBEdit24Change(Sender: TObject);
begin
  try
    qrnotafiscal_item.Close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.sql.add('select * from c000062 where codnota = ''' + frmmodulo.qrnotafiscal.fieldbyname('codigo').asstring + '''');
    qrnotafiscal_item.open;
  except
  end;




  try

    if frmmodulo.qrnotafiscal.fieldbyname('situacao').asinteger = 2 then
      pcancel.Visible := true
    else
      pcancel.visible := false;
  except
  end;
end;

procedure TfrmnotafiscalE.BitBtn8Click(Sender: TObject);
var f: textfile;
  TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7: string;
  i: integer;
  NNOTA: INTEGER;
begin

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = ''' + frmmodulo.qrnotafiscal.fieldbyname('codcliente').asstring + '''');
  frmmodulo.qrcliente.open;

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.sql.add('select * from c000010 where codigo = ''' + frmmodulo.qrnotafiscal.fieldbyname('codtransportador').asstring + '''');
  frmmodulo.qrtransportador.open;


  qrapoio.close;
  qrapoio.sql.clear;
  qrapoio.sql.add('delete from cl00004');
  qrapoio.execsql;
  qrapoio.close;
  qrapoio.sql.clear;
  qrapoio.sql.add('select * from cl00004');
  qrapoio.open;

  frmmodulo.qrconfig.open;



  nnota := 0;

  I := 1;
  qrnotafiscal_item.Refresh;
  qrnotafiscal_item.First;
  while not qrnotafiscal_item.eof do
  begin
    if I = frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger then
    begin
      while I <> frmmodulo.qrconfig.fieldbyname('NF_SALTO_PAGINA').asinteger do
      begin
        I := I + 1;
        if I = frmmodulo.qrconfig.fieldbyname('NF_LINHA_TRANSPORTE').asinteger then
        begin
          qrapoio.INSERT;
          qrapoio.FIELDBYNAME('TOTAL').ASSTRING := 'TRANSPORTAR';
          qrapoio.POST;
        end
        else
        begin
          qrapoio.INSERT;
          qrapoio.POST;
        end;
      end;
      qrapoio.INSERT;
      qrapoio.FIELDBYNAME('PRODUTO').ASSTRING := '*** T R A N S P O R T A D O ***';
      qrapoio.POST;
      qrapoio.insert;
      qrapoio.fieldbyname('codproduto').asstring := qrnotafiscal_item.fieldbyname('codproduto').asstring;
      qrapoio.fieldbyname('produto').asstring := qrnotafiscal_item.fieldbyname('produto').asstring;
      if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000', qrnotafiscal_item.fieldbyname('qtde').asfloat);
      if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then qrapoio.fieldbyname('unitario').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('unitario').asfloat);
      if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);
      qrapoio.fieldbyname('cf').asstring := qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      qrapoio.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname('cst').asstring;
      qrapoio.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname('unidade').asstring;
      qrapoio.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      qrapoio.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname('ipi').asstring;
      qrapoio.post;
      NNOTA := NNOTA + 1;
      I := 2;
    end
    else
    begin
      qrapoio.insert;
      qrapoio.fieldbyname('codproduto').asstring := qrnotafiscal_item.fieldbyname('codproduto').asstring;
      qrapoio.fieldbyname('produto').asstring := qrnotafiscal_item.fieldbyname('produto').asstring;
      if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000', qrnotafiscal_item.fieldbyname('qtde').asfloat);
      if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then qrapoio.fieldbyname('unitario').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('unitario').asfloat);
      if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00', qrnotafiscal_item.fieldbyname('total').asfloat);
      qrapoio.fieldbyname('cf').asstring := qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      qrapoio.fieldbyname('str').asstring := qrnotafiscal_item.fieldbyname('cst').asstring;
      qrapoio.fieldbyname('un').asstring := qrnotafiscal_item.fieldbyname('unidade').asstring;
      qrapoio.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      qrapoio.fieldbyname('ipi').asstring := qrnotafiscal_item.fieldbyname('ipi').asstring;
      qrapoio.post;
    end;
    qrnotafiscal_item.next;
    I := I + 1;
  end;

  while i < frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger do
  begin
    qrapoio.INSERT;
    qrapoio.POST;
    i := i + 1;
  end;

  QRAPOIO.Refresh;

  frmnotafiscale_impressao := tfrmnotafiscale_impressao.create(self);
  frmnotafiscale_impressao.showmodal;


  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.SQL.add('select * from c000010 order by nome');
  frmmodulo.qrtransportador.open;
  frmmodulo.qrtransportador.IndexFieldNames := 'nome';



  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.open;
  frmmodulo.qrcliente.IndexFieldNames := 'nome';


end;

end.
