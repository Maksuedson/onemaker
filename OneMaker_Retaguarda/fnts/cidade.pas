unit cidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, Menus, ExtCtrls, AdvGlowButton,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, Wwkeycb,
  RzPanel, UCBase, dxGDIPlusClasses, Vcl.Buttons, cyBaseSpeedButton, cySpeedButton;

type
  TfrmCidade = class(TForm)
    qrcidade: TZQuery;
    Panel1: TPanel;
    bfechar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    grid: TwwDBGrid;
    dscidade: TDataSource;
    qrcidadeCODIGO: TWideStringField;
    qrcidadeCIDADE: TWideStringField;
    qrcidadeUF: TWideStringField;
    qrcidadeCEP: TWideStringField;
    qrcidadeIBGE: TWideStringField;
    qrcidadeESTADO: TWideStringField;
    qrcidadeMUNICIPIO: TWideStringField;
    UCControls1: TUCControls;
    Panel2: TPanel;
    Label1: TLabel;
    wwIncrementalSearch1: TwwIncrementalSearch;
    procedure bfecharClick(Sender: TObject);
    procedure qrcidadeBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qrcidadeAfterPost(DataSet: TDataSet);
    procedure bexcluirClick(Sender: TObject);
    procedure wwIncrementalSearch1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCidade: TfrmCidade;

implementation

uses modulo, principal;

{$R *.dfm}

procedure TfrmCidade.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCidade.qrcidadeBeforePost(DataSet: TDataSet);
begin
  qrcidade.fieldbyname('cidade').asstring := ansiuppercase(qrcidade.fieldbyname('cidade').asstring);

  if qrcidade.state = dsinsert then qrcidade.fieldbyname('codigo').asstring := frmPrincipal.codifica('000006');
end;

procedure TfrmCidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCidade.FormShow(Sender: TObject);
begin
  qrcidade.close;
  qrcidade.sql.clear;
  qrcidade.sql.add('select * from c000006');
  qrcidade.sql.add('order by cidade');
  qrcidade.Open;
end;

procedure TfrmCidade.qrcidadeAfterPost(DataSet: TDataSet);
begin
  frmmodulo.conexao.commit;
end;

procedure TfrmCidade.bexcluirClick(Sender: TObject);
begin
  if application.messagebox('Confirma a exclusão desta cidade?', 'Aviso', mb_yesno + MB_ICONWARNING) = idyes then
  begin
   frmPrincipal.logUC('Excluiu Cidade - ' + qrcidade.fieldbyname('cidade')
      .asstring, 3);
    qrcidade.Delete;
    frmmodulo.conexao.commit;
  end;
end;

procedure TfrmCidade.wwIncrementalSearch1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_down then
  begin
    grid.setfocus;
  end;

end;

end.
