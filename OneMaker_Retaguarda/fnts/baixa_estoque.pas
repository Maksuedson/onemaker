unit baixa_estoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, StdCtrls, Mask,
  DBCtrls, Collection, Buttons, Grids, Wwdbigrd, Wwdbgrid, PageView, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, wwdblook, wwdbedit,
  Menus, Wwdotdot, Wwdbcomb, AdvGlowButton, AdvShapeButton, frxDesgn, frxClass, frxDBSet, UCBase, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel,
  JvBaseEdits, JvDBControls, JvExMask, JvToolEdit;

type
  Tfrmbaixa_estoque = class(TForm)
    dsorcamento: TDataSource;
    dsorcamento_produto: TDataSource;
    comboproduto: TwwDBLookupCombo;
    eunitario: TwwDBEdit;
    popnormal: TPopupMenu;
    popedicao: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    pficha: TPanel;
    ViewSplit2: TViewSplit;
    ViewSplit4: TViewSplit;
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TJvDBDateEdit;
    ecliente: TDBEdit;
    bloccliente: TBitBtn;
    enomecliente: TDBEdit;
    evendedor: TDBEdit;
    blocvendedor: TBitBtn;
    DBEdit5: TDBEdit;
    Panel1: TPanel;
    Incluir1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    N1: TMenuItem;
    FinalizarEdio1: TMenuItem;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    Panel3: TPanel;
    Label8: TLabel;
    rtotal: TJvDBCalcEdit;
    ExcluirProduto1: TMenuItem;
    eproduto: TwwDBEdit;
    eqtde: TwwDBEdit;
    eacrescimo: TwwDBEdit;
    edesconto: TwwDBEdit;
    etotal: TwwDBEdit;
    qritem_baixa_produtos: TZQuery;
    Label9: TLabel;
    Panel4: TPanel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Panel5: TPanel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    Label5: TLabel;
    Panel6: TPanel;
    bincluir: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn7: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    wwdbComboBox1: TComboBox;
    qrproduto: TZQuery;
    fxorcamento: TfrxReport;
    fsorcamento: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    fsitembaixa_produtos: TfrxDBDataset;
    fsorcamento_cliente: TfrxDBDataset;
    balterar: TAdvGlowButton;
    ListBox1: TListBox;
    qrapoio: TZQuery;
    qritem_baixa_produtosCODPRODUTO: TWideStringField;
    qritem_baixa_produtosPRODUTO: TWideStringField;
    qritem_baixa_produtosUNIDADE: TWideStringField;
    qritem_baixa_produtosQTDE: TFloatField;
    qritem_baixa_produtosUNITARIO: TFloatField;
    qritem_baixa_produtosDESCONTO: TFloatField;
    qritem_baixa_produtosACRESCIMO: TFloatField;
    qritem_baixa_produtosTOTAL: TFloatField;
    qritem_baixa_produtosCODORCAMENTO: TWideStringField;
    qritem_baixa_produtosVENDA: TFloatField;
    fsbaixa_produtos: TfrxDBDataset;
    qrempresa: TZQuery;
    dbedtempresa: TDBEdit;
    dbedtfilial: TDBEdit;
    FSEMPRESA: TfrxDBDataset;
    UCControls1: TUCControls;
    procedure qritem_baixa_produtosBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure blocclienteClick(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure evendedorExit(Sender: TObject);
    procedure blocvendedorClick(Sender: TObject);
    procedure evendedorKeyPress(Sender: TObject; var Key: Char);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure rdescontoEnter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure combo_tipobaixaEnter(Sender: TObject);
    procedure wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure eclienteEnter(Sender: TObject);
    procedure evendedorEnter(Sender: TObject);
    procedure comboprodutoExit(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure qritem_baixa_produtosBeforeInsert(DataSet: TDataSet);
    procedure qritem_baixa_produtosBeforeEdit(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qritem_baixa_produtosBeforeDelete(DataSet: TDataSet);
    procedure eqtdeExit(Sender: TObject);
    procedure eunitarioExit(Sender: TObject);
    procedure edescontoExit(Sender: TObject);
    procedure eacrescimoExit(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure qritem_baixa_produtosAfterInsert(DataSet: TDataSet);
    procedure dsorcamentoDataChange(Sender: TObject; Field: TField);
    procedure wwdbComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure balterarClick(Sender: TObject);
    procedure wwdbComboBox1Exit(Sender: TObject);
    procedure dbedtfilialExit(Sender: TObject);
    procedure dbedtfilialKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtfilialEnter(Sender: TObject);
    procedure qritem_baixa_produtosAfterScroll(DataSet: TDataSet);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbaixa_estoque: Tfrmbaixa_estoque;
  valor_anterior: real;
  codigo_orcamento: string;
   const
   sc_DragMove = $f012;
implementation

uses modulo, loc_cliente, principal, loc_funci, Math, orcamento_impressao,
  orcamento_localizar, orcamento, baixaestoque_impressao, xloc_cliente,
  baixa_localizar, xloc_empresa;

{$R *.dfm}

procedure Tfrmbaixa_estoque.qritem_baixa_produtosBeforePost(DataSet: TDataSet);
begin
  frmmodulo.qrbaixa_produtos.fieldbyname('subtotal').asfloat :=
    frmmodulo.qrbaixa_produtos.fieldbyname('subtotal').asfloat +
    qritem_baixa_produtos.fieldbyname('total').asfloat - valor_anterior;

  frmmodulo.qrbaixa_produtos.fieldbyname('total').asfloat :=
    frmmodulo.qrbaixa_produtos.fieldbyname('subtotal').asfloat +
    frmmodulo.qrbaixa_produtos.fieldbyname('acrescimo').asfloat -
    frmmodulo.qrbaixa_produtos.fieldbyname('desconto').asfloat;

  qritem_baixa_produtos.fieldbyname('codorcamento').asstring :=
    frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring;

end;

procedure Tfrmbaixa_estoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmmodulo.qrbaixa_produtos.close;
  Action := CAFREE;
end;

procedure Tfrmbaixa_estoque.FormShow(Sender: TObject);
begin
  pgravar.Align := alClient;

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.SQL.clear;
  frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.open;
  // frmmodulo.qrcliente.IndexFieldNames := 'nome';

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.SQL.clear;
  frmmodulo.qrfunci.SQL.add('select * from c000008 order by nome');
  frmmodulo.qrfunci.open;
  // frmmodulo.qrfunci.IndexFieldNames := 'nome';

  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.SQL.clear;
  frmmodulo.qrproduto.SQL.add('select * from c000025 order by produto');
  frmmodulo.qrproduto.open;
  // frmmodulo.qrproduto.indexfieldnames := 'produto';

  qrproduto.open;
  qrproduto.IndexFieldNames := 'produto';

  frmmodulo.qrbaixa_produtos.close;
  frmmodulo.qrbaixa_produtos.SQL.clear;
  frmmodulo.qrbaixa_produtos.SQL.add('select * from c000096 order by codigo');
  frmmodulo.qrbaixa_produtos.open;
  // frmmodulo.qrbaixa_produtos.indexfieldnames := 'codigo';

  if frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring <> '' then
  begin
    qritem_baixa_produtos.close;
    qritem_baixa_produtos.SQL.clear;
    qritem_baixa_produtos.SQL.add
      ('select * from c000097 where codorcamento = ''' +
      frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring + '''');
    qritem_baixa_produtos.open;
  end
  else
  begin
    qritem_baixa_produtos.close;
    qritem_baixa_produtos.SQL.clear;
    qritem_baixa_produtos.SQL.add('select * from c000097');
    qritem_baixa_produtos.open;
  end;

  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 0 then
    wwdbComboBox1.Text := 'INSTALAÇÃO';
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 1 then
    wwdbComboBox1.Text := 'GARANTIA DE SERVIÇO';
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 2 then
    wwdbComboBox1.Text := 'SAIDA PARA OFICINA';
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 3 then
    wwdbComboBox1.Text := 'DOAÇÃO';
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 4 then
    wwdbComboBox1.Text := 'TRANSFÊNCIA FILIAL';

  qritem_baixa_produtosUNITARIO.DisplayFormat := mascara_valor;
  qritem_baixa_produtosDESCONTO.DisplayFormat := mascara_valor;
  qritem_baixa_produtosACRESCIMO.DisplayFormat := mascara_valor;
  qritem_baixa_produtosTOTAL.DisplayFormat := mascara_valor;
  qritem_baixa_produtosQTDE.DisplayFormat := mascara_qtde;

end;

procedure Tfrmbaixa_estoque.DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);

end;

procedure Tfrmbaixa_estoque.DBDateEdit1Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
  if DBDateEdit1.Text = '  /  /    ' then
    DBDateEdit1.Date := Date;
end;

procedure Tfrmbaixa_estoque.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrbaixa_produtos.Insert;
  frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring :=
    frmprincipal.codifica('000096');
  wwdbComboBox1.ITEMINDEX := 0;
  pficha.Enabled := true;
  frmbaixa_estoque.PopupMenu := popedicao;
  pgravar.visible := true;
  DBDateEdit1.SetFocus;
  balterar.visible := False;
end;

procedure Tfrmbaixa_estoque.DBDateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure Tfrmbaixa_estoque.blocclienteClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  // procurar filial

  if wwdbComboBox1.ITEMINDEX = 4 then // procura filial
  begin
    frmxloc_empresa := Tfrmxloc_empresa.create(self);
    frmxloc_empresa.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      frmmodulo.qrempresa.Locate('codigo', resultado_pesquisa1,
        [loCaseInsensitive]);
      frmmodulo.qrbaixa_produtos.fieldbyname('codfilial').asstring :=
        frmmodulo.qrempresa.fieldbyname('codigo').asstring;
      dbedtfilial.Text := resultado_pesquisa1;
      dbedtempresa.Text := resultado_pesquisa2;
      evendedor.SetFocus;
    end
    else
      ecliente.SetFocus;

  end
  else
  begin
    frmxloc_cliente := tfrmxloc_cliente.create(self);
    frmxloc_cliente.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      frmmodulo.qrcliente.Locate('codigo', resultado_pesquisa1,
        [loCaseInsensitive]);
      frmmodulo.qrbaixa_produtos.fieldbyname('codcliente').asstring :=
        frmmodulo.qrcliente.fieldbyname('codigo').asstring;
      ecliente.Text := resultado_pesquisa1;
      evendedor.SetFocus;
    end
    else
      ecliente.SetFocus;

  end;

end;

procedure Tfrmbaixa_estoque.eclienteExit(Sender: TObject);
begin

  tedit(Sender).color := clwindow;
  if (frmmodulo.qrbaixa_produtos.state = dsinsert) or
    (frmmodulo.qrbaixa_produtos.state = dsedit) then
  begin
    frmmodulo.qrbaixa_produtos.fieldbyname('codcliente').asstring :=
      frmprincipal.zerarcodigo(ecliente.Text, 6);

    if ecliente.Text <> '000000' then
    begin
      ecliente.Text := frmprincipal.zerarcodigo(ecliente.Text, 6);
      if not frmprincipal.Locregistro(frmmodulo.qrcliente, ecliente.Text,
        'codigo') then
      begin
        blocclienteClick(frmbaixa_estoque);
      end
      else
        evendedor.SetFocus;
    end
    else
    begin
      bloccliente.SetFocus;
    end;
  end;

end;

procedure Tfrmbaixa_estoque.evendedorExit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  if (frmmodulo.qrbaixa_produtos.state = dsinsert) or
    (frmmodulo.qrbaixa_produtos.state = dsedit) then
  begin
    frmmodulo.qrbaixa_produtos.fieldbyname('codvendedor').asstring :=
      frmprincipal.zerarcodigo(evendedor.Text, 6);
    if evendedor.Text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrfunci, evendedor.Text,
        'codigo') then
      begin
        blocvendedorClick(frmbaixa_estoque);
      end
      else
        wwDBGrid1.SetFocus;
    end
    else
    begin
      blocvendedor.SetFocus;
    end;
  end;
end;

procedure Tfrmbaixa_estoque.blocvendedorClick(Sender: TObject);
begin
  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmmodulo.qrbaixa_produtos.fieldbyname('codvendedor').asstring :=
    frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  wwDBGrid1.SetFocus;
end;

procedure Tfrmbaixa_estoque.evendedorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    wwDBGrid1.SetFocus;
  end;
end;

procedure Tfrmbaixa_estoque.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmbaixa_estoque.bgravarClick(Sender: TObject);
var
  item: integer;
  itemlist, qtd: string;
  NomeDoLog: string;
  Arquivo: TextFile;
  I: integer;
begin

  if (frmmodulo.qrbaixa_produtos.state = dsinsert) then
  begin
    frmprincipal.logUC('Incluiu Baixa Estoque - ' + DBEdit1.Text, 1);
    frmmodulo.qrbaixa_produtos.fieldbyname('TIPO').AsInteger :=
      wwdbComboBox1.ITEMINDEX + 1;
     //  frmmodulo.qrbaixa_produtos.Post;
  end;

  if (frmmodulo.qrbaixa_produtos.state = dsedit) then
  begin
    frmprincipal.logUC('Alterou Baixa Estoque - ' + DBEdit1.Text, 1);
    frmmodulo.qrbaixa_produtos.fieldbyname('TIPO').AsInteger :=
      wwdbComboBox1.ITEMINDEX + 2;
    //   frmmodulo.qrbaixa_produtos.Post;
  end;



  pgravar.visible := False;
  frmbaixa_estoque.PopupMenu := popnormal;
  pficha.Enabled := False;

  frmmodulo.QRPRODUTO_MOV.close;
  frmmodulo.QRPRODUTO_MOV.SQL.clear;
  frmmodulo.QRPRODUTO_MOV.SQL.add
    ('SELECT * FROM C000032 WHERE CODNOTA = ''XXXXXX''');
  frmmodulo.QRPRODUTO_MOV.open;

  if application.messagebox('Deseja Finalizar a Operação?', 'Atenção',
    mb_yesno + MB_ICONWARNING) = idyes then
  begin
    item := 1;
    qritem_baixa_produtos.first;
    while not qritem_baixa_produtos.eof do
    begin
      frmmodulo.QRPRODUTO_MOV.Insert;
      frmmodulo.QRPRODUTO_MOV.fieldbyname('codigo').asstring :=
        qritem_baixa_produtos.fieldbyname('CODORCAMENTO').asstring;
      frmmodulo.QRPRODUTO_MOV.fieldbyname('codnota').asstring :=
        frmmodulo.qrbaixa_produtos.fieldbyname('CODIGO').asstring + 'BE';
      frmmodulo.QRPRODUTO_MOV.fieldbyname('SERIAL').asstring :=
        frmprincipal.zerarcodigo(INTTOSTR(item), 3);
      frmmodulo.QRPRODUTO_MOV.fieldbyname('numeronota').asstring :=
        frmmodulo.qrbaixa_produtos.fieldbyname('CODIGO').asstring;
      frmmodulo.QRPRODUTO_MOV.fieldbyname('codproduto').asstring :=
        qritem_baixa_produtos.fieldbyname('codproduto').asstring;
      frmmodulo.QRPRODUTO_MOV.fieldbyname('qtde').asfloat :=
        qritem_baixa_produtos.fieldbyname('qtde').asfloat;
      frmmodulo.QRPRODUTO_MOV.fieldbyname('unitario').asfloat :=
        qritem_baixa_produtos.fieldbyname('unitario').asfloat;
      frmmodulo.QRPRODUTO_MOV.fieldbyname('total').asfloat :=
        qritem_baixa_produtos.fieldbyname('total').asfloat;
      frmmodulo.QRPRODUTO_MOV.fieldbyname('desconto').asfloat :=
        qritem_baixa_produtos.fieldbyname('desconto').asfloat;
      frmmodulo.QRPRODUTO_MOV.fieldbyname('unidade').asstring :=
        qritem_baixa_produtos.fieldbyname('unidade').asstring;
      frmmodulo.QRPRODUTO_MOV.fieldbyname('aliquota').asfloat := 0;
      // qritem_baixa_produtos.fieldbyname('ICMS').asFLOAT;
      frmmodulo.QRPRODUTO_MOV.fieldbyname('cupom_modelo').asstring := '';
      frmmodulo.QRPRODUTO_MOV.fieldbyname('codcliente').asstring :=
        frmmodulo.qrbaixa_produtos.fieldbyname('codCLIENTE').asstring;
      frmmodulo.QRPRODUTO_MOV.fieldbyname('codvendedor').asstring :=
        frmmodulo.qrbaixa_produtos.fieldbyname('codVENDEDOR').asstring;

      if wwdbComboBox1.ITEMINDEX = 0 then
        frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').AsInteger := 17;
      // INSTALAÇÃO

      if wwdbComboBox1.ITEMINDEX = 1 then
        frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').AsInteger := 18;
      // GARANTIA DE SERVIÇO

      if wwdbComboBox1.ITEMINDEX = 2 then
        frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').AsInteger := 19;
      // SAIDA PARA OFICINA

      if wwdbComboBox1.ITEMINDEX = 3 then
        frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').AsInteger := 20;
      // DOAÇÃO

      if wwdbComboBox1.ITEMINDEX = 4 then
        frmmodulo.QRPRODUTO_MOV.fieldbyname('MOVIMENTO').AsInteger := 17;
      // TRANSFERENCIA

      frmmodulo.QRPRODUTO_MOV.fieldbyname('data').asstring :=
        frmmodulo.qrbaixa_produtos.fieldbyname('DATA').asstring;
      frmmodulo.QRPRODUTO_MOV.Post;

      item := item + 1;

      // criar arquivo txt
      qtd := qritem_baixa_produtos.fieldbyname('qtde').Value;
      frmmodulo.qrproduto.open;
      itemlist := qritem_baixa_produtos.fieldbyname('PRODUTO').asstring +
        ',' + qtd;
      ListBox1.Items.add(itemlist);

      qritem_baixa_produtos.next;
    end;

    // salvar arquivo txt
    for I := 0 to ListBox1.count - 1 do
    begin
      NomeDoLog := 'C:\OneMaker\SERVER\Logs\TRANSFERENCIA_PRODUTOS' +
        DBEdit1.Text + '.txt';
      AssignFile(Arquivo, NomeDoLog);
      if FileExists(NomeDoLog) then
        Append(Arquivo) { se existir, apenas adiciona linhas }
      else
        ReWrite(Arquivo); { cria um novo se não existir }
      try
        WriteLn(Arquivo, ListBox1.Items.Strings[I]);
      finally
        CloseFile(Arquivo)
      end;
    end;

   { qrapoio.close;
    qrapoio.SQL.clear;
    qrapoio.SQL.add
      ('UPDATE C000096 set FINALIZADO = :FINALIZADO WHERE CODIGO = :CODIGO');
    qrapoio.ParamByName('CODIGO').asstring := DBEdit1.Text;
    qrapoio.ParamByName('FINALIZADO').AsInteger := 2;
    qrapoio.ExecSQL; }
     if (frmmodulo.qrbaixa_produtos.state = dsinsert) or (frmmodulo.qrbaixa_produtos.state = dsedit ) then
     begin
      frmmodulo.qrbaixa_produtos.Edit;
      frmmodulo.qrbaixa_produtos.FieldByName('FINALIZADO').AsInteger := 2;
      frmmodulo.qrbaixa_produtos.Post;
     end;
  end
  else
  begin
   { qrapoio.close;
    qrapoio.SQL.clear;
    qrapoio.SQL.add
      ('UPDATE C000096 set FINALIZADO = :FINALIZADO WHERE CODIGO = :CODIGO');
    qrapoio.ParamByName('CODIGO').asstring := DBEdit1.Text;
    qrapoio.ParamByName('FINALIZADO').AsInteger := 1;
    qrapoio.ExecSQL;  }
     if (frmmodulo.qrbaixa_produtos.state = dsinsert) or (frmmodulo.qrbaixa_produtos.state = dsedit ) then
     begin
     frmmodulo.qrbaixa_produtos.Edit;
    frmmodulo.qrbaixa_produtos.FieldByName('FINALIZADO').AsInteger := 1;
    frmmodulo.qrbaixa_produtos.Post;
    end;
  end;



  frmmodulo.Conexao.Commit;

  if application.messagebox('Deseja imprimir esta Baixa?', 'Aviso',
    mb_yesno + MB_ICONQUESTION) = idyes then
  begin
    BitBtn7Click(frmbaixa_estoque);
  end;

  frmmodulo.qrbaixa_produtos.Refresh;
   frmmodulo.qrbaixa_produtos.Last;

  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 0 then
    wwdbComboBox1.Text := 'INSTALAÇÃO';
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 1 then
    wwdbComboBox1.Text := 'GARANTIA DE SERVIÇO';
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 2 then
    wwdbComboBox1.Text := 'SAIDA PARA OFICINA';
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 3 then
    wwdbComboBox1.Text := 'DOAÇÃO';
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 4 then
    wwdbComboBox1.Text := 'TRANSFÊNCIA FILIAL';

  balterar.visible := true;

end;

procedure Tfrmbaixa_estoque.bcancelarClick(Sender: TObject);
begin
  frmmodulo.qrbaixa_produtos.cancel;
  qritem_baixa_produtos.cancel;
  frmmodulo.Conexao.Rollback;
  balterar.visible := true;

  pgravar.visible := False;
  frmbaixa_estoque.PopupMenu := popnormal;
  pficha.Enabled := False;

  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 0 then
    wwdbComboBox1.Text := 'INSTALAÇÃO';
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 1 then
    wwdbComboBox1.Text := 'GARANTIA DE SERVIÇO';
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 2 then
    wwdbComboBox1.Text := 'SAIDA PARA OFICINA';
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 3 then
    wwdbComboBox1.Text := 'DOAÇÃO';
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 4 then
    wwdbComboBox1.Text := 'TRANSFÊNCIA FILIAL';

end;

procedure Tfrmbaixa_estoque.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Baixa Estoque', 4) then
  begin

    frmmodulo.QRPRODUTO_MOV.close;
    frmmodulo.QRPRODUTO_MOV.SQL.clear;
    frmmodulo.QRPRODUTO_MOV.SQL.add('DELETE FROM C000032 WHERE CODNOTA = ''' +
      frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring + 'BE''');
    frmmodulo.QRPRODUTO_MOV.ExecSQL;

    qritem_baixa_produtos.close;
    qritem_baixa_produtos.SQL.clear;
    qritem_baixa_produtos.SQL.add('delete from c000097 where codorcamento = '''
      + frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring + '''');
    qritem_baixa_produtos.ExecSQL;
    frmprincipal.logUC('Excluiu Baixa Estoque - ' + DBEdit1.Text, 3);
    frmmodulo.qrbaixa_produtos.Delete;
    frmmodulo.Conexao.Commit;
    qritem_baixa_produtos.close;
    qritem_baixa_produtos.SQL.clear;
    qritem_baixa_produtos.SQL.add
      ('select * from c000097 where codorcamento = ''' +
      frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring + '''');
    qritem_baixa_produtos.open;

  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmbaixa_estoque.BitBtn7Click(Sender: TObject);
begin

  frmmodulo.qrcliente.Locate('codigo', frmmodulo.qrbaixa_produtos.fieldbyname
    ('codcliente').asstring, [loCaseInsensitive]);
  frmmodulo.qrempresa.Locate('codigo', frmmodulo.qrbaixa_produtos.fieldbyname
    ('codfilial').asstring, [loCaseInsensitive]);
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.Edit;

  if frmbaixa_estoque.qritem_baixa_produtos.RecordCount > 28 then
    frmmodulo.qrrelatorio.fieldbyname('linha8').asstring := '2'
  else
    frmmodulo.qrrelatorio.fieldbyname('linha8').asstring := '1';
  frmmodulo.qrrelatorio.Post;
  if wwdbComboBox1.ITEMINDEX = 4 then
  begin
    fxorcamento.LoadFromFile('\OneMaker\server\rel\f000069_FILIAL.fr3');
    fxorcamento.ShowReport;
  end
  else
  begin
    fxorcamento.LoadFromFile('\OneMaker\server\rel\f000069_2.fr3');
    fxorcamento.ShowReport;
  end;

  // frmbaixaestoque_impressao.showmodal;

end;

procedure Tfrmbaixa_estoque.DBEdit1Change(Sender: TObject);
begin
  try
    qritem_baixa_produtos.close;
    if frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring <> '' then
    begin
      qritem_baixa_produtos.SQL.clear;
      qritem_baixa_produtos.SQL.add
        ('select * from c000097 where codorcamento = ''' +
        frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring + '''');
      qritem_baixa_produtos.open;

      wwdbComboBox1.ITEMINDEX := frmmodulo.qrbaixa_produtos.fieldbyname('tipo')
        .AsInteger - 1;

    end;

  except
  end;
end;

procedure Tfrmbaixa_estoque.blocalizarClick(Sender: TObject);
begin
  codigo_orcamento := '';

  frmbaixa_localizar := tfrmbaixa_localizar.create(self);
  frmbaixa_localizar.showmodal;

  if codigo_orcamento <> '' then
    frmmodulo.qrbaixa_produtos.Locate('codigo', codigo_orcamento,
      [loCaseInsensitive]);

end;

procedure Tfrmbaixa_estoque.wwDBGrid1Enter(Sender: TObject);
begin
  FinalizarEdio1.Enabled := true;
  ExcluirProduto1.Enabled := true;
end;

procedure Tfrmbaixa_estoque.wwDBGrid1Exit(Sender: TObject);
begin
  FinalizarEdio1.Enabled := False;
  ExcluirProduto1.Enabled := False;
end;

procedure Tfrmbaixa_estoque.rdescontoEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure Tfrmbaixa_estoque.DBEdit2Enter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure Tfrmbaixa_estoque.DBEdit2Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure Tfrmbaixa_estoque.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmbaixa_estoque.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmbaixa_estoque.combo_tipobaixaEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure Tfrmbaixa_estoque.wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    DBEdit2.SetFocus;
  end;
end;

procedure Tfrmbaixa_estoque.eclienteEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure Tfrmbaixa_estoque.evendedorEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure Tfrmbaixa_estoque.comboprodutoExit(Sender: TObject);
begin
  if comboproduto.Text <> '' then
  begin
    if frmmodulo.qrproduto.Locate('produto', comboproduto.Text, [loPartialKey])
    then
    begin
      qritem_baixa_produtos.fieldbyname('codproduto').asstring :=
        frmmodulo.qrproduto.fieldbyname('codigo').asstring;
      qritem_baixa_produtos.fieldbyname('UNIDADE').asstring :=
        frmmodulo.qrproduto.fieldbyname('UNIDADE').asstring;
      qritem_baixa_produtos.fieldbyname('qtde').asfloat := 1;
      qritem_baixa_produtos.fieldbyname('unitario').asfloat :=
        frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
      qritem_baixa_produtos.fieldbyname('total').asfloat :=
        frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
    end
    else
    begin
      qritem_baixa_produtos.fieldbyname('codproduto').asstring := '999999';
      qritem_baixa_produtos.fieldbyname('UNIDADE').asstring := 'UN';
      qritem_baixa_produtos.fieldbyname('qtde').asfloat := 1;
      qritem_baixa_produtos.fieldbyname('unitario').asfloat := 0;
      qritem_baixa_produtos.fieldbyname('total').asfloat := 0;

    end;
  end;
end;

procedure Tfrmbaixa_estoque.eprodutoExit(Sender: TObject);
begin
  if eproduto.Text <> '' then
  begin
    qritem_baixa_produtos.fieldbyname('codproduto').asstring :=
      frmprincipal.zerarcodigo(eproduto.Text, 6);
    if frmmodulo.qrproduto.Locate('codigo', eproduto.Text, [loCaseInsensitive])
    then
    begin
      qritem_baixa_produtos.fieldbyname('produto').asstring :=
        frmmodulo.qrproduto.fieldbyname('produto').asstring;
      qritem_baixa_produtos.fieldbyname('UNIDADE').asstring :=
        frmmodulo.qrproduto.fieldbyname('UNIDADE').asstring;
      qritem_baixa_produtos.fieldbyname('qtde').asfloat := 1;
      qritem_baixa_produtos.fieldbyname('unitario').asfloat :=
        frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
      qritem_baixa_produtos.fieldbyname('total').asfloat :=
        frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

    end
    else
    begin
      if frmmodulo.qrproduto.Locate('codbarra', eproduto.Text,
        [loCaseInsensitive]) then
      begin
        qritem_baixa_produtos.fieldbyname('produto').asstring :=
          frmmodulo.qrproduto.fieldbyname('produto').asstring;
        qritem_baixa_produtos.fieldbyname('UNIDADE').asstring :=
          frmmodulo.qrproduto.fieldbyname('UNIDADE').asstring;
        qritem_baixa_produtos.fieldbyname('qtde').asfloat := 1;
        qritem_baixa_produtos.fieldbyname('unitario').asfloat :=
          frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
        qritem_baixa_produtos.fieldbyname('total').asfloat :=
          frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
      end
      else
      begin
        application.messagebox('Produto não cadastrado!', 'Atenção',
          mb_ok + MB_ICONWARNING);
        eproduto.Text := '';
      end;
    end;
  end;
end;

procedure Tfrmbaixa_estoque.qritem_baixa_produtosBeforeInsert
  (DataSet: TDataSet);
begin

  valor_anterior := 0;
end;

procedure Tfrmbaixa_estoque.qritem_baixa_produtosBeforeEdit(DataSet: TDataSet);
begin
  valor_anterior := qritem_baixa_produtos.fieldbyname('total').asfloat;
end;

procedure Tfrmbaixa_estoque.BitBtn2Click(Sender: TObject);
begin
  if (qritem_baixa_produtos.state = dsedit) or
    (qritem_baixa_produtos.state = dsinsert) then
  begin

  end
  else
  begin
    if application.messagebox('Tem certeza que deseja excluir este item?',
      'Atenção', mb_yesno + MB_ICONWARNING) = idyes then
    begin
      qritem_baixa_produtos.Delete;
    end;
  end;
end;

procedure Tfrmbaixa_estoque.BitBtn1Click(Sender: TObject);
begin
  DBEdit2.SetFocus;
end;

procedure Tfrmbaixa_estoque.qritem_baixa_produtosBeforeDelete
  (DataSet: TDataSet);
begin
  frmmodulo.QRPRODUTO_MOV.close;
  frmmodulo.QRPRODUTO_MOV.SQL.clear;
  frmmodulo.QRPRODUTO_MOV.SQL.add('DELETE FROM C000032 WHERE CODNOTA = ''' +
    frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring +
    'BE'' and codproduto = ''' + qritem_baixa_produtos.fieldbyname('codproduto')
    .asstring + '''');
  frmmodulo.QRPRODUTO_MOV.ExecSQL;
  frmmodulo.qrbaixa_produtos.fieldbyname('subtotal').asfloat :=
    frmmodulo.qrbaixa_produtos.fieldbyname('subtotal').asfloat -
    qritem_baixa_produtos.fieldbyname('total').asfloat;

  frmmodulo.qrbaixa_produtos.fieldbyname('total').asfloat :=
    frmmodulo.qrbaixa_produtos.fieldbyname('subtotal').asfloat +
    frmmodulo.qrbaixa_produtos.fieldbyname('acrescimo').asfloat -
    frmmodulo.qrbaixa_produtos.fieldbyname('desconto').asfloat;

end;

procedure Tfrmbaixa_estoque.eqtdeExit(Sender: TObject);
begin
  if (qritem_baixa_produtos.state = dsedit) or
    (qritem_baixa_produtos.state = dsinsert) then
  begin
    qritem_baixa_produtos.fieldbyname('total').asfloat :=
      (qritem_baixa_produtos.fieldbyname('qtde').asfloat *
      qritem_baixa_produtos.fieldbyname('unitario').asfloat) -
      qritem_baixa_produtos.fieldbyname('desconto').asfloat +
      qritem_baixa_produtos.fieldbyname('acrescimo').asfloat;
  end;
end;

procedure Tfrmbaixa_estoque.eunitarioExit(Sender: TObject);
begin
  if (qritem_baixa_produtos.state = dsedit) or
    (qritem_baixa_produtos.state = dsinsert) then
  begin
    qritem_baixa_produtos.fieldbyname('total').asfloat :=
      (qritem_baixa_produtos.fieldbyname('qtde').asfloat *
      qritem_baixa_produtos.fieldbyname('unitario').asfloat) -
      qritem_baixa_produtos.fieldbyname('desconto').asfloat +
      qritem_baixa_produtos.fieldbyname('acrescimo').asfloat;
  end;
end;

procedure Tfrmbaixa_estoque.edescontoExit(Sender: TObject);
begin
  if (qritem_baixa_produtos.state = dsedit) or
    (qritem_baixa_produtos.state = dsinsert) then
  begin
    qritem_baixa_produtos.fieldbyname('total').asfloat :=
      (qritem_baixa_produtos.fieldbyname('qtde').asfloat *
      qritem_baixa_produtos.fieldbyname('unitario').asfloat) -
      qritem_baixa_produtos.fieldbyname('desconto').asfloat +
      qritem_baixa_produtos.fieldbyname('acrescimo').asfloat;
  end;
end;

procedure Tfrmbaixa_estoque.eacrescimoExit(Sender: TObject);
begin
  if (qritem_baixa_produtos.state = dsedit) or
    (qritem_baixa_produtos.state = dsinsert) then
  begin
    qritem_baixa_produtos.fieldbyname('total').asfloat :=
      (qritem_baixa_produtos.fieldbyname('qtde').asfloat *
      qritem_baixa_produtos.fieldbyname('unitario').asfloat) -
      qritem_baixa_produtos.fieldbyname('desconto').asfloat +
      qritem_baixa_produtos.fieldbyname('acrescimo').asfloat;
  end;

end;

procedure Tfrmbaixa_estoque.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmbaixa_estoque.rdesconto1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmbaixa_estoque.qritem_baixa_produtosAfterInsert(DataSet: TDataSet);
begin
  qritem_baixa_produtos.fieldbyname('codigo').asstring :=
    frmprincipal.codifica('000097');
end;

procedure Tfrmbaixa_estoque.qritem_baixa_produtosAfterScroll(DataSet: TDataSet);
begin
  qritem_baixa_produtos.Edit
end;

procedure Tfrmbaixa_estoque.dbedtfilialEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure Tfrmbaixa_estoque.dbedtfilialExit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  if (frmmodulo.qrbaixa_produtos.state = dsinsert) or
    (frmmodulo.qrbaixa_produtos.state = dsedit) then
  begin
    frmmodulo.qrbaixa_produtos.fieldbyname('codfilial').asstring :=
      frmprincipal.zerarcodigo(ecliente.Text, 6);

    if dbedtempresa.Text <> '000000' then
    begin
      dbedtfilial.Text := frmprincipal.zerarcodigo(dbedtfilial.Text, 6);
      if wwdbComboBox1.ITEMINDEX = 4 then
      begin
        if not frmprincipal.Locregistro(frmmodulo.qrempresa, dbedtfilial.Text,
          'codigo') then
        begin
          blocclienteClick(frmbaixa_estoque);
        end
        else
        begin
          evendedor.SetFocus;
        end;
      end
      else
        evendedor.SetFocus;
    end
    else
    begin
      bloccliente.SetFocus;
    end;
  end;
end;

procedure Tfrmbaixa_estoque.dbedtfilialKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmbaixa_estoque.dsorcamentoDataChange(Sender: TObject;
  Field: TField);
begin
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 0 then
    wwdbComboBox1.Text := 'INSTALAÇÃO';
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 1 then
    wwdbComboBox1.Text := 'GARANTIA DE SERVIÇO';
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 2 then
    wwdbComboBox1.Text := 'SAIDA PARA OFICINA';
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 3 then
    wwdbComboBox1.Text := 'DOAÇÃO';
  if frmmodulo.qrbaixa_produtos.fieldbyname('tipo').AsInteger = 4 then
    wwdbComboBox1.Text := 'TRANSFÊNCIA FILIAL';
end;

procedure Tfrmbaixa_estoque.wwdbComboBox1Exit(Sender: TObject);
begin
  if wwdbComboBox1.ITEMINDEX = 4 then
  begin
    Label3.Caption := 'Filial';
    dbedtempresa.visible := true;
    enomecliente.visible := False;
    dbedtfilial.visible := true;
    ecliente.visible := False;
  end
  else
  begin
    Label3.Caption := 'Cliente';
    dbedtempresa.visible := False;
    enomecliente.visible := true;
    dbedtfilial.visible := False;
    ecliente.visible := true;
  end;
end;

procedure Tfrmbaixa_estoque.wwdbComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    ecliente.SetFocus;
end;

procedure Tfrmbaixa_estoque.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmbaixa_estoque.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmbaixa_estoque.balterarClick(Sender: TObject);
begin

  if frmmodulo.qrbaixa_produtos.fieldbyname('FINALIZADO').AsInteger = 2 then
  begin
    application.messagebox('Impossível Alterar ,movimento já finalizado',
      'Atenção', mb_ok + MB_ICONWARNING);
    Exit;
  end;

  qritem_baixa_produtos.open;
  qritem_baixa_produtos.Edit;

  frmmodulo.qritem_baixa_produtos.open;
  frmmodulo.qritem_baixa_produtos.Edit;

  frmmodulo.qrbaixa_produtos.open;
  frmmodulo.qrbaixa_produtos.Edit;
  // wwdbComboBox1.ITEMINDEX := 0;
  pficha.Enabled := true;
  frmbaixa_estoque.PopupMenu := popedicao;
  pgravar.visible := true;
  DBDateEdit1.SetFocus;
  balterar.visible := False;

end;

end.
