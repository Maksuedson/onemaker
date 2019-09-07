unit caixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Collection, ExtCtrls, StdCtrls, TFlatPanelUnit, Mask, Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Buttons, PageView, Menus,
  ImgList, DBGrids, DBCtrls, AdvToolBar, AdvGlowButton,
  AdvShapeButton, UCBase, dxGDIPlusClasses, W7Labels, RzPanel,
  cyBaseSpeedButton, cySpeedButton, AdvReflectionImage, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, System.ImageList, JvExMask,
  JvToolEdit, JvBaseEdits, acPNG;

type
  Tfrmcaixa = class(TForm)
    FlatPanel1: TFlatPanel;
    qrcaixa_mov: TZQuery;
    dscaixa_mov: TDataSource;
    POPPRINCIPAL: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Relatrios2: TMenuItem;
    Sair2: TMenuItem;
    popopcoes: TPopupMenu;
    MFECHAMENTO_CAIXA: TMenuItem;
    ReaberturadeCaixa1: TMenuItem;
    AberturadeNovoCaixa1: TMenuItem;
    ImageList1: TImageList;
    Qrsoma: TZQuery;
    Opes1: TMenuItem;
    qrresumo: TZQuery;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label8: TLabel;
    Bevel4: TBevel;
    LSITOPERADOR: TLabel;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    Panel1: TPanel;
    bcaixaaberto: TButton;
    bcaixafechado: TButton;
    Panel5: TPanel;
    Bevel9: TBevel;
    Bevel8: TBevel;
    Label48: TLabel;
    Bevel10: TBevel;
    Bevel13: TBevel;
    Label4: TLabel;
    GroupBox4: TGroupBox;
    Grid: TStringGrid;
    qrmov: TZQuery;
    qrcaixa_movCODIGO: TWideStringField;
    qrcaixa_movCODCAIXA: TWideStringField;
    qrcaixa_movCODOPERADOR: TWideStringField;
    qrcaixa_movSAIDA: TFloatField;
    qrcaixa_movENTRADA: TFloatField;
    qrcaixa_movCODCONTA: TWideStringField;
    qrcaixa_movHISTORICO: TWideStringField;
    qrcaixa_movMOVIMENTO: TIntegerField;
    qrcaixa_movVALOR: TFloatField;
    qrcaixa_movCODNFSAIDA: TWideStringField;
    qrcaixa_movconta: TStringField;
    qrcaixa_movDESCRICAO_MOVIMENTO: TStringField;
    UCControls1: TUCControls;
    Panel2: TPanel;
    pnl1: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    LMDButton1: TAdvGlowMenuButton;
    RzPanel1: TRzPanel;
    Label9: TLabel;
    RzPanel2: TRzPanel;
    btcaixapp01: TAdvGlowButton;
    btcaixapp02: TAdvGlowButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label10: TLabel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    AdvReflectionImage1: TAdvReflectionImage;
    N1: TMenuItem;
    N2: TMenuItem;
    qrcaixa_movDATA: TDateField;
    bfechar: TBitBtn;
    AdvSmoothPanel1: TAdvSmoothPanel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    AdvSmoothPanel4: TAdvSmoothPanel;
    AdvSmoothPanel5: TAdvSmoothPanel;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Bevel6: TBevel;
    Label22: TLabel;
    AdvShapeButton1: TAdvShapeButton;
    AdvShapeButton2: TAdvShapeButton;
    AdvShapeButton3: TAdvShapeButton;
    AdvShapeButton4: TAdvShapeButton;
    AdvShapeButton5: TAdvShapeButton;
    AdvShapeButton6: TAdvShapeButton;
    AdvShapeButton7: TAdvShapeButton;
    AdvShapeButton24: TAdvShapeButton;
    rvenda_dinheiro: TJvCalcEdit;
    rvenda_chequeav: TJvCalcEdit;
    rvenda_chequeap: TJvCalcEdit;
    rvenda_crediario: TJvCalcEdit;
    rvenda_cartaocred: TJvCalcEdit;
    rvenda_cartaodeb: TJvCalcEdit;
    rvenda_convenio: TJvCalcEdit;
    rvenda_total: TJvCalcEdit;
    rvenda_financeira: TJvCalcEdit;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    Bevel14: TBevel;
    AdvShapeButton16: TAdvShapeButton;
    AdvShapeButton17: TAdvShapeButton;
    AdvShapeButton18: TAdvShapeButton;
    AdvShapeButton19: TAdvShapeButton;
    AdvShapeButton20: TAdvShapeButton;
    AdvShapeButton21: TAdvShapeButton;
    ros_dinheiro: TJvCalcEdit;
    ros_chequeav: TJvCalcEdit;
    ros_chequeap: TJvCalcEdit;
    ros_crediario: TJvCalcEdit;
    ros_cartaocred: TJvCalcEdit;
    ros_cartaodeb: TJvCalcEdit;
    ros_total: TJvCalcEdit;
    GroupBox2: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    Label39: TLabel;
    Label41: TLabel;
    AdvShapeButton8: TAdvShapeButton;
    AdvShapeButton9: TAdvShapeButton;
    AdvShapeButton10: TAdvShapeButton;
    AdvShapeButton12: TAdvShapeButton;
    AdvShapeButton14: TAdvShapeButton;
    rrec_dinheiro: TJvCalcEdit;
    rrec_chequeav: TJvCalcEdit;
    rrec_chequeap: TJvCalcEdit;
    rrec_cartao: TJvCalcEdit;
    rrec_boleto: TJvCalcEdit;
    rrec_total: TJvCalcEdit;
    rrec_juros: TJvCalcEdit;
    rrec_desconto: TJvCalcEdit;
    GroupBox7: TGroupBox;
    Label24: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    AdvShapeButton25: TAdvShapeButton;
    AdvShapeButton26: TAdvShapeButton;
    eentradas: TJvCalcEdit;
    esaidas: TJvCalcEdit;
    eatual: TJvCalcEdit;
    GroupBox6: TGroupBox;
    Label17: TLabel;
    Label21: TLabel;
    AdvShapeButton22: TAdvShapeButton;
    AdvShapeButton23: TAdvShapeButton;
    routro_entrada: TJvCalcEdit;
    routro_saida: TJvCalcEdit;
    GroupBox3: TGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label50: TLabel;
    Bevel18: TBevel;
    AdvShapeButton11: TAdvShapeButton;
    AdvShapeButton13: TAdvShapeButton;
    AdvShapeButton15: TAdvShapeButton;
    RPAG_DINHEIRO: TJvCalcEdit;
    RPAG_CHEQUEAV: TJvCalcEdit;
    RPAG_CHEQUEAP: TJvCalcEdit;
    RPAG_TOTAL: TJvCalcEdit;
    AdvSmoothPanel6: TAdvSmoothPanel;
    AdvSmoothPanel7: TAdvSmoothPanel;
    wwDBGrid1: TwwDBGrid;
    AdvSmoothPanel8: TAdvSmoothPanel;
    LDATACAIXA: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    LCODOPERADOR: TLabel;
    LNOMEOPERADOR: TLabel;
    AdvSmoothPanel9: TAdvSmoothPanel;
    LSITCAIXA: TLabel;
    Label23: TLabel;
    RENTRADA: TJvCalcEdit;
    Label31: TLabel;
    RSAIDA: TJvCalcEdit;
    Label32: TLabel;
    RSALDO: TJvCalcEdit;
    AdvSmoothPanel10: TAdvSmoothPanel;
    AdvSmoothPanel13: TAdvSmoothPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    AdvReflectionImage2: TAdvReflectionImage;
    AdvSmoothPanel14: TAdvSmoothPanel;
    AdvSmoothPanel3: TAdvSmoothPanel;
    procedure qrcaixa_movCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bcaixafechadoClick(Sender: TObject);
    procedure AberturadeNovoCaixa1Click(Sender: TObject);
    procedure bcaixaabertoClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure ReaberturadeCaixa1Click(Sender: TObject);
    procedure MFECHAMENTO_CAIXAClick(Sender: TObject);
    procedure wwDBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure Incluir1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure Relatrios2Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure W7ActiveLabel6Click(Sender: TObject);
    procedure W7ActiveLabel1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure btcaixapp01Click(Sender: TObject);
    procedure btcaixapp02Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcaixa: Tfrmcaixa;
    const
   sc_DragMove = $f012;
