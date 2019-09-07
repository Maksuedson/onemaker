unit DRE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, AdvGlowButton, ExtCtrls, DB, DBAccess, Grids, DBGrids, {CRGrid,} frxClass, frxDBSet, frxDesgn,
  Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit,
  AdvReflectionImage;

type
  TfrmDRE = class(TForm)
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    DateEdit1: TJvDateEdit;
    DateEdit2: TJvDateEdit;
    qrDRE: TZQuery;
    frxDesigner1: TfrxDesigner;
    fsDRE: TfrxDBDataset;
    relDRE: TfrxReport;
    PopupMenu1: TPopupMenu;
    retorna1: TMenuItem;
    qrDREnome_tipo: TStringField;
    qrDRECLASSIFICACAO: TWideStringField;
    qrDRETIPO: TIntegerField;
    qrDRENOME_CONTA: TWideStringField;
    qrDRETOTAL: TExtendedField;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure bitbtn1Click(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure qrDRECalcFields(DataSet: TDataSet);
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
  frmDRE: TfrmDRE;
  data_caixa: tdatetime;
    const
   sc_DragMove = $f012;
implementation

uses modulo, principal;

{$R *.dfm}

procedure TfrmDRE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmDRE.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmDRE.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TfrmDRE.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDRE.bimprimirClick(Sender: TObject);
begin

  qrDRE.close;
  qrDRE.sql.clear;
  qrDRE.sql.add('Select');
  qrDRE.sql.add('  Classificacao,');
  qrDRE.sql.add('  max(tipo) as tipo,');
  qrDRE.sql.add('  max(Nome_Conta) as Nome_conta,');
  qrDRE.sql.add('  sum(Total) as Total');
  qrDRE.sql.add('from');
  qrDRE.sql.add('  ( Select');
  qrDRE.sql.add('      c000035.classificacao as Classificacao,');
  qrDRE.sql.add('      c000035.tipo as tipo,');
  qrDRE.sql.add('      c000035.conta as Nome_Conta,');
  qrDRE.sql.add('      sum(c000042.Valor) as Total');
  qrDRE.sql.add('    from');
  qrDRE.sql.add('      c000042, c000035');
  qrDRE.sql.add('    where');
  qrDRE.sql.add('      c000042.codconta = c000035.codigo');
  qrDRE.sql.add('      and c000042.DATA between :datai and :dataf');
  qrDRE.sql.add('    group by');
  qrDRE.sql.add('      Classificacao,');
  qrDRE.sql.add('      tipo,');
  qrDRE.sql.add('      Nome_Conta');
  qrDRE.sql.add('    UNION');
  qrDRE.sql.add('    Select');
  qrDRE.sql.add('      c000035.classificacao as Classificacao,');
  qrDRE.sql.add('      c000035.tipo as tipo,');
  qrDRE.sql.add('      c000035.conta as Nome_Conta,');
  qrDRE.sql.add('      sum(c000044.Valor) as Total');
  qrDRE.sql.add('    from');
  qrDRE.sql.add('      c000044, c000035');
  qrDRE.sql.add('    where');
  qrDRE.sql.add('      c000044.codconta = c000035.codigo');
  qrDRE.sql.add('      and c000044.DATA between :datai and :dataf');
  qrDRE.sql.add('    group by');
  qrDRE.sql.add('      Classificacao,');
  qrDRE.sql.add('      tipo,');
  qrDRE.sql.add('      Nome_Conta');
  qrDRE.sql.add('  )  as tmp');
  qrDRE.sql.add('  group by classificacao');
  qrDRE.parambyname('datai').asdatetime := DateEdit1.date;
  qrDRE.parambyname('dataf').asdatetime := DateEdit2.date;
  qrDRE.open;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  frmmodulo.qrrelatorio.FIELDBYNAME('LINHA2').ASSTRING := 'PERÍODO: ' +
    DateEdit1.TEXT + ' A ' + DateEdit2.TEXT;

  relDRE.LoadFromFile('\OneMaker\server\rel\f000201.fr3');
  relDRE.ShowReport;

  frmPrincipal.logUC('Abriu Relatorio DRE', 0);
end;

procedure TfrmDRE.FormShow(Sender: TObject);
begin
  frmmodulo.QRCAIXA_OPERADOR.open;
  frmmodulo.QRCAIXA_OPERADOR.LOCATE('CODIGO', '000099', [LOCASEINSENSITIVE]);
  data_caixa := frmmodulo.QRCAIXA_OPERADOR.FIELDBYNAME('data').asdatetime;
  DateEdit1.date := data_caixa;
  DateEdit2.date := data_caixa;
end;

procedure TfrmDRE.DateEdit2Exit(Sender: TObject);
begin
  if DateEdit2.date < DateEdit1.date then
    DateEdit2.date := DateEdit1.date;
end;

procedure TfrmDRE.bitbtn1Click(Sender: TObject);
begin
  relDRE.LoadFromFile('\OneMaker\server\rel\f000201.fr3');
  relDRE.DesignReport;
end;

procedure TfrmDRE.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmDRE.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bimprimir.SETFOCUS;
end;

procedure TfrmDRE.qrDRECalcFields(DataSet: TDataSet);
begin
  if qrDRE.FIELDBYNAME('tipo').asinteger = 1 then
    qrDRE.FIELDBYNAME('nome_tipo').ASSTRING := 'R E C E I T A S'
  else
    qrDRE.FIELDBYNAME('nome_tipo').ASSTRING := 'D E S P E S A S';
end;

procedure TfrmDRE.retorna1Click(Sender: TObject);
begin
  bcancelarClick(frmDRE);
end;

end.

