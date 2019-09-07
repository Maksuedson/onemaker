unit cfop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, AdvGlowButton, UCBase, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls;

type
  Tfrmcfop = class(TForm)
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
    plocalizar2: THeaderView;
    DBGrid1: TDBGrid;
    dscfop2: TDataSource;
    qrcfop: TZQuery;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    LRENDA: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    ERENDA: TJvDBCalcEdit;
    dscfop: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    RxDBCalcEdit1: TJvDBCalcEdit;
    Label10: TLabel;
    Label11: TLabel;
    RxDBCalcEdit2: TJvDBCalcEdit;
    Label12: TLabel;
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
    qrcfopCFOP: TStringField;
    qrcfopNATUREZA: TStringField;
    qrcfopTIPO: TIntegerField;
    qrcfopICMS: TFloatField;
    qrcfopISS: TFloatField;
    qrcfopOBS1: TStringField;
    qrcfopOBS2: TStringField;
    qrcfopOBS3: TStringField;
    qrcfopOBS4: TStringField;
    qrcfopFILTRO: TIntegerField;
    qrcfopVALOR1: TFloatField;
    qrcfopVALOR2: TFloatField;
    qrcfopVALOR3: TFloatField;
    qrcfopVALOR4: TFloatField;
    qrcfopVALOR5: TFloatField;
    qrcfopVALOR6: TFloatField;
    qrcfopVALOR7: TFloatField;
    qrcfopVALOR8: TFloatField;
    qrcfopVALOR9: TFloatField;
    qrcfopVALOR10: TFloatField;
    qrcfopST: TStringField;
    qrcfopCLASSIFICACAO_FISCAL: TStringField;
    qrcfopREDUCAO_ICMS: TFloatField;
    qrcfopMARGEM_AGREGADA: TFloatField;
    Label13: TLabel;
    DBEdit10: TDBEdit;
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
  frmcfop: Tfrmcfop;
  comando: string;
   const
   sc_DragMove = $f012;
implementation

uses modulo, principal, xloc_cfop;

{$R *.dfm}

procedure Tfrmcfop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcfop.FormShow(Sender: TObject);
begin
  pgravar.visible := false;
  pgravar.Align := alClient;
  frmmodulo.qrcfop.close;
  frmmodulo.qrcfop.SQL.clear;
  frmmodulo.qrcfop.SQL.add('select * from c000030 order by CFOP');
  frmmodulo.qrcfop.open;
  frmmodulo.qrcfop.first;
  pficha.Enabled := false;

end;

procedure Tfrmcfop.enomeEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcfop.enomeExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmcfop.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrcfop.insert;
  pficha.Enabled := true;
  DBEdit1.setfocus;
  pgravar.visible := true;
  PopupMenu := Pop2;
end;

procedure Tfrmcfop.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcfop.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcfop.balterarClick(Sender: TObject);
begin

  if DBEdit1.Text <> '' then
  begin

    frmmodulo.qrcfop.Edit;
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

procedure Tfrmcfop.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir cfop', 4) then
  begin
    frmprincipal.logUC('Excluiu CFOP - ' + DBEdit2.Text, 3);
    frmmodulo.qrcfop.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmcfop.blocalizarClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrcfop.Locate('cfop', resultado_pesquisa1, [loCaseInsensitive]);
  end;
end;

procedure Tfrmcfop.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcfop.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin

  if DBEdit1.Text = '' then
  begin
    Application.messagebox('Favor informar o CFOP!', 'Atenção',
      mb_ok + mb_iconerror);
    DBEdit1.setfocus;
    exit;
  end;

  if DBEdit2.Text = '' then
  begin
    Application.messagebox('Favor informar a Natureza da Operação!', 'Atenção',
      mb_ok + mb_iconerror);
    DBEdit2.setfocus;
    exit;
  end;

  if DBEdit3.Text = '' then
  begin
    Application.messagebox('Favor informar o Tipo de Operação!', 'Atenção',
      mb_ok + mb_iconerror);
    DBEdit3.setfocus;
    exit;
  end;

  if (frmmodulo.qrcfop.State = dsinsert) then
  begin
    frmprincipal.logUC('Incluiu CFOP - ' + DBEdit2.Text, 1);
    frmmodulo.qrcfop.post;
  end;

  if (frmmodulo.qrcfop.State = dsedit) then
  begin
    frmprincipal.logUC('Alterou CFOP - ' + DBEdit2.Text, 2);
    frmmodulo.qrcfop.post;
  end;

  frmmodulo.Conexao.commit;
  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
end;

procedure Tfrmcfop.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrcfop.State = dsinsert) or (frmmodulo.qrcfop.State = dsedit)
  then
    frmmodulo.qrcfop.cancel;
  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
  comando := '';
end;

procedure Tfrmcfop.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcfop.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrcfop.first;
end;

procedure Tfrmcfop.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrcfop.last;
end;

procedure Tfrmcfop.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrcfop.prior;
end;

procedure Tfrmcfop.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrcfop.next;
end;

procedure Tfrmcfop.etipoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmcfop.edata_cadastroEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  if frmmodulo.qrcfop.State = dsinsert then
end;

procedure Tfrmcfop.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcfop.DBEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcfop.DBEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmmodulo.qrcfop.State = dsinsert) and (DBEdit1.Text <> '') then
  begin
    qrcfop.close;
    qrcfop.SQL.clear;
    qrcfop.SQL.add('select * from c000030 where cfop = ''' +
      DBEdit1.Text + '''');
    qrcfop.open;
    if qrcfop.RecordCount > 0 then
    begin
      Application.messagebox('CFOP já Cadastrada! Verifique...', 'Atenção!',
        mb_ok + MB_ICONEXCLAMATION);
      DBEdit1.setfocus;
      exit;
    end;
  end;

end;

procedure Tfrmcfop.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcfop.RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcfop.DateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmcfop.DBEdit4Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmcfop.ERENDAKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcfop.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcfop.DBEdit3Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmmodulo.qrcfop.State = dsinsert) or (frmmodulo.qrcfop.State = dsedit)
  then
  begin

    if DBEdit3.Text <> '1' then
    begin
      if DBEdit3.Text <> '2' then
      begin
        if DBEdit3.Text <> '3' then
        begin
          if DBEdit3.Text <> '4' then
          begin
            Showmessage('Favor digitar 1,2,3 ou 4!');
            DBEdit3.setfocus;
          end;
        end;
      end;
    end;
  end;
end;

procedure Tfrmcfop.DBEdit2Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

end;

end.