implementation

uses modulo, caixa_abertura, principal, caixa_abertura_individual,
  caixa_fechamento, caixa_ficha, lista_caixa2;

{$R *.dfm}

procedure Tfrmcaixa.qrcaixa_movCalcFields(DataSet: TDataSet);
begin
  case qrcaixa_mov.FieldByName('movimento').asinteger of
    0:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'IMPLANTAÇÃO DE SALDO';
    1:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'LANCTO. ENTRADA';
    2:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'LANCTO. SAÍDA';
    3:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'VENDA DINHEIRO';
    4:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'VENDA CREDIÁRIO';
    5:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'VENDA CHEQUE À VISTA';
    6:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'VENDA CHEQUE À PRAZO';
    7:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'VENDA CARTÃO CRÉDITO';
    8:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'VENDA CARTÃO DÉBITO';
    40:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'VENDA CONVÊNIO';
    41:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'VENDA CONVÊNIO VIDALINK';
    42:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'VENDA FINANCEIRA';

    9:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'RECEBTO. DINHEIRO';
    10:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'RECEBTO. CHEQUE A.V.';
    11:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'RECEBTO. CHEQUE A.P.';
    12:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'RECEBTO. CARTAO';
    13:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'RECEBTO. JUROS';
    14:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'DESCONTO NO RECEBTO';
    15:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'RECEBTO. BOLETO';

    16:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'OUTRAS ENTRADAS';
    17:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'OUTRAS SAÍDAS';

    18:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'O.S. DINHEIRO';
    19:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'O.S. CREDIÁRIO';
    20:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'O.S. CHEQUE À VISTA';
    21:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'O.S. CHEQUE À PRAZO';
    22:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'O.S. CARTÃO CRÉDITO';
    23:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'O.S. CARTÃO DÉBITO';

    25:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'PAGTO - CAIXA';
    26:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'PAGTO - BANCO';
    27:
      qrcaixa_mov.FieldByName('descricao_movimento').asstring :=
        'PAGTO - CHEQUE TERC.';

  end;
end;

procedure Tfrmcaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CAFREE;
end;

