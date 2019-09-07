unit venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, Collection, StdCtrls, ScrollView,
  CustomGridViewControl, CustomGridView, GridView, Grids, Wwdbigrd,
  Wwdbgrid, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Mask,
  Buttons, Menus, AdvGlowButton, AdvShapeButton,
  Vcl.Clipbrd, System.Math, dxGDIPlusClasses, JvExMask, JvToolEdit, JvBaseEdits,
  AdvSmoothPanel, CurvyControls, acPNG;

type
  Tfrmvenda = class(TForm)
    dsvenda_produto: TDataSource;
    PopupMenu1: TPopupMenu;
    IncluirItem1: TMenuItem;
    ExcluirItem1: TMenuItem;
    N1: TMenuItem;
    FinalizarVenda1: TMenuItem;
    CancelarVenda1: TMenuItem;
    qrproduto_serial: TZQuery;
    qrproduto_grade: TZQuery;
    qrapoio: TZQuery;
    EfetuarTroca1: TMenuItem;
    pficha: TPanel;
    FlatPanel57: TFlatPanel;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    wwDBGrid1: TwwDBGrid;
    Bevel4: TBevel;
    Panel5: TPanel;
    Label4: TLabel;
    lvenda_codigo: TLabel;
    Label1: TLabel;
    lvenda_data: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lcaixa_codigo: TLabel;
    lvendedor_codigo: TLabel;
    lvendedor_nome: TLabel;
    Label2: TLabel;
    lcliente_codigo: TLabel;
    lcliente_nome: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lcliente_limite: TLabel;
    lcliente_cpf: TLabel;
    LRETIRADO: TLabel;
    FlatPanel6: TFlatPanel;
    Label15: TLabel;
    FlatPanel9: TFlatPanel;
    FlatPanel10: TFlatPanel;
    pveiculo: TFlatPanel;
    FlatPanel2: TFlatPanel;
    Memo1: TMemo;
    Edit1: TEdit;
    Label9: TLabel;
    qrcliente: TZQuery;
    qrvenda_produto1: TZQuery;
    qrvenda_contasreceber: TZQuery;
    Label10: TLabel;
    lvenda_cupom: TLabel;
    qrvenda_produto: TZQuery;
    qrvenda_produtomix: TFloatField;
    QRORC: TZQuery;
    QRORCCODIGO: TWideStringField;
    QRORCCODPRODUTO: TWideStringField;
    QRORCLOTE: TWideStringField;
    QRORCCODORCAMENTO: TWideStringField;
    QRORCQTDE: TFloatField;
    QRORCCODNOTA: TWideStringField;
    QRORCCODVENDA: TWideStringField;
    qrproduto_gradeCODIGO: TWideStringField;
    qrproduto_gradeCODPRODUTO: TWideStringField;
    qrproduto_gradeNUMERACAO: TWideStringField;
    qrproduto_gradeCODBARRA: TWideStringField;
    qrproduto_gradeESTOQUE: TFloatField;
    qrproduto_gradeCOR: TWideStringField;
    O1: TMenuItem;
    qrapoio2: TZQuery;
    Image1: TImage;
    Image2: TImage;
    Panel1: TPanel;
    qrproduto_serialCODIGO: TWideStringField;
    qrproduto_serialCODPRODUTO: TWideStringField;
    qrproduto_serialSERIAL: TWideStringField;
    qrproduto_serialESTOQUE: TFloatField;
    qrproduto_serialCODCLIENTE: TWideStringField;
    qrproduto_serialPRECOCUSTO: TFloatField;
    qrproduto_serialPRECOVENDA: TFloatField;
    qrinventario_serialDATAVENDA: TDateField;
    qrproduto_serialSITUACAO: TIntegerField;
    qrproduto_serialCLIENTE: TWideStringField;
    qrproduto_serialCODNOTA: TWideStringField;
    qrproduto_serialCODITEM: TWideStringField;
    qrinventario_serialDATACOMPRA: TDateField;
    qrproduto_serialNUMERONOTA: TWideStringField;
    qrproduto_serialCODFORNECEDOR: TWideStringField;
    qrproduto_serialCODVENDA_ITEM: TWideStringField;
    qrproduto_serialFILTRO: TIntegerField;
    qrproduto_serialCODVENDA: TWideStringField;
    qrvenda_contasreceberPRESTACAO: TIntegerField;
    qrinventario_contasreceberVENCIMENTO: TDateField;
    qrvenda_contasreceberVALOR: TFloatField;
    qrvenda_contasreceberDOCUMENTO: TWideStringField;
    qrvenda_contasreceberTIPO: TWideStringField;
    qrvenda_contasreceberTERMINAL: TWideStringField;
    qrvenda_produtoITEM: TWideStringField;
    qrvenda_produtoCODPRODUTO: TWideStringField;
    qrvenda_produtoPRODUTO: TWideStringField;
    qrvenda_produtoCODBARRAS: TWideStringField;
    qrvenda_produtoSERIAL: TWideStringField;
    qrvenda_produtoNUMERACAO: TWideStringField;
    qrvenda_produtoQTDE: TFloatField;
    qrvenda_produtoUNITARIO: TFloatField;
    qrvenda_produtoTOTAL: TFloatField;
    qrvenda_produtoDESCONTO: TFloatField;
    qrvenda_produtoACRESCIMO: TFloatField;
    qrvenda_produtoCODGRADE: TWideStringField;
    qrvenda_produtoTIPO: TIntegerField;
    qrvenda_produtoALIQUOTA: TFloatField;
    qrvenda_produtoCST: TWideStringField;
    qrvenda_produtoTERMINAL: TWideStringField;
    qrvenda_produtoCODSUBGRUPO: TWideStringField;
    qrvenda_produtoPISCOFINS: TWideStringField;
    qrvenda_produtoSERIAL_CODINT: TWideStringField;
    qrvenda_produtoGRADE_CODINT: TWideStringField;
    qrvenda_produto1ITEM: TWideStringField;
    qrvenda_produto1CODPRODUTO: TWideStringField;
    qrvenda_produto1PRODUTO: TWideStringField;
    qrvenda_produto1CODBARRAS: TWideStringField;
    qrvenda_produto1SERIAL: TWideStringField;
    qrvenda_produto1NUMERACAO: TWideStringField;
    qrvenda_produto1QTDE: TFloatField;
    qrvenda_produto1UNITARIO: TFloatField;
    qrvenda_produto1TOTAL: TFloatField;
    qrvenda_produto1DESCONTO: TFloatField;
    qrvenda_produto1ACRESCIMO: TFloatField;
    qrvenda_produto1CODGRADE: TWideStringField;
    qrvenda_produto1TIPO: TIntegerField;
    qrvenda_produto1ALIQUOTA: TFloatField;
    qrvenda_produto1CST: TWideStringField;
    qrvenda_produto1TERMINAL: TWideStringField;
    qrvenda_produto1CODSUBGRUPO: TWideStringField;
    qrvenda_produto1PISCOFINS: TWideStringField;
    qrvenda_produto1SERIAL_CODINT: TWideStringField;
    qrvenda_produto1GRADE_CODINT: TWideStringField;
    Panel3: TPanel;
    bfinalizar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvSmoothPanel1: TAdvSmoothPanel;
    AdvSmoothPanel3: TAdvSmoothPanel;
    rtotal: TJvCalcEdit;
    Label11: TLabel;
    Label12: TLabel;
    ritem: TJvCalcEdit;
    rqtde: TJvCalcEdit;
    procedure bincluirClick(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bexcluirEnter(Sender: TObject);
    procedure bexcluirExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrvenda_contasreceberBeforeInsert(DataSet: TDataSet);
    procedure qrvenda_contasreceberBeforeEdit(DataSet: TDataSet);
    procedure qrvenda_contasreceberAfterPost(DataSet: TDataSet);
    procedure qrapoioBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrvenda_contasreceberBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrvenda_produto1CalcFields(DataSet: TDataSet);
    procedure O1Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmvenda: Tfrmvenda;
  selecionado: boolean;
  lancando_contasreceber: boolean;
  valor_prestacao: real;
  CONTINUAR: boolean;
  cupom_fiscal: boolean;
  nome_condicao: string;
  cod_apoio: integer;

  observ: string;

  finalizou: boolean;

  item: integer;
  numero_terminal: string;
  define_tag, usou_orcamento: integer;

implementation

uses modulo, venda_fechamento, venda_contasreceber,
  venda_troca, venda_fechamento_especial, venda_item_2, ecf, principal,
  venda_devolucao, orcamento_localizar, OpNatureza;

{$R *.dfm}

procedure Tfrmvenda.bincluirClick(Sender: TObject);
var
  item, qtde, total: real;
begin

  frmmodulo.qrconfig.Open;
  if frmmodulo.qrconfig.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
  begin
    if VENDA_VEICULO then
    begin
      application.messagebox
        ('Venda de veículo não pode conter outros produtos!', 'Atenção',
        mb_ok + mb_iconerror);
      exit;
    end;
  end;

  frmvenda_item_2 := tfrmvenda_item_2.create(self);
  if define_tag = 1 then
  begin
    frmvenda_item_2.Tag := 100;
  end;
  frmvenda_item_2.showmodal;

  qtde := 0;
  total := 0;
  item := 0;
  qrvenda_produto.First;
  while not qrvenda_produto.eof do
  begin
    qtde := qtde + qrvenda_produto.FieldByName('qtde').asfloat;
    total := total + qrvenda_produto.FieldByName('total').asfloat;
    item := item + 1;
    qrvenda_produto.next;
  end;
  ritem.Value := item;
  rqtde.Value := qtde;
  rtotal.Value := total;

  qrvenda_produto.Refresh;

end;

procedure Tfrmvenda.bfinalizarClick(Sender: TObject);
begin

  jafinalizado := FALSE;
  finalizou := FALSE;
  // difinir movimentacao
  // frmOpNatureza := TfrmOpNatureza.create(self);
  // frmOpNatureza.showmodal;

  if ECF_MODELO = 'URANO' then
    numero_cupomx := ecf_numero_cupom(ECF_MODELO);

  if frmmodulo.natoperacao = 'venda' then
  begin
    if rtotal.Value <= 0 then
    begin
      frmvenda_fechamento_especial :=
        tfrmvenda_fechamento_especial.create(self);
      frmvenda_fechamento_especial.rcredito.Value := (rtotal.Value) * (-1);
      frmvenda_fechamento_especial.showmodal;
    end
    else
    begin
      frmvenda_fechamento := tfrmvenda_fechamento.create(self);
      frmvenda_fechamento.Tag := 100;
      frmvenda_fechamento.showmodal;
    end;
  end
  else
  begin
    if rtotal.Value > 0 then
    begin
      frmvenda_fechamento := tfrmvenda_fechamento.create(self);
      frmvenda_fechamento.Tag := 100;
      frmvenda_fechamento.showmodal;
    end;

  end;

  if finalizou then
    close;

end;

procedure Tfrmvenda.bcancelarClick(Sender: TObject);
var
  atual, novo: real;
begin
  if application.messagebox('Confirma a cancelamento desta venda?', 'Atenção',
    mb_yesno + MB_ICONWARNING) = idyes then
  begin
    if ecf_impressao = 1 then
      ecf_cancela_cupom(ECF_MODELO, 'V');
    qrvenda_produto.First;

    while not qrvenda_produto.eof do
    begin
      if qrvenda_produto.FieldByName('tipo').asinteger = 1 then // serial
      begin
        frmmodulo.qrserial_produto.close;
        frmmodulo.qrserial_produto.sql.Clear;
        frmmodulo.qrserial_produto.sql.Add
          ('update c000022 set situacao = 1, cliente = null, datavenda = null, precovenda = 0 where codproduto = '''
          + qrvenda_produto.FieldByName('codproduto').asstring +
          ''' and serial = ''' + qrvenda_produto.FieldByName('serial')
          .asstring + '''');
        frmmodulo.qrserial_produto.ExecSQL;
      end;

      if qrvenda_produto.FieldByName('tipo').asinteger = 2 then // grade
      begin
        frmvenda.qrproduto_grade.close;
        frmvenda.qrproduto_grade.sql.Clear;
        frmvenda.qrproduto_grade.sql.Add
          ('select * from c000021 where codproduto = :codproduto and codigo = :codigo');
        frmvenda.qrproduto_grade.ParamByName('codigo').asstring :=
          qrapoio2.FieldByName('codgrade').asstring;
        frmvenda.qrproduto_grade.ParamByName('codproduto').asstring :=
          qrapoio2.FieldByName('CODPRODUTO').asstring;
        frmvenda.qrproduto_grade.Open;

        frmvenda.qrproduto_grade.Edit;
        frmvenda.qrproduto_grade.FieldByName('estoque').asfloat :=
          frmvenda.qrproduto_grade.FieldByName('estoque').asfloat +
          qrapoio2.FieldByName('QTDE').Value;
        frmvenda.qrproduto_grade.post;
      end;
      qrvenda_produto.next;
    end;

    frmmodulo.Conexao.commit;
    frmmodulo.ConexaoLocal.Rollback;
    close;
  end;

end;

procedure Tfrmvenda.bexcluirEnter(Sender: TObject);
begin
  wwDBGrid1.options := [dgColumnResize, dgTabs, dgRowSelect,
    dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap];
end;

procedure Tfrmvenda.bexcluirExit(Sender: TObject);
begin
  wwDBGrid1.options := [dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete,
    dgCancelOnExit, dgWordWrap];
end;

procedure Tfrmvenda.FormShow(Sender: TObject);
begin

  frmmodulo.qrconfig.Open;
  if frmmodulo.qrconfig.FieldByName('ALTERAR_UNITARIO').asinteger = 1 then
    ALTERA_UNITARIO := FALSE
  else
    ALTERA_UNITARIO := TRUE;

  VENDA_VEICULO := FALSE;

  item := 1;

  cupom_fiscal := FALSE;

  if movimento_venda = 1 then // inclusao;
  begin
    lancando_contasreceber := FALSE;

    frmmodulo.qrconfig.Open;
    numero_terminal := registro_terminal;
    if numero_terminal = '' then
    begin
      application.messagebox
        ('Não foi configurado o número do terminal! Esta venda será finalizada!',
        'Erro', mb_ok + mb_iconerror);
      close;
      exit;
    end;

    Sleep(100);

    qrvenda_produto.sql.Clear;
    qrvenda_produto.sql.Add('select * from cl00001 where terminal = ''' +
      numero_terminal + ''' ORDER BY ITEM');
    qrvenda_produto.Open;

    if qrvenda_produto.RecordCount > 0 then
    begin
      // ShowMessage('A');

      Sleep(100);
      qrvenda_produto.close;
      qrvenda_produto.sql.Clear;
      qrvenda_produto.sql.Add('delete from cl00001 where terminal = ''' +
        numero_terminal + '''');
      qrvenda_produto.ExecSQL;
    end;

    Sleep(100);
    qrvenda_produto.sql.Clear;
    qrvenda_produto.sql.Add('select * from cl00001 where terminal = ''' +
      numero_terminal + ''' ORDER BY ITEM');
    qrvenda_produto.Open;

    qrvenda_contasreceber.close;
    qrvenda_contasreceber.sql.Clear;
    qrvenda_contasreceber.sql.Add('delete from cl00002 where terminal = ''' +
      numero_terminal + '''');
    qrvenda_contasreceber.ExecSQL;

    rtotal.Value := 0;
    ritem.Value := 0;
    rqtde.Value := 0;

    application.ProcessMessages;

  end;

  qrcliente.close;
  qrcliente.sql.Clear;
  qrcliente.sql.Add('select * from c000007 where codigo = ''' +
    lcliente_codigo.Caption + '''');
  qrcliente.Open;

  bincluir.setfocus;

  qrvenda_contasreceberVALOR.DisplayFormat := mascara_valor;
  qrvenda_produtoUNITARIO.DisplayFormat := mascara_valor;
  qrvenda_produtoTOTAL.DisplayFormat := mascara_valor;
  qrvenda_produtoQTDE.DisplayFormat := mascara_qtde;

  if frmmodulo.natoperacao <> 'venda' then
    bitbtn1.Visible := FALSE;

  if self.Tag = 150 then // agenda
  begin
    if frmmodulo.natoperacao <> 'venda' then
      exit;
    // frmvenda_item_2.Tag := 100;
    define_tag := 1;
    frmmodulo.cod_orcamento := '';
    var_estoque := 0;
    frmmodulo.importando_orcamento := 1;

    begin
      qrapoio2.close;
      qrapoio2.sql.Clear;
      qrapoio2.sql.Add
        ('SELECT CODPRODUTO, SUM(QTDE) as quantidade FROM C000057 WHERE CODORCAMENTO = :CODORCAMENTO group by CODPRODUTO');
      qrapoio2.Params.ParamByName('CODORCAMENTO').asstring := '999999';
      qrapoio2.Open;
    end;

    // conferir estoque dos produtos no orcamento

    if qrapoio2.RecordCount <> 0 then
    begin
      qrapoio.close;
      qrapoio.sql.Clear;
      qrapoio.sql.Add
        ('select estoque_atual,codproduto from c000100 order by codproduto');
      qrapoio.Open;

      while not qrapoio2.eof do
      begin

        begin
          if qrapoio.Locate('codproduto', qrapoio2.FieldByName('CODPRODUTO')
            .asstring, [loCaseInsensitive]) then
          begin
            if qrapoio2.FieldByName('quantidade').Value >
              qrapoio.FieldByName('estoque_atual').Value then
              var_estoque := 1;
          end;
        end;
        qrapoio2.next
      end;
    end;

    // Existe produtos sem estoque no orcamento
    if var_estoque = 1 then
    begin
      // nao pode vender sem estoque Na tela de configuracoes da empresa?
      frmmodulo.qrconfig.Open;
      if frmmodulo.qrconfig.Fields.FieldByName('ESTOQUE_NEGATIVO').asinteger = 0
      then
      begin
        showmessage('Existe produtos sem estoque disponível neste Atendimento,'
          + #13 + 'E as configurações não permitem vendas sem estoque!!!');
        exit;
      end;
    end;

    // se estiver ok sem produtos com estoque negativo ou pode vender sem estoque
    // continua
    begin
      frmmodulo.qrproduto.close;
      frmmodulo.qrproduto.sql.Clear;
      frmmodulo.qrproduto.sql.Add('SELECT * FROM C000025');
      frmmodulo.qrproduto.Open;

      begin
        qrapoio2.close;
        qrapoio2.sql.Clear;
        qrapoio2.sql.Add
          ('SELECT * FROM C000057 WHERE CODORCAMENTO = :CODORCAMENTO');
        qrapoio2.Params.ParamByName('CODORCAMENTO').asstring := '999999';
        qrapoio2.Open;
      end;

      if qrapoio2.RecordCount <> 0 then
      begin
        while not qrapoio2.eof do
        begin
          // se for produto
          // if frmmodulo.qrorcamento_produtoUNIDADE.asstring <> 'OS' then
          begin
            frmvenda.qrvenda_produto.Insert;
            frmvenda.qrvenda_produto.FieldByName('codproduto').asstring :=
              qrapoio2.FieldByName('CODPRODUTO').asstring;
            frmvenda.qrvenda_produto.FieldByName('codbarras').asstring :=
              qrapoio2.FieldByName('CODBARRA').asstring;
            frmvenda.qrvenda_produto.FieldByName('produto').asstring :=
              qrapoio2.FieldByName('produto').asstring;
            frmvenda.qrvenda_produto.FieldByName('NUMERACAO').asstring :=
              qrapoio2.FieldByName('UNIDADE').asstring;
            frmvenda.qrvenda_produto.FieldByName('terminal').asstring :=
              numero_terminal;
            frmvenda.qrvenda_produto.FieldByName('qtde').Value :=
              qrapoio2.FieldByName('QTDE').Value;
            frmvenda.qrvenda_produto.FieldByName('unitario').Value :=
              qrapoio2.FieldByName('unitario').Value;
            frmvenda.qrvenda_produto.FieldByName('total').Value :=
              qrapoio2.FieldByName('total').Value;
            frmvenda.qrvenda_produto.FieldByName('desconto').Value :=
              qrapoio2.FieldByName('desconto').Value;
            frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 0;
            frmvenda.qrvenda_produto.FieldByName('item').asstring :=
              FRMPRINCIPAL.zerarcodigo(INTTOSTR(item), 3);

            if frmmodulo.qrproduto.Locate('CODIGO',
              qrapoio2.FieldByName('CODPRODUTO').asstring, [loCaseInsensitive])
            then
            begin

              if frmmodulo.qrproduto.FieldByName('piscofins').asstring = 'S'
              then
                frmvenda.qrvenda_produto.FieldByName('piscofins')
                  .asstring := 'S'
              else
                frmvenda.qrvenda_produto.FieldByName('piscofins')
                  .asstring := 'N';

              if frmmodulo.qrproduto.FieldByName('USA_GRADE').asinteger = 1 then
                serial_grade := 2;
              if frmmodulo.qrproduto.FieldByName('USA_SERIAL').asinteger = 1
              then
                serial_grade := 1;

            end;

            item := item + 1;

            if serial_grade = 1 then // serial
            begin
              frmvenda.qrvenda_produto.FieldByName('serial').asstring :=
                qrapoio2.FieldByName('serial').asstring;
              frmvenda.qrvenda_produto.FieldByName('codgrade').asstring :=
                qrapoio2.FieldByName('codgrade').asstring;
              frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 1;

              frmvenda.qrproduto_serial.close;
              frmvenda.qrproduto_serial.sql.Clear;
              frmvenda.qrproduto_serial.sql.Add
                ('select * from c000022 where codproduto = :codproduto and codigo = :codigo');
              frmvenda.qrproduto_serial.ParamByName('codigo').asstring :=
                qrapoio2.FieldByName('codgrade').asstring;
              frmvenda.qrproduto_serial.ParamByName('codproduto').asstring :=
                qrapoio2.FieldByName('CODPRODUTO').asstring;
              frmvenda.qrproduto_serial.Open;

              frmvenda.qrproduto_serial.Edit;
              frmvenda.qrproduto_serial.FieldByName('situacao').asinteger := 2;
              frmvenda.qrproduto_serial.FieldByName('cliente').asstring :=
                frmvenda.lcliente_nome.Caption;
              frmvenda.qrproduto_serial.FieldByName('codcliente').asstring :=
                frmvenda.lcliente_codigo.Caption;
              frmvenda.qrproduto_serial.FieldByName('DATAVENDA').asstring :=
                frmvenda.lvenda_data.Caption;
              frmvenda.qrproduto_serial.FieldByName('codvenda').asstring :=
                frmvenda.lvenda_codigo.Caption;
              frmvenda.qrproduto_serial.FieldByName('precovenda').asfloat :=
                qrapoio2.FieldByName('unitario').Value;
              frmvenda.qrproduto_serial.post;
            end;

            if serial_grade = 2 then // grade
            begin
              frmvenda.qrvenda_produto.FieldByName('serial').asstring :=
                qrapoio2.FieldByName('serial').asstring;
              frmvenda.qrvenda_produto.FieldByName('codgrade').asstring :=
                qrapoio2.FieldByName('codgrade').asstring;
              frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 2;

              frmvenda.qrproduto_grade.close;
              frmvenda.qrproduto_grade.sql.Clear;
              frmvenda.qrproduto_grade.sql.Add
                ('select * from c000021 where codproduto = :codproduto and codigo = :codigo');
              frmvenda.qrproduto_grade.ParamByName('codigo').asstring :=
                qrapoio2.FieldByName('codgrade').asstring;
              frmvenda.qrproduto_grade.ParamByName('codproduto').asstring :=
                qrapoio2.FieldByName('CODPRODUTO').asstring;
              frmvenda.qrproduto_grade.Open;

              frmvenda.qrproduto_grade.Edit;
              frmvenda.qrproduto_grade.FieldByName('estoque').asfloat :=
                frmvenda.qrproduto_grade.FieldByName('estoque').asfloat -
                qrapoio2.FieldByName('QTDE').Value;
              frmvenda.qrproduto_grade.post;
            end;

            frmvenda.qrvenda_produto.post;
            frmmodulo.Conexao.commit;

            frmvenda.ritem.Value := frmvenda.ritem.Value + 1;
            frmvenda.rqtde.Value := frmvenda.rqtde.Value +
              frmvenda.qrvenda_produto.FieldByName('qtde').asfloat;
            frmvenda.rtotal.Value := frmvenda.rtotal.Value +
              frmvenda.qrvenda_produto.FieldByName('total').asfloat;

          end;

          qrapoio2.next
        end;
      end;
    end;
  end;

  qrproduto_serialESTOQUE.DisplayFormat := mascara_qtde;
  qrproduto_serialPRECOCUSTO.DisplayFormat := mascara_valor;
  qrproduto_serialPRECOVENDA.DisplayFormat := mascara_valor;
  qrproduto_gradeESTOQUE.DisplayFormat := mascara_qtde;

  qrvenda_produtoQTDE.DisplayFormat := mascara_qtde;
  qrvenda_produtoUNITARIO.DisplayFormat := mascara_valor;
  qrvenda_produtoTOTAL.DisplayFormat := mascara_valor;
  qrvenda_produtoDESCONTO.DisplayFormat := mascara_valor;
  qrvenda_produtoACRESCIMO.DisplayFormat := mascara_valor;

  qrvenda_contasreceberVALOR.DisplayFormat := mascara_valor;

  qrvenda_produto1QTDE.DisplayFormat := mascara_qtde;
  qrvenda_produto1UNITARIO.DisplayFormat := mascara_valor;
  qrvenda_produto1TOTAL.DisplayFormat := mascara_valor;
  qrvenda_produto1DESCONTO.DisplayFormat := mascara_valor;
  qrvenda_produto1ACRESCIMO.DisplayFormat := mascara_valor;

end;

procedure Tfrmvenda.O1Click(Sender: TObject);
var
  contador_orc: integer;
begin
  if frmmodulo.natoperacao <> 'venda' then
    exit;
  // frmvenda_item_2.Tag := 100;
  define_tag := 1;
  frmmodulo.cod_orcamento := '';
  var_estoque := 0;
  frmmodulo.importando_orcamento := 1;

  // funcao para nao abrir o form de pesquisa de orcamentos se
  // nao tiver orcamento para o cliente selecionado

  frmmodulo.qrorcamento.close;
  frmmodulo.qrorcamento.sql.Clear;
  frmmodulo.qrorcamento.sql.Add
    ('select * from c000056 where codcliente = :codcliente and GERA_NF = :GERA_NF order by codigo');
  frmmodulo.qrorcamento.Params.ParamByName('GERA_NF').asinteger := 0;
  frmmodulo.qrorcamento.Params.ParamByName('codcliente').asstring :=
    frmvenda.lcliente_codigo.Caption;
  frmmodulo.qrorcamento.Open;
  // ShowMessage(frmvenda.lcliente_codigo.Caption);

  if frmmodulo.qrorcamento.RecordCount = 0 then
  begin
    showmessage('Não foi encontrado nenhum registro!');
    exit;
  end;

  frmorcamento_localizar := tfrmorcamento_localizar.create(self);
  frmorcamento_localizar.Tag := 100;
  frmorcamento_localizar.codcliente := frmvenda.lcliente_codigo.Caption;
  frmorcamento_localizar.showmodal;

  if frmmodulo.cod_orcamento = '' then
    exit;

  if frmmodulo.cod_orcamento <> '' then
  begin
    qrapoio2.close;
    qrapoio2.sql.Clear;
    qrapoio2.sql.Add
      ('SELECT CODPRODUTO, SUM(QTDE) as quantidade FROM C000057 WHERE CODORCAMENTO = :CODORCAMENTO group by CODPRODUTO');
    qrapoio2.Params.ParamByName('CODORCAMENTO').asstring :=
      frmmodulo.cod_orcamento;
    qrapoio2.Open;
  end;



  // conferir estoque dos produtos no orcamento

  if qrapoio2.RecordCount <> 0 then
  begin
    qrapoio.close;
    qrapoio.sql.Clear;
    qrapoio.sql.Add
      ('select estoque_atual,codproduto from c000100 order by codproduto');
    qrapoio.Open;

    while not qrapoio2.eof do
    begin

      begin
        if qrapoio.Locate('codproduto', qrapoio2.FieldByName('CODPRODUTO')
          .asstring, [loCaseInsensitive]) then
        begin
          if qrapoio2.FieldByName('quantidade').Value >
            qrapoio.FieldByName('estoque_atual').Value then
            var_estoque := 1;
        end;
      end;
      qrapoio2.next
    end;
  end;

  // Existe produtos sem estoque no orcamento
  if var_estoque = 1 then
  begin
    // nao pode vender sem estoque Na tela de configuracoes da empresa?
    frmmodulo.qrconfig.Open;
    if frmmodulo.qrconfig.Fields.FieldByName('ESTOQUE_NEGATIVO').asinteger = 0
    then
    begin
      showmessage('Existe produtos sem estoque disponível neste orçamento,' +
        #13 + 'E as configurações não permitem vendas sem estoque!!!');
      exit;
    end;
  end;

  // verificar a existencia de servicos e cancelar importacao
  if frmmodulo.cod_orcamento <> '' then
  begin

    frmmodulo.qrproduto.close;
    frmmodulo.qrproduto.sql.Clear;
    frmmodulo.qrproduto.sql.Add('SELECT * FROM C000025');
    frmmodulo.qrproduto.Open;

    qrapoio2.close;
    qrapoio2.sql.Clear;
    qrapoio2.sql.Add
      ('SELECT * FROM C000057 WHERE CODORCAMENTO = :CODORCAMENTO');
    qrapoio2.Params.ParamByName('CODORCAMENTO').asstring :=
      frmmodulo.cod_orcamento;
    qrapoio2.Open;

    if qrapoio2.RecordCount <> 0 then
    begin
      while not qrapoio2.eof do
      begin
        // se for servico
        if qrapoio2.FieldByName('UNIDADE').asstring = 'OS' then
        begin
          var_estoque := 1;
        end;
        qrapoio2.next
      end;
    end;

  end;

  // Existe os
  if var_estoque = 1 then
  begin
    // nao pode vender sem estoque Na tela de configuracoes da empresa?
    frmmodulo.qrconfig.Open;
    if frmmodulo.qrconfig.Fields.FieldByName('ESTOQUE_NEGATIVO').asinteger = 0
    then
    begin
      showmessage('Existe Serviços neste orçamento,' + #13 +
        'Favor retirar para prosseguir!!!');
      exit;
    end;
  end;

  // se estiver ok sem produtos com estoque negativo ou pode vender sem estoque
  // continua
  begin
    frmmodulo.qrproduto.close;
    frmmodulo.qrproduto.sql.Clear;
    frmmodulo.qrproduto.sql.Add('SELECT * FROM C000025');
    frmmodulo.qrproduto.Open;

    if frmmodulo.cod_orcamento <> '' then
    begin
      qrapoio2.close;
      qrapoio2.sql.Clear;
      qrapoio2.sql.Add
        ('SELECT * FROM C000057 WHERE CODORCAMENTO = :CODORCAMENTO');
      qrapoio2.Params.ParamByName('CODORCAMENTO').asstring :=
        frmmodulo.cod_orcamento;
      qrapoio2.Open;
    end;

    if qrapoio2.RecordCount <> 0 then
    begin
      while not qrapoio2.eof do
      begin
        // se for produto
        // if frmmodulo.qrorcamento_produtoUNIDADE.asstring <> 'OS' then
        begin
          frmvenda.qrvenda_produto.Insert;
          frmvenda.qrvenda_produto.FieldByName('codproduto').asstring :=
            qrapoio2.FieldByName('CODPRODUTO').asstring;
          frmvenda.qrvenda_produto.FieldByName('codbarras').asstring :=
            qrapoio2.FieldByName('CODBARRA').asstring;
          frmvenda.qrvenda_produto.FieldByName('produto').asstring :=
            qrapoio2.FieldByName('produto').asstring;
          frmvenda.qrvenda_produto.FieldByName('NUMERACAO').asstring :=
            qrapoio2.FieldByName('UNIDADE').asstring;
          frmvenda.qrvenda_produto.FieldByName('terminal').asstring :=
            numero_terminal;
          frmvenda.qrvenda_produto.FieldByName('qtde').Value :=
            qrapoio2.FieldByName('QTDE').Value;
          frmvenda.qrvenda_produto.FieldByName('unitario').Value :=
            qrapoio2.FieldByName('unitario').Value;
          frmvenda.qrvenda_produto.FieldByName('total').Value :=
            qrapoio2.FieldByName('total').Value;
          frmvenda.qrvenda_produto.FieldByName('desconto').Value :=
            qrapoio2.FieldByName('desconto').Value;
          frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 0;
          frmvenda.qrvenda_produto.FieldByName('item').asstring :=
            FRMPRINCIPAL.zerarcodigo(INTTOSTR(item), 3);

          if frmmodulo.qrproduto.Locate('CODIGO',
            qrapoio2.FieldByName('CODPRODUTO').asstring, [loCaseInsensitive])
          then
          begin

            if frmmodulo.qrproduto.FieldByName('piscofins').asstring = 'S' then
              frmvenda.qrvenda_produto.FieldByName('piscofins').asstring := 'S'
            else
              frmvenda.qrvenda_produto.FieldByName('piscofins').asstring := 'N';

            if frmmodulo.qrproduto.FieldByName('USA_GRADE').asinteger = 1 then
              serial_grade := 2;
            if frmmodulo.qrproduto.FieldByName('USA_SERIAL').asinteger = 1 then
              serial_grade := 1;

          end;

          item := item + 1;

          if serial_grade = 1 then // serial
          begin
            frmvenda.qrvenda_produto.FieldByName('serial').asstring :=
              qrapoio2.FieldByName('serial').asstring;
            frmvenda.qrvenda_produto.FieldByName('codgrade').asstring :=
              qrapoio2.FieldByName('codgrade').asstring;
            frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 1;

            frmvenda.qrproduto_serial.close;
            frmvenda.qrproduto_serial.sql.Clear;
            frmvenda.qrproduto_serial.sql.Add
              ('select * from c000022 where codproduto = :codproduto and codigo = :codigo');
            frmvenda.qrproduto_serial.ParamByName('codigo').asstring :=
              qrapoio2.FieldByName('codgrade').asstring;
            frmvenda.qrproduto_serial.ParamByName('codproduto').asstring :=
              qrapoio2.FieldByName('CODPRODUTO').asstring;
            frmvenda.qrproduto_serial.Open;

            frmvenda.qrproduto_serial.Edit;
            frmvenda.qrproduto_serial.FieldByName('situacao').asinteger := 2;
            frmvenda.qrproduto_serial.FieldByName('cliente').asstring :=
              frmvenda.lcliente_nome.Caption;
            frmvenda.qrproduto_serial.FieldByName('codcliente').asstring :=
              frmvenda.lcliente_codigo.Caption;
            frmvenda.qrproduto_serial.FieldByName('DATAVENDA').asstring :=
              frmvenda.lvenda_data.Caption;
            frmvenda.qrproduto_serial.FieldByName('codvenda').asstring :=
              frmvenda.lvenda_codigo.Caption;
            frmvenda.qrproduto_serial.FieldByName('precovenda').asfloat :=
              qrapoio2.FieldByName('unitario').Value;
            frmvenda.qrproduto_serial.post;
          end;

          if serial_grade = 2 then // grade
          begin
            frmvenda.qrvenda_produto.FieldByName('serial').asstring :=
              qrapoio2.FieldByName('serial').asstring;
            frmvenda.qrvenda_produto.FieldByName('codgrade').asstring :=
              qrapoio2.FieldByName('codgrade').asstring;
            frmvenda.qrvenda_produto.FieldByName('tipo').asinteger := 2;

            frmvenda.qrproduto_grade.close;
            frmvenda.qrproduto_grade.sql.Clear;
            frmvenda.qrproduto_grade.sql.Add
              ('select * from c000021 where codproduto = :codproduto and codigo = :codigo');
            frmvenda.qrproduto_grade.ParamByName('codigo').asstring :=
              qrapoio2.FieldByName('codgrade').asstring;
            frmvenda.qrproduto_grade.ParamByName('codproduto').asstring :=
              qrapoio2.FieldByName('CODPRODUTO').asstring;
            frmvenda.qrproduto_grade.Open;

            frmvenda.qrproduto_grade.Edit;
            frmvenda.qrproduto_grade.FieldByName('estoque').asfloat :=
              frmvenda.qrproduto_grade.FieldByName('estoque').asfloat -
              qrapoio2.FieldByName('QTDE').Value;
            frmvenda.qrproduto_grade.post;
          end;

          frmvenda.qrvenda_produto.post;
          frmmodulo.Conexao.commit;

          frmvenda.ritem.Value := frmvenda.ritem.Value + 1;
          frmvenda.rqtde.Value := frmvenda.rqtde.Value +
            frmvenda.qrvenda_produto.FieldByName('qtde').asfloat;
          frmvenda.rtotal.Value := frmvenda.rtotal.Value +
            frmvenda.qrvenda_produto.FieldByName('total').asfloat;

        end;

        qrapoio2.next
      end;
    end;
  end;

end;

procedure Tfrmvenda.bexcluirClick(Sender: TObject);
var
  vitem: integer;
begin

  if qrvenda_produto.FieldByName('tipo').asinteger = 21 then
  // troca saida serial
  begin
    showmessage
      ('Este produto é integrante de uma troca de serial! É necessário o cancelamento da venda para excluir esta troca!');
    exit;
  end;
  if qrvenda_produto.FieldByName('tipo').asinteger = 22 then
  // troca saida grade
  begin
    showmessage
      ('Este produto é integrante de uma troca com numeração (Grade)! É necessário o cancelamento da venda para excluir esta troca!');
    exit;
  end;
  if qrvenda_produto.FieldByName('tipo').asinteger = 11 then
  // troca entrada serial
  begin
    showmessage
      ('Este produto é integrante de uma troca de serial! É necessário o cancelamento da venda para excluir esta troca!');
    exit;
  end;
  if qrvenda_produto.FieldByName('tipo').asinteger = 12 then
  // troca entrada grade
  begin
    showmessage
      ('Este produto é integrante de uma troca com numeração (Grade)! É necessário o cancelamento da venda para excluir esta troca!');
    exit;
  end;

  if application.messagebox('Confirma a exclusão do registro?', 'Aviso',
    mb_yesno + MB_ICONWARNING) = idyes then
  begin

    if ecf_impressao = 1 then
    begin

      if ecf_cancela_item(ECF_MODELO, qrvenda_produto.FieldByName('item')
        .asstring) = 'ERRO' then
      begin
        application.messagebox('Houve erro ao cancelar o item!', 'Atenção',
          mb_ok + mb_iconerror);
      end
      else
      begin
        if qrvenda_produto.FieldByName('tipo').asinteger = 1 then // serial
        begin
          frmmodulo.qrserial_produto.close;
          frmmodulo.qrserial_produto.sql.Clear;
          frmmodulo.qrserial_produto.sql.Add
            ('update c000022 set situacao = 1, cliente = null, datavenda = null, precovenda = 0 where codproduto = '''
            + qrvenda_produto.FieldByName('codproduto').asstring +
            ''' and serial = ''' + qrvenda_produto.FieldByName('serial')
            .asstring + '''');
          frmmodulo.qrserial_produto.ExecSQL;
        end;
        if qrvenda_produto.FieldByName('tipo').asinteger = 2 then // grade
        begin
          frmmodulo.qrgrade_produto.close;
          frmmodulo.qrgrade_produto.sql.Clear;
          frmmodulo.qrgrade_produto.sql.Add
            ('update c000021 set estoque = estoque+' +
            qrvenda_produto.FieldByName('qtde').asstring + ' where codigo = '''
            + qrvenda_produto.FieldByName('codgrade').asstring + '''');
          frmmodulo.qrgrade_produto.ExecSQL;
        end;
      end;

      rtotal.Value := rtotal.Value - qrvenda_produto.FieldByName
        ('total').asfloat;
      ritem.Value := ritem.Value - 1;
      rqtde.Value := rqtde.Value - qrvenda_produto.FieldByName('qtde').asfloat;

      qrvenda_produto.Delete;
      qrvenda_produto.Open;

    end
    else
    begin

      if qrvenda_produto.FieldByName('tipo').asinteger = 1 then // serial
      begin
        frmmodulo.qrserial_produto.close;
        frmmodulo.qrserial_produto.sql.Clear;
        frmmodulo.qrserial_produto.sql.Add
          ('update c000022 set situacao = 1, cliente = null, datavenda = null, precovenda = 0 where codproduto = '''
          + qrvenda_produto.FieldByName('codproduto').asstring +
          ''' and serial = ''' + qrvenda_produto.FieldByName('serial')
          .asstring + '''');
        frmmodulo.qrserial_produto.ExecSQL;
      end;
      if qrvenda_produto.FieldByName('tipo').asinteger = 2 then // grade
      begin
        frmmodulo.qrgrade_produto.close;
        frmmodulo.qrgrade_produto.sql.Clear;
        frmmodulo.qrgrade_produto.sql.Add
          ('update c000021 set estoque = estoque+' + qrvenda_produto.FieldByName
          ('qtde').asstring + ' where codigo = ''' + qrvenda_produto.FieldByName
          ('codgrade').asstring + '''');
        frmmodulo.qrgrade_produto.ExecSQL;
      end;

      rtotal.Value := rtotal.Value - qrvenda_produto.FieldByName
        ('total').asfloat;
      ritem.Value := ritem.Value - 1;
      rqtde.Value := rqtde.Value - qrvenda_produto.FieldByName('qtde').asfloat;

      qrvenda_produto.Delete;
      qrvenda_produto.Open;

      vitem := 0;
      qrvenda_produto.First;
      while not qrvenda_produto.eof do
      begin
        vitem := vitem + 1;
        qrvenda_produto.Edit;
        qrvenda_produto.FieldByName('item').asstring :=
          FRMPRINCIPAL.zerarcodigo(INTTOSTR(vitem), 3);
        qrvenda_produto.post;
        qrvenda_produto.next;
      end;
      qrvenda_produto.Open;
    end;
  end;

  frmmodulo.qrconfig.Open;
  if frmmodulo.qrconfig.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
  begin
    if qrvenda_produto.RecordCount = 0 then
    begin
      VENDA_VEICULO := FALSE;
      pveiculo.Visible := FALSE;
    end;
  end;

end;

procedure Tfrmvenda.FormCreate(Sender: TObject);
begin
  qrvenda_produtoQTDE.DisplayFormat := mascara_qtde;
  rqtde.DisplayFormat := mascara_qtde;
  rqtde.DecimalPlaces := decimal_qtde;
  qrvenda_produtoUNITARIO.DisplayFormat := mascara_valor;

end;

procedure Tfrmvenda.qrvenda_contasreceberBeforeInsert(DataSet: TDataSet);
begin
  // valor_prestacao := 0;
end;

procedure Tfrmvenda.qrvenda_contasreceberBeforeEdit(DataSet: TDataSet);
begin
  // valor_prestacao := qrvenda_contasreceber.FieldByName('valor').asfloat;
end;

procedure Tfrmvenda.qrvenda_contasreceberAfterPost(DataSet: TDataSet);
begin

  { if lancando_contasreceber then
    begin

    frmvenda_contasreceber.rsoma.Value :=
    RoundTo(frmvenda_contasreceber.rsoma.Value +
    qrvenda_contasreceber.FieldByName('valor').asfloat - valor_prestacao,
    arredonda_valor);

    frmvenda_contasreceber.rdiferenca.Value :=
    // (frmvenda_fechamento.rCREDIARIO.value +frmvenda_fechamento.rCONVENIO.value )  comentar esta linha
    RoundTo(frmvenda_contasreceber.rsoma.Value, arredonda_valor) -
    RoundTo(frmvenda_contasreceber.rsoma2, arredonda_valor);

    if (frmvenda_contasreceber.rdiferenca.Value < (0.009)) and
    (frmvenda_contasreceber.rdiferenca.Value > (-0.009)) then
    frmvenda_contasreceber.rdiferenca.Value := 0;
    end; }

end;

procedure Tfrmvenda.qrapoioBeforePost(DataSet: TDataSet);
begin
  qrapoio.FieldByName('texto10').asstring :=
    FRMPRINCIPAL.zerarcodigo(INTTOSTR(cod_apoio), 6);
  cod_apoio := cod_apoio + 1;
end;

procedure Tfrmvenda.BitBtn1Click(Sender: TObject);
var
  item, qtde, total: real;
begin



  // frmvenda_troca := tfrmvenda_troca.create(self);
  // frmvenda_troca.showmodal;

  // qtde := 0; total := 0; item := 0;

  // qrvenda_produto.First;
  // while not qrvenda_produto.eof do
  // begin
  // qtde := qtde + qrvenda_produto.fieldbyname('qtde').asfloat;
  // total := total + qrvenda_produto.fieldbyname('total').asfloat;
  // item := item + 1;
  // qrvenda_produto.next;
  // end;
  // ritem.Value := item;
  // rqtde.Value := qtde;
  // rtotal.Value := total;

  // qrvenda_produto.Refresh;

  if frmmodulo.natoperacao <> 'venda' then
    exit;

  frmvenda_devolucao := tfrmvenda_devolucao.create(application);
  try
    frmvenda_devolucao.showmodal;
  finally
    frmvenda_devolucao.Release;
    frmvenda_devolucao := nil;
  end;

  qtde := 0;
  total := 0;
  item := 0;
  qrvenda_produto.First;
  while not qrvenda_produto.eof do
  begin
    qtde := qtde + qrvenda_produto.FieldByName('qtde').asfloat;
    total := total + qrvenda_produto.FieldByName('total').asfloat;
    item := item + 1;
    qrvenda_produto.next;
  end;
  ritem.Value := item;
  rqtde.Value := qtde;
  rtotal.Value := total;

  qrvenda_produto.Refresh;

  bincluir.setfocus;

end;

procedure Tfrmvenda.qrvenda_contasreceberBeforePost(DataSet: TDataSet);
begin
  qrvenda_contasreceber.FieldByName('TERMINAL').asstring := numero_terminal;
end;

procedure Tfrmvenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    qrvenda_produto.afterPost := nil;
    qrvenda_produto.BeforePost := nil;
    qrvenda_produto.OnCalcFields := nil;
    qrvenda_contasreceber.afterPost := nil;
    qrvenda_contasreceber.BeforeEdit := nil;
    qrvenda_contasreceber.BeforeInsert := nil;
    qrvenda_contasreceber.BeforePost := nil;
    qrapoio.BeforePost := nil;
  except
    on E: Exception do
      showmessage(E.ClassName + ' erro gerado, com mensagem : ' + E.Message);
  end;
  Action := cafree;
end;

procedure Tfrmvenda.qrvenda_produto1CalcFields(DataSet: TDataSet);
begin
  if rqtde.Value <> 0 then
  begin
    if qrvenda_produtoQTDE.Value <> 0 then
      qrvenda_produtomix.Value := qrvenda_produtoQTDE.Value * 100 / rqtde.Value;
  end;
end;

procedure Tfrmvenda.wwDBGrid1DblClick(Sender: TObject);
var
  valor_original, item, qtde, total: real;
  valor_novo: string;
begin
  valor_original := qrvenda_produto.FieldByName('UNITARIO').asfloat;
  valor_novo := inputbox('Alterar Valor', 'Digite o novo valor: ',
    FloatToStr(valor_original));
  qrvenda_produto.Edit;
  qrvenda_produto.FieldByName('UNITARIO').asfloat := StrToFloat(valor_novo);
  qrvenda_produto.FieldByName('TOTAL').asfloat :=
    qrvenda_produto.FieldByName('UNITARIO').asfloat *
    qrvenda_produto.FieldByName('QTDE').asfloat;
  qrvenda_produto.post;
  qtde := 0;
  total := 0;
  item := 0;
  qrvenda_produto.First;

  while not qrvenda_produto.eof do
  begin
    qtde := qtde + qrvenda_produto.FieldByName('qtde').asfloat;
    total := total + qrvenda_produto.FieldByName('total').asfloat;
    item := item + 1;
    qrvenda_produto.next;
  end;

  ritem.Value := item;
  rqtde.Value := qtde;
  rtotal.Value := total;

  qrvenda_produto.Refresh;

end;

end.
