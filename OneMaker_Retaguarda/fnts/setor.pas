unit setor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  AdvGlowButton, Wwdbigrd, Wwdbgrid, UCBase, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel;

type
  TfrmSetor = class(TForm)
    Pop1: TPopupMenu;
    Excluir1: TMenuItem;
    Fechar1: TMenuItem;
    dssetor: TDataSource;
    qrsetor: TZQuery;
    Panel2: TPanel;
    bexcluir: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    wwDBGrid1: TwwDBGrid;
    UCControls1: TUCControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure qrsetorBeforePost(DataSet: TDataSet);
    procedure qrsetorAfterPost(DataSet: TDataSet);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetor: TfrmSetor;
  comando: string;
    const
   sc_DragMove = $f012;

implementation

uses modulo, principal;

{$R *.dfm}

procedure TfrmSetor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmSetor.FormShow(Sender: TObject);
begin
  qrsetor.close;
  qrsetor.SQL.clear;
  qrsetor.SQL.add('select * from c000052 order by codigo');
  qrsetor.open;
  qrsetor.first;
end;

procedure TfrmSetor.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmSetor.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TfrmSetor.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir setor', 4) then
  begin
    frmprincipal.logUC('Excluiu Setor - '+ qrsetor.FieldByName('setor').AsString, 3);
    qrsetor.delete;
    frmmodulo.conexao.commit;

  end
  else
  begin
    Application.messagebox('Acesso n�o permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure TfrmSetor.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmSetor.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.SETFOCUS;
end;

procedure TfrmSetor.qrsetorBeforePost(DataSet: TDataSet);
begin

  if trim(qrsetor.fieldbyname('setor').asstring) = '' then
  begin
    Application.messagebox('Setor N�o Pode Ficar em Branco, Verifique!',
      'Aten��o!', mb_ok + MB_ICONEXCLAMATION);
    qrsetor.cancel;
    qrsetor.Prior;
    exit;
  end;

  qrsetor.fieldbyname('setor').asstring :=
    ansiuppercase(qrsetor.fieldbyname('setor').asstring);

  if qrsetor.State = dsinsert then
    qrsetor.fieldbyname('codigo').asstring := frmprincipal.codifica('000052')

end;

procedure TfrmSetor.qrsetorAfterPost(DataSet: TDataSet);
begin
  frmmodulo.conexao.commit;
end;

end.