procedure Tfrmcaixa.FormShow(Sender: TObject);
begin
  if FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring = '000099' then
  // CAIXA GERAL
  begin

    Qrsoma.Close;
    Qrsoma.SQL.clear;
    Qrsoma.SQL.add('select sum(entrada) total_entrada, sum(saida) total_saida, '
      + // total_entrada e total_saida
      '(select sum(VALOR) VALOR    from c000044 where movimento = 03 and data = :data_caixa), '
      + // sum
      '(select sum(VALOR) VALOR_1  from c000044 where movimento = 04 and data = :data_caixa), '
      + // sum_1
      '(select sum(VALOR) VALOR_2  from c000044 where movimento = 05 and data = :data_caixa), '
      + // sum_2
      '(select sum(VALOR) VALOR_3  from c000044 where movimento = 06 and data = :data_caixa), '
      + // sum_3
      '(select sum(VALOR) VALOR_4  from c000044 where movimento = 07 and data = :data_caixa), '
      + // sum_4
      '(select sum(VALOR) VALOR_5  from c000044 where movimento = 08 and data = :data_caixa), '
      + // sum_5
      // ordem de servico
      '(select sum(VALOR) VALOR_6  from c000044 where movimento = 18 and data = :data_caixa),  '
      + // sum_6  - dinheiro
      '(select sum(VALOR) VALOR_7  from c000044 where movimento = 19 and data = :data_caixa),  '
      + // sum_7  - cree
      '(select sum(VALOR) VALOR_8  from c000044 where movimento = 20 and data = :data_caixa),  '
      + // sum_8  - cv
      '(select sum(VALOR) VALOR_9  from c000044 where movimento = 21 and data = :data_caixa),  '
      + // sum_9  - cp
      '(select sum(VALOR) VALOR_10 from c000044 where movimento = 22 and data = :data_caixa),  '
      + // sum_10  - cc
      '(select sum(VALOR) VALOR_11 from c000044 where movimento = 23 and data = :data_caixa),  '
      + // sum_11  - cd
      '(select sum(VALOR) VALOR_12 from c000044 where movimento = 40 and data = :data_caixa), '
      + // sum_12
      '(select sum(VALOR) VALOR_13 from c000044 where movimento = 01 and data = :data_caixa), '
      + // sum_13
      '(select sum(VALOR) VALOR_14 from c000044 where movimento = 02 and data = :data_caixa), '
      + // sum_14
      '(select sum(VALOR) VALOR_15 from c000044 where movimento = 42 and data = :data_caixa) '
      + // sum_15

      'from c000044 where data = :data_caixa');

    Qrsoma.Params.ParamByName('data_caixa').asdatetime :=
      FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
    Qrsoma.open;
    RENTRADA.value := Qrsoma.FieldByName('total_entrada').asfloat;
    RSAIDA.value := Qrsoma.FieldByName('total_saida').asfloat;
    RSALDO.value := RENTRADA.value - RSAIDA.value;

    rvenda_dinheiro.value := Qrsoma.FieldByName('VALOR').asfloat;
    rvenda_crediario.value := Qrsoma.FieldByName('VALOR_1').asfloat;
    rvenda_chequeav.value := Qrsoma.FieldByName('VALOR_2').asfloat;
    rvenda_chequeap.value := Qrsoma.FieldByName('VALOR_3').asfloat;
    rvenda_cartaocred.value := Qrsoma.FieldByName('VALOR_4').asfloat;
    rvenda_cartaodeb.value := Qrsoma.FieldByName('VALOR_5').asfloat;
    rvenda_convenio.value := Qrsoma.FieldByName('VALOR_12').asfloat;
    rvenda_financeira.value := Qrsoma.FieldByName('VALOR_15').asfloat;

    ros_dinheiro.value := Qrsoma.FieldByName('VALOR_6').asfloat;
    ros_crediario.value := Qrsoma.FieldByName('VALOR_7').asfloat;
    ros_chequeav.value := Qrsoma.FieldByName('VALOR_8').asfloat;
    ros_chequeap.value := Qrsoma.FieldByName('VALOR_9').asfloat;
    ros_cartaocred.value := Qrsoma.FieldByName('VALOR_10').asfloat;
    ros_cartaodeb.value := Qrsoma.FieldByName('VALOR_11').asfloat;

    routro_entrada.value := Qrsoma.FieldByName('VALOR_13').asfloat;
    routro_saida.value := Qrsoma.FieldByName('VALOR_14').asfloat;

    rvenda_total.value := rvenda_dinheiro.value + rvenda_crediario.value +
      rvenda_chequeav.value + rvenda_chequeap.value + rvenda_cartaocred.value +
      rvenda_cartaodeb.value + rvenda_convenio.value + rvenda_financeira.value;
    ros_total.value := ros_dinheiro.value + ros_crediario.value +
      ros_chequeav.value + ros_chequeap.value + ros_cartaocred.value +
      ros_cartaodeb.value;

    qrcaixa_mov.Close;
    qrcaixa_mov.SQL.clear;
    qrcaixa_mov.SQL.add
      ('select * from c000044 where data = :data_caixa order by codigo');
    qrcaixa_mov.Params.ParamByName('data_caixa').asdatetime :=
      FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
    qrcaixa_mov.open;

    LDATACAIXA.Caption := FRMMODULO.qrcaixa_operador.FieldByName
      ('DATA').asstring;
    LCODOPERADOR.Caption := FRMMODULO.qrcaixa_operador.FieldByName
      ('CODIGO').asstring;
    LNOMEOPERADOR.Caption := FRMMODULO.qrcaixa_operador.FieldByName
      ('NOME').asstring;

    if FRMMODULO.qrcaixa_operador.FieldByName('SITUACAO').asinteger > 1 then
    begin
      LSITOPERADOR.Caption := 'FECHADO';
      LSITCAIXA.Caption := 'FECHADO';
      LSITOPERADOR.Font.Color := CLRED;
      LSITCAIXA.Font.Color := CLRED;
      bcaixafechadoClick(frmcaixa);

    end
    else
    begin

      LSITOPERADOR.Caption := 'ABERTO';
      LSITCAIXA.Caption := 'ABERTO';
      LSITOPERADOR.Font.Color := CLBLUE;
      LSITCAIXA.Font.Color := CLBLUE;
      bcaixaabertoClick(frmcaixa);

    end;

  end
  else
  // caixa individual  //*********************************************************
  begin

    Qrsoma.Close;
    Qrsoma.SQL.clear;

    Qrsoma.Close;
    Qrsoma.SQL.clear;
    Qrsoma.SQL.add('select sum(entrada) total_entrada, sum(saida) total_saida, '
      + // total_entrada e total_saida
      '(select sum(VALOR) VALOR    from c000044 where movimento = 03 and data = :data_caixa and codoperador = '''
      + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
      // sum
      '(select sum(VALOR) VALOR_1  from c000044 where movimento = 04 and data = :data_caixa and codoperador = '''
      + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
      // sum_1
      '(select sum(VALOR) VALOR_2  from c000044 where movimento = 05 and data = :data_caixa and codoperador = '''
      + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
      // sum_2
      '(select sum(VALOR) VALOR_3  from c000044 where movimento = 06 and data = :data_caixa and codoperador = '''
      + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
      // sum_3
      '(select sum(VALOR) VALOR_4  from c000044 where movimento = 07 and data = :data_caixa and codoperador = '''
      + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
      // sum_4
      '(select sum(VALOR) VALOR_5  from c000044 where movimento = 08 and data = :data_caixa and codoperador = '''
      + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
      // sum_5
      // ordem de servico
      '(select sum(VALOR) VALOR_6  from c000044 where movimento = 18 and data = :data_caixa and codoperador = '''
      + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
      '(select sum(VALOR) VALOR_7  from c000044 where movimento = 19 and data = :data_caixa and codoperador = '''
      + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
      '(select sum(VALOR) VALOR_8  from c000044 where movimento = 20 and data = :data_caixa and codoperador = '''
      + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
      '(select sum(VALOR) VALOR_9  from c000044 where movimento = 21 and data = :data_caixa and codoperador = '''
      + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
      '(select sum(VALOR) VALOR_10 from c000044 where movimento = 22 and data = :data_caixa and codoperador = '''
      + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
      '(select sum(VALOR) VALOR_11 from c000044 where movimento = 23 and data = :data_caixa and codoperador = '''
      + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
      '(select sum(VALOR) VALOR_12 from c000044 where movimento = 40 and data = :data_caixa and codoperador = '''
      + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
      '(select sum(VALOR) VALOR_13 from c000044 where movimento = 01 and data = :data_caixa and codoperador = '''
      + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
      '(select sum(VALOR) VALOR_14 from c000044 where movimento = 02 and data = :data_caixa and codoperador = '''
      + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
      '(select sum(VALOR) VALOR_15 from c000044 where movimento = 42 and data = :data_caixa and codoperador = '''
      + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + ''') ' +

      'from c000044 where data = :data_caixa and codoperador = ''' +
      FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''');

    Qrsoma.Params.ParamByName('data_caixa').asdatetime :=
      FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
    Qrsoma.open;
    RENTRADA.value := Qrsoma.FieldByName('total_entrada').asfloat;
    RSAIDA.value := Qrsoma.FieldByName('total_saida').asfloat;
    RSALDO.value := RENTRADA.value - RSAIDA.value;

    rvenda_dinheiro.value := Qrsoma.FieldByName('VALOR').asfloat;
    rvenda_crediario.value := Qrsoma.FieldByName('VALOR_1').asfloat;
    rvenda_chequeav.value := Qrsoma.FieldByName('VALOR_2').asfloat;
    rvenda_chequeap.value := Qrsoma.FieldByName('VALOR_3').asfloat;
    rvenda_cartaocred.value := Qrsoma.FieldByName('VALOR_4').asfloat;
    rvenda_cartaodeb.value := Qrsoma.FieldByName('VALOR_5').asfloat;
    rvenda_financeira.value := Qrsoma.FieldByName('VALOR_15').asfloat;

    ros_dinheiro.value := Qrsoma.FieldByName('VALOR_6').asfloat;
    ros_crediario.value := Qrsoma.FieldByName('VALOR_7').asfloat;
    ros_chequeav.value := Qrsoma.FieldByName('VALOR_8').asfloat;
    ros_chequeap.value := Qrsoma.FieldByName('VALOR_9').asfloat;
    ros_cartaocred.value := Qrsoma.FieldByName('VALOR_10').asfloat;
    ros_cartaodeb.value := Qrsoma.FieldByName('VALOR_11').asfloat;
    rvenda_convenio.value := Qrsoma.FieldByName('VALOR_12').asfloat;

    routro_entrada.value := Qrsoma.FieldByName('VALOR_13').asfloat;
    routro_saida.value := Qrsoma.FieldByName('VALOR_14').asfloat;

    rvenda_total.value := rvenda_dinheiro.value + rvenda_crediario.value +
      rvenda_chequeav.value + rvenda_chequeap.value + rvenda_cartaocred.value +
      rvenda_cartaodeb.value + rvenda_convenio.value + rvenda_financeira.value;
    ros_total.value := ros_dinheiro.value;

    qrcaixa_mov.Close;
    qrcaixa_mov.SQL.clear;
    qrcaixa_mov.SQL.add
      ('select * from c000044 where data = :data_caixa and codoperador = ''' +
      FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring +
      ''' order by codigo');
    qrcaixa_mov.Params.ParamByName('data_caixa').asdatetime :=
      FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
    qrcaixa_mov.open;

    LDATACAIXA.Caption := FRMMODULO.qrcaixa_operador.FieldByName
      ('DATA').asstring;
    LCODOPERADOR.Caption := FRMMODULO.qrcaixa_operador.FieldByName
      ('CODIGO').asstring;
    LNOMEOPERADOR.Caption := FRMMODULO.qrcaixa_operador.FieldByName
      ('NOME').asstring;

    if FRMMODULO.qrcaixa_operador.FieldByName('SITUACAO').asstring = '1' then
    begin
      LSITOPERADOR.Caption := 'ABERTO';
      LSITCAIXA.Caption := 'ABERTO';
      LSITOPERADOR.Font.Color := CLBLUE;
      LSITCAIXA.Font.Color := CLBLUE;
      bcaixaabertoClick(frmcaixa);
    end
    else
    begin

      LSITCAIXA.Caption := 'ABERTO';
      LSITCAIXA.Font.Color := CLBLUE;
      LSITOPERADOR.Caption := 'FECHADO';
      LSITOPERADOR.Font.Color := CLRED;
      bcaixafechadoClick(frmcaixa);
    end;

    /// ////////////

  end;

end;

procedure Tfrmcaixa.PageView1Change(Sender: TObject);
var
  texto, texto1, texto2: string;
  i: integer;
  SOMA: REAL;
begin
  if PageView1.ActivePageIndex = 1 then
  begin

    if FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring = '000099' then
    // CAIXA GERAL
    begin

      Qrsoma.Close;
      Qrsoma.SQL.clear;
      Qrsoma.SQL.add
        ('select sum(entrada) total_entrada, sum(saida) total_saida, ' +
        // total_entrada e total_saida
        '(select sum(VALOR) valor   from c000044 where movimento = 03 and data = :data_caixa), '
        + // sum
        '(select sum(VALOR) valor_1 from c000044 where movimento = 04 and data = :data_caixa), '
        + // sum_1
        '(select sum(VALOR) valor_2 from c000044 where movimento = 05 and data = :data_caixa), '
        + // sum_2
        '(select sum(VALOR) valor_3 from c000044 where movimento = 06 and data = :data_caixa), '
        + // sum_3
        '(select sum(VALOR) valor_4 from c000044 where movimento = 07 and data = :data_caixa), '
        + // sum_4
        '(select sum(VALOR) valor_5 from c000044 where movimento = 08 and data = :data_caixa), '
        + // sum_5
        // ordem de servico
        '(select sum(VALOR) valor_6 from c000044 where movimento = 18 and data = :data_caixa),  '
        + // sum_6  - dinheiro
        '(select sum(VALOR) valor_7 from c000044 where movimento = 19 and data = :data_caixa),  '
        + // sum_7  - cree
        '(select sum(VALOR) valor_8 from c000044 where movimento = 20 and data = :data_caixa),  '
        + // sum_8  - cv
        '(select sum(VALOR) valor_9 from c000044 where movimento = 21 and data = :data_caixa),  '
        + // sum_9  - cp
        '(select sum(VALOR) valor_10 from c000044 where movimento = 22 and data = :data_caixa),  '
        + // sum_10  - cc
        '(select sum(VALOR) valor_11 from c000044 where movimento = 23 and data = :data_caixa),  '
        + // sum_11  - cd
        '(select sum(VALOR) valor_12 from c000044 where movimento = 40 and data = :data_caixa), '
        + // sum_12
        '(select sum(VALOR) valor_13 from c000044 where movimento = 01 and data = :data_caixa), '
        + // sum_13
        '(select sum(VALOR) valor_14 from c000044 where movimento = 02 and data = :data_caixa), '
        + // sum_14
        '(select sum(VALOR) valor_15 from c000044 where movimento = 42 and data = :data_caixa) '
        + // sum_15

        'from c000044 where data = :data_caixa');

      Qrsoma.Params.ParamByName('data_caixa').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
      Qrsoma.open;
      RENTRADA.value := Qrsoma.FieldByName('total_entrada').asfloat;
      RSAIDA.value := Qrsoma.FieldByName('total_saida').asfloat;
      RSALDO.value := RENTRADA.value - RSAIDA.value;

      rvenda_dinheiro.value := Qrsoma.FieldByName('valor').asfloat;
      rvenda_crediario.value := Qrsoma.FieldByName('valor_1').asfloat;
      rvenda_chequeav.value := Qrsoma.FieldByName('valor_2').asfloat;
      rvenda_chequeap.value := Qrsoma.FieldByName('valor_3').asfloat;
      rvenda_cartaocred.value := Qrsoma.FieldByName('valor_4').asfloat;
      rvenda_cartaodeb.value := Qrsoma.FieldByName('valor_5').asfloat;
      rvenda_convenio.value := Qrsoma.FieldByName('valor_12').asfloat;
      rvenda_financeira.value := Qrsoma.FieldByName('valor_15').asfloat;

      ros_dinheiro.value := Qrsoma.FieldByName('valor_6').asfloat;
      ros_crediario.value := Qrsoma.FieldByName('valor_7').asfloat;
      ros_chequeav.value := Qrsoma.FieldByName('valor_8').asfloat;
      ros_chequeap.value := Qrsoma.FieldByName('valor_9').asfloat;
      ros_cartaocred.value := Qrsoma.FieldByName('valor_10').asfloat;
      ros_cartaodeb.value := Qrsoma.FieldByName('valor_11').asfloat;

      routro_entrada.value := Qrsoma.FieldByName('valor_13').asfloat;
      routro_saida.value := Qrsoma.FieldByName('valor_14').asfloat;

      rvenda_total.value := rvenda_dinheiro.value + rvenda_crediario.value +
        rvenda_chequeav.value + rvenda_chequeap.value + rvenda_cartaocred.value
        + rvenda_cartaodeb.value + rvenda_convenio.value +
        rvenda_financeira.value;
      ros_total.value := ros_dinheiro.value + ros_crediario.value +
        ros_chequeav.value + ros_chequeap.value + ros_cartaocred.value +
        ros_cartaodeb.value;

      qrcaixa_mov.Close;
      qrcaixa_mov.SQL.clear;
      qrcaixa_mov.SQL.add
        ('select * from c000044 where data = :data_caixa order by codigo');
      qrcaixa_mov.Params.ParamByName('data_caixa').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
      qrcaixa_mov.open;

      LDATACAIXA.Caption := FRMMODULO.qrcaixa_operador.FieldByName
        ('DATA').asstring;
      LCODOPERADOR.Caption := FRMMODULO.qrcaixa_operador.FieldByName
        ('CODIGO').asstring;
      LNOMEOPERADOR.Caption := FRMMODULO.qrcaixa_operador.FieldByName
        ('NOME').asstring;

      if FRMMODULO.qrcaixa_operador.FieldByName('SITUACAO').asinteger > 1 then
      begin
        LSITOPERADOR.Caption := 'FECHADO';
        LSITCAIXA.Caption := 'FECHADO';
        LSITOPERADOR.Font.Color := CLRED;
        LSITCAIXA.Font.Color := CLRED;
        bcaixafechadoClick(frmcaixa);

      end
      else
      begin

        LSITOPERADOR.Caption := 'ABERTO';
        LSITCAIXA.Caption := 'ABERTO';
        LSITOPERADOR.Font.Color := CLBLUE;
        LSITCAIXA.Font.Color := CLBLUE;
        bcaixaabertoClick(frmcaixa);

      end;

    end
    else
    // caixa individual  //*********************************************************
    begin

      Qrsoma.Close;
      Qrsoma.SQL.clear;

      Qrsoma.Close;
      Qrsoma.SQL.clear;
      Qrsoma.SQL.add
        ('select sum(entrada) total_entrada, sum(saida) total_saida, ' +
        // total_entrada e total_saida
        '(select sum(VALOR) valor from c000044 where movimento = 03 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        // sum
        '(select sum(VALOR) valor_1 from c000044 where movimento = 04 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        // sum_1
        '(select sum(VALOR) valor_2 from c000044 where movimento = 05 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        // sum_2
        '(select sum(VALOR) valor_3 from c000044 where movimento = 06 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        // sum_3
        '(select sum(VALOR) valor_4 from c000044 where movimento = 07 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        // sum_4
        '(select sum(VALOR) valor_5 from c000044 where movimento = 08 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        // sum_5
        // ordem de servico
        '(select sum(VALOR) valor_6 from c000044 where movimento = 18 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        '(select sum(VALOR) valor_7 from c000044 where movimento = 19 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        '(select sum(VALOR) valor_8 from c000044 where movimento = 20 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        '(select sum(VALOR) valor_9 from c000044 where movimento = 21 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        '(select sum(VALOR) valor_10 from c000044 where movimento = 22 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        '(select sum(VALOR) valor_11 from c000044 where movimento = 23 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        '(select sum(VALOR) valor_12 from c000044 where movimento = 40 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        '(select sum(VALOR) valor_13 from c000044 where movimento = 01 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        '(select sum(VALOR) valor_14 from c000044 where movimento = 02 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        '(select sum(VALOR) valor_15 from c000044 where movimento = 42 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + ''') ' +
        'from c000044 where data = :data_caixa and codoperador = ''' +
        FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''');

      Qrsoma.Params.ParamByName('data_caixa').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
      Qrsoma.open;
      RENTRADA.value := Qrsoma.FieldByName('total_entrada').asfloat;
      RSAIDA.value := Qrsoma.FieldByName('total_saida').asfloat;
      RSALDO.value := RENTRADA.value - RSAIDA.value;

      rvenda_dinheiro.value := Qrsoma.FieldByName('valor').asfloat;
      rvenda_crediario.value := Qrsoma.FieldByName('valor_1').asfloat;
      rvenda_chequeav.value := Qrsoma.FieldByName('valor_2').asfloat;
      rvenda_chequeap.value := Qrsoma.FieldByName('valor_3').asfloat;
      rvenda_cartaocred.value := Qrsoma.FieldByName('valor_4').asfloat;
      rvenda_cartaodeb.value := Qrsoma.FieldByName('valor_5').asfloat;
      rvenda_convenio.value := Qrsoma.FieldByName('valor_12').asfloat;
      rvenda_financeira.value := Qrsoma.FieldByName('valor_15').asfloat;

      ros_dinheiro.value := Qrsoma.FieldByName('valor_6').asfloat;
      ros_crediario.value := Qrsoma.FieldByName('valor_7').asfloat;
      ros_chequeav.value := Qrsoma.FieldByName('valor_8').asfloat;
      ros_chequeap.value := Qrsoma.FieldByName('valor_9').asfloat;
      ros_cartaocred.value := Qrsoma.FieldByName('valor_10').asfloat;
      ros_cartaodeb.value := Qrsoma.FieldByName('valor_11').asfloat;

      routro_entrada.value := Qrsoma.FieldByName('valor_13').asfloat;
      routro_saida.value := Qrsoma.FieldByName('valor_14').asfloat;

      rvenda_total.value := rvenda_dinheiro.value + rvenda_crediario.value +
        rvenda_chequeav.value + rvenda_chequeap.value + rvenda_cartaocred.value
        + rvenda_cartaodeb.value + rvenda_convenio.value +
        rvenda_financeira.value;
      ros_total.value := ros_dinheiro.value;

      qrcaixa_mov.Close;
      qrcaixa_mov.SQL.clear;
      qrcaixa_mov.SQL.add
        ('select * from c000044 where data = :data_caixa and codoperador = ''' +
        FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring +
        ''' order by codigo');
      qrcaixa_mov.Params.ParamByName('data_caixa').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
      qrcaixa_mov.open;

      LDATACAIXA.Caption := FRMMODULO.qrcaixa_operador.FieldByName
        ('DATA').asstring;
      LCODOPERADOR.Caption := FRMMODULO.qrcaixa_operador.FieldByName
        ('CODIGO').asstring;
      LNOMEOPERADOR.Caption := FRMMODULO.qrcaixa_operador.FieldByName
        ('NOME').asstring;

      if FRMMODULO.qrcaixa_operador.FieldByName('SITUACAO').asstring = '1' then
      begin
        LSITOPERADOR.Caption := 'ABERTO';
        LSITCAIXA.Caption := 'ABERTO';
        LSITOPERADOR.Font.Color := CLBLUE;
        LSITCAIXA.Font.Color := CLBLUE;
        bcaixaabertoClick(frmcaixa);
      end
      else
      begin

        LSITCAIXA.Caption := 'ABERTO';
        LSITCAIXA.Font.Color := CLBLUE;
        LSITOPERADOR.Caption := 'FECHADO';
        LSITOPERADOR.Font.Color := CLRED;
        bcaixafechadoClick(frmcaixa);
      end;

      /// ////////////

    end;

    if FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring = '000099' then
    // CAIXA GERAL
    begin
      Qrsoma.Close;
      Qrsoma.SQL.clear;
      Qrsoma.SQL.add('select sum(VALOR) valor_0, ' + // 9 sum_0 dinheiro
        '(select sum(VALOR) valor from c000044 where movimento = 10 and data = :data_caixa), '
        + // sum 10 cheque a vista
        '(select sum(VALOR) valor_1 from c000044 where movimento = 11 and data = :data_caixa), '
        + // sum_1 11 cheque a prazo
        '(select sum(VALOR) valor_2 from c000044 where movimento = 12 and data = :data_caixa), '
        + // sum_2 12 cartao
        '(select sum(VALOR) valor_3 from c000044 where movimento = 13 and data = :data_caixa), '
        + // sum_3 13 juros
        '(select sum(VALOR) valor_4 from c000044 where movimento = 14 and data = :data_caixa), '
        + // sum_4 14 desconto
        '(select sum(VALOR) valor_5 from c000044 where movimento = 15 and data = :data_caixa) '
        + // sum_5 15 boleto
        'from c000044 where data = :data_caixa and movimento = 09');

      Qrsoma.Params.ParamByName('data_caixa').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
      Qrsoma.open;

      rrec_dinheiro.value := Qrsoma.FieldByName('valor_0').asfloat;
      rrec_chequeav.value := Qrsoma.FieldByName('valor').asfloat;
      rrec_chequeap.value := Qrsoma.FieldByName('valor_1').asfloat;
      rrec_cartao.value := Qrsoma.FieldByName('valor_2').asfloat;

      rrec_juros.value := Qrsoma.FieldByName('valor_3').asfloat;
      rrec_desconto.value := Qrsoma.FieldByName('valor_4').asfloat;
      rrec_boleto.value := Qrsoma.FieldByName('valor_5').asfloat;

      rrec_total.value := rrec_dinheiro.value + rrec_chequeav.value +
        rrec_chequeap.value + rrec_cartao.value + rrec_boleto.value;
      // rrec_JUROS.value    - rrec_desconto.value;

      Qrsoma.Close;
      Qrsoma.SQL.clear;
      Qrsoma.SQL.add('select sum(VALOR) valor_0, ' + // sum_0
        '(select sum(VALOR) valor from c000044 where movimento = 26 and data = :data_caixa), '
        + // sum
        '(select sum(VALOR) valor_1 from c000044 where movimento = 27 and data = :data_caixa) '
        + // sum_1
        'from c000044 where data = :data_caixa and movimento = 25');

      Qrsoma.Params.ParamByName('data_caixa').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
      Qrsoma.open;
      RPAG_DINHEIRO.value := Qrsoma.FieldByName('valor_0').asfloat;
      RPAG_CHEQUEAV.value := Qrsoma.FieldByName('valor').asfloat;
      RPAG_CHEQUEAP.value := Qrsoma.FieldByName('valor_1').asfloat;
      RPAG_TOTAL.value := RPAG_DINHEIRO.value + RPAG_CHEQUEAV.value +
        RPAG_CHEQUEAP.value;

      // resumo diario
      // eanterior.Value := 0; //RENTRADA.Value - rvenda_dinheiro.Value;
      // eentradas.Value := rvenda_total.Value+ros_total.Value+(rrec_total.Value+rrec_juros.Value-rrec_desconto.Value)+routro_entrada.Value;
      eentradas.value := rvenda_total.value + ros_total.value +
        routro_entrada.value;
      esaidas.value := RPAG_TOTAL.value + routro_saida.value;
      // eatual.Value := eanterior.Value+eentradas.Value-esaidas.Value;
      eatual.value := eentradas.value - (esaidas.value * (-1));

      qrresumo.Close;
      qrresumo.SQL.clear;
      qrresumo.SQL.add
        ('select plano.conta, plano.codigo, sum(caixa.valor) total from c000035 plano '
        + 'JOIN c000044 caixa on plano.codigo = caixa.codconta ' +
        ' and caixa.data = :datax and plano.tipo = 1 group by plano.conta, plano.codigo');
      qrresumo.Params.ParamByName('datax').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
      qrresumo.open;

      Grid.RowCount := 200;

      with Grid do
        for i := 0 to RowCount - 1 do
          Rows[i].clear;

      Grid.Rows[0].add
        ('                         R E C E I T A S                           ');
      Grid.Rows[1].add
        ('*******************************************************************');
      Grid.Rows[2].add
        ('CODIGO    NOME DA CONTA                                  VALOR - R$');
      Grid.Rows[3].add
        ('-------------------------------------------------------------------');
      qrresumo.FIRST;
      i := 4;
      SOMA := 0;
      while not qrresumo.EOF do
      begin
        texto := qrresumo.FieldByName('codigo').asstring;
        texto1 := qrresumo.FieldByName('conta').asstring;
        texto2 := formatfloat('###,###,##0.00',
          qrresumo.FieldByName('total').asfloat);
        while length(texto1) < 45 do
          texto1 := texto1 + ' ';
        while length(texto1) > 45 do
          delete(texto1, 46, 1);
        while length(texto2) < 11 do
          texto2 := ' ' + texto2;
        Grid.Rows[i].add(texto + '    ' + texto1 + ' ' + texto2);
        SOMA := SOMA + qrresumo.FieldByName('TOTAL').asfloat;
        qrresumo.next;
        i := i + 1;
      end;
      texto2 := formatfloat('###,###,##0.00', SOMA);
      while length(texto2) < 11 do
        texto2 := ' ' + texto2;
      Grid.Rows[i].add
        ('-------------------------------------------------------------------');
      i := i + 1;
      Grid.Rows[i].add
        ('TOTAL DAS RECEITAS....................................: ' + texto2);
      i := i + 1;

      qrresumo.Close;
      qrresumo.SQL.clear;
      qrresumo.SQL.add
        ('select plano.conta, plano.codigo, sum(caixa.valor) total from c000035 plano '
        + 'JOIN c000044 caixa on plano.codigo = caixa.codconta ' +
        ' and caixa.data = :datax and plano.tipo = 2 group by plano.conta, plano.codigo');
      qrresumo.Params.ParamByName('datax').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
      qrresumo.open;
      Grid.Rows[i].add
        ('*******************************************************************');
      i := i + 1;
      Grid.Rows[i].add
        ('                         D E S P E S A S                           ');
      i := i + 1;
      Grid.Rows[i].add
        ('*******************************************************************');
      i := i + 1;
      Grid.Rows[i].add
        ('CODIGO    NOME DA CONTA                                  VALOR - R$');
      i := i + 1;
      Grid.Rows[i].add
        ('-------------------------------------------------------------------');
      i := i + 1;

      qrresumo.FIRST;
      SOMA := 0;
      while not qrresumo.EOF do
      begin
        texto := qrresumo.FieldByName('codigo').asstring;
        texto1 := qrresumo.FieldByName('conta').asstring;
        texto2 := formatfloat('###,###,##0.00',
          qrresumo.FieldByName('total').asfloat);
        while length(texto1) < 45 do
          texto1 := texto1 + ' ';
        while length(texto1) > 45 do
          delete(texto1, 46, 1);
        while length(texto2) < 11 do
          texto2 := ' ' + texto2;
        Grid.Rows[i].add(texto + '    ' + texto1 + ' ' + texto2);
        SOMA := SOMA + qrresumo.FieldByName('TOTAL').asfloat;
        qrresumo.next;
        i := i + 1;
      end;
      texto2 := formatfloat('###,###,##0.00', SOMA);
      while length(texto2) < 11 do
        texto2 := ' ' + texto2;
      Grid.Rows[i].add
        ('-------------------------------------------------------------------');
      i := i + 1;
      Grid.Rows[i].add
        ('TOTAL DAS DESPESAS....................................: ' + texto2);
      i := i + 1;

    end
    else
    begin // C A I X A    I N D I V I D U A L

      Qrsoma.Close;
      Qrsoma.SQL.clear;
      Qrsoma.SQL.add('select sum(VALOR) valor_0, ' + // sum_0
        '(select sum(VALOR) valor from c000044 where movimento = 10 and data = :data_caixa and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        // sum
        '(select sum(VALOR) valor_1 from c000044 where movimento = 11 and data = :data_caixa and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        // sum_1
        '(select sum(VALOR) valor_2 from c000044 where movimento = 12 and data = :data_caixa and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        // sum_2
        '(select sum(VALOR) valor_3 from c000044 where movimento = 13 and data = :data_caixa and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        // sum_3
        '(select sum(VALOR) valor_4 from c000044 where movimento = 14 and data = :data_caixa and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        // sum_4
        '(select sum(VALOR) valor_5 from c000044 where movimento = 15 and data = :data_caixa and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + ''') ' +
        // sum_5
        'from c000044 where data = :data_caixa and movimento = 09 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''');

      Qrsoma.Params.ParamByName('data_caixa').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
      Qrsoma.open;
      rrec_dinheiro.value := Qrsoma.FieldByName('valor_0').asfloat;
      rrec_chequeav.value := Qrsoma.FieldByName('valor').asfloat;
      rrec_chequeap.value := Qrsoma.FieldByName('valor_1').asfloat;
      rrec_cartao.value := Qrsoma.FieldByName('valor_2').asfloat;
      rrec_juros.value := Qrsoma.FieldByName('valor_3').asfloat;
      rrec_desconto.value := Qrsoma.FieldByName('valor_4').asfloat;
      rrec_boleto.value := Qrsoma.FieldByName('valor_5').asfloat;

      // rrec_total.value := rrec_dinheiro.value + rrec_chequeav.value + rrec_chequeap.value + rrec_cartao.value + rrec_JUROS.value - rrec_desconto.value + rrec_boleto.value;
      rrec_total.value := rrec_dinheiro.value + rrec_chequeav.value +
        rrec_chequeap.value + rrec_cartao.value + rrec_boleto.value;

      Qrsoma.Close;
      Qrsoma.SQL.clear;
      Qrsoma.SQL.add('select sum(VALOR) valor_0, ' + // sum_0
        '(select sum(VALOR) valor from c000044 where movimento = 26 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''), ' +
        // sum
        '(select sum(VALOR) valor_1 from c000044 where movimento = 27 and data = :data_caixa and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + ''') ' +
        // sum_1
        'from c000044 where data = :data_caixa and movimento = 25 and codoperador = '''
        + FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring + '''');

      Qrsoma.Params.ParamByName('data_caixa').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
      Qrsoma.open;
      RPAG_DINHEIRO.value := Qrsoma.FieldByName('valor_0').asfloat;
      RPAG_CHEQUEAV.value := Qrsoma.FieldByName('valor').asfloat;
      RPAG_CHEQUEAP.value := Qrsoma.FieldByName('valor_1').asfloat;
      RPAG_TOTAL.value := RPAG_DINHEIRO.value + RPAG_CHEQUEAV.value +
        RPAG_CHEQUEAP.value;

      qrresumo.Close;
      qrresumo.SQL.clear;
      qrresumo.SQL.add
        ('select plano.conta, plano.codigo, sum(caixa.valor) total from c000035 plano '
        + 'JOIN c000044 caixa on plano.codigo = caixa.codconta ' +
        ' and caixa.codoperador = ''' + FRMMODULO.qrcaixa_operador.FieldByName
        ('codigo').asstring +
        ''' and caixa.data = :datax and plano.tipo = 1 group by plano.conta, plano.codigo');
      qrresumo.Params.ParamByName('datax').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
      qrresumo.open;

      Grid.RowCount := 300;
      Grid.Rows[0].add
        ('                         R E C E I T A S                           ');
      Grid.Rows[1].add
        ('*******************************************************************');
      Grid.Rows[2].add
        ('CODIGO    NOME DA CONTA                                  VALOR - R$');
      Grid.Rows[3].add
        ('-------------------------------------------------------------------');
      qrresumo.FIRST;
      i := 4;
      SOMA := 0;
      while not qrresumo.EOF do
      begin
        texto := qrresumo.FieldByName('codigo').asstring;
        texto1 := qrresumo.FieldByName('conta').asstring;
        texto2 := formatfloat('###,###,##0.00',
          qrresumo.FieldByName('total').asfloat);
        while length(texto1) < 45 do
          texto1 := texto1 + ' ';
        while length(texto1) > 45 do
          delete(texto1, 46, 1);
        while length(texto2) < 11 do
          texto2 := ' ' + texto2;
        Grid.Rows[i].add(texto + '    ' + texto1 + ' ' + texto2);
        SOMA := SOMA + qrresumo.FieldByName('TOTAL').asfloat;
        qrresumo.next;
        i := i + 1;
      end;
      texto2 := formatfloat('###,###,##0.00', SOMA);
      while length(texto2) < 11 do
        texto2 := ' ' + texto2;
      Grid.Rows[i].add
        ('-------------------------------------------------------------------');
      i := i + 1;
      Grid.Rows[i].add
        ('TOTAL DAS RECEITAS....................................: ' + texto2);
      i := i + 1;

      Grid.RowCount := i + 1;

      qrresumo.Close;
      qrresumo.SQL.clear;
      qrresumo.SQL.add
        ('select plano.conta, plano.codigo, sum(caixa.valor) total from c000035 plano '
        + 'JOIN c000044 caixa on plano.codigo = caixa.codconta ' +
        ' and caixa.data = :datax and plano.tipo = 2 group by plano.conta, plano.codigo');
      qrresumo.Params.ParamByName('datax').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
      qrresumo.open;
      Grid.Rows[i].add
        ('*******************************************************************');
      i := i + 1;
      Grid.Rows[i].add
        ('                         D E S P E S A S                           ');
      i := i + 1;
      Grid.Rows[i].add
        ('*******************************************************************');
      i := i + 1;
      Grid.Rows[i].add
        ('CODIGO    NOME DA CONTA                                  VALOR - R$');
      i := i + 1;
      Grid.Rows[i].add
        ('-------------------------------------------------------------------');
      i := i + 1;

      qrresumo.FIRST;
      SOMA := 0;
      while not qrresumo.EOF do
      begin
        texto := qrresumo.FieldByName('codigo').asstring;
        texto1 := qrresumo.FieldByName('conta').asstring;
        texto2 := formatfloat('###,###,##0.00',
          qrresumo.FieldByName('total').asfloat);
        while length(texto1) < 45 do
          texto1 := texto1 + ' ';
        while length(texto1) > 45 do
          delete(texto1, 46, 1);
        while length(texto2) < 11 do
          texto2 := ' ' + texto2;
        Grid.Rows[i].add(texto + '    ' + texto1 + ' ' + texto2);
        SOMA := SOMA + qrresumo.FieldByName('TOTAL').asfloat;
        qrresumo.next;
        i := i + 1;
      end;
      texto2 := formatfloat('###,###,##0.00', SOMA);
      while length(texto2) < 11 do
        texto2 := ' ' + texto2;
      Grid.Rows[i].add
        ('-------------------------------------------------------------------');
      i := i + 1;
      Grid.Rows[i].add
        ('TOTAL DAS DESPESAS....................................: ' + texto2);
      i := i + 1;

      Grid.RowCount := i + 1;
    end;

  end;

end;

procedure Tfrmcaixa.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrmcaixa.BitBtn3Click(Sender: TObject);
begin
  // VERIFICAR
end;

procedure Tfrmcaixa.BitBtn2Click(Sender: TObject);
begin
  //
end;

procedure Tfrmcaixa.bcaixafechadoClick(Sender: TObject);
begin

  bincluir.Enabled := false;
  balterar.Enabled := false;
  bexcluir.Enabled := false;
  bfechar.Enabled := true;

  brelatorio.Enabled := true;

  MFECHAMENTO_CAIXA.Enabled := false;

  if FRMMODULO.qrcaixa_operador.FieldByName('situacao').asinteger = 3 then
  begin
    AberturadeNovoCaixa1.Enabled := true;
    ReaberturadeCaixa1.Enabled := false;
  end
  else
  begin
    if FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring = '000099' then
    begin
      AberturadeNovoCaixa1.Enabled := true;
      ReaberturadeCaixa1.Enabled := true;
    end
    else
    begin
      AberturadeNovoCaixa1.Enabled := false;
      ReaberturadeCaixa1.Enabled := true;
    end;
  end;

end;

procedure Tfrmcaixa.AberturadeNovoCaixa1Click(Sender: TObject);
begin
  if FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring = '000099' then
  begin
    frmcaixa_abertura := tfrmcaixa_abertura.create(self);
    frmcaixa_abertura.edata.Date := Date;
    frmcaixa_abertura.RSALDO.value := FRMMODULO.qrcaixa_operador.FieldByName
      ('saldo').asfloat;
    frmcaixa_abertura.ShowModal;
  end
  else
  begin
    frmcaixa_abertura_individual := tfrmcaixa_abertura_individual.create(self);
    frmcaixa_abertura_individual.edata.Date := Date;
    frmcaixa_abertura_individual.RSALDO.value := 0;
    frmcaixa_abertura_individual.ShowModal;

  end;

  frmcaixa.OnShow(frmcaixa);

end;

procedure Tfrmcaixa.bcaixaabertoClick(Sender: TObject);
begin
  bincluir.Enabled := true;
  balterar.Enabled := true;
  bexcluir.Enabled := true;
  bfechar.Enabled := true;

  brelatorio.Enabled := true;
  ReaberturadeCaixa1.Enabled := false;
  MFECHAMENTO_CAIXA.Enabled := true;

  AberturadeNovoCaixa1.Enabled := false;
end;

procedure Tfrmcaixa.bfecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmcaixa.ReaberturadeCaixa1Click(Sender: TObject);
begin

  if frmprincipal.autentica('Reabrir caixa', 4) then
  begin

    if FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring = '000099' then
    begin
      if FRMMODULO.qrcaixa_operador.FieldByName('situacao').asinteger = 2 then
      begin
        qrmov.Close;
        qrmov.SQL.clear;
        qrmov.SQL.add
          ('delete from c000044 where data = :datax and historico like ''**RETIRADA**%'' and codoperador = ''000099''');
        qrmov.Params.ParamByName('datax').asdatetime :=
          FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
        qrmov.execsql;

        FRMMODULO.qrcaixa_operador.Edit;
        FRMMODULO.qrcaixa_operador.FieldByName('situacao').asinteger := 1;
        FRMMODULO.qrcaixa_operador.FieldByName('saldo').asfloat := 0;
        FRMMODULO.qrcaixa_operador.Post;
        FRMMODULO.conexao.Commit;
        frmcaixa.qrcaixa_mov.Refresh;
        frmcaixa.OnShow(frmcaixa);
        application.MessageBox('Caixa REABERTO com Sucesso!', 'Aviso',
          mb_ok + MB_ICONINFORMATION);
      end
      else
      begin
        application.MessageBox('Caixa não está fechado!', 'Atenção',
          mb_ok + mb_iconerror);
        exit;
      end;
    end
    else
    begin
      if application.MessageBox('Confirma a reabertura deste caixa?', 'Caixa',
        mb_yesno + mb_iconquestion) = idyes then
      begin
        FRMMODULO.qrcaixa_operador.Edit;
        FRMMODULO.qrcaixa_operador.FieldByName('situacao').asinteger := 1;
        FRMMODULO.qrcaixa_operador.Post;
        FRMMODULO.conexao.Commit;
        LSITOPERADOR.Caption := 'ABERTO';
        LSITOPERADOR.Font.Color := CLBLUE;
        bcaixaabertoClick(frmcaixa);
      end;
    end;

  end;
