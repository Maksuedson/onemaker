unit prevenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  Wwdbigrd, Wwdbgrid, ExtCtrls, Collection, StdCtrls, Buttons,
  Menus, DBGrids, DBCtrls, AdvGlowButton,
  PageView, AdvShapeButton, DBClient, ZSqlUpdate, JvMemoryDataset;

type
    TfrmPrevenda = class(TForm)
    dsorcamento: TDataSource;
    qrproduto: TZQuery;
    qrorcamento_receber: TZQuery;
    Timer1: TTimer;
    FlatPanel1: TPanel;
    LCODCAIXA: TLabel;
    datacaixa: TLabel;
    qrcontasreceber: TZQuery;
    PopupMenu1: TPopupMenu;
    Fechamento1: TMenuItem;
    Excluir1: TMenuItem;
    Fechar1: TMenuItem;
    Panel1: TPanel;
    etipo: TLabel;
    dsorcamento_produtos: TDataSource;
    Query1: TZQuery;
    eretirado: TLabel;
    qrorcamento_produto: TZQuery;
    lvenda_data: TLabel;
    Visualizar1: TMenuItem;
    rocarCliente1: TMenuItem;
    qrcliente: TJvMemoryData;
    qrclienteNOME: TStringField;
    qrclienteCODIGO: TStringField;
    qrclienteCPF: TStringField;
    qrclienteENDERECO: TStringField;
    qrclienteAPELIDO: TStringField;
    qrclienteBAIRRO: TStringField;
    qrclienteCIDADE: TStringField;
    qrclienteUF: TStringField;
    qrclienteCEP: TStringField;
    qrclienteCOMPLEMENTO: TStringField;
    qrclienteTELEFONE1: TStringField;
    qrclienteCELULAR: TStringField;
    qrclienteRG: TStringField;
    Imprimir1: TMenuItem;
    AdvShapeButton1: TAdvShapeButton;
    Bevel2: TBevel;
    Label11: TLabel;
    Label12: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label1: TLabel;
    Bevel6: TBevel;
    Label6: TLabel;
    Bevel7: TBevel;
    lvenda: TLabel;
    Label13: TLabel;
    Bevel8: TBevel;
    PageView2: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    wwDBGrid1: TwwDBGrid;
    bitbtn1: TAdvGlowButton;
    bimprimir: TAdvGlowButton;
    bitbtn3: TAdvGlowButton;
    btroca_cliente: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    wwDBGrid2: TwwDBGrid;
    Panel2: TPanel;
    Label2: TLabel;
    ltotal_cupom: TLabel;
    Bevel12: TBevel;
    qrapoio: TZQuery;
    qrproduto_grade: TZQuery;
    Relaodeatendimentos1: TMenuItem;
    AbrirGaveta1: TMenuItem;
    PTEF: TPanel;
    bver_limite: TBitBtn;
    lcliente_limite: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    qrvenda_contasreceber: TClientDataSet;
    qrvenda_contasreceberPRESTACAO: TIntegerField;
    qrvenda_contasreceberVENCIMENTO: TDateTimeField;
    qrvenda_contasreceberTIPO: TStringField;
    qrvenda_contasreceberDOCUMENTO: TStringField;
    qrvenda_contasreceberTERMINAL: TStringField;
    qrvenda_contasreceberVALOR: TFloatField;
    qrproduto_serial: TZQuery;
    updproduto_serial: TZUpdateSQL;
    updproduto_grade: TZUpdateSQL;
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
    qrorcamento_produtoCODIGO: TWideStringField;
    qrorcamento_produtoCODNOTA: TWideStringField;
    qrorcamento_produtoCODPRODUTO: TWideStringField;
    qrorcamento_produtoUNITARIO: TFloatField;
    qrorcamento_produtoTOTAL: TFloatField;
    qrorcamento_produtoICMS: TFloatField;
    qrorcamento_produtoIPI: TFloatField;
    qrorcamento_produtoCFOP: TWideStringField;
    qrorcamento_produtoDATA: TDateField;
    qrorcamento_produtoNUMERONOTA: TWideStringField;
    qrorcamento_produtoCODCLIENTE: TWideStringField;
    qrorcamento_produtoDESCONTO: TFloatField;
    qrorcamento_produtoACRESCIMO: TFloatField;
    qrorcamento_produtoMOVIMENTO: TIntegerField;
    qrorcamento_produtoCODVENDEDOR: TWideStringField;
    qrorcamento_produtoCODGRADE: TWideStringField;
    qrorcamento_produtoSERIAL: TWideStringField;
    qrorcamento_produtoUNIDADE: TWideStringField;
    qrorcamento_produtoQTDE: TFloatField;
    qrorcamento_produtoVALOR_ICMS: TFloatField;
    qrorcamento_produtoICMS_REDUZIDO: TFloatField;
    qrorcamento_produtoBASE_CALCULO: TFloatField;
    qrorcamento_produtoVALOR_IPI: TFloatField;
    qrorcamento_produtoSITUACAO: TIntegerField;
    qrorcamento_produtoSERIAL_CODINT: TWideStringField;
    qrorcamento_produtoCOD_BARRAS: TWideStringField;
    qrorcamento_produtoPRODUTO: TWideStringField;
    qrorcamento_produtoCODBARRA: TWideStringField;
    qrorcamento_produtoCST: TWideStringField;
    qrorcamento_produtoALIQUOTA: TFloatField;
    qrproduto_gradeCODIGO: TWideStringField;
    qrproduto_gradeCODPRODUTO: TWideStringField;
    qrproduto_gradeNUMERACAO: TWideStringField;
    qrproduto_gradeCODBARRA: TWideStringField;
    qrproduto_gradeESTOQUE: TFloatField;
    qrproduto_gradeCOR: TWideStringField;
    qrproduto_serialCODIGO: TWideStringField;
    qrproduto_serialCODPRODUTO: TWideStringField;
    qrproduto_serialSERIAL: TWideStringField;
    qrproduto_serialESTOQUE: TFloatField;
    qrproduto_serialCODCLIENTE: TWideStringField;
    qrproduto_serialPRECOCUSTO: TFloatField;
    qrproduto_serialPRECOVENDA: TFloatField;
    qrproduto_serialDATAVENDA: TDateField;
    qrproduto_serialSITUACAO: TIntegerField;
    qrproduto_serialCLIENTE: TWideStringField;
    qrproduto_serialCODNOTA: TWideStringField;
    qrproduto_serialCODITEM: TWideStringField;
    qrproduto_serialDATACOMPRA: TDateField;
    qrproduto_serialNUMERONOTA: TWideStringField;
    qrproduto_serialCODFORNECEDOR: TWideStringField;
    qrproduto_serialCODVENDA_ITEM: TWideStringField;
    qrproduto_serialFILTRO: TIntegerField;
    qrproduto_serialCODVENDA: TWideStringField;
    qrorcamento: TZQuery;
    qrorcamentocliente: TStringField;
    qrorcamentovendedor: TStringField;
    qrorcamentoCODIGO: TWideStringField;
    qrorcamentoCODCAIXA: TWideStringField;
    qrorcamentoCODVENDEDOR: TWideStringField;
    qrorcamentoDATA: TDateField;
    qrorcamentoCODCLIENTE: TWideStringField;
    qrorcamentoOBS: TWideStringField;
    qrorcamentoMEIO_DINHEIRO: TFloatField;
    qrorcamentoMEIO_CHEQUEAV: TFloatField;
    qrorcamentoMEIO_CHEQUEAP: TFloatField;
    qrorcamentoMEIO_CARTAOCRED: TFloatField;
    qrorcamentoMEIO_CARTAODEB: TFloatField;
    qrorcamentoMEIO_CREDIARIO: TFloatField;
    qrorcamentoSUBTOTAL: TFloatField;
    qrorcamentoDESCONTO: TFloatField;
    qrorcamentoACRESCIMO: TFloatField;
    qrorcamentoTOTAL: TFloatField;
    qrorcamentoCUPOM_FISCAL: TIntegerField;
    qrorcamentoNUMERO_CUPOM_FISCAL: TWideStringField;
    qrorcamentoRETIRADO: TWideStringField;
    qrorcamentoTIPO: TIntegerField;
    qrorcamentoMEIO_CONVENIO: TFloatField;
    qrorcamentoDAV: TWideStringField;
    qrorcamentoSITUACAO: TIntegerField;
    qrorcamentoDAV_ANTERIOR: TWideStringField;
    qrorcamentoATACADO_VAREJO: TSmallintField;
    qrorcamento_produtodesconto_nota: TStringField;
    qrorcamentoDESCONTO_NOTA: TFloatField;
    qrorcamentoMARGEM_DESCONTO: TFloatField;
    qrorcamentoMARGEM_DESCONTO_NOTA: TFloatField;
    qrorcamentoMEIO_FINANCEIRA: TFloatField;
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure dsorcamentoDataChange(Sender: TObject; Field: TField);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure btroca_clienteClick(Sender: TObject);
    procedure rocarCliente1Click(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Relaodeatendimentos1Click(Sender: TObject);
    procedure PageView2Change(Sender: TObject);
    procedure qrvenda_contasreceber2BeforePost(DataSet: TDataSet);
    procedure AbrirGaveta1Click(Sender: TObject);
    procedure bver_limiteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrevenda: TfrmPrevenda;
  limite_disponivel : real;
  cupom_fiscal : boolean;
  cod_apoio : integer;
  continuar : boolean;
  numero_terminal,codconvenio : string;
  spvc_nome, spvc_endereco, spvc_cidade, spvc_bairro, spvc_uf, spvc_cpf : string; // variaveis de armazenamento dos dados clientes para imprimir no cupom fiscal (cliente sem cadastro)

implementation

uses modulo, prevenda_fechamento, principal, loc_cliente, dados_cliente,
  xloc_cliente, unFuncoesTEF, prevenda_impressao;

{$R *.dfm}

procedure TfrmPrevenda.Timer1Timer(Sender: TObject);
var
  vrecno : integer;
begin
  vrecno := qrorcamento.RecNo;
  qrorcamento.Refresh;
  qrorcamento.RecNo := vrecno;
end;

procedure TfrmPrevenda.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPrevenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure TfrmPrevenda.FormShow(Sender: TObject);
var  slinha : string;
f : textfile;
begin
    frmmodulo.qrconfig.open;
    numero_terminal := registro_terminal;
    if numero_terminal = '' then
    begin
      application.messagebox('Não foi configurado o número do terminal! Esta venda será finalizada!','Atenção',mb_ok+mb_iconerror);
      close;
      exit;
    end;

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.Add('select * from c000007 order by nome');
  frmmodulo.qrcliente.Open;

  QRORCAMENTO.CLOSE;
  QRORCAMENTO.SQL.CLEAR;
  QRORCAMENTO.SQL.ADD('SELECT * FROM C000074 WHERE tipo <> 9 ORDER BY CODIGO');
  QRORCAMENTO.OPEN;
  WWDBGRID1.SetFocus;
end;

procedure TfrmPrevenda.wwDBGrid1DblClick(Sender: TObject);
begin
  BitBtn1Click(frmprevenda);
end;

procedure TfrmPrevenda.BitBtn1Click(Sender: TObject);
begin
  JA_ABERTO := FALSE;
  TIMER1.Enabled := FALSE;
 //   qrorcamento_produto.Close;
 //   QRORCAMENTO_PRODUTO.SQL.CLEAR;
 //   QRORCAMENTO_PRODUTO.SQL.ADD('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.aliquota from c000075 orc,');
 //   QRORCAMENTO_PRODUTO.SQL.ADD('c000025 prod where orc.codproduto = prod.codigo and codnota = '''+qrorcamento.fieldbyname('codigo').asstring+''' order by codigo');
 //   QRORCAMENTO_PRODUTO.OPEN;
                                               //202604  09/02/08
  qrorcamento_produto.Close;
  qrorcamento_produto.SQL.Clear;
  qrorcamento_produto.SQL.Add('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.aliquota from c000075 orc,');
  qrorcamento_produto.sql.add('c000025 prod where orc.codproduto = prod.codigo and numeronota = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
  qrorcamento_produto.SQL.Add('and data = :vdat');
  qrorcamento_produto.params.ParamByName('vdat').AsDateTime := qrorcamento.fieldbyname('data').AsDateTime;
  qrorcamento_produto.Open;

  if QRORCAMENTO_PRODUTO.RecordCount = 0 then
    begin
      Application.messagebox('Não há informação para o fechamento!','Atenção!',mb_ok+MB_ICONEXCLAMATION);
      exit;
    end;

  FRMMODULO.qrconfig.OPEN;
  IF FRMMODULO.QRCONFIG.FIELDBYNAME('ESTOQUE_NEGATIVO').ASINTEGER = 0 THEN
  BEGIN
    QRORCAMENTO_PRODUTO.First;
    WHILE NOT QRORCAMENTO_PRODUTO.Eof DO
    BEGIN
      Query1.CLOSE;
      QUERY1.SQL.CLEAR;
      QUERY1.SQL.ADD('SELECT ESTOQUE_ATUAL FROM C000100');
      QUERY1.SQL.ADD('WHERE CODPRODUTO = '''+QRORCAMENTO_PRODUTO.FIELDBYNAME('CODPRODUTO').ASSTRING+'''');
      QUERY1.OPEN;
      IF QUERY1.FIELDBYNAME('ESTOQUE_ATUAL').ASFLOAT < QRORCAMENTO_PRODUTO.FIELDBYNAME('QTDE').ASFLOAT THEN
      BEGIN
        APPLICATION.MESSAGEBOX(PWChar('O produto '+qrorcamento_produto.fieldbyname('codproduto').asstring+' - '+
                                                      qrorcamento_produto.fieldbyname('produto').asstring+' não possue estoque suficiente!'+#13+
                                                      'Quantidade vendida: '+qrorcamento_produto.fieldbyname('qtde').asstring+#13+
                                                      'Quantidade em Estoque: '+query1.fieldbyname('estoque_atual').asstring),
                                                      'Estoque',mb_ok+mb_iconerror);
        exit;
      END;
      QRORCAMENTO_PRODUTO.NEXT;
    END;
  END;

  frmmodulo.qrcliente.CLOSE;
  FRMMODULO.QRCLIENTE.SQL.CLEAR;
  FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE CODIGO = '''+qrorcamento.fieldbyname('codcliente').asstring+'''');
  FRMMODULO.QRCLIENTE.OPEN;

  qrcontasreceber.close;
  qrcontasreceber.sql.clear;
  qrcontasreceber.sql.add('select SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1');
  qrcontasreceber.Open;
  limite_disponivel := FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - QRCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT;
  {
  // verifica limite dos clientes
  bver_limiteClick(frmPrevenda);
  if CONTINUAR = False then
    Exit;     }
  begin
    frmprevenda_fechamento := tfrmprevenda_fechamento.create(self);
    frmprevenda_fechamento.rsubtotal.value := qrorcamento.fieldbyname('subtotal').asfloat;
    frmprevenda_fechamento.rdesconto2.value := qrorcamento.fieldbyname('desconto').asfloat + qrorcamento.fieldbyname('desconto_nota').asfloat;
    frmprevenda_fechamento.rdesconto1.value := qrorcamento.fieldbyname('margem_desconto').asfloat + qrorcamento.fieldbyname('margem_desconto_nota').asfloat;
    frmprevenda_fechamento.racrescimo2.value := qrorcamento.fieldbyname('acrescimo').asfloat;
    frmprevenda_fechamento.rtotal.value := qrorcamento.fieldbyname('total').asfloat;
    frmprevenda_fechamento.rdinheiro.value := qrorcamento.fieldbyname('meio_dinheiro').asfloat;
    frmprevenda_fechamento.rchequeav.value := qrorcamento.fieldbyname('meio_chequeav').asfloat;
    frmprevenda_fechamento.rchequeap.value := qrorcamento.fieldbyname('meio_chequeap').asfloat;
    frmprevenda_fechamento.rcartaocred.value := qrorcamento.fieldbyname('meio_cartaocred').asfloat;
    frmprevenda_fechamento.rcartaodeb.value := qrorcamento.fieldbyname('meio_cartaodeb').asfloat;
    frmprevenda_fechamento.rcrediario.value := qrorcamento.fieldbyname('meio_crediario').asfloat;
    frmprevenda_fechamento.rconvenio.value := qrorcamento.fieldbyname('meio_convenio').asfloat;
    frmprevenda_fechamento.rfinanceira.Value := qrorcamento.fieldbyname('meio_financeira').asfloat;
    frmprevenda_fechamento.showmodal;
  end;

  frmmodulo.qrcliente.CLOSE;
  FRMMODULO.QRCLIENTE.SQL.CLEAR;
  FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007');
  FRMMODULO.QRCLIENTE.OPEN;

  FRMMODULO.QRPRODUTO.CLOSE;
  FRMMODULO.QRPRODUTO.SQL.CLEAR;
  FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025');
  FRMMODULO.QRPRODUTO.OPEN;

  TIMER1.ENABLED := TRUE;

  QRORCAMENTO.CLOSE;
  QRORCAMENTO.SQL.CLEAR;
  QRORCAMENTO.SQL.ADD('SELECT * FROM C000074 where tipo <> 9 ORDER BY CODIGO');
  QRORCAMENTO.OPEN;
  PageView2.ActivePageIndex := 0;
  if qrcliente.RecordCount > 0 then qrcliente.Delete;
  WWDBGRID1.SetFocus;
end;

procedure TfrmPrevenda.BitBtn2Click(Sender: TObject);
begin
  TIMER1.Enabled := FALSE;
  if frmprincipal.autentica('Excluir PRE-VENDA',4) then
  begin
    QRORCAMENTO_PRODUTO.Close;
    QRORCAMENTO_PRODUTO.SQL.Clear;
    QRORCAMENTO_PRODUTO.SQL.ADD('DELETE FROM C000075 WHERE CODNOTA = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
    QRORCAMENTO_PRODUTO.EXECSQL;
    QRORCAMENTO.DELETE;
    FRMMODULO.Conexao.Commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
  TIMER1.Enabled := true;
end;

procedure TfrmPrevenda.Edit1KeyPress(Sender: TObject; var Key: Char);
var cod : string;
begin
  if key = #13 then
  begin
     cod := frmPrincipal.zerarcodigo(edit1.text,6);
     qrorcamento.locate('codigo',cod,[loPartialKey]);
  end;
end;

procedure TfrmPrevenda.dsorcamentoDataChange(Sender: TObject;
  Field: TField);
begin
  if qrorcamento.FieldByName('MEIO_CONVENIO').AsFloat > 0 then
    etipo.Caption := 'CONVÊNIO'
  else if qrorcamento.FieldByName('MEIO_CREDIARIO').AsFloat > 0 then
    etipo.Caption := 'CREDIÁRIO'
  else if qrorcamento.FieldByName('MEIO_DINHEIRO').AsFloat > 0 then
    etipo.Caption := 'DINHEIRO'
  else if qrorcamento.FieldByName('MEIO_CHEQUEAV').AsFloat > 0 then
    etipo.Caption := 'CH.VISTA'
  else if qrorcamento.FieldByName('MEIO_CHEQUEAP').AsFloat > 0 then
    etipo.Caption := 'CH.PRAZO'
  else if qrorcamento.FieldByName('MEIO_CARTAOCRED').AsFloat > 0 then
    etipo.Caption := 'CARTÃO CRÉDITO'
  else if qrorcamento.FieldByName('MEIO_CARTAODEB').AsFloat > 0 then
    etipo.Caption := 'CARTÃO DÉBITO'
  else
  etipo.Caption := '';
  eretirado.Caption := qrorcamento.FieldByName('RETIRADO').AsString;
  lvenda_data.Caption := qrorcamento.FieldByName('DATA').AsString;
  lvenda.caption := qrorcamento.fieldbyname('codigo').asstring;
end;

procedure TfrmPrevenda.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  PageView2.ActivePageIndex := 1;
end;

procedure TfrmPrevenda.gridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    //
  end;
end;

procedure TfrmPrevenda.btroca_clienteClick(Sender: TObject);
begin
  if Application.messagebox(pchar('CLIENTE ATUAL: ' + qrorcamento.fieldbyname('cliente').asstring + #13 +
  'Deseja realmente fazer a troca desse cliente?'),'Atenção',mb_yesno+mb_iconquestion) = idYes then
    begin
      RESULTADO_PESQUISA1 := '';
      frmXloc_cliente := TfrmXloc_cliente.create(self);
      frmXloc_cliente.showmodal;
      IF RESULTADO_PESQUISA1 <> '' THEN
      BEGIN
        qrorcamento.Edit;
        qrorcamentoCODCLIENTE.AsString := RESULTADO_PESQUISA1;
        qrorcamento.Post;
        QUERY1.CLOSE;
        QUERY1.SQL.CLEAR;
        QUERY1.SQL.ADD('UPDATE C000075 SET CODCLIENTE = '''+RESULTADO_PESQUISA1+'''');
        QUERY1.SQL.ADD('WHERE numeronota = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
        QUERY1.SQL.Add('and data = :vdat');
        QUERY1.params.ParamByName('vdat').AsDateTime := qrorcamento.fieldbyname('data').AsDateTime;
        QUERY1.EXECSQL;
        frmmodulo.Conexao.Commit;
      END;
    end;
    wwDBGrid1.SetFocus;
end;

procedure TfrmPrevenda.rocarCliente1Click(Sender: TObject);
begin
  btroca_clienteClick(frmPrevenda);
end;

procedure TfrmPrevenda.bimprimirClick(Sender: TObject);
begin
  TIMER1.ENABLED := FALSE;
  if qrorcamento.RecordCount > 0 then
    begin
    frmprevenda_impressao := Tfrmprevenda_impressao.create(Self);
    frmprevenda_impressao.codigo := qrorcamento.fieldbyname('codigo').AsString;
    frmprevenda_impressao.showmodal;
    end
  else Application.messagebox('Não há informação para imprimir!','Atenção!',mb_ok+MB_ICONEXCLAMATION);
  TIMER1.ENABLED := TRUE;
end;

procedure TfrmPrevenda.Imprimir1Click(Sender: TObject);
begin
  bimprimirClick(frmPrevenda);
end;

procedure TfrmPrevenda.Relaodeatendimentos1Click(Sender: TObject);
begin
  PageView2.ActivePageIndex := 0;
end;

procedure TfrmPrevenda.PageView2Change(Sender: TObject);
begin
  if pageview2.ActivePageIndex = 1 then
  begin
    qrorcamento_produto.Close;
    qrorcamento_produto.SQL.Clear;
    qrorcamento_produto.SQL.Add('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.aliquota from c000075 orc,');
    qrorcamento_produto.sql.add('c000025 prod where orc.codproduto = prod.codigo and numeronota = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
    qrorcamento_produto.SQL.Add('and data = :vdat');
    qrorcamento_produto.params.ParamByName('vdat').AsDateTime := qrorcamento.fieldbyname('data').AsDateTime;
    qrorcamento_produto.Open;

    if qrorcamento_produto.RecordCount = 0 then
      begin
        Application.messagebox('Não Há Informação Para Visualizar!','Atenção!',mb_ok+MB_ICONEXCLAMATION);
        exit;
      end;
    if qrorcamento.RecordCount > 0 then
      begin
      if qrorcamento.FieldByName('MEIO_CONVENIO').AsFloat > 0 then
          etipo.Caption := 'CONVÊNIO'
      else if qrorcamento.FieldByName('MEIO_CREDIARIO').AsFloat > 0 then
          etipo.Caption := 'CREDIÁRIO'
      else if qrorcamento.FieldByName('MEIO_DINHEIRO').AsFloat > 0 then
          etipo.Caption := 'DINHEIRO'
      else if qrorcamento.FieldByName('MEIO_CHEQUEAV').AsFloat > 0 then
          etipo.Caption := 'CH.VISTA'
      else if qrorcamento.FieldByName('MEIO_CHEQUEAP').AsFloat > 0 then
          etipo.Caption := 'CH.PRAZO'
      else if qrorcamento.FieldByName('MEIO_CARTAOCRED').AsFloat > 0 then
          etipo.Caption := 'CARTÃO CRÉDITO'
      else if qrorcamento.FieldByName('MEIO_CARTAODEB').AsFloat > 0 then
          etipo.Caption := 'CARTÃO DÉBITO'
      else
          etipo.Caption := '';
     eretirado.Caption := qrorcamento.FieldByName('RETIRADO').AsString;
             Ltotal_cupom.Caption := FORMATFLOAT('###,###,##0.00',qrorcamento.FIELDBYNAME('TOTAL').ASFLOAT);
      end;
  end;
end;

procedure TfrmPrevenda.qrvenda_contasreceber2BeforePost(DataSet: TDataSet);
begin
  qrvenda_contasreceber.fieldbyname('terminal').asstring := numero_terminal;
end;

procedure TfrmPrevenda.AbrirGaveta1Click(Sender: TObject);
begin
  //
end;

procedure TfrmPrevenda.bver_limiteClick(Sender: TObject);
var texto : pansichar;
Data: TDateTime;
dia, mes, ano: Word;
begin
  CONTINUAR := TRUE;
  qrcontasreceber.close;
  qrcontasreceber.sql.clear;
  qrcontasreceber.sql.add('select SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1');
  qrcontasreceber.Open;

  limite_disponivel := FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - QRCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT;
  lcliente_limite.caption := formatfloat('###,###,##0.00',(FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - QRCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT));
  FRMMODULO.QRCONFIG.OPEN;
  IF FRMMODULO.QRCONFIG.FieldByName('VENDA_LIMITE_CLIENTE').ASINTEGER = 1 THEN
 { BEGIN
      if (frmmodulo.qrcliente.FieldByName('situacao').asinteger = 3)  then
      begin
//        texto := PWChar('Cliente com crédito bloqueado!, Deseja continuar?');
//        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONERROR) = idyes then
        begin
          if not frmPrincipal.autentica('Liberar venda',4) then
          begin
            application.messagebox('Desculpe! Seu acesso não foi autorizado!','Atenção',mb_ok+MB_ICONERROR);
            bitbtn1.SetFocus;
            CONTINUAR := FALSE;
            exit;
          end;
        end
        else
        begin
          bitbtn1.setfocus;
          CONTINUAR := FALSE;
          exit;
        end; }
     // end
   //   ELSE
   //   BEGIN
  //      if (frmmodulo.qrcliente.FieldByName('situacao').asinteger = 2)  then
   //     begin
//          texto := PWChar('Cliente com crédito em Observação!, Deseja continuar?');
  //        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONERROR) = idyes then
  //        begin
   //         if not frmPrincipal.autentica('Liberar venda',4) then
   //         begin
   //           application.messagebox('Desculpe! Seu acesso não foi autorizado!','Atenção',mb_ok+MB_ICONERROR);
   //           bitbtn1.SetFocus;
   //           CONTINUAR := FALSE;
   //           exit;
   //         end;
   //       end
    //      else
    //      begin
    //        bitbtn1.setfocus;
    //        CONTINUAR := FALSE;
    //        exit;
    //      end;
    //    END
//        ELSE
 //       BEGIN
   //       if (frmmodulo.qrcliente.FieldByName('situacao').asinteger = 5)  then
   //       begin
   //         texto := PWChar('Cliente com nome no SPC!, Deseja continuar?');
    //        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONERROR) = idyes then
    //        begin
    //          if not frmPrincipal.autentica('Liberar venda',4) then
    //          begin
    //            application.messagebox('Desculpe! Seu acesso não foi autorizado!','Atenção',mb_ok+MB_ICONERROR);
    //            bitbtn1.SetFocus;
    //            CONTINUAR := FALSE;
    //            exit;
    //          end;
    //        end
    //        else
    //        begin
    //          bitbtn1.setfocus;
    //          CONTINUAR := FALSE;
    //          exit;
    //        end;
    //      END;
    //    end;
    //  END;
 // end;
//     if FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT <> 0 then
  //    begin
 //       IF limite_disponivel <= 0 THEN
 //       BEGIN
//          texto := PWChar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+lcliente_limite.caption+'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
 //         if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
 //           begin
 //             if not frmPrincipal.autentica('Liberar venda',4) then
 //             begin
 //               application.messagebox('Desculpe! Seu acesso não foi autorizado!','Atenção',mb_ok+MB_ICONERROR);
 //               bitbtn1.SetFocus;
 //               CONTINUAR := FALSE;
 //               exit;
 //             end
 //             else
 //             begin
 //               exit;
 //             end;
 //           end
 //         else
 //           begin
 //             bitbtn1.SetFocus;
  //            CONTINUAR := FALSE;
  //            exit;
  //        end;
  //      END;
  //  END;
end;

end.

