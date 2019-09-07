unit cliente_financeiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, Wwdbigrd, Wwdbgrid, Collection,
  Buttons, ImgList, Mask, Menus, ComCtrls, JvSpin,
  PageView, Wwkeycb, frxDesgn, frxClass, frxDBSet, AdvGlowButton, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, UCBase, dxGDIPlusClasses,
  cyBaseSpeedButton, cySpeedButton, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, System.ImageList, JvToolEdit, JvExMask, JvBaseEdits;

type
  Tfrmcliente_financeiro = class(TForm)
    FlatPanel2: TFlatPanel;
    dscontasreceber: TDataSource;
    qrcontasreceber: TZQuery;
    ImageList1: TImageList;
    qrcontasrecebercliente: TStringField;
    qrcontasrecebercliente_situacao: TIntegerField;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    Bloquear1: TMenuItem;
    ColocaremObservao1: TMenuItem;
    Desbloquear1: TMenuItem;
    irarObservao1: TMenuItem;
    Relatrios1: TMenuItem;
    N1: TMenuItem;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    FlatPanel3: TFlatPanel;
    FlatPanel8: TFlatPanel;
    Panel1: TPanel;
    rvalor: TJvCalcEdit;
    rjuro: TJvCalcEdit;
    rtotal: TJvCalcEdit;
    FlatPanel4: TFlatPanel;
    FlatPanel5: TFlatPanel;
    FlatPanel6: TFlatPanel;
    FlatPanel7: TFlatPanel;
    FlatPanel1: TFlatPanel;
    GroupBox1: TGroupBox;
    rtodos: TRadioButton;
    rcliente: TRadioButton;
    rregiao: TRadioButton;
    GPESQUISA: TGroupBox;
    ecodigo: TEdit;
    bloc: TBitBtn;
    enome: TEdit;
    GroupBox3: TGroupBox;
    ratrazo: TRadioButton;
    rperiodo: TRadioButton;
    gdias: TGroupBox;
    rdias: TJvCalcEdit;
    UpDown1: TUpDown;
    gperiodo: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    FlatPanel10: TFlatPanel;
    GroupBox4: TGroupBox;
    RTODOS2: TRadioButton;
    RCLIENTE2: TRadioButton;
    RREGIAO2: TRadioButton;
    GPESQUISA2: TGroupBox;
    ECODIGO2: TEdit;
    BLOC2: TBitBtn;
    ENOME2: TEdit;
    GroupBox6: TGroupBox;
    RATRAZO2: TRadioButton;
    RPERIODO2: TRadioButton;
    GDIAS2: TGroupBox;
    RDIAS2: TJvCalcEdit;
    UpDown2: TUpDown;
    GPERIODO2: TGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    DateEdit3: TJvDateEdit;
    DateEdit4: TJvDateEdit;
    qrresumo: TZQuery;
    dsresumo: TDataSource;
    query: TZQuery;
    queryjuros: TFloatField;
    queryDIAS: TIntegerField;
    queryRESTANTE: TFloatField;
    qrresumototalgeral: TFloatField;
    loc: TwwIncrementalSearch;
    Label9: TLabel;
    FlatPanel11: TFlatPanel;
    Label13: TLabel;
    BitBtn4: TBitBtn;
    Panel2: TPanel;
    FlatPanel17: TFlatPanel;
    loc2: TwwIncrementalSearch;
    plegenda: THeaderView;
    HeaderView3: THeaderView;
    Image1: TImage;
    Image4: TImage;
    Image5: TImage;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    ltaxa: TLabel;
    lmulta: TLabel;
    lcarencia: TLabel;
    Label16: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    bfechar_legenda: TBitBtn;
    BitBtn1: TBitBtn;
    FlatPanel13: TFlatPanel;
    GroupBox5: TGroupBox;
    rtodos3: TRadioButton;
    rregiao3: TRadioButton;
    gpesquisa3: TGroupBox;
    ecodigo3: TEdit;
    bloc3: TBitBtn;
    enome3: TEdit;
    GroupBox8: TGroupBox;
    Label15: TLabel;
    Label17: TLabel;
    DateEdit5: TJvDateEdit;
    DateEdit6: TJvDateEdit;
    qrvenda: TZQuery;
    dsabc: TDataSource;
    qrabc: TZQuery;
    qrabcABC: TStringField;
    QUERY2: TZQuery;
    qrabcPERCENTUAL: TFloatField;
    wwDBGrid3: TwwDBGrid;
    FlatPanel14: TFlatPanel;
    Label18: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    fsresumo: TfrxDBDataset;
    bfiltro: TAdvGlowButton;
    button1: TAdvGlowButton;
    btotal: TAdvGlowButton;
    bfiltro2: TAdvGlowButton;
    bfiltro3: TAdvGlowButton;
    Bevel3: TBevel;
    Bevel4: TBevel;
    bliquidar: TAdvGlowButton;
    bincluir: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    bitbtn3: TAdvGlowButton;
    brelatorioS: TAdvGlowButton;
    PageSheet4: TPageSheet;
    Panel3: TPanel;
    bfiltro5: TAdvGlowButton;
    Bevel9: TBevel;
    wwDBGrid4: TwwDBGrid;
    qrinativo: TZQuery;
    dsinativo: TDataSource;
    fscliente_inativo: TfrxDBDataset;
    Label1: TLabel;
    rdias_inativo: TJvCalcEdit;
    Label19: TLabel;
    PageView2: TPageView;
    PageSheet5: TPageSheet;
    PageSheet6: TPageSheet;
    PageSheet7: TPageSheet;
    PageSheet8: TPageSheet;
    wwDBGrid2: TwwDBGrid;
    PageSheet9: TPageSheet;
    qrresumo_geral: TZQuery;
    grid5: TwwDBGrid;
    dsresumo_geral: TDataSource;
    graf_venda: TChart;
    Series1: TBarSeries;
    qrresumo_geralTotal: TFloatField;
    rTotalResumo: TJvCalcEdit;
    bTotalizaResumo: TAdvGlowButton;
    RelaoDetalhada1: TMenuItem;
    ResumoporCliente1: TMenuItem;
    CurvaABC1: TMenuItem;
    Compras1: TMenuItem;
    UCControls1: TUCControls;
    qrcontasreceberCODIGO: TWideStringField;
    qrcontasreceberCODVENDA: TWideStringField;
    qrcontasreceberCODVENDEDOR: TWideStringField;
    qrcontasreceberCODCAIXA: TWideStringField;
    qrcontasreceberCODCLIENTE: TWideStringField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberDOCUMENTO: TWideStringField;
    qrcontasreceberTIPO: TWideStringField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceberNOSSONUMERO: TWideStringField;
    qrcontasreceberCODREGIAO: TWideStringField;
    qrcontasreceberCODCEDENTE: TWideStringField;
    qrcontasreceberP5: TFloatField;
    qrcontasreceberP3: TFloatField;
    qrcontasreceberNUMERO_CUPOM: TWideStringField;
    qrcontasreceberVALOR_VENDA: TFloatField;
    qrcontasreceberCOD_VENDA_ORIGINAL: TWideStringField;
    qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField;
    qrcontasreceberEMAIL_ENVIADO: TIntegerField;
    qrcontasreceberNOME: TWideStringField;
    qrcontasreceberCODIGO_1: TWideStringField;
    qrabcCODIGO: TWideStringField;
    qrabcTEXTO1: TWideStringField;
    qrabcTEXTO2: TWideStringField;
    qrabcTEXTO3: TWideStringField;
    qrabcVALOR1: TFloatField;
    qrabcVALOR2: TFloatField;
    qrabcVALOR3: TFloatField;
    qrabcCAMPO1: TWideStringField;
    qrabcCAMPO2: TWideStringField;
    qrabcCAMPO3: TWideStringField;
    qrabcCAMPO4: TWideStringField;
    qrabcVALOR4: TFloatField;
    queryCODIGO: TWideStringField;
    queryCODVENDA: TWideStringField;
    queryCODVENDEDOR: TWideStringField;
    queryCODCAIXA: TWideStringField;
    queryCODCLIENTE: TWideStringField;
    queryVALOR_ORIGINAL: TFloatField;
    queryVALOR_PAGO: TFloatField;
    queryVALOR_JUROS: TFloatField;
    queryVALOR_ATUAL: TFloatField;
    queryVALOR_DESCONTO: TFloatField;
    queryDOCUMENTO: TWideStringField;
    queryTIPO: TWideStringField;
    querySITUACAO: TIntegerField;
    queryFILTRO: TIntegerField;
    queryNOSSONUMERO: TWideStringField;
    queryCODREGIAO: TWideStringField;
    queryCODCEDENTE: TWideStringField;
    queryP5: TFloatField;
    queryP3: TFloatField;
    queryNUMERO_CUPOM: TWideStringField;
    queryVALOR_VENDA: TFloatField;
    queryCOD_VENDA_ORIGINAL: TWideStringField;
    queryVALOR_ATUAL_ANTERIOR: TFloatField;
    queryEMAIL_ENVIADO: TIntegerField;
    qrcontasreceberSITUACAO2: TIntegerField;
    wwDBGrid1: TwwDBGrid;
    qrcontasreceberjuros: TFloatField;
    qrcontasreceberDIAS: TIntegerField;
    qrcontasreceberRESTANTE: TFloatField;
    Panel5: TPanel;
    btfinanceiro001: TAdvGlowButton;
    btfinanceiro002: TAdvGlowButton;
    btfinanceiro003: TAdvGlowButton;
    btfinanceiro004: TAdvGlowButton;
    qrcontasreceberDATA_VENCIMENTO: TDateField;
    qrcontasreceberDATA_EMISSAO: TDateField;
    qrcontasreceberDATA_PAGAMENTO: TDateField;
    queryDATA_EMISSAO: TDateField;
    queryDATA_VENCIMENTO: TDateField;
    queryDATA_PAGAMENTO: TDateField;
    queryHISTORICO: TWideStringField;
    queryINSTRUCAO: TWideStringField;
    queryDIRBOLETO: TWideStringField;
    qrresumoNOME: TWideStringField;
    qrresumoCODIGO: TWideStringField;
    qrresumoSITUACAO: TIntegerField;
    qrresumoTOTAL: TExtendedField;
    qrresumo_geralNOME: TWideStringField;
    qrresumo_geralCODIGO: TWideStringField;
    qrresumo_geralSITUACAO: TIntegerField;
    qrresumo_geralCREDIARIO: TExtendedField;
    qrresumo_geralCHEQUE: TExtendedField;
    qrresumo_geralFINANCEIRA: TExtendedField;
    procedure qrcontasreceberCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure bfechar_legendaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure BFILTROClick(Sender: TObject);
    procedure rtodosClick(Sender: TObject);
    procedure rclienteClick(Sender: TObject);
    procedure rregiaoClick(Sender: TObject);
    procedure ratrazoClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure rdiasChange(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure rperiodoClick(Sender: TObject);
    procedure rdiasKeyPress(Sender: TObject; var Key: Char);
    procedure rdiasEnter(Sender: TObject);
    procedure rdiasExit(Sender: TObject);
    procedure ecodigoEnter(Sender: TObject);
    procedure ecodigoExit(Sender: TObject);
    procedure blocClick(Sender: TObject);
    procedure ecodigoKeyPress(Sender: TObject; var Key: Char);
    procedure bliquidarClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure brelatoriosClick(Sender: TObject);
    procedure BLOC2Click(Sender: TObject);
    procedure ECODIGO2Exit(Sender: TObject);
    procedure RATRAZO2Click(Sender: TObject);
    procedure RPERIODO2Click(Sender: TObject);
    procedure DateEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure RDIAS2KeyPress(Sender: TObject; var Key: Char);
    procedure BFILTRO2Click(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure RDIAS2Exit(Sender: TObject);
    procedure RDIAS2Change(Sender: TObject);
    procedure RTODOS2Click(Sender: TObject);
    procedure RCLIENTE2Click(Sender: TObject);
    procedure RREGIAO2Click(Sender: TObject);
    procedure qrresumoCalcFields(DataSet: TDataSet);
    procedure queryCalcFields(DataSet: TDataSet);
    procedure locEnter(Sender: TObject);
    procedure loc2Enter(Sender: TObject);
    procedure rtodos3Click(Sender: TObject);
    procedure rregiao3Click(Sender: TObject);
    procedure bloc3Click(Sender: TObject);
    procedure ecodigo3Exit(Sender: TObject);
    procedure DateEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure qrabcCalcFields(DataSet: TDataSet);
    procedure wwDBGrid3DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure bfiltro3Click(Sender: TObject);
    procedure btotalClick(Sender: TObject);
    procedure bfiltro5Click(Sender: TObject);
    procedure rdias_inativoKeyPress(Sender: TObject; var Key: Char);
    procedure PageView2Change(Sender: TObject);
    procedure qrresumo_geralCalcFields(DataSet: TDataSet);
    procedure bTotalizaResumoClick(Sender: TObject);
    procedure RelaoDetalhada1Click(Sender: TObject);
    procedure ResumoporCliente1Click(Sender: TObject);
    procedure CurvaABC1Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure btfinanceiro001Click(Sender: TObject);
    procedure btfinanceiro002Click(Sender: TObject);
    procedure btfinanceiro003Click(Sender: TObject);
    procedure btfinanceiro004Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcliente_financeiro: Tfrmcliente_financeiro;
  juro_carencia: integer;
  juro_taxa, juro_multa, total_original, total_juros: real;
  filtrado: boolean;

  TOTAL_VENDA: real;

  yjuro, yvalor, ytotal: real;
    const
   sc_DragMove = $f012;
implementation

uses modulo, principal, contasreceber_juros, loc_cliente, loc_regiao,
  lista_cliente_financeiro, processo, xloc_cliente;

{$R *.dfm}

procedure Tfrmcliente_financeiro.qrcontasreceberCalcFields(DataSet: TDataSet);
var
  valor, juro, multa: real;
  dias: integer;
begin

  try
    valor := qrcontasreceber.fieldbyname('valor_ATUAL').asfloat;

    qrcontasreceber.fieldbyname('restante').asfloat := 0;

    if qrcontasreceber.fieldbyname('situacao').asinteger = 1 then
    begin
      if valor > 0 then
      begin
        if qrcontasreceber.fieldbyname('data_pagamento').asfloat > 0 then
        // puxar pelo ultimo pagamento
        begin
          if qrcontasreceber.fieldbyname('data_pagamento').asfloat >
            qrcontasreceber.fieldbyname('data_vencimento').asdatetime then
            dias := trunc(date - qrcontasreceber.fieldbyname('data_pagamento')
              .asdatetime)
          else
            dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento')
              .asdatetime);
        end
        else
        begin // puxar pela data de vencimento
          dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento')
            .asdatetime);

          // soh cobrar a multa se nao tiver nenhum pagamento!
          if juro_multa > 0 then
          begin
            multa := (valor * (juro_multa / 100));
          end;
        end;

        if juro_taxa <> 0 then
        begin
          if (dias - juro_carencia) > 0 then
          begin
            juro := (valor * ((juro_taxa / 100) * (dias { - juro_carencia } )));
            valor := valor + juro + multa;
          end;
        end;
        if (dias - juro_carencia) > 0 then
        begin
          qrcontasreceber.fieldbyname('dias').asinteger := dias;
          qrcontasreceber.fieldbyname('restante').asfloat := valor;
          qrcontasreceber.fieldbyname('juros').asfloat := juro + multa;
        end
        else
        begin
          qrcontasreceber.fieldbyname('restante').asfloat :=
            qrcontasreceber.fieldbyname('valor_atual').asfloat;
        end;

      end
      else
      begin
        qrcontasreceber.fieldbyname('dias').asinteger := 0;
        qrcontasreceber.fieldbyname('restante').asfloat := valor;
        qrcontasreceber.fieldbyname('juros').asfloat := 0;
        qrcontasreceber.fieldbyname('situacao2').asinteger := 5;

      end;
    end
    else
    begin
      qrcontasreceber.fieldbyname('dias').asinteger := 0;
      qrcontasreceber.fieldbyname('restante').asfloat := valor;
      qrcontasreceber.fieldbyname('juros').asfloat := 0;
    end;

  except
    SHOWMESSAGE('Processamento interrompido!');
  end;