end;

procedure Tfrmcaixa.MFECHAMENTO_CAIXAClick(Sender: TObject);
begin
  if FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring = '000099' then
  begin
    frmcaixa_fechamento := tfrmcaixa_fechamento.create(self);
    frmcaixa_fechamento.RENTRADA.value := RENTRADA.value;
    frmcaixa_fechamento.RSAIDA.value := RSAIDA.value;
    frmcaixa_fechamento.RSALDO.value := RSALDO.value;
    frmcaixa_fechamento.RSUBSALDO.value := RSALDO.value;
    frmcaixa_fechamento.ldata.Caption := LDATACAIXA.Caption;
    frmcaixa_fechamento.RSALDO.value := RSALDO.value;
    frmcaixa_fechamento.ShowModal;
    frmcaixa.OnShow(frmcaixa);

  end
  else
  begin
    if application.MessageBox('Confirma a fechamento deste caixa?', 'Caixa',
      mb_yesno + mb_iconquestion) = idyes then
    begin
      FRMMODULO.qrcaixa_operador.Edit;
      FRMMODULO.qrcaixa_operador.FieldByName('situacao').asinteger := 2;
      FRMMODULO.qrcaixa_operador.Post;
      FRMMODULO.conexao.Commit;
      LSITOPERADOR.Caption := 'FECHADO';
      LSITOPERADOR.Font.Color := CLRED;
      bcaixafechadoClick(frmcaixa);
      if application.MessageBox('Deseja imprimir a folha de caixa?', 'Aviso',
        mb_yesno + mb_iconquestion) = idyes then
      begin
        FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.create(self);
        FRMLISTA_CAIXA2.ShowModal;
      end;
    end;
  end;
