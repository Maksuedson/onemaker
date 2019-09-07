unit fluxo_caixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, AdvGlowButton, ExtCtrls, DB, DBAccess, Grids, DBGrids, {CRGrid,} frxClass, frxDBSet, frxDesgn,
  Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvReflectionImage,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit;

type
  TfrmFluxo_Caixa = class(TForm)
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    qrFluxo: TZQuery;
    GroupBox2: TGroupBox;
    rb_receber: TCheckBox;
    rb_pagar: TCheckBox;
    frxDesigner1: TfrxDesigner;
    fsfluxo: TfrxDBDataset;
    relfluxo: TfrxReport;
    rb_cheque: TCheckBox;
    rb_cheque_venc: TCheckBox;
    rb_conta: TCheckBox;
    PopupMenu1: TPopupMenu;
    retorna1: TMenuItem;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    AdvReflectionImage1: TAdvReflectionImage;
    qrFluxoTIPO: TIntegerField;
    qrFluxoDATA: TDateTimeField;
    qrFluxoHISTORICO: TWideStringField;
    qrFluxoCOMPLEMENTO: TWideStringField;
    qrFluxoVALOR: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure bitbtn1Click(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure retorna1Click(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFluxo_Caixa: TfrmFluxo_Caixa;
  data_caixa: tdatetime;
     const
   sc_DragMove = $f012;
implementation

uses modulo, principal;

{$R *.dfm}

procedure TfrmFluxo_Caixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmFluxo_Caixa.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmFluxo_Caixa.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TfrmFluxo_Caixa.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFluxo_Caixa.bimprimirClick(Sender: TObject);
var tipo : string;
begin
//nova sql usando procedure de pr_fluxocaixa
tipo := '3,5,7';
  if rb_receber.checked then  tipo :=tipo+',0' ;
    if rb_pagar.checked then   tipo :=tipo+',1';
     if rb_cheque_venc.checked  then tipo :=tipo+',2';
      if rb_cheque.checked then    tipo :=tipo+',6';
        if rb_conta.checked then tipo :=tipo+',4' ;
        //parametros

        qrFluxo.close;
        qrFluxo.sql.clear;
  qrFluxo.sql.add('SELECT * FROM PR_FLUXOCAIXA(');
 // qrFluxo.sql.add(datetostr(data_caixa) +', ' );
 qrFluxo.sql.add(quotedstr( formatdatetime('mm-dd-yyyyy ', data_caixa)) +', ' );
  qrFluxo.sql.add(quotedstr(formatdatetime('mm-dd-yyyyy ', DateEdit1.date)) +', ' );
  qrFluxo.sql.add(quotedstr(formatdatetime('mm-dd-yyyyy ', DateEdit2.date)) +')' );

  qrFluxo.sql.add(' where tipo in (' + tipo );
  qrFluxo.sql.add(')');

  //qrFluxo.parambyname('data_caixa').asdate := data_caixa;
  //qrFluxo.parambyname('datai').asdate := DateEdit1.date;
  //qrFluxo.parambyname('dataf').asdate := DateEdit2.date;
  //qrFluxo.parambyname('tipos').asstring := tipo;
  qrFluxo.open;



{  qrFluxo.close;
  qrFluxo.sql.clear;
  qrFluxo.sql.add('select');
  qrFluxo.sql.add('  tipo,');
  qrFluxo.sql.add('  data,');
  qrFluxo.sql.add('  historico,');
  qrFluxo.sql.add('  complemento,');
  qrFluxo.sql.add('  valor');
  qrFluxo.sql.add('from');
  qrFluxo.sql.add('  ( Select');
  qrFluxo.sql.add('      3 as tipo,');
  qrFluxo.sql.add('      caixa.data as data,');
  qrFluxo.sql.add('      ''Saldo do Caixa'' as historico,');
  qrFluxo.sql.add('      '''' as complemento,');
  qrFluxo.sql.add('      sum(caixa.valor) as valor');
  qrFluxo.sql.add('    from');
  qrFluxo.sql.add('      c000044 caixa');
  qrFluxo.sql.add('    where');
  qrFluxo.sql.add('      caixa.data = :data_caixa');
  qrFluxo.sql.add('    group by');
  qrFluxo.sql.add('      tipo,');
  qrFluxo.sql.add('      data,');
  qrFluxo.sql.add('      historico,');
  qrFluxo.sql.add('      complemento');

  if rb_receber.checked then
  begin
    qrFluxo.sql.add('    UNION');
    qrFluxo.sql.add('    Select');
    qrFluxo.sql.add('      0 as tipo, ');
    qrFluxo.sql.add('      ''CAST(:datai as date)'' as data,');
    qrFluxo.sql.add('      ''Contas a Receber vencidas'' as historico,');
    qrFluxo.sql.add('      '''' as complemento,');
    qrFluxo.sql.add('      sum(rec_vencida.valor_atual) as valor');
    qrFluxo.sql.add('    from');
    qrFluxo.sql.add('      c000049 rec_vencida');
    qrFluxo.sql.add('    where');
    qrFluxo.sql.add('      rec_vencida.data_vencimento < :datai and');
    qrFluxo.sql.add('      rec_vencida.situacao = 1');
    qrFluxo.sql.add('    group by');
    qrFluxo.sql.add('      tipo,');
    qrFluxo.sql.add('      data,');
    qrFluxo.sql.add('      historico,');
    qrFluxo.sql.add('      COMPLEMENTO');
  end;
  if rb_pagar.checked then
  begin
    qrFluxo.sql.add('    UNION');
    qrFluxo.sql.add('    Select');
    qrFluxo.sql.add('      1 as tipo,');
        qrFluxo.sql.add('      ''CAST(:datai as date)'' as data,');
   // qrFluxo.sql.add('      cast(' + quotedstr(formatdatetime('mm/dd/yyyy', DateEdit1.date)) +  ' as date) as data,');
    qrFluxo.sql.add('      ''Contas a Pagar Vencidas'' as historico,');
    qrFluxo.sql.add('      '''' AS complemento,');
    qrFluxo.sql.add('      sum(-pag_vencida.liquido) as valor');
    qrFluxo.sql.add('    from');
    qrFluxo.sql.add('      c000046 pag_vencida');
    qrFluxo.sql.add('    where');
    qrFluxo.sql.add('      pag_vencida.data_vencimento < :datai and');
    qrFluxo.sql.add('      pag_vencida.situacao = 1');
    qrFluxo.sql.add('    group by');
    qrFluxo.sql.add('      tipo,');
    qrFluxo.sql.add('      data,');
    qrFluxo.sql.add('      historico,');
    qrFluxo.sql.add('      COMPLEMENTO');
  end;

  if rb_cheque_venc.checked then
  begin
    qrFluxo.sql.add('    UNION');
    qrFluxo.sql.add('    Select');
    qrFluxo.sql.add('      2 as tipo,');
    qrFluxo.sql.add('      ''CAST(:datai as date)'' as data,');
    qrFluxo.sql.add('      ''Cheques a receber vencidos'' as historico,');
    qrFluxo.sql.add('      '''' as complemento,');
    qrFluxo.sql.add('      sum(ch_vencido.valor) as valor');
    qrFluxo.sql.add('    from');
    qrFluxo.sql.add('      c000040 ch_vencido');
    qrFluxo.sql.add('    where');
    qrFluxo.sql.add('      ch_vencido.vencimento < :datai and');
    qrFluxo.sql.add('      ch_vencido.situacao = 1');
    qrFluxo.sql.add('    group by');
    qrFluxo.sql.add('      tipo,');
    qrFluxo.sql.add('      data,');
    qrFluxo.sql.add('      historico,');
    qrFluxo.sql.add('      COMPLEMENTO');
  end;

  if rb_cheque.checked then
  begin
    qrFluxo.sql.add('    UNION');
    qrFluxo.sql.add('    Select');
    qrFluxo.sql.add('      6 as tipo,');
    qrFluxo.sql.add('      cheque.vencimento as data,');
    qrFluxo.sql.add('      ''Cheque a Receber'' as historico,');
    qrFluxo.sql.add('      '''' as complemento,');
    qrFluxo.sql.add('      sum(cheque.valor) as valor');
    qrFluxo.sql.add('    from');
    qrFluxo.sql.add('      c000040 cheque');
    qrFluxo.sql.add('    where');
    qrFluxo.sql.add('      cheque.vencimento between :datai and :dataf and');
    qrFluxo.sql.add('      cheque.situacao = 1');
    qrFluxo.sql.add('    group by');
    qrFluxo.sql.add('      tipo,');
    qrFluxo.sql.add('      data,');
    qrFluxo.sql.add('      historico,');
    qrFluxo.sql.add('      COMPLEMENTO');
  end;

  if rb_conta.checked then
  begin
    qrFluxo.sql.add('    UNION');
    qrFluxo.sql.add('    Select');
    qrFluxo.sql.add('      4 as tipo,');
    qrFluxo.sql.add('      mov_conta.data as data,');
    qrFluxo.sql.add('      ''Saldo da Conta '' as historico,');
    qrFluxo.sql.add('      (cc.conta ||'' - ''|| cc.titular) as complemento,');
    qrFluxo.sql.add('      sum(mov_conta.valor) as valor');
    qrFluxo.sql.add('    from');
    qrFluxo.sql.add('      c000042 mov_conta,');
    qrFluxo.sql.add('      c000041 cc');
    qrFluxo.sql.add('    where');
    qrFluxo.sql.add('      mov_conta.codcontacorrente = cc.codigo and');
    qrFluxo.sql.add('      mov_conta.data <= :datai');
    qrFluxo.sql.add('    group by');
    qrFluxo.sql.add('      tipo,');
    qrFluxo.sql.add('      data,');
    qrFluxo.sql.add('      historico,');
    qrFluxo.sql.add('      COMPLEMENTO');
  end;

  qrFluxo.sql.add('    UNION');
  qrFluxo.sql.add('    Select');
  qrFluxo.sql.add('      5 as tipo,');
  qrFluxo.sql.add('      receber.data_vencimento as data,');
  qrFluxo.sql.add('      ''Contas a Receber'' as historico,');
  qrFluxo.sql.add('      '''' as complemento,');
  qrFluxo.sql.add('      sum(receber.valor_atual) as valor');
  qrFluxo.sql.add('    from');
  qrFluxo.sql.add('      c000049 receber');
  qrFluxo.sql.add('    where');
  qrFluxo.sql.add
    ('      receber.data_vencimento between :datai and :dataf and');
  qrFluxo.sql.add('      receber.situacao = 1');
  qrFluxo.sql.add('    group by');
  qrFluxo.sql.add('      tipo,');
  qrFluxo.sql.add('      data,');
  qrFluxo.sql.add('      historico,');
  qrFluxo.sql.add('      COMPLEMENTO');

  qrFluxo.sql.add('    UNION');
  qrFluxo.sql.add('    Select');
  qrFluxo.sql.add('      7 as tipo,');
  qrFluxo.sql.add('      pagar.data_vencimento as data,');
  qrFluxo.sql.add('      ''Contas a Pagar'' as historico,');
  qrFluxo.sql.add('      '''' as complemento,');
  qrFluxo.sql.add('      sum(-pagar.liquido) as valor');
  qrFluxo.sql.add('    from');
  qrFluxo.sql.add('      c000046 pagar');
  qrFluxo.sql.add('    where');
  qrFluxo.sql.add('      pagar.data_vencimento between :datai and :dataf and');
  qrFluxo.sql.add('      pagar.situacao = 1');
  qrFluxo.sql.add('    group by');
  qrFluxo.sql.add('      tipo,');
  qrFluxo.sql.add('      data,');
  qrFluxo.sql.add('      historico,');
  qrFluxo.sql.add('      COMPLEMENTO');

  qrFluxo.sql.add('  ) as TMP');
  qrFluxo.sql.add('Order by data, tipo');
  qrFluxo.parambyname('data_caixa').asdatetime := data_caixa;
  qrFluxo.parambyname('datai').asdatetime := DateEdit1.date;
  qrFluxo.parambyname('dataf').asdatetime := DateEdit2.date;
  qrFluxo.open;     }

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  frmmodulo.qrrelatorio.FIELDBYNAME('LINHA2').ASSTRING := 'PERÍODO: ' +
    DateEdit1.TEXT + ' A ' + DateEdit2.TEXT;

  relfluxo.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\rel\f000200.fr3');
  relfluxo.ShowReport;
  frmPrincipal.logUC('Abriu Relatorio Fluxo de Caixa', 0);
end;

procedure TfrmFluxo_Caixa.FormShow(Sender: TObject);
begin
  frmmodulo.QRCAIXA_OPERADOR.open;
  frmmodulo.QRCAIXA_OPERADOR.LOCATE('CODIGO', '000099', [LOCASEINSENSITIVE]);
  data_caixa := frmmodulo.QRCAIXA_OPERADOR.FIELDBYNAME('data').asdatetime;
  DateEdit1.date := data_caixa;
  DateEdit2.date := data_caixa;
end;

procedure TfrmFluxo_Caixa.DateEdit1Exit(Sender: TObject);
begin
  if DateEdit1.date < data_caixa then
    DateEdit1.date := data_caixa;
end;

procedure TfrmFluxo_Caixa.DateEdit2Exit(Sender: TObject);
begin
  if DateEdit2.date < DateEdit1.date then
    DateEdit2.date := DateEdit1.date;
end;

procedure TfrmFluxo_Caixa.bitbtn1Click(Sender: TObject);
begin
  relfluxo.LoadFromFile(ExtractFilePath(Application.ExeName) +
    '\rel\f000200.fr3');
  relfluxo.DesignReport;
end;

procedure TfrmFluxo_Caixa.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  IF Key = #13 THEN
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmFluxo_Caixa.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  IF Key = #13 THEN
    bimprimir.SETFOCUS;
end;

procedure TfrmFluxo_Caixa.retorna1Click(Sender: TObject);
begin
  close;
end;

end.
