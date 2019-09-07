unit produto_pedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, PageView, Wwdbigrd,
  Wwdbgrid, wwdbedit, wwdblook, ScrollView, CustomGridViewControl,
  CustomGridView, GridView, AdvGlowButton, frxClass, frxDBSet, UCBase,
  frxExportPDF,
  // units nfe acbr
  pcnConversao, ACBrUtil, SHDocVw, ComCtrls, FileCtrl,
  inifiles, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,
  IdAttachment, IdAuthentication, IdAttachmentFile, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, JvBaseEdits, JvExMask, JvToolEdit,
  JvDBControls;

type
  Tfrmproduto_pedido = class(TForm)
    HeaderView1: THeaderView;
    pgravar: TFlatPanel;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    plocalizar1: TFlatPanel;
    LOC: TEdit;
    plocalizar2: THeaderView;
    DBGrid1: TDBGrid;
    dspedido_produto2: TDataSource;
    qrpedido_produto: TZQuery;
    FlatPanel1: TFlatPanel;
    rnome: TRadioButton;
    rcodigo: TRadioButton;
    Relatrios1: TMenuItem;
    rapelido: TRadioButton;
    dspedido_produto: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    panel99: TPanel;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    edata_cadastro: TJvDBDateEdit;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    efornecedor: TDBEdit;
    blocfornecedor: TBitBtn;
    DBEdit23: TDBEdit;
    panel22: TPanel;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    qrpedido_item: TZQuery;
    dspedido_item: TDataSource;
    qrpedido_itemproduto: TStringField;
    Panel2: TPanel;
    FlatPanel3: TFlatPanel;
    Label17: TLabel;
    DBText1: TDBText;
    grid1: TwwDBGrid;
    N1: TMenuItem;
    Incluiritem1: TMenuItem;
    Excluiritem1: TMenuItem;
    AlterarItem1: TMenuItem;
    qrnf: TZQuery;
    qrfornecedor: TZQuery;
    qrpedido_itemunidade: TStringField;
    Finalizar1: TMenuItem;
    Panel3: TPanel;
    qrgrade_pedido: TZQuery;
    Label4: TLabel;
    DBDateEdit1: TJvDBDateEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    PageSheet2: TPageSheet;
    FlatPanel2: TFlatPanel;
    Label3: TLabel;
    DBEdit13: TDBEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    qrpedido_produtofornecedor: TStringField;
    CancelarPedido1: TMenuItem;
    FecharPedido1: TMenuItem;
    otalizar1: TMenuItem;
    ptotal: THeaderView;
    HeaderView2: THeaderView;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    rpedido: TJvCalcEdit;
    rrecebido: TJvCalcEdit;
    rfalta: TJvCalcEdit;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bitbtn7: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    bitbtn8: TAdvGlowButton;
    bitbtn10: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bloc: TAdvGlowButton;
    fspedido_fornecedor: TfrxDBDataset;
    qrpedido_fornecedor: TZQuery;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    fxpedido: TfrxReport;
    qrpedido_itemCODIGO: TWideStringField;
    qrpedido_itemCODNOTA: TWideStringField;
    qrpedido_itemCODPRODUTO: TWideStringField;
    qrpedido_itemQTDE: TFloatField;
    qrpedido_itemUNITARIO: TFloatField;
    qrpedido_itemTOTAL: TFloatField;
    qrpedido_itemRECEBIDO: TFloatField;
    UCControls1: TUCControls;
    qrpedido_itemFALTA: TFloatField;
    qrpedido_itemCODBARRA: TStringField;
    E1: TMenuItem;
    qrapoio: TZQuery;
    PDF: TfrxPDFExport;
    qrapoio2: TZQuery;
    qrapoio2CODFORNECEDOR: TWideStringField;
    qrapoio2CODPRODUTO: TWideStringField;
    qrapoio2CODIGO: TWideStringField;
    qrapoio2PRECO: TFloatField;
    qrpedido_itemreferencia: TStringField;
    bincluir_item: TAdvGlowButton;
    balterar_item: TAdvGlowButton;
    bexcluir_item: TAdvGlowButton;
    BitBtn6: TAdvGlowButton;
    panel_item: TFlatPanel;
    BitBtn9: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    qrnfCODIGO: TWideStringField;
    qrnfNUMERO: TWideStringField;
    qrnfCFOP: TWideStringField;
    qrinventarioDATA: TDateField;
    qrnfCODFORNECEDOR: TWideStringField;
    qrnfTOTAL_NOTA: TFloatField;
    qrnfITENS: TIntegerField;
    qrnfSITUACAO: TIntegerField;
    qrinventarioPREVISAO: TDateField;
    qrnfCONDPGTO: TWideStringField;
    qrnfOBS1: TWideStringField;
    qrnfOBS2: TWideStringField;
    qrnfOBS3: TWideStringField;
    qrnfOBS4: TWideStringField;
    qrpedido_produtoCODIGO: TWideStringField;
    qrpedido_produtoNUMERO: TWideStringField;
    qrpedido_produtoCFOP: TWideStringField;
    qrinventario_produtoDATA: TDateField;
    qrpedido_produtoCODFORNECEDOR: TWideStringField;
    qrpedido_produtoTOTAL_NOTA: TFloatField;
    qrpedido_produtoITENS: TIntegerField;
    qrpedido_produtoSITUACAO: TIntegerField;
    qrinventario_produtoPREVISAO: TDateField;
    qrpedido_produtoCONDPGTO: TWideStringField;
    qrpedido_produtoOBS1: TWideStringField;
    qrpedido_produtoOBS2: TWideStringField;
    qrpedido_produtoOBS3: TWideStringField;
    qrpedido_produtoOBS4: TWideStringField;
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
    procedure rnomeKeyPress(Sender: TObject; var Key: Char);
    procedure rcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure BLOCClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FecharLocalizao1Click(Sender: TObject);
    procedure edata_cadastroExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure bexcluir_itemClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure blocfornecedorClick(Sender: TObject);
    procedure efornecedorExit(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure bincluir_itemClick(Sender: TObject);
    procedure balterar_itemClick(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure rapelidoClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrpedido_itemCalcFields(DataSet: TDataSet);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Exit(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure bitbtn5Click(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure E1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_pedido: Tfrmproduto_pedido;
  comando: string;
  const
   sc_DragMove = $f012;
implementation

uses modulo, principal,
  loc_fornecedor, produto_pedido_item, Math, email;

{$R *.dfm}

procedure Tfrmproduto_pedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (frmmodulo.qrpedido_produto.State = dsinsert) or
    (frmmodulo.qrpedido_produto.State = dsedit) then
    bcancelarClick(frmproduto_pedido);
  qrpedido_item.close;
  Action := cafree;
end;

procedure Tfrmproduto_pedido.FormShow(Sender: TObject);
begin
  // panel_item.top := 375;
  // panel_item.left := 2;

  pgravar.visible := false;
  pgravar.Align := alClient;
  plocalizar2.Align := alClient;
  plocalizar1.Align := alClient;
  // plocalizar1.Align := alnone;

  frmmodulo.qrfornecedor.close;
  frmmodulo.qrfornecedor.sql.clear;
  frmmodulo.qrfornecedor.sql.add('select * from c000009 order by nome');
  frmmodulo.qrfornecedor.open;
  frmmodulo.qrfornecedor.IndexFieldNames := 'nome';

  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 order by produto');
  frmmodulo.qrproduto.open;
  frmmodulo.qrproduto.IndexFieldNames := 'produto';

  frmmodulo.qrpedido_produto.close;
  frmmodulo.qrpedido_produto.sql.clear;
  frmmodulo.qrpedido_produto.sql.add('select * from c000037 order by codigo');
  frmmodulo.qrpedido_produto.open;
  frmmodulo.qrpedido_produto.last;

  pficha.Enabled := false;

  qrnfTOTAL_NOTA.DisplayFormat := mascara_valor;
  qrpedido_produtoTOTAL_NOTA.DisplayFormat := mascara_valor;
  qrpedido_itemQTDE.DisplayFormat := mascara_qtde;
  qrpedido_itemUNITARIO.DisplayFormat := mascara_valor;
  qrpedido_itemTOTAL.DisplayFormat := mascara_valor;
  qrpedido_itemRECEBIDO.DisplayFormat := mascara_qtde;
  qrpedido_itemFALTA.DisplayFormat := mascara_valor;
  frmmodulo.qrpedido_produtoTOTAL_NOTA.DisplayFormat:=mascara_valor;

end;

procedure Tfrmproduto_pedido.enomeEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto_pedido.enomeExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmproduto_pedido.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrpedido_produto.insert;
  frmmodulo.qrpedido_produto.fieldbyname('codigo').asstring :=
    frmprincipal.codifica('000037');
  frmmodulo.qrpedido_produto.fieldbyname('numero').asstring :=
    frmmodulo.qrpedido_produto.fieldbyname('codigo').asstring;
  frmmodulo.qrpedido_produto.fieldbyname('situacao').asstring := '1';
  Label7.caption := 'Aberto';

  pficha.Enabled := true;

  DBEdit2.setfocus;
  pgravar.visible := true;

  Panel2.Enabled := true;
  panel_item.visible := false;

  PopupMenu := Pop2;
end;

procedure Tfrmproduto_pedido.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_pedido.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmproduto_pedido.balterarClick(Sender: TObject);
begin

  if DBEdit2.Text <> '' then
  begin
    Panel2.Enabled := true;
    panel_item.visible := false;

    frmmodulo.qrpedido_produto.Edit;
    pficha.Enabled := true;
    DBEdit2.setfocus;
    pgravar.visible := true;
    PopupMenu := Pop2;
  end
  else
  begin
    Showmessage('Nenhum registro foi selecionado!');
  end;

end;

procedure Tfrmproduto_pedido.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Pedido', 4) then
  begin
    qrgrade_pedido.close;
    qrgrade_pedido.sql.clear;
    qrgrade_pedido.sql.add('delete from c000039 where codnota = ''' +
      frmmodulo.qrpedido_produto.fieldbyname('codigo').asstring + '''');
    qrgrade_pedido.ExecSQL;
    frmprincipal.logUC('Excluiu Pedido Compra - ' + DBEdit2.Text, 3);
    frmmodulo.qrpedido_produto.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmproduto_pedido.blocalizarClick(Sender: TObject);
begin
  plocalizar1.visible := true;
  plocalizar2.visible := true;
  PopupMenu := POP3;

  rnome.setfocus;
end;

procedure Tfrmproduto_pedido.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_pedido.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin
  if qrpedido_item.RecordCount <> 0 then
  begin
    if (frmmodulo.qrpedido_produto.State = dsinsert) then
    begin
      frmprincipal.logUC('Incluiu Pedido Compra - ' + DBEdit2.Text, 1);
      frmmodulo.qrpedido_produto.post;
    end;

    if (frmmodulo.qrpedido_produto.State = dsedit) then
    begin
      frmprincipal.logUC('Alterou Pedido Compra - ' + DBEdit2.Text, 2);
      frmmodulo.qrpedido_produto.post;
    end;

    frmmodulo.Conexao.commit;
    pficha.Enabled := false;
    pgravar.visible := false;
    PopupMenu := Pop1;

    Panel2.Enabled := false;
    panel_item.visible := true;

    PageView1.ActivePageIndex := 0;
  end
  else
  begin
    Application.messagebox
      ('Não há nenhum produto lançado para esta nota! Impossível GRAVAR!',
      'Atenção', mb_ok + mb_iconwarning);
    grid1.setfocus;

  end;

end;

procedure Tfrmproduto_pedido.bcancelarClick(Sender: TObject);
begin
  { if (frmmodulo.qrpedido_produto.State = dsinsert) then
    begin
    while qrpedido_item.RecordCount <> 0 do
    begin
    if frmmodulo.qrproduto.Locate('codigo',qrpedido_item.fieldbyname('codproduto').AsString,[loCaseInsensitive]) then
    begin
    frmmodulo.qrproduto.edit;
    frmmodulo.qrproduto.FieldByName('estoque').asfloat := frmmodulo.qrproduto.FieldByName('estoque').asfloat +
    qrpedido_item.FieldByName('qtde').asfloat;

    frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA').asstring := frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA_ANTERIOR').asstring;
    frmmodulo.qrproduto.FieldByName('notafiscal').asstring        := frmmodulo.qrproduto.FieldByName('notafiscal_ANTERIOR').asstring;
    frmmodulo.qrproduto.FieldByName('codfornecedor').asstring     := frmmodulo.qrproduto.FieldByName('codfornecedor_ANTERIOR').asstring;
    frmmodulo.qrproduto.Post;
    end;
    qrpedido_item.delete;
    end;
    end;

  }

  if (frmmodulo.qrpedido_produto.State = dsinsert) or
    (frmmodulo.qrpedido_produto.State = dsedit) then
    frmmodulo.qrpedido_produto.cancel;

  frmmodulo.Conexao.Rollback;

  frmmodulo.qrpedido_produto.Refresh;

  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
  comando := '';

  Panel2.Enabled := false;
  panel_item.visible := true;

  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmproduto_pedido.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_pedido.rnomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    LOC.setfocus
end;

procedure Tfrmproduto_pedido.rcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    LOC.setfocus;
end;

procedure Tfrmproduto_pedido.LOCKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bloc.setfocus;
end;

procedure Tfrmproduto_pedido.BLOCClick(Sender: TObject);
begin
  qrpedido_produto.close;
  qrpedido_produto.sql.clear;
  if rnome.Checked then
  begin
    qrpedido_produto.sql.add('select * from c000037 where upper(numero) = ''' +
      ansiuppercase(frmprincipal.zerarcodigo(LOC.Text, 6)) +
      ''' order by numero');
  end;
  if rcodigo.Checked then
  begin
    qrpedido_produto.sql.add
      ('select * from c000037 where data = :datai order by data');
    qrpedido_produto.Params.ParamByName('datai').value := strtodate(LOC.Text);
  end;
  if rapelido.Checked then
  begin
    qrpedido_produto.sql.add('select * from c000037 where codfornecedor = ''' +
      copy(LOC.Text, 1, 6) + ''' order by numero');
  end;

  qrpedido_produto.open;
  DBGrid1.setfocus;

end;

procedure Tfrmproduto_pedido.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    try
      frmmodulo.qrpedido_produto.Locate('codigo',
        qrpedido_produto.fieldbyname('codigo').asstring, [loCaseInsensitive]);
      qrpedido_produto.close;
    except
    end;

    PopupMenu := Pop1;

    plocalizar1.visible := false;
    plocalizar2.visible := false;
  end;
end;

procedure Tfrmproduto_pedido.E1Click(Sender: TObject);
var
  Para: string;
  bserv: boolean;
  StreamMemo: TMemoryStream;
  email: TEmail;
  sXML, edtSmtpHost, edtSmtpPort, edtSmtpUser, edtSmtpPass, edtEmailAssunto,
    edtcompras, caminho, mmEmailMsg: string;
  edtfinanceiro, edtnfe: string;
  string1, string2: string;
  i: integer;
  EmailCorpo: TIdMessage;
  SMTP: TIdSMTP;
begin
  qrapoio2.close;
  qrapoio2.sql.clear;
  qrapoio2.sql.add('select * from fornecedor_codigo');
  qrapoio2.sql.add('where CODFORNECEDOR = ''' + efornecedor.Text + '''');
  qrapoio2.open;

  // mudanca pra salvar na pasta dll
  caminho := ExtractFilePath(ParamStr(0)) + 'ini\com.ini';

  // se nao existir caminho do PDF cria
  if not DirectoryExists('c:\OneMaker\Server\PDF') then
  begin
    ForceDirectories('c:\OneMaker\server\PDF');
  end;

  if efornecedor.Text = '' then
  begin
    exit;
  end;

  PDF.FileName := DBEdit2.Text + '-' + DBEdit23.Text + '.pdf';
  PDF.DefaultPath := 'C:\OneMaker\Server\PDF\';
  PDF.ShowDialog := false;
  PDF.ShowProgress := false;
  PDF.OverwritePrompt := false;
  fxpedido.LoadFromFile('\OneMaker\server\rel\f000132_2.fr3');
  fxpedido.PrepareReport();
  fxpedido.Export(PDF);
  // fxpedido.DesignReport;
  // exit;

  sXML := PDF.DefaultPath + PDF.FileName;

  Application.ProcessMessages;

  edtSmtpHost := frmprincipal.LeInistr(caminho, 'Email', 'HostCot', '');
  edtSmtpPort := frmprincipal.LeInistr(caminho, 'Email', 'PortCot', '');
  edtSmtpUser := frmprincipal.LeInistr(caminho, 'Email', 'UserCot', '');
  edtSmtpPass := frmprincipal.LeInistr(caminho, 'Email', 'PassCot', '');
  edtEmailAssunto := frmprincipal.LeInistr(caminho, 'Email', 'AssuntCot', '');
  mmEmailMsg := frmprincipal.LeInistr(caminho, 'Email', 'MensagemCot', '');
  edtfinanceiro := frmprincipal.LeInistr(caminho, 'Email',
    'PadraoFinanceiro', '');
  edtcompras := frmprincipal.LeInistr(caminho, 'Email', 'PadraoCot', '');
  edtnfe := frmprincipal.LeInistr(caminho, 'Email', 'PadraoNFe', '');

  frmmodulo.qrconfig.open;
  if edtSmtpHost = '' then
  begin
    Application.messagebox('Favor configurar a conta de email!', 'Erro',
      mb_ok + mb_iconerror);
    exit;
  end;

  qrapoio.close;
  qrapoio.sql.clear;
  qrapoio.sql.add('select email from c000009');
  qrapoio.sql.add('where codigo = ''' + efornecedor.Text + '''');
  qrapoio.open;

  Para := qrapoio.fieldbyname('email').asstring;

  if Para = '' then
  begin
    if not(InputQuery('Email', 'Email do Fornecedor', Para)) then
      exit;
    // Para := InputBox('Email', 'Email do Fornecedor', '');
  end;
  // criar componentes
  EmailCorpo := TIdMessage.create(Application);
  SMTP := TIdSMTP.create(Application);

  // prepara email
  EmailCorpo.Body.add(mmEmailMsg);
  EmailCorpo.Body.add(#13#10);
  EmailCorpo.Body.add('Obrigado pela preferencia');
  EmailCorpo.From.Name := edtcompras; // remetente
  EmailCorpo.From.Address := edtcompras;
  EmailCorpo.Recipients.EMailAddresses := Para;
  EmailCorpo.Priority := mpHighest;
  EmailCorpo.Subject := edtEmailAssunto; // assunto
  TIdAttachmentFile.create(EmailCorpo.MessageParts,
    Tfilename('C:\OneMaker\Server\PDF\' + DBEdit2.Text + '-' + DBEdit23.Text
    + '.pdf'));
  SMTP.Host := edtSmtpHost;
  SMTP.AuthType := satDefault;
  SMTP.Port := StrToInt(edtSmtpPort);
  SMTP.Username := edtSmtpUser; // seu login
  SMTP.Password := edtSmtpPass; // sua senha
  SMTP.Connect;

  // tenta enviar
  try
    SMTP.Send(EmailCorpo);
    Showmessage('Email enviado com sucesso');
  except
    SMTP.Disconnect;
    SMTP.Host := edtSmtpHost; // smtp.mail.exemplo.com.br
    SMTP.AuthType := satDefault;
    SMTP.Connect;
    try
      SMTP.Send(EmailCorpo);
      Showmessage('Email enviado com sucesso');
    except
      on E: exception do
      begin
        Application.messagebox(PWideChar('Erro ao Enviar Email!' + #13 +
          'Mensagem: ' + E.message), 'Erro', mb_ok + mb_iconerror);
      end;
    end;
    SMTP.Disconnect;
    SMTP.Free;
    EmailCorpo.Free;
  end;
  SMTP.Disconnect;
  SMTP.Free;
  EmailCorpo.Free;
end;

procedure Tfrmproduto_pedido.etipoExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmproduto_pedido.edata_cadastroEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
  if frmmodulo.qrpedido_produto.State = dsinsert then
    edata_cadastro.Date := Date;
end;

procedure Tfrmproduto_pedido.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmproduto_pedido.DBEdit1Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto_pedido.DBEdit1Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;

end;

procedure Tfrmproduto_pedido.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_pedido.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmproduto_pedido.FecharLocalizao1Click(Sender: TObject);
begin
  PopupMenu := Pop1;
  qrpedido_produto.close;
  plocalizar1.visible := false;
  plocalizar2.visible := false;
end;

procedure Tfrmproduto_pedido.edata_cadastroExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;

  if TJvDBDateEdit(Sender).Text <> '  /  /    ' then
  begin
    try
      TJvDBDateEdit(Sender).Date := strtodate(TJvDBDateEdit(Sender).Text);
    except
      Showmessage('Data Inválida');
      TJvDBDateEdit(Sender).setfocus;
    end;
  end;

end;

procedure Tfrmproduto_pedido.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmproduto_pedido.bexcluir_itemClick(Sender: TObject);
begin

  if frmprincipal.autentica('Excluir Item do Pedido', 4) then
  begin
    qrgrade_pedido.close;
    qrgrade_pedido.sql.clear;
    qrgrade_pedido.sql.add('delete from c000039 where coditem = ''' +
      dspedido_item.DataSet.fieldbyname('codigo').asstring + '''');
    qrgrade_pedido.ExecSQL;
    frmmodulo.qrpedido_produto.fieldbyname('total_nota').asfloat :=
      frmmodulo.qrpedido_produto.fieldbyname('total_nota').asfloat -
      dspedido_item.DataSet.fieldbyname('TOTAL').asfloat;

    dspedido_item.DataSet.Delete;

    frmmodulo.qrpedido_produto.fieldbyname('itens').asinteger :=
      frmmodulo.qrpedido_produto.fieldbyname('itens').asinteger - 1;
    grid1.setfocus;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;

end;

procedure Tfrmproduto_pedido.DBEdit2Exit(Sender: TObject);
begin
  if (frmmodulo.qrpedido_produto.State = dsinsert) or
    (frmmodulo.qrpedido_produto.State = dsedit) then
    frmmodulo.qrpedido_produto.fieldbyname('numero').asstring :=
      frmprincipal.zerarcodigo(DBEdit2.Text, 6);
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmproduto_pedido.blocfornecedorClick(Sender: TObject);
begin
  //
  frmloc_FORNECEDOR := tfrmloc_FORNECEDOR.create(self);
  frmloc_FORNECEDOR.showmodal;

  frmmodulo.qrpedido_produto.fieldbyname('CODFORNECEDOR').asstring :=
    frmmodulo.qrfornecedor.fieldbyname('CODIGO').asstring;
  if (frmmodulo.qrpedido_produto.State = dsinsert) then
  begin
    qrnf.close;
    qrnf.sql.clear;
    qrnf.sql.add('select * from c000037 where codfornecedor = ''' +
      efornecedor.Text + ''' and numero = ''' + DBEdit2.Text + '''');
    qrnf.open;
    if qrnf.RecordCount > 0 then
    begin
      if Application.messagebox
        ('Já existe um número de pedido deste mesmo fornecedor lançado no sistema! Deseja visualiza-la?',
        'Atenção', mb_yesno + mb_iconwarning) = idno then
      begin
        Showmessage('Este pedido será cancelada!');
        bcancelarClick(frmproduto_pedido);
      end
      else
      begin
        bcancelarClick(frmproduto_pedido);
        frmmodulo.qrpedido_produto.Locate('codigo', qrnf.fieldbyname('codigo')
          .asstring, [loCaseInsensitive]);
      end;
    end
    else
    begin
      DBEdit14.setfocus;
    end;
  end
  else
  begin
    DBEdit14.setfocus;
  end;
end;

procedure Tfrmproduto_pedido.efornecedorExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
  if (frmmodulo.qrpedido_produto.State = dsinsert) or
    (frmmodulo.qrpedido_produto.State = dsedit) then
  begin
    frmmodulo.qrpedido_produto.fieldbyname('codfornecedor').asstring :=
      frmprincipal.zerarcodigo(efornecedor.Text, 6);
    if efornecedor.Text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrfornecedor, efornecedor.Text,
        'codigo') then
      begin
        blocfornecedorClick(frmproduto_pedido)
      end
      else
      begin
        if (frmmodulo.qrpedido_produto.State = dsinsert) then
        begin
          qrnf.close;
          qrnf.sql.clear;
          qrnf.sql.add('select * from c000037 where codfornecedor = ''' +
            efornecedor.Text + ''' and numero = ''' + DBEdit2.Text + '''');
          qrnf.open;
          if qrnf.RecordCount > 0 then
          begin
            if Application.messagebox
              ('Já existe um número de pedido deste mesmo fornecedor lançado no sistema! Deseja visualiza-la?',
              'Atenção', mb_yesno + mb_iconwarning) = idno then
            begin
              Showmessage('Este pedido será cancelada!');
              bcancelarClick(frmproduto_pedido);
            end
            else
            begin
              bcancelarClick(frmproduto_pedido);
              frmmodulo.qrpedido_produto.Locate('codigo',
                qrnf.fieldbyname('codigo').asstring, [loCaseInsensitive]);
            end;
          end
          else
          begin
            DBEdit14.setfocus;
          end;
        end
        else
        begin
          DBEdit14.setfocus;
        end;
      end;
    end
    else
      blocfornecedor.setfocus;
  end;

end;

procedure Tfrmproduto_pedido.DBEdit1Change(Sender: TObject);
begin
  try
    qrpedido_item.close;
    qrpedido_item.sql.clear;
    qrpedido_item.sql.add('select * from c000038 where codnota = ''' +
      frmmodulo.qrpedido_produto.fieldbyname('codigo').asstring +
      ''' order by codigo');
    qrpedido_item.open;

    if frmmodulo.qrpedido_produto.fieldbyname('SITUACAO').asstring = '1' then
    begin
      Label7.caption := 'Aberto';
      Label7.font.Color := clTeal;
    end;
    if frmmodulo.qrpedido_produto.fieldbyname('SITUACAO').asstring = '2' then
    begin
      Label7.caption := 'Recebido';
      Label7.font.Color := clblue;
    end;
    if frmmodulo.qrpedido_produto.fieldbyname('SITUACAO').asstring = '3' then
    begin
      Label7.caption := 'Cancelado';
      Label7.font.Color := clred;
    end;

  except
  end;
end;

procedure Tfrmproduto_pedido.bincluir_itemClick(Sender: TObject);
begin
  qrpedido_item.insert;
  qrpedido_item.fieldbyname('codigo').asstring :=
    frmprincipal.codifica('000038');
  frmproduto_pedido_item := tfrmproduto_pedido_item.create(self);
  frmproduto_pedido_item.showmodal;

end;

procedure Tfrmproduto_pedido.balterar_itemClick(Sender: TObject);
begin
  qrpedido_item.Edit;
  frmproduto_pedido_item := tfrmproduto_pedido_item.create(self);
  frmproduto_pedido_item.showmodal;
  grid1.setfocus;

end;

procedure Tfrmproduto_pedido.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    bgravar.setfocus;
  end;
end;

procedure Tfrmproduto_pedido.rapelidoClick(Sender: TObject);
begin
  frmloc_FORNECEDOR := tfrmloc_FORNECEDOR.create(self);
  frmloc_FORNECEDOR.showmodal;
  LOC.Text := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring + '-' +
    frmmodulo.qrfornecedor.fieldbyname('nome').asstring;
  LOC.setfocus;
end;

procedure Tfrmproduto_pedido.Panel1Click(Sender: TObject);
begin
  // VERIFICAR
end;

procedure Tfrmproduto_pedido.DBEdit14Exit(Sender: TObject);
begin
  DBEdit14.Color := clwindow;
  PageView1.ActivePageIndex := 0;
  grid1.setfocus;
end;

procedure Tfrmproduto_pedido.BitBtn6Click(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmproduto_pedido.FormCreate(Sender: TObject);
begin
  Label7.caption := '---';
  Label7.font.Color := clblack;

  qrpedido_itemQTDE.DisplayFormat := mascara_qtde;
  qrpedido_itemUNITARIO.DisplayFormat := mascara_valor;

end;

procedure Tfrmproduto_pedido.qrpedido_itemCalcFields(DataSet: TDataSet);
begin
  try
    qrpedido_item.fieldbyname('FALTA').asfloat :=
      qrpedido_item.fieldbyname('QTDE').asfloat - qrpedido_item.fieldbyname
      ('RECEBIDO').asfloat;
  except
  end;
end;

procedure Tfrmproduto_pedido.BitBtn7Click(Sender: TObject);
begin
  if frmprincipal.autentica('Cancelar Pedido', 4) then
  begin
    if frmmodulo.qrpedido_produto.fieldbyname('situacao').asstring = '1' then
    begin
      frmmodulo.qrpedido_produto.Edit;
      frmmodulo.qrpedido_produto.fieldbyname('situacao').asstring := '3';
      frmmodulo.qrpedido_produto.post;
      frmmodulo.Conexao.commit;
    end
    else
    begin
      if frmmodulo.qrpedido_produto.fieldbyname('situacao').asstring = '3' then
      begin
        if Application.messagebox
          ('Este pedido está cancelado! Deseja ativá-lo?', 'Atenção!',
          mb_yesno + mb_iconwarning) = idyes then
        begin
          frmmodulo.qrpedido_produto.Edit;
          frmmodulo.qrpedido_produto.fieldbyname('situacao').asstring := '1';
          frmmodulo.qrpedido_produto.post;
          frmmodulo.Conexao.commit;
        end;
      end
      else
      begin
        Application.messagebox('Este pedido não está aberto!', 'Erro!',
          mb_ok + mb_iconerror);
      end;
    end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;

  if frmmodulo.qrpedido_produto.fieldbyname('SITUACAO').asstring = '1' then
  begin
    Label7.caption := 'Aberto';
    Label7.font.Color := clTeal;
  end;
  if frmmodulo.qrpedido_produto.fieldbyname('SITUACAO').asstring = '2' then
  begin
    Label7.caption := 'Recebido';
    Label7.font.Color := clblue;
  end;
  if frmmodulo.qrpedido_produto.fieldbyname('SITUACAO').asstring = '3' then
  begin
    Label7.caption := 'Cancelado';
    Label7.font.Color := clred;
  end;
end;

procedure Tfrmproduto_pedido.BitBtn8Click(Sender: TObject);
begin
  if frmprincipal.autentica('Fechar Pedido', 4) then
  begin
    if frmmodulo.qrpedido_produto.fieldbyname('situacao').asstring = '1' then
    begin
      frmmodulo.qrpedido_produto.Edit;
      frmmodulo.qrpedido_produto.fieldbyname('situacao').asstring := '2';
      frmmodulo.qrpedido_produto.post;
      frmmodulo.Conexao.commit;
    end
    else
    begin
      if frmmodulo.qrpedido_produto.fieldbyname('situacao').asstring = '2' then
      begin
        if Application.messagebox('Este pedido está fechado! Deseja ativá-lo?',
          'Atenção!', mb_yesno + mb_iconwarning) = idyes then
        begin
          frmmodulo.qrpedido_produto.Edit;
          frmmodulo.qrpedido_produto.fieldbyname('situacao').asstring := '1';
          frmmodulo.qrpedido_produto.post;
          frmmodulo.Conexao.commit;
        end;
      end
      else
      begin
        Application.messagebox('Este pedido não está aberto!', 'Erro!',
          mb_ok + mb_iconerror);
      end;
    end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
  if frmmodulo.qrpedido_produto.fieldbyname('SITUACAO').asstring = '1' then
  begin
    Label7.caption := 'Aberto';
    Label7.font.Color := clTeal;
  end;
  if frmmodulo.qrpedido_produto.fieldbyname('SITUACAO').asstring = '2' then
  begin
    Label7.caption := 'Recebido';
    Label7.font.Color := clblue;
  end;
  if frmmodulo.qrpedido_produto.fieldbyname('SITUACAO').asstring = '3' then
  begin
    Label7.caption := 'Cancelado';
    Label7.font.Color := clred;
  end;
end;

procedure Tfrmproduto_pedido.BitBtn10Exit(Sender: TObject);
begin
  ptotal.visible := false;
end;

procedure Tfrmproduto_pedido.BitBtn10Click(Sender: TObject);
begin
  ptotal.visible := false;
end;

procedure Tfrmproduto_pedido.BitBtn9Click(Sender: TObject);
var
  ped, falta, rec: real;
begin
  // nao totalizar sem ter incluido
  if DBEdit1.Text = '' then
    exit;

  qrpedido_item.first;
  falta := 0;
  rec := 0;
  ped := 0;

  while not qrpedido_item.eof do
  begin
    falta := qrpedido_item.fieldbyname('falta').asfloat + falta;
    rec := qrpedido_item.fieldbyname('recebido').asfloat + rec;
    ped := qrpedido_item.fieldbyname('qtde').asfloat + ped;

    qrpedido_item.next;
  end;

  rrecebido.value := rec;
  rfalta.value := falta;
  rpedido.value := ped;

  ptotal.visible := true;
  bitbtn10.setfocus;

end;

procedure Tfrmproduto_pedido.bitbtn5Click(Sender: TObject);
begin
  qrpedido_fornecedor.close;
  qrpedido_fornecedor.sql.clear;
  qrpedido_fornecedor.sql.add('select * from c000009 where codigo = ''' +
    frmmodulo.qrpedido_produto.fieldbyname('codfornecedor').asstring + '''');
  qrpedido_fornecedor.open;
  fxpedido.LoadFromFile('\OneMaker\server\rel\f000132.fr3');
  fxpedido.ShowReport;
end;

procedure Tfrmproduto_pedido.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmproduto_pedido.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if pgravar.visible then
      bgravar.setfocus;
  end;
end;

end.

/// /  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);