end;

procedure Tfrmcaixa.wwDBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
  if qrcaixa_mov.FieldByName('SAIDA').asfloat > 0 then
    wwDBGrid1.Canvas.Font.Color := CLRED;

  wwDBGrid1.DefaultDrawDataCell(Rect, Field, State);
end;

procedure Tfrmcaixa.bincluirClick(Sender: TObject);
begin
  qrcaixa_mov.Insert;
  qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
  qrcaixa_mov.FieldByName('codoperador').asstring :=
    FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
  qrcaixa_mov.FieldByName('codcaixa').asstring :=
    FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
  qrcaixa_mov.FieldByName('data').asdatetime :=
    FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;

  frmcaixa_ficha := tfrmcaixa_ficha.create(self);
  frmcaixa_ficha.ShowModal;
  
  qrcaixa_mov.Last;
end;

procedure Tfrmcaixa.balterarClick(Sender: TObject);
var
  cod: string;
begin
  if (qrcaixa_mov.FieldByName('movimento').asinteger = 1) or
    (qrcaixa_mov.FieldByName('movimento').asinteger = 2) then
  begin
    cod := qrcaixa_mov.FieldByName('codigo').asstring;
    qrcaixa_mov.Edit;
    if qrcaixa_mov.FieldByName('movimento').asinteger = 2 then
    begin
      qrcaixa_mov.FieldByName('valor').asfloat :=
        qrcaixa_mov.FieldByName('valor').asfloat * (-1);
    end;

    frmcaixa_ficha := tfrmcaixa_ficha.create(self);
    frmcaixa_ficha.ShowModal;

    qrcaixa_mov.Locate('codigo', cod, [loCaseInsensitive]);
  end
  else
  begin
    application.MessageBox('Este lançamento não pode ser alterado!', 'Aviso',
      mb_ok + MB_ICONWARNING);
  end;