end;

procedure Tfrmcliente_financeiro.FormShow(Sender: TObject);
begin

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.SQL.clear;
  frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome ');
  frmmodulo.qrcliente.Open;
  frmmodulo.qrcliente.IndexFieldNames := 'NOME';

  qrcontasreceber.close;

end;

procedure Tfrmcliente_financeiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcliente_financeiro.FormCreate(Sender: TObject);
begin
  gdias.Top := 13;
  gperiodo.Top := 13;

  frmmodulo.qrconfig.Open;
  juro_carencia := frmmodulo.qrconfig.fieldbyname('CONTASRECEBER_CARENCIA')
    .asinteger;
  juro_taxa := frmmodulo.qrconfig.fieldbyname
    ('CONTASRECEBER_TAXAJUROS').asfloat;
  juro_multa := frmmodulo.qrconfig.fieldbyname('CONTASRECEBER_multa').asfloat;
end;

procedure Tfrmcliente_financeiro.button1Click(Sender: TObject);
begin
  ltaxa.Caption := formatfloat('###,###,##0.00', juro_taxa) + '%';
  lmulta.Caption := formatfloat('###,###,##0.00', juro_multa) + '%';
  lcarencia.Caption := inttostr(juro_carencia) + ' dia(s)';

  plegenda.visible := true;
  bfechar_legenda.SetFocus;
