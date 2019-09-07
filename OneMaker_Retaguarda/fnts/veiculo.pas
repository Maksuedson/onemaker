unit veiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, AdvGlowButton, wwdbedit,
  Wwdotdot, Wwdbcomb, UCBase, Vcl.Imaging.jpeg, dxGDIPlusClasses,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  Tfrmveiculo = class(TForm)
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsveiculo2: TDataSource;
    qrveiculo: TZQuery;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    LRENDA: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    dsveiculo: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    DBEdit9: TDBEdit;
    Label6: TLabel;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    euf: TwwDBComboBox;
    UCControls1: TUCControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure ERENDAKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmveiculo: Tfrmveiculo;
  comando: string;
     const
   sc_DragMove = $f012;

implementation

uses modulo, principal, xloc_veiculo;

{$R *.dfm}

procedure Tfrmveiculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmveiculo.FormShow(Sender: TObject);
begin

  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrveiculo.close;
  frmmodulo.qrveiculo.SQL.clear;
  frmmodulo.qrveiculo.SQL.add('select * from c000054 order by NOME');
  frmmodulo.qrveiculo.open;
  frmmodulo.qrveiculo.first;
  pficha.Enabled := false;
end;

procedure Tfrmveiculo.enomeEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmveiculo.enomeExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmveiculo.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrveiculo.insert;
  frmmodulo.qrveiculo.FieldByName('codigo').asstring :=
    frmprincipal.codifica('000054');
  pficha.Enabled := true;
  DBEdit2.setfocus;
  pgravar.visible := true;
  PopupMenu := Pop2;
end;

procedure Tfrmveiculo.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmveiculo.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmveiculo.balterarClick(Sender: TObject);
begin

  if DBEdit1.Text <> '' then
  begin

    frmmodulo.qrveiculo.Edit;
    pficha.Enabled := true;
    DBEdit1.setfocus;
    pgravar.visible := true;
    PopupMenu := Pop2;
  end
  else
  begin
    Showmessage('Nenhum registro foi selecionado!');
  end;

end;

procedure Tfrmveiculo.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir veiculo', 3) then
  begin
    frmprincipal.logUC('Excluiu Veiculo - ' + DBEdit2.Text, 3);
    frmmodulo.qrveiculo.Delete;
    frmmodulo.Conexao.commit;

  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmveiculo.blocalizarClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmXLOC_VEICULO := tfrmXLOC_VEICULO.create(self);
  frmXLOC_VEICULO.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrveiculo.Locate('codigo', resultado_pesquisa1,
      [loCaseInsensitive]);
  end;
end;

procedure Tfrmveiculo.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmveiculo.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin
  if DBEdit2.Text = '' then
  begin
    Application.messagebox('Favor informar um nome válido para este veículo!',
      'Atenção', mb_ok + mb_iconerror);
    DBEdit2.setfocus;
    exit;
  end;

  if (frmmodulo.qrveiculo.State = dsinsert) then
  begin
    frmprincipal.logUC('Incluiu Veiculo', 1);
    frmmodulo.qrveiculo.post;
  end;

  if (frmmodulo.qrveiculo.State = dsedit) then
  begin
    frmprincipal.logUC('Alterou Veiculo', 2);
    frmmodulo.qrveiculo.post;
  end;

  frmmodulo.Conexao.commit;
  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
end;

procedure Tfrmveiculo.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrveiculo.State = dsinsert) or
    (frmmodulo.qrveiculo.State = dsedit) then
    frmmodulo.qrveiculo.cancel;
  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
  comando := '';
end;

procedure Tfrmveiculo.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmveiculo.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrveiculo.first;
end;

procedure Tfrmveiculo.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrveiculo.last;
end;

procedure Tfrmveiculo.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrveiculo.prior;
end;

procedure Tfrmveiculo.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrveiculo.next;
end;

procedure Tfrmveiculo.etipoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmveiculo.edata_cadastroEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  if frmmodulo.qrveiculo.State = dsinsert then
end;

procedure Tfrmveiculo.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmveiculo.DBEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmveiculo.DBEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

end;

procedure Tfrmveiculo.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmveiculo.RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmveiculo.DateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmveiculo.DBEdit4Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmveiculo.ERENDAKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmveiculo.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmveiculo.DBEdit3Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

end;

procedure Tfrmveiculo.DBEdit2Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

  if DBEdit2.Text = '' then
  begin
    Application.messagebox('Favor informar um nome válido para este registro!',
      'Atenção', mb_ok + mb_iconerror);
    DBEdit2.setfocus;
    exit;
  end;

end;

end.