end;

procedure Tfrmcaixa.brelatorioClick(Sender: TObject);
begin
  if frmprincipal.acesso(codigo_usuario, '06.04') = 'NAO' then
  begin
    application.MessageBox('Acesso não permitido!', 'Atenção',
      mb_ok + mb_iconerror);
    exit;
  end;

  FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.create(self);
  FRMLISTA_CAIXA2.ShowModal;
end;

procedure Tfrmcaixa.btcaixapp01Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmcaixa.btcaixapp02Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmcaixa.bexcluirClick(Sender: TObject);
begin
  if (qrcaixa_mov.FieldByName('movimento').asinteger = 1) or
    (qrcaixa_mov.FieldByName('movimento').asinteger = 2) then
  begin
    if frmprincipal.autentica('Excluir Lancto.caixa', 4) then
    begin
      RENTRADA.value := RENTRADA.value - frmcaixa.qrcaixa_mov.FieldByName
        ('entrada').asfloat;
      RSAIDA.value := RSAIDA.value - frmcaixa.qrcaixa_mov.FieldByName
        ('saida').asfloat;
      frmcaixa.RSALDO.value := RENTRADA.value - RSAIDA.value;

      frmprincipal.logUC('Excluiu Movimento Caixa - ' + qrcaixa_mov.FieldByName
        ('historico').asstring, 3);
      qrcaixa_mov.delete;
      FRMMODULO.conexao.Commit;
    end
    else
    begin
      application.MessageBox('Acesso não permitido!', 'Erro!',
        mb_ok + mb_iconerror);
    end;
  end
  else
  begin
    application.MessageBox('Este lançamento não pode ser excluído!', 'Aviso',
      mb_ok + MB_ICONWARNING);
  end;