end;

procedure Tfrmcliente_financeiro.bfechar_legendaClick(Sender: TObject);
begin
  plegenda.visible := false;
end;

procedure Tfrmcliente_financeiro.BitBtn1Click(Sender: TObject);
begin
  if not frmPrincipal.autentica('Alterar Juros', 4) then
  begin
    application.messagebox('Desculpe! Seu acesso não foi autorizado!', 'Aviso',
      mb_ok + MB_ICONERROR);
    exit;
  end
  else
  begin
    frmcontasreceber_juros := tfrmcontasreceber_juros.create(self);
    frmcontasreceber_juros.showmodal;

    ltaxa.Caption := formatfloat('###,###,##0.00', juro_taxa) + '%';
    lmulta.Caption := formatfloat('###,###,##0.00', juro_multa) + '%';
    lcarencia.Caption := inttostr(juro_carencia) + ' dia(s)';

    if PageView1.ActivePageIndex = 0 then
    begin
      qrcontasreceber.refresh;
      BFILTROClick(frmcliente_financeiro);
    end;
    if PageView1.ActivePageIndex = 1 then
    begin
      qrresumo.refresh;
      BFILTRO2Click(frmcliente_financeiro);
    end;

  end;
end;

procedure Tfrmcliente_financeiro.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcliente_financeiro.AdvSmoothExpanderPanel1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcliente_financeiro.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcliente_financeiro.BFILTROClick(Sender: TObject);
var
  ordem: string;
