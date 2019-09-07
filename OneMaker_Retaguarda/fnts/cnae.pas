unit cnae;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, Menus, ExtCtrls, AdvGlowButton,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, Wwkeycb,
  RzPanel, UCBase, dxGDIPlusClasses, Vcl.Buttons, cyBaseSpeedButton, cySpeedButton,
  acPNG;

type
  TfrmCnae = class(TForm)
    qrcnae: TZQuery;
    Panel1: TPanel;
    bfechar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    grid: TwwDBGrid;
    dscnae: TDataSource;
    bexcluir: TAdvGlowButton;
    Excluir1: TMenuItem;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    wwIncrementalSearch1: TwwIncrementalSearch;
    qrcnaeCODIGO: TWideStringField;
    qrcnaeCNAE: TWideStringField;
    qrcnaeDESCRICAO: TWideStringField;
    qrcnaeABREVIADO: TWideStringField;
    UCControls1: TUCControls;
    Panel2: TPanel;
    cySpeedButton2: TcySpeedButton;
    cySpeedButton1: TcySpeedButton;
    procedure bfecharClick(Sender: TObject);
    procedure qrcnaeBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qrcnaeAfterPost(DataSet: TDataSet);
    procedure bexcluirClick(Sender: TObject);
    procedure wwIncrementalSearch1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCnae: TfrmCnae;

implementation

uses modulo, principal;

{$R *.dfm}

procedure TfrmCnae.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCnae.qrcnaeBeforePost(DataSet: TDataSet);
begin
  qrcnae.fieldbyname('descricao').asstring :=
    ansiuppercase(qrcnae.fieldbyname('descricao').asstring);

  if qrcnae.state = dsinsert then
    qrcnae.fieldbyname('codigo').asstring := frmPrincipal.codifica('CNAE');
end;

procedure TfrmCnae.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmCnae.FormShow(Sender: TObject);
begin
  qrcnae.close;
  qrcnae.sql.clear;
  qrcnae.sql.add('select * from cnae');
  qrcnae.sql.add('order by descricao');
  qrcnae.Open;
end;

procedure TfrmCnae.qrcnaeAfterPost(DataSet: TDataSet);
begin
  frmmodulo.conexao.commit;
end;

procedure TfrmCnae.bexcluirClick(Sender: TObject);
begin
  if application.messagebox('Confirma a exclusão deste cnae?', 'Aviso',
    mb_yesno + MB_ICONWARNING) = idyes then
  begin
    frmPrincipal.logUC('Excluiu CNAE - ' + frmmodulo.qrcnae.fieldbyname('cnae')
      .asstring, 3);
    qrcnae.Delete;
    frmmodulo.conexao.commit;
  end;
end;

procedure TfrmCnae.wwIncrementalSearch1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_down then
  begin
    grid.setfocus;
  end;

end;

end.