end;

procedure Tfrmcaixa.Incluir1Click(Sender: TObject);
begin
  if bincluir.Enabled then
    bincluirClick(frmcaixa);
end;

procedure Tfrmcaixa.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcaixa.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcaixa.Alterar1Click(Sender: TObject);
begin
  if balterar.Enabled then
    balterarClick(frmcaixa);
end;

procedure Tfrmcaixa.Excluir1Click(Sender: TObject);
begin
  if bexcluir.Enabled then
    bexcluirClick(frmcaixa);
end;

procedure Tfrmcaixa.Relatrios2Click(Sender: TObject);
begin
  if brelatorio.Enabled then
    brelatorioClick(frmcaixa);
end;

procedure Tfrmcaixa.Sair2Click(Sender: TObject);
begin
  if bfechar.Enabled then
    bfecharClick(frmcaixa);
end;

procedure Tfrmcaixa.W7ActiveLabel1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmcaixa.W7ActiveLabel6Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

end.
{

  // - 12345678901234567890

  00 - IMPLANTAÇÃO DE SALDO
  01 - LANCTO. ENTRADA
  02 - LANCTO. SAIDA
  03 - VENDA DINHEIRO
  04 - VENDA CREDIARIO
  05 - VENDA CHEQUE A VISTA
  06 - VENDA CHEQUE A PRAZO
  07 - VENDA CARTAO CREDITO
  08 - VENDA CARTAO DEBITO
  09 - RECEBTO. DINHEIRO
  10 - RECEBTO. CHEQUE A.V.
  11 - RECEBTO. CHEQUE A.P.
  13 - RECEBTO. DE JUROS
  14 - DESCONTO NO RECEBTO.
  15 - RECEBTO. CARTAO
  16 - RECEBTO. BOLETO
  17 - OUTRAS ENTRADAS
  18 - OUTRAS SAIDAS
  19 - O.S. DINHEIRO
  20 - O.S. CREDIARIO
  21 - O.S. CHEQUE A VISTA
  22 - O.S. CHEQUE A PRAZO
  23 - O.S. CARTAO CREDITO
  24 - O.S. CARTAO DEBITO
  25 - PAGTO - DINHEIRO
  26 - PAGTO - CHEQUE
  27 - PAGTO - CHEQUE TERC.
  28 - PAGTO - OUTROS
  29 - PAGTO - CARTÃO DÉB.
  30 - PAGTO - JUROS
  31 - PAGTO - DEBITO CONTA

  40 - VENDA CONVENIO
  41 - VENDA CONVENIO VIDALINK
  42 - VENDA FINANCEIRA



}