begin

  if RadioButton1.checked then
    ordem := ' cr.data_vencimento ';
  if RadioButton2.checked then
    ordem := ' cliente.nome, cr.data_vencimento ';

  yvalor := 0;
  yjuro := 0;
  ytotal := 0;

  qrcontasreceber.close;
  qrcontasreceber.SQL.clear;

  if rtodos.checked then
  begin
    if ratrazo.checked then
    begin
      qrcontasreceber.SQL.add
        ('select cr.*, cliente.nome, cliente.codigo from c000049 cr, c000007 cliente where cr.codcliente = cliente.codigo and cr.data_vencimento <= :datai and cr.situacao = 1 and valor_atual > 0 order by '
        + ordem);
      qrcontasreceber.Params.ParamByName('datai').asdatetime :=
        (date - rdias.value);
    end;
    if rperiodo.checked then
    begin
      qrcontasreceber.SQL.add
        ('select cr.*, cliente.nome, cliente.codigo from c000049 cr, c000007 cliente where cr.codcliente = cliente.codigo and cr.data_vencimento >= :datai and cr.data_vencimento <= :dataf and cr.situacao = 1 and valor_atual > 0 order by '
        + ordem);
      qrcontasreceber.Params.ParamByName('datai').asdatetime := DateEdit1.date;
      qrcontasreceber.Params.ParamByName('dataf').asdatetime := DateEdit2.date;
    end;
  end;
  if rcliente.checked then
  begin
    if ratrazo.checked then
    begin
      qrcontasreceber.SQL.add
        ('select cr.*, cliente.nome, cliente.codigo from c000049 cr, c000007 cliente where cr.codcliente = cliente.codigo and cr.codcliente = '''
        + ecodigo.text +
        ''' and cr.data_vencimento <= :datai and cr.situacao = 1 and valor_atual > 0 order by '
        + ordem);
      qrcontasreceber.Params.ParamByName('datai').asdatetime :=
        (date - rdias.value);
    end;
    if rperiodo.checked then
    begin
      qrcontasreceber.SQL.add
        ('select cr.*, cliente.nome, cliente.codigo from c000049 cr, c000007 cliente where cr.codcliente = cliente.codigo and cr.codcliente = '''
        + ecodigo.text +
        ''' and cr.data_vencimento >= :datai and cr.data_vencimento <= :dataf and cr.situacao = 1 and valor_atual > 0 order by '
        + ordem);
      qrcontasreceber.Params.ParamByName('datai').asdatetime := DateEdit1.date;
      qrcontasreceber.Params.ParamByName('dataf').asdatetime := DateEdit2.date;
    end;
  end;
  if rregiao.checked then
  begin
    if ratrazo.checked then
    begin
      qrcontasreceber.SQL.add
        ('select cr.*, cliente.nome, cliente.codigo from c000049 cr, c000007 cliente where cr.codcliente = cliente.codigo and cliente.codregiao = '''
        + ecodigo.text +
        ''' and cr.data_vencimento <= :datai and cr.situacao = 1 and valor_atual > 0 order by '
        + ordem);
      qrcontasreceber.Params.ParamByName('datai').asdatetime :=
        (date - rdias.value);
    end;
    if rperiodo.checked then
    begin
      qrcontasreceber.SQL.add
        ('select cr.*, cliente.nome, cliente.codigo from c000049 cr, c000007 cliente where cr.codcliente = cliente.codigo and cliente.codregiao = '''
        + ecodigo.text +
        ''' and cr.data_vencimento >= :datai and cr.data_vencimento <= :dataf and cr.situacao = 1 and valor_atual > 0 order by '
        + ordem);
      qrcontasreceber.Params.ParamByName('datai').asdatetime := DateEdit1.date;
      qrcontasreceber.Params.ParamByName('dataf').asdatetime := DateEdit2.date;
    end;

  end;
  qrcontasreceber.Open;
  btotalClick(frmcliente_financeiro);

end;

procedure Tfrmcliente_financeiro.rtodosClick(Sender: TObject);
begin
  GPESQUISA.visible := false;
end;

procedure Tfrmcliente_financeiro.rclienteClick(Sender: TObject);
begin
  GPESQUISA.visible := true;
  GPESQUISA.Caption := 'Selecionar Cliente';
  ecodigo.text := '';
  enome.text := '';
end;

procedure Tfrmcliente_financeiro.rregiaoClick(Sender: TObject);
begin
  GPESQUISA.visible := true;
  GPESQUISA.Caption := 'Selecionar Região';
  ecodigo.text := '';
  enome.text := '';

end;

procedure Tfrmcliente_financeiro.ratrazoClick(Sender: TObject);
begin
  gdias.visible := true;
  gperiodo.visible := false;
end;

procedure Tfrmcliente_financeiro.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  rdias.value := UpDown1.Position;
  if rdias.value > 1 then
    rdias.DisplayFormat := '###,##0 dias'
  else
    rdias.DisplayFormat := '###,##0 dia';
end;

procedure Tfrmcliente_financeiro.rdiasChange(Sender: TObject);
begin
  try
    if rdias.value > 1 then
      rdias.DisplayFormat := '###,##0 dias'
    else
      rdias.DisplayFormat := '###,##0 dia';
  except
  end;
end;

procedure Tfrmcliente_financeiro.DateEdit1Enter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
end;

procedure Tfrmcliente_financeiro.DateEdit2Enter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
end;

procedure Tfrmcliente_financeiro.DateEdit1Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
end;

procedure Tfrmcliente_financeiro.DateEdit2Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
end;

procedure Tfrmcliente_financeiro.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcliente_financeiro.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bfiltro.SetFocus;
end;

procedure Tfrmcliente_financeiro.rperiodoClick(Sender: TObject);
begin
  gdias.visible := false;
  gperiodo.visible := true;
end;

procedure Tfrmcliente_financeiro.rdiasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bfiltro.SetFocus;
end;

procedure Tfrmcliente_financeiro.rdiasEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
end;

procedure Tfrmcliente_financeiro.rdiasExit(Sender: TObject);
begin
  UpDown1.Position := trunc(rdias.value);
  TEdit(Sender).color := clwindow;
end;

procedure Tfrmcliente_financeiro.ecodigoEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
end;

procedure Tfrmcliente_financeiro.ecodigoExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  ecodigo.text := frmPrincipal.zerarcodigo(ecodigo.text, 6);
  if ecodigo.text <> '000000' then
  begin

    if rcliente.checked then
    begin
      if not frmPrincipal.Locregistro(frmmodulo.qrcliente, ecodigo.text,
        'codigo') then
        blocClick(frmcliente_financeiro)
      else
      begin
        ecodigo.text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
        enome.text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
        bfiltro.SetFocus;
      end;
    end;

    if rregiao.checked then
    begin
      if not frmPrincipal.Locregistro(frmmodulo.qrregiao, ecodigo.text, 'codigo')
      then
        blocClick(frmcliente_financeiro)
      else
      begin
        ecodigo.text := frmmodulo.qrregiao.fieldbyname('codigo').asstring;
        enome.text := frmmodulo.qrregiao.fieldbyname('regiao').asstring;
        bfiltro.SetFocus;
      end;
    end;
  end
  else
  begin
    bloc.SetFocus;
  end;
end;

procedure Tfrmcliente_financeiro.blocClick(Sender: TObject);
begin
  if rcliente.checked then
  begin
    resultado_pesquisa1 := '';
    frmxloc_cliente := tfrmxloc_cliente.create(self);
    frmxloc_cliente.showmodal;
    if resultado_pesquisa1 <> '' then
    begin
      ecodigo.text := resultado_pesquisa1;
      enome.text := resultado_pesquisa2;
    end;
  end;
  if rregiao.checked then
  begin
    frmloc_regiao := tfrmloc_regiao.create(self);
    frmloc_regiao.showmodal;
    ecodigo.text := frmmodulo.qrregiao.fieldbyname('codigo').asstring;
    enome.text := frmmodulo.qrregiao.fieldbyname('regiao').asstring;
  end;
  bfiltro.SetFocus;
end;

procedure Tfrmcliente_financeiro.ecodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcliente_financeiro.bliquidarClick(Sender: TObject);
begin
  if not frmPrincipal.autentica('Bloquear Clientes', 4) then
  begin
    application.messagebox('Desculpe! Seu acesso não foi autorizado!', 'Aviso',
      mb_ok + MB_ICONERROR);
    exit;
  end
  else
  begin
    if application.messagebox
      ('Tem certeza que deseja bloquear os clientes de todas as prestações selecionadas?',
      'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then
    begin

      qrcontasreceber.first;
      while not qrcontasreceber.eof do
      begin

        frmmodulo.qrcliente.close;
        frmmodulo.qrcliente.SQL.clear;
        frmmodulo.qrcliente.SQL.add
          ('update c000007 set situacao = 3 where codigo = ''' +
          qrcontasreceber.fieldbyname('codcliente').asstring + '''');
        frmmodulo.qrcliente.ExecSQL;
        frmPrincipal.logUC('Bloqueou Clientes: ' + qrcontasreceber.fieldbyname
          ('codcliente').asstring, 3);

        qrcontasreceber.next;
      end;

      frmmodulo.qrcliente.close;
      frmmodulo.qrcliente.SQL.clear;
      frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome ');
      frmmodulo.qrcliente.Open;
      frmmodulo.qrcliente.IndexFieldNames := 'NOME';
      frmmodulo.Conexao.Commit;
      qrcontasreceber.refresh;
      filtrado := false;
      SHOWMESSAGE('Processamento concluído');
    end;
  end;

end;

procedure Tfrmcliente_financeiro.bincluirClick(Sender: TObject);
begin
  if not frmPrincipal.autentica('Colocar Observação', 4) then
  begin
    application.messagebox('Desculpe! Seu acesso não foi autorizado!', 'Aviso',
      mb_ok + MB_ICONERROR);
    exit;
  end
  else
  begin
    if application.messagebox
      ('Tem certeza que deseja colocar observações nos clientes de todas as prestações selecionadas?',
      'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then
    begin
      qrcontasreceber.first;
      while not qrcontasreceber.eof do
      begin

        frmmodulo.qrcliente.close;
        frmmodulo.qrcliente.SQL.clear;
        frmmodulo.qrcliente.SQL.add('update c000007 set situacao = 2, obs4 = '''
          + 'Cliente com prestações em Atrazo!' + ''' where codigo = ''' +
          qrcontasreceber.fieldbyname('codcliente').asstring + '''');
        frmmodulo.qrcliente.ExecSQL;
        frmPrincipal.logUC('Colocou Observacoes Clientes: ' +
          qrcontasreceber.fieldbyname('codcliente').asstring, 3);

        qrcontasreceber.next;
      end;
      frmmodulo.qrcliente.close;
      frmmodulo.qrcliente.SQL.clear;
      frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome ');
      frmmodulo.qrcliente.Open;
      frmmodulo.qrcliente.IndexFieldNames := 'NOME';
      frmmodulo.Conexao.Commit;
      qrcontasreceber.refresh;
      filtrado := false;
      SHOWMESSAGE('Processamento concluído');
    end;
  end;
end;

procedure Tfrmcliente_financeiro.BitBtn2Click(Sender: TObject);
begin
  if not frmPrincipal.autentica('Desbloquear Clientes', 4) then
  begin
    application.messagebox('Desculpe! Seu acesso não foi autorizado!', 'Aviso',
      mb_ok + MB_ICONERROR);
    exit;
  end
  else
  begin
    if application.messagebox
      ('Tem certeza que deseja desbloquear os clientes de todas as prestações selecionadas?',
      'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then
    begin
      qrcontasreceber.first;
      while not qrcontasreceber.eof do
      begin
        frmmodulo.qrcliente.close;
        frmmodulo.qrcliente.SQL.clear;
        frmmodulo.qrcliente.SQL.add
          ('update c000007 set situacao = 1 where codigo = ''' +
          qrcontasreceber.fieldbyname('codcliente').asstring + '''');
        frmmodulo.qrcliente.ExecSQL;

        frmPrincipal.logUC('Desbloqueou Clientes: ' +
          qrcontasreceber.fieldbyname('codcliente').asstring, 3);

        qrcontasreceber.next;
      end;
      frmmodulo.qrcliente.close;
      frmmodulo.qrcliente.SQL.clear;
      frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome ');
      frmmodulo.qrcliente.Open;
      frmmodulo.qrcliente.IndexFieldNames := 'NOME';
      frmmodulo.Conexao.Commit;
      qrcontasreceber.refresh;
      filtrado := false;
      SHOWMESSAGE('Processamento concluído');
    end;
  end;
end;

procedure Tfrmcliente_financeiro.BitBtn3Click(Sender: TObject);
begin
  if not frmPrincipal.autentica('Tirar Observação', 4) then
  begin
    application.messagebox('Desculpe! Seu acesso não foi autorizado!', 'Aviso',
      mb_ok + MB_ICONERROR);
    exit;
  end
  else
  begin
    if application.messagebox
      ('Tem certeza que deseja tirar a observação dos clientes de todas as prestações selecionadas?',
      'Atenção', mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then
    begin
      qrcontasreceber.first;
      while not qrcontasreceber.eof do
      begin
        frmmodulo.qrcliente.close;
        frmmodulo.qrcliente.SQL.clear;
        frmmodulo.qrcliente.SQL.add('update c000007 set situacao = 1, obs4 = '''
          + '' + ''' where codigo = ''' + qrcontasreceber.fieldbyname
          ('codcliente').asstring + '''');
        frmmodulo.qrcliente.ExecSQL;

        frmPrincipal.logUC('Tirou Observacoes Clientes: ' +
          qrcontasreceber.fieldbyname('codcliente').asstring, 3);

        qrcontasreceber.next;
      end;
      frmmodulo.qrcliente.close;
      frmmodulo.qrcliente.SQL.clear;
      frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome ');
      frmmodulo.qrcliente.Open;
      frmmodulo.qrcliente.IndexFieldNames := 'NOME';
      frmmodulo.Conexao.Commit;
      qrcontasreceber.refresh;
      filtrado := false;
      SHOWMESSAGE('Processamento concluído');
    end;
  end;
end;

procedure Tfrmcliente_financeiro.brelatoriosClick(Sender: TObject);
begin
  FRMLISTA_CLIENTE_FINANCEIRO := TFRMLISTA_CLIENTE_FINANCEIRO.create(self);
  FRMLISTA_CLIENTE_FINANCEIRO.showmodal;
end;

procedure Tfrmcliente_financeiro.BLOC2Click(Sender: TObject);
begin
  if RCLIENTE2.checked then
  begin
    frmloc_cliente := tfrmloc_cliente.create(self);
    frmloc_cliente.showmodal;
    ECODIGO2.text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
    ENOME2.text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
  end;
  if RREGIAO2.checked then
  begin
    frmloc_regiao := tfrmloc_regiao.create(self);
    frmloc_regiao.showmodal;
    ECODIGO2.text := frmmodulo.qrregiao.fieldbyname('codigo').asstring;
    ENOME2.text := frmmodulo.qrregiao.fieldbyname('regiao').asstring;
  end;
  bfiltro2.SetFocus;
end;

procedure Tfrmcliente_financeiro.ECODIGO2Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  ECODIGO2.text := frmPrincipal.zerarcodigo(ECODIGO2.text, 6);
  if ECODIGO2.text <> '000000' then
  begin

    if RCLIENTE2.checked then
    begin
      if not frmPrincipal.Locregistro(frmmodulo.qrcliente, ECODIGO2.text,
        'codigo') then
        BLOC2Click(frmcliente_financeiro)
      else
      begin
        ECODIGO2.text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
        ENOME2.text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
        bfiltro2.SetFocus;
      end;
    end;

    if RREGIAO2.checked then
    begin
      if not frmPrincipal.Locregistro(frmmodulo.qrregiao, ECODIGO2.text,
        'codigo') then
        BLOC2Click(frmcliente_financeiro)
      else
      begin
        ECODIGO2.text := frmmodulo.qrregiao.fieldbyname('codigo').asstring;
        ENOME2.text := frmmodulo.qrregiao.fieldbyname('regiao').asstring;
        bfiltro2.SetFocus;
      end;
    end;
  end
  else
  begin
    BLOC2.SetFocus;
  end;
end;

procedure Tfrmcliente_financeiro.RATRAZO2Click(Sender: TObject);
begin
  GDIAS2.visible := true;
  GPERIODO2.visible := false;
end;

procedure Tfrmcliente_financeiro.RPERIODO2Click(Sender: TObject);
begin
  GDIAS2.visible := false;
  GPERIODO2.visible := true;
end;

procedure Tfrmcliente_financeiro.DateEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bfiltro2.SetFocus;
end;

procedure Tfrmcliente_financeiro.RDIAS2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bfiltro2.SetFocus;
end;

procedure Tfrmcliente_financeiro.BFILTRO2Click(Sender: TObject);
begin
  qrresumo_geral.Open;
  qrcontasreceber.Open;
  wwDBGrid2.DataSource := nil;

  qrresumo.close;
  qrresumo.SQL.clear;

  if RTODOS2.checked then
  begin
    if RATRAZO2.checked then
    begin

      qrresumo.SQL.add
        ('select cliente.nome, cliente.codigo, cliente.situacao, sum(cr.valor_atual) total from c000007 cliente');
      qrresumo.SQL.add
        ('jOIN c000049 cr on cliente.codigo = cr.codcliente  and cr.data_vencimento <= :datai and cr.situacao = 1 and valor_atual > 0 and cliente.codigo is not null group by cliente.codigo, cliente.nome, cliente.situacao');
      qrresumo.SQL.add('order by cliente.nome');
      qrresumo.Params.ParamByName('datai').asdatetime := (date - RDIAS2.value);
    end;
    if RPERIODO2.checked then
    begin
      qrresumo.SQL.add
        ('select cliente.nome, cliente.codigo,cliente.situacao, sum(cr.valor_atual) total from c000007 cliente');
      qrresumo.SQL.add
        ('jOIN c000049 cr on cliente.codigo = cr.codcliente  and cr.data_vencimento >= :datai and cr.data_vencimento <= :dataf and cr.situacao = 1 and valor_atual > 0 and cliente.codigo is not null group by cliente.codigo, cliente.nome, cliente.situacao');
      qrresumo.SQL.add('order by cliente.nome');
      qrresumo.Params.ParamByName('datai').asdatetime := DateEdit3.date;
      qrresumo.Params.ParamByName('dataf').asdatetime := DateEdit4.date;
    end;
  end;
  if RCLIENTE2.checked then
  begin
    if RATRAZO2.checked then
    begin
      qrresumo.SQL.add
        ('select cliente.nome, cliente.codigo,cliente.situacao, sum(cr.valor_atual) total from c000007 cliente');
      qrresumo.SQL.add
        ('jOIN c000049 cr on cliente.codigo = cr.codcliente  and cr.codcliente = '''
        + ECODIGO2.text +
        ''' and cr.data_vencimento <= :datai and cr.situacao = 1 and valor_atual > 0 and cliente.codigo is not null group by cliente.codigo, cliente.nome, cliente.situacao');
      qrresumo.SQL.add('order by cliente.nome');
      qrresumo.Params.ParamByName('datai').asdatetime := (date - RDIAS2.value);
    end;
    if RPERIODO2.checked then
    begin
      qrresumo.SQL.add
        ('select cliente.nome, cliente.codigo,cliente.situacao, sum(cr.valor_atual) total from c000007 cliente');
      qrresumo.SQL.add
        ('jOIN c000049 cr on cliente.codigo = cr.codcliente  and cr.codcliente = '''
        + ECODIGO2.text +
        ''' and cr.data_vencimento >= :datai and cr.data_vencimento <= :dataf and cr.situacao = 1 and valor_atual > 0 and cliente.codigo is not null group by cliente.codigo, cliente.nome, cliente.situacao');
      qrresumo.SQL.add('order by cliente.nome');
      qrresumo.Params.ParamByName('datai').asdatetime := DateEdit3.date;
      qrresumo.Params.ParamByName('dataf').asdatetime := DateEdit4.date;
    end;
  end;
  if RREGIAO2.checked then
  begin
    if RATRAZO2.checked then
    begin
      qrresumo.SQL.add
        ('select cliente.nome, cliente.codigo, cliente.situacao, sum(cr.valor_atual) total from c000007 cliente');
      qrresumo.SQL.add
        ('jOIN c000049 cr on cliente.codigo = cr.codcliente  and cliente.codregiao = '''
        + ECODIGO2.text +
        ''' and cr.data_vencimento <= :datai and cr.situacao = 1 and valor_atual > 0 and cliente.codigo is not null group by cliente.codigo, cliente.nome, cliente.situacao');
      qrresumo.SQL.add('order by cliente.nome');
      qrresumo.Params.ParamByName('datai').asdatetime := (date - RDIAS2.value);
    end;
    if RPERIODO2.checked then
    begin
      qrresumo.SQL.add
        ('select cliente.nome, cliente.codigo,cliente.situacao, sum(cr.valor_atual) total from c000007 cliente');
      qrresumo.SQL.add
        ('jOIN c000049 cr on cliente.codigo = cr.codcliente  and cliente.codregiao = '''
        + ECODIGO2.text +
        ''' and cr.data_vencimento >= :datai and cr.data_vencimento <= :dataf and cr.situacao = 1 and valor_atual > 0 and cliente.codigo is not null group by cliente.codigo, cliente.nome, cliente.situacao');
      qrresumo.SQL.add('order by cliente.nome');
      qrresumo.Params.ParamByName('datai').asdatetime := DateEdit3.date;
      qrresumo.Params.ParamByName('dataf').asdatetime := DateEdit4.date;
    end;

  end;
  qrresumo.Open;

  bTotalizaResumoClick(frmcliente_financeiro);
  // grid5.SetFocus;
  // WWDBGRID2.DataSource := DSresumo;

end;

procedure Tfrmcliente_financeiro.PageView1Change(Sender: TObject);

begin
  if PageView1.ActivePageIndex = 1 then
  begin
    qrresumo.close;
    qrresumo.SQL.clear;
    qrresumo.SQL.add
      ('select cliente.situacao, cliente.nome, cliente.codigo, sum(cr.valor_atual) total from c000007 cliente');
    qrresumo.SQL.add
      ('jOIN c000049 cr on cliente.codigo = cr.codcliente  and cr.data_vencimento <= :datai and cr.situacao = 1 group by cliente.codigo, cliente.nome, cliente.situacao');
    qrresumo.SQL.add('order by cliente.nome');
    qrresumo.Params.ParamByName('datai').asdatetime := date;
    qrresumo.Open;
  end;
  if PageView1.ActivePageIndex = 2 then
  begin
    qrabc.close;
    qrabc.SQL.clear;
    qrabc.SQL.add('DELETE FROM CL00006');
    qrabc.ExecSQL;
    qrabc.SQL.clear;
    qrabc.SQL.add('SELECT * FROM CL00006 ORDER BY CAMPO2 DESC');
    qrabc.Open;
    {
      QUERY2.CLOSE;
      QUERY2.SQL.CLEAR;
      QUERY2.SQL.ADD('SELECT SUM(TOTAL) TOTAL FROM C000048');
      QUERY2.Open;
      TOTAL_VENDA := QUERY2.FIELDBYNAME('TOTAL').ASFLOAT;
      QUERY2.CLOSE;

      QRVENDA.CLOSE;
      QRVENDA.SQL.CLEAR;
      QRVENDA.SQL.ADD('select cliente.situacao, cliente.nome, cliente.codigo, sum(cr.TOTAL) total from c000007 cliente');
      QRVENDA.SQL.ADD('jOIN c000048 cr on cliente.codigo = cr.codcliente group by cliente.codigo, cliente.nome, cliente.situacao');
      QRVENDA.SQL.ADD('order by cliente.nome');
      QRVENDA.Open;

      QRVENDA.FIRST;
      WHILE NOT QRVENDA.EOF DO
      BEGIN
      QRABC.INSERT;
      QRABC.FIELDBYNAME('CODIGO').ASSTRING := QRVENDA.FIELDBYNAME('CODIGO').ASSTRING;
      QRABC.FIELDBYNAME('CAMPO1').ASSTRING := QRVENDA.FIELDBYNAME('NOME').ASSTRING;
      QRABC.FIELDBYNAME('VALOR1').ASFLOAT  := QRVENDA.FIELDBYNAME('TOTAL').ASFLOAT;
      QRABC.FIELDBYNAME('VALOR2').ASINTEGER := QRVENDA.FIELDBYNAME('SITUACAO').ASINTEGER;
      QRABC.FIELDBYNAME('CAMPO2').ASSTRING := frmPrincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',QRVENDA.FIELDBYNAME('TOTAL').ASFLOAT),20,'0','E');
      QRABC.POST;
      QRVENDA.NEXT;
      END;


      QRABC.Refresh;
    }
  end;
end;

procedure Tfrmcliente_financeiro.UpDown2Click(Sender: TObject;
  Button: TUDBtnType);
begin
  RDIAS2.value := UpDown2.Position;
  if RDIAS2.value > 1 then
    RDIAS2.DisplayFormat := '###,##0 dias'
  else
    RDIAS2.DisplayFormat := '###,##0 dia';
end;

procedure Tfrmcliente_financeiro.RDIAS2Exit(Sender: TObject);
begin
  UpDown2.Position := trunc(RDIAS2.value);
  TEdit(Sender).color := clwindow;
end;

procedure Tfrmcliente_financeiro.RDIAS2Change(Sender: TObject);
begin
  try
    if RDIAS2.value > 1 then
      RDIAS2.DisplayFormat := '###,##0 dias'
    else
      RDIAS2.DisplayFormat := '###,##0 dia';
  except
  end;
end;

procedure Tfrmcliente_financeiro.RTODOS2Click(Sender: TObject);
begin
  GPESQUISA2.visible := false;
end;

procedure Tfrmcliente_financeiro.RCLIENTE2Click(Sender: TObject);
begin
  GPESQUISA2.visible := true;
  GPESQUISA2.Caption := 'Selecionar Cliente';
  ECODIGO2.text := '';
  ENOME2.text := '';
end;

procedure Tfrmcliente_financeiro.RREGIAO2Click(Sender: TObject);
begin
  GPESQUISA2.visible := true;
  GPESQUISA2.Caption := 'Selecionar Região';
  ECODIGO2.text := '';
  ENOME2.text := '';
end;

procedure Tfrmcliente_financeiro.qrresumoCalcFields(DataSet: TDataSet);
var
  juros: real;
begin
  juros := 0;
  query.close;
  query.SQL.clear;

  if RATRAZO2.checked then
  begin
    query.SQL.add('select * from c000049 where codcliente = ''' +
      qrresumoCODIGO.value +
      ''' and data_vencimento <= :datai and situacao = 1 and valor_atual > 0');
    query.Params.ParamByName('datai').asdatetime := (date - rdias.value);
  end;
  if RPERIODO2.checked then
  begin
    query.SQL.add('select * from c000049 where codcliente = ''' +
      qrresumoCODIGO.value +
      ''' and data_vencimento >= :datai and data_vencimento <= :dataf and situacao = 1 and valor_atual > 0');
    query.Params.ParamByName('datai').asdatetime := DateEdit1.date;
    query.Params.ParamByName('dataf').asdatetime := DateEdit2.date;
  end;

  query.Open;
  query.first;
  while not query.eof do
  begin
    juros := juros + queryRESTANTE.value;
    query.next;
  end;

  qrresumototalgeral.value := juros;
end;

procedure Tfrmcliente_financeiro.queryCalcFields(DataSet: TDataSet);
var
  valor, juro, multa: real;
  dias: integer;
begin

  valor := query.fieldbyname('valor_ATUAL').asfloat;

  query.fieldbyname('restante').asfloat := 0;

  if query.fieldbyname('situacao').asinteger = 1 then
  begin
    if valor > 0 then
    begin
      if query.fieldbyname('data_pagamento').asfloat > 0 then
      // puxar pelo ultimo pagamento
      begin
        if query.fieldbyname('data_pagamento').asfloat >
          query.fieldbyname('data_vencimento').asdatetime then
          dias := trunc(date - query.fieldbyname('data_pagamento').asdatetime)
        else
          dias := trunc(date - query.fieldbyname('data_vencimento').asdatetime);
      end
      else
      begin // puxar pela data de vencimento
        dias := trunc(date - query.fieldbyname('data_vencimento').asdatetime);

        // soh cobrar a multa se nao tiver nenhum pagamento!
        if juro_multa > 0 then
        begin
          multa := (valor * (juro_multa / 100));
        end;
      end;

      if juro_taxa <> 0 then
      begin
        if (dias - juro_carencia) > 0 then
        begin
          juro := (valor * ((juro_taxa / 100) * (dias { - juro_carencia } )));
          valor := valor + juro + multa;
        end;
      end;
      if (dias - juro_carencia) > 0 then
      begin
        query.fieldbyname('dias').asinteger := dias;
        query.fieldbyname('restante').asfloat := valor;
        query.fieldbyname('juros').asfloat := juro + multa;
      end
      else
      begin
        query.fieldbyname('restante').asfloat :=
          query.fieldbyname('valor_atual').asfloat;
      end;

    end
    else
    begin
      query.fieldbyname('dias').asinteger := 0;
      query.fieldbyname('restante').asfloat := valor;
      query.fieldbyname('juros').asfloat := 0;
      query.fieldbyname('situacao2').asinteger := 5;

    end;
  end
  else
  begin
    query.fieldbyname('dias').asinteger := 0;
    query.fieldbyname('restante').asfloat := valor;
    query.fieldbyname('juros').asfloat := 0;
  end;

end;

procedure Tfrmcliente_financeiro.locEnter(Sender: TObject);
begin

  // qrcontasreceber.indexfieldnames := 'nome';

end;

procedure Tfrmcliente_financeiro.loc2Enter(Sender: TObject);
begin
  qrresumo.IndexFieldNames := 'nome';
end;

procedure Tfrmcliente_financeiro.rtodos3Click(Sender: TObject);
begin
  gpesquisa3.visible := false;
end;

procedure Tfrmcliente_financeiro.rregiao3Click(Sender: TObject);
begin
  gpesquisa3.visible := true;
  gpesquisa3.Caption := 'Selecionar Região';
  ecodigo3.text := '';
  enome3.text := '';
end;

procedure Tfrmcliente_financeiro.bloc3Click(Sender: TObject);
begin
  if rregiao3.checked then
  begin
    frmloc_regiao := tfrmloc_regiao.create(self);
    frmloc_regiao.showmodal;
    ecodigo3.text := frmmodulo.qrregiao.fieldbyname('codigo').asstring;
    enome3.text := frmmodulo.qrregiao.fieldbyname('regiao').asstring;
  end;
  bfiltro3.SetFocus;
end;

procedure Tfrmcliente_financeiro.ecodigo3Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  ecodigo3.text := frmPrincipal.zerarcodigo(ecodigo3.text, 6);
  if ecodigo3.text <> '000000' then
  begin

    if rregiao3.checked then
    begin
      if not frmPrincipal.Locregistro(frmmodulo.qrregiao, ecodigo3.text,
        'codigo') then
        bloc3Click(frmcliente_financeiro)
      else
      begin
        ecodigo3.text := frmmodulo.qrregiao.fieldbyname('codigo').asstring;
        enome3.text := frmmodulo.qrregiao.fieldbyname('regiao').asstring;
        bfiltro3.SetFocus;
      end;
    end;
  end
  else
  begin
    bloc3.SetFocus;
  end;
end;

procedure Tfrmcliente_financeiro.DateEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bfiltro3.SetFocus;
end;

procedure Tfrmcliente_financeiro.qrabcCalcFields(DataSet: TDataSet);
var
  PERC: real;
begin
  if TOTAL_VENDA <> 0 then
  begin
    if qrabc.fieldbyname('VALOR1').asfloat <> 0 then
    begin
      PERC := qrabc.fieldbyname('VALOR1').asfloat * 100 / TOTAL_VENDA;
      qrabcPERCENTUAL.value := PERC;
      if PERC >= 70 then
        qrabcABC.value := 'A';
      if (PERC < 70) and (PERC >= 20) then
        qrabcABC.value := 'B';
      if PERC < 20 then
        qrabcABC.value := 'C';
    end;
  end;
end;

procedure Tfrmcliente_financeiro.wwDBGrid3DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if qrabcPERCENTUAL.value >= 70 then
    wwDBGrid3.canvas.Brush.color := $004040FF;
  if (qrabcPERCENTUAL.value < 70) and (qrabcPERCENTUAL.value >= 20) then
    wwDBGrid3.canvas.Brush.color := $00CEBE31;
  if qrabcPERCENTUAL.value < 20 then
    wwDBGrid3.canvas.Brush.color := $000BABC8;
  wwDBGrid3.DefaultDrawDataCell(Rect, Field, State);
end;

procedure Tfrmcliente_financeiro.bfiltro3Click(Sender: TObject);
begin

  wwDBGrid3.DataSource := nil;

  qrabc.close;
  qrabc.SQL.clear;
  qrabc.SQL.add('DELETE FROM CL00006');
  qrabc.ExecSQL;
  qrabc.SQL.clear;
  qrabc.SQL.add('SELECT * FROM CL00006 ORDER BY CAMPO2 DESC');
  qrabc.Open;

  QUERY2.close;
  QUERY2.SQL.clear;
  QUERY2.SQL.add
    ('SELECT SUM(TOTAL) TOTAL FROM C000048 WHERE data >= :datai and data <= :dataf');
  QUERY2.Params.ParamByName('datai').asdatetime := DateEdit5.date;
  QUERY2.Params.ParamByName('dataf').asdatetime := DateEdit6.date;
  QUERY2.Open;
  TOTAL_VENDA := QUERY2.fieldbyname('TOTAL').asfloat;
  QUERY2.close;

  qrvenda.close;
  qrvenda.SQL.clear;

  if rtodos3.checked then
  begin
    qrvenda.SQL.add
      ('select cliente.situacao, cliente.nome, cliente.codigo, sum(cr.TOTAL) total from c000007 cliente');
    qrvenda.SQL.add
      ('jOIN c000048 cr on cliente.codigo = cr.codcliente and cr.data >= :datai and cr.data <= :dataf group by cliente.codigo, cliente.nome, cliente.situacao');
    qrvenda.SQL.add('order by cliente.nome');
    qrvenda.Params.ParamByName('datai').asdatetime := DateEdit5.date;
    qrvenda.Params.ParamByName('dataf').asdatetime := DateEdit6.date;

  end;
  if rregiao3.checked then
  begin
    qrvenda.SQL.add
      ('select cliente.situacao, cliente.nome, cliente.codigo, sum(cr.TOTAL) total from c000007 cliente');
    qrvenda.SQL.add
      ('jOIN c000048 cr on cliente.codigo = cr.codcliente and  cr.data >= :datai and cr.data <= :dataf and cliente.codregiao = '''
      + ecodigo3.text +
      ''' and cr.data <= :dataf group by cliente.codigo, cliente.nome, cliente.situacao');
    qrvenda.SQL.add('order by cliente.nome');
    qrvenda.Params.ParamByName('datai').asdatetime := DateEdit5.date;
    qrvenda.Params.ParamByName('dataf').asdatetime := DateEdit6.date;
  end;
  qrvenda.Open;
  qrvenda.first;
  while not qrvenda.eof do
  begin
    qrabc.INSERT;
    qrabc.fieldbyname('CODIGO').asstring :=
      qrvenda.fieldbyname('CODIGO').asstring;
    qrabc.fieldbyname('CAMPO1').asstring := qrvenda.fieldbyname('NOME')
      .asstring;
    qrabc.fieldbyname('VALOR1').asfloat := qrvenda.fieldbyname('TOTAL').asfloat;
    qrabc.fieldbyname('VALOR2').asinteger := qrvenda.fieldbyname('SITUACAO')
      .asinteger;
    qrabc.fieldbyname('CAMPO2').asstring := frmPrincipal.texto_justifica
      (formatfloat('###,###,##0.00', qrvenda.fieldbyname('TOTAL').asfloat), 20,
      '0', 'E');
    qrabc.POST;
    qrvenda.next;
  end;
  //

  qrabc.refresh;

  wwDBGrid3.DataSource := dsabc;

end;

procedure Tfrmcliente_financeiro.btfinanceiro001Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmcliente_financeiro.btfinanceiro002Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmcliente_financeiro.btfinanceiro003Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmcliente_financeiro.btfinanceiro004Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 3;
end;

procedure Tfrmcliente_financeiro.btotalClick(Sender: TObject);
begin
  try
    wwDBGrid1.DataSource := nil;
    yvalor := 0;
    yjuro := 0;
    ytotal := 0;
    frmprocesso := tfrmprocesso.create(self);
    frmprocesso.p.PartsComplete := 0;
    frmprocesso.p.TotalParts := qrcontasreceber.RecordCount;
    frmprocesso.show;
    application.ProcessMessages;

    qrcontasreceber.first;
    while not qrcontasreceber.eof do
    begin
      frmprocesso.Caption := 'Processando...  ' + qrcontasreceber.fieldbyname
        ('codcliente').asstring + ' | ' + qrcontasreceber.fieldbyname
        ('nome').asstring;
      yvalor := yvalor + qrcontasreceber.fieldbyname('valor_atual').asfloat;
      yjuro := yjuro + qrcontasreceber.fieldbyname('juros').asfloat;
      ytotal := ytotal + qrcontasreceber.fieldbyname('restante').asfloat;
      frmprocesso.p.PartsComplete := frmprocesso.p.PartsComplete + 1;

      application.ProcessMessages;
      qrcontasreceber.next;
    end;
    rvalor.value := yvalor;
    rjuro.value := yjuro;
    rtotal.value := ytotal;
    filtrado := false;
    frmprocesso.p.PartsComplete := frmprocesso.p.TotalParts;
    frmprocesso.close;

  except
    SHOWMESSAGE('Processamento interrompido!');
  end;

  wwDBGrid1.DataSource := dscontasreceber;

end;

procedure Tfrmcliente_financeiro.bfiltro5Click(Sender: TObject);
begin
  //
  qrinativo.close;
  qrinativo.SQL.clear;
  qrinativo.SQL.add('select nome, codigo, data_ultimacompra, situacao ');
  qrinativo.SQL.add('from c000007 where situacao < 3 ');
  qrinativo.SQL.add('and DATA_ULTIMACOMPRA < :datax ');
  qrinativo.SQL.add
    ('group by codigo, nome, situacao, data_ultimacompra order by nome');
  qrinativo.Params.ParamByName('datax').asdatetime :=
    date - rdias_inativo.value;
  qrinativo.Open;

end;

procedure Tfrmcliente_financeiro.rdias_inativoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bfiltro5.SetFocus;
end;

procedure Tfrmcliente_financeiro.PageView2Change(Sender: TObject);
begin

  if PageView2.ActivePageIndex = 4 then
  begin
    qrresumo_geral.close;
    qrresumo_geral.SQL.clear;
    qrresumo_geral.SQL.add('select');
    qrresumo_geral.SQL.add('nome, codigo, situacao,');
    qrresumo_geral.SQL.add('sum(crediario) as crediario,');
    qrresumo_geral.SQL.add('sum(cheque) as cheque,');
    qrresumo_geral.SQL.add('sum(financeira) as financeira');
    qrresumo_geral.SQL.add('from');
    qrresumo_geral.SQL.add('(select');
    qrresumo_geral.SQL.add('cliente.nome, cliente.codigo,cliente.situacao,');
    qrresumo_geral.SQL.add('sum(cr.valor_atual) as crediario,');
    qrresumo_geral.SQL.add('0 as cheque,');
    qrresumo_geral.SQL.add('0 as financeira');
    qrresumo_geral.SQL.add('from c000007 cliente');
    qrresumo_geral.SQL.add
      ('inner jOIN c000049 cr on (cliente.codigo = cr.codcliente)');
    qrresumo_geral.SQL.add('where');
    qrresumo_geral.SQL.add
      ('cr.codigo is not null and cliente.codigo is not null');
    qrresumo_geral.SQL.add('and cliente.situacao < 3');
    qrresumo_geral.SQL.add('and cr.data_vencimento between :vdat1 and :vdat2');
    qrresumo_geral.SQL.add('and cr.situacao = 1');
    qrresumo_geral.SQL.add('and cr.valor_atual > 0');
    qrresumo_geral.SQL.add('group by');
    qrresumo_geral.SQL.add('cliente.codigo, cliente.nome, cliente.situacao');

    qrresumo_geral.SQL.add('union');

    qrresumo_geral.SQL.add('select');
    qrresumo_geral.SQL.add('cliente.nome, cliente.codigo,cliente.situacao,');
    qrresumo_geral.SQL.add('0 as crediario,');
    qrresumo_geral.SQL.add('sum(ch.valor) as cheque,');
    qrresumo_geral.SQL.add('0 as financeira');
    qrresumo_geral.SQL.add('from c000007 cliente');
    qrresumo_geral.SQL.add
      ('inner jOIN c000040 ch on (cliente.codigo = ch.codcliente)');
    qrresumo_geral.SQL.add('where');
    qrresumo_geral.SQL.add('cliente.situacao < 3');
    qrresumo_geral.SQL.add('and ch.vencimento between :vdat1 and :vdat2');
    qrresumo_geral.SQL.add('and ch.situacao = 1');
    qrresumo_geral.SQL.add('and ch.valor > 0');
    qrresumo_geral.SQL.add('group by');
    qrresumo_geral.SQL.add('cliente.codigo, cliente.nome, cliente.situacao');

    qrresumo_geral.SQL.add('union');

    qrresumo_geral.SQL.add('select');
    qrresumo_geral.SQL.add('cliente.nome, cliente.codigo,cliente.situacao,');
    qrresumo_geral.SQL.add('0 as crediario,');
    qrresumo_geral.SQL.add('0 as cheque,');
    qrresumo_geral.SQL.add('sum(fi.valor) as financeira');
    qrresumo_geral.SQL.add('from c000007 cliente');
    qrresumo_geral.SQL.add
      ('inner jOIN c000123 fi on (cliente.codigo = fi.codcliente)');
    qrresumo_geral.SQL.add('where');
    qrresumo_geral.SQL.add('cliente.situacao < 3');
    qrresumo_geral.SQL.add('and fi.data_pgto between :vdat1 and :vdat2');
    qrresumo_geral.SQL.add('and fi.situacao = 1');
    qrresumo_geral.SQL.add('and fi.valor > 0');
    qrresumo_geral.SQL.add('group by');
    qrresumo_geral.SQL.add('cliente.codigo, cliente.nome, cliente.situacao)');

    qrresumo_geral.SQL.add('group by');
    qrresumo_geral.SQL.add('codigo, nome, situacao');

    qrresumo_geral.SQL.add('order by');
    qrresumo_geral.SQL.add('nome');

    qrresumo_geral.Params.ParamByName('vdat1').asdatetime := DateEdit3.date;
    qrresumo_geral.Params.ParamByName('vdat2').asdatetime := DateEdit4.date;

    qrresumo_geral.Open;

  end;

  if PageView2.ActivePageIndex = 5 then
  begin
    Series1.clear;
    Series1.AddY(qrresumo_geralCREDIARIO.asfloat,
      qrresumo_geralCREDIARIO.DisplayLabel, clred);
    Series1.AddY(qrresumo_geralCHEQUE.asfloat,
      qrresumo_geralCHEQUE.DisplayLabel, clred);
    Series1.AddY(qrresumo_geralFINANCEIRA.asfloat,
      qrresumo_geralFINANCEIRA.DisplayLabel, clred);

    {
      BARseries1.Clear;
      BARseries1.AddY(qrresumo_geralCREDIARIO.AsFloat,qrresumo_geralCREDIARIO.DisplayLabel,CLBLUE);
      BARseries1.AddY(qrresumo_geralCHEQUE.AsFloat,qrresumo_geralCHEQUE.DisplayLabel,CLBLUE);
      BARseries1.AddY(qrresumo_geralFINANCEIRA.AsFloat,qrresumo_geralFINANCEIRA.DisplayLabel,CLBLUE);
    }

  end;

end;

procedure Tfrmcliente_financeiro.qrresumo_geralCalcFields(DataSet: TDataSet);
begin
  qrresumo_geralTotal.asfloat := qrresumo_geralCREDIARIO.asfloat +
    qrresumo_geralCHEQUE.asfloat + qrresumo_geralFINANCEIRA.asfloat;
end;

procedure Tfrmcliente_financeiro.bTotalizaResumoClick(Sender: TObject);
var
  vTotalResumo: Double;
begin
  vTotalResumo := 0;
  qrresumo_geral.first;
  while not qrresumo_geral.eof do
  begin
    vTotalResumo := vTotalResumo + qrresumo_geralTotal.asfloat;
    application.ProcessMessages;
    qrcontasreceber.next;
  end;
  qrresumo_geral.first;

end;

procedure Tfrmcliente_financeiro.RelaoDetalhada1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmcliente_financeiro.ResumoporCliente1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmcliente_financeiro.CurvaABC1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmcliente_financeiro.Compras1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 3;
end;

end.

  Classe A: Clientes que possuem alto lucro dentro do período selecionado
(70 % do lucro obtido).Classe B: Clientes que possuem um lucro intermediário
  dentro do período selecionado(20 % do lucro obtido).Classe C
  : Clientes que possuem um baixo lucro dentro do período selecionado
  (10 % do lucro obtido).
