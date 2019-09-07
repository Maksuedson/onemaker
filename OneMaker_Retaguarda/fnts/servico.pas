unit servico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, AdvGlowButton, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxCheckBox,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, UCBase, dxGDIPlusClasses, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls;

type
  Tfrmservico = class(TForm)
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
    dsservico2: TDataSource;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    LRENDA: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    ERENDA: TJvDBCalcEdit;
    Label36: TLabel;
    DBEdit28: TDBEdit;
    blocgrupo_servico: TBitBtn;
    DBEdit30: TDBEdit;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    pgravar1: TFlatPanel;
    bitbtn6: TAdvGlowButton;
    Label3: TLabel;
    ECOMISSAO: TJvDBCalcEdit;
    UCControls1: TUCControls;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    pgravar: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
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
    procedure DBEdit28Exit(Sender: TObject);
    procedure blocgrupo_servicoClick(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ERENDAExit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure ECOMISSAOKeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmservico: Tfrmservico;
  comando: string;
    const
   sc_DragMove = $f012;

implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, loc_grupo_servico,
  grupo_servico, xloc_servico, lista_servicos2;

{$R *.dfm}

procedure Tfrmservico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmservico.FormShow(Sender: TObject);
begin

  frmmodulo.qrgrupo_servico.close;
  frmmodulo.qrgrupo_servico.sql.clear;
  frmmodulo.qrgrupo_servico.sql.add('select * from c000012 order by grupo');
  frmmodulo.qrgrupo_servico.open;
  frmmodulo.qrgrupo_servico.IndexFieldNames := 'grupo';

  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrservico.close;
  frmmodulo.qrservico.sql.clear;
  frmmodulo.qrservico.sql.add('select * from c000011 order by codigo');
  frmmodulo.qrservico.open;
  frmmodulo.qrservico.first;
  pficha.Enabled := false;
  if frmmodulo.qrconfig.FieldByName('ramo_atividade').AsInteger = 5 then
  begin
    frmservico.Caption := 'Serviços';
  end;
end;

procedure Tfrmservico.enomeEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmservico.enomeExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmservico.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrservico.insert;
  frmmodulo.qrservico.FieldByName('codigo').asstring :=
    frmprincipal.codifica('000011');
  pficha.Enabled := true;
  DBEdit2.setfocus;
  pgravar.visible := true;
  PopupMenu := Pop2;
end;

procedure Tfrmservico.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmservico.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmservico.balterarClick(Sender: TObject);
begin

  if DBEdit1.Text <> '' then
  begin

    frmmodulo.qrservico.Edit;
    pficha.Enabled := true;
    DBEdit2.setfocus;
    pgravar.visible := true;
    PopupMenu := Pop2;
  end
  else
  begin
    Showmessage('Nenhum registro foi selecionado!');
  end;

end;

procedure Tfrmservico.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir servico', 4) then
  begin
    frmprincipal.logUC('Excluiu Servicos - ' + DBEdit2.Text, 3);
    frmmodulo.qrservico.Delete;
    frmmodulo.Conexao.commit;

  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmservico.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmservico.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin

  if DBEdit2.Text = '' then
  begin
    Application.messagebox('Favor informar o nome do Serviço!', 'Atenção',
      mb_ok + mb_iconerror);
    DBEdit2.setfocus;
    exit;
  end;

  if DBEdit28.Text = '' then
  begin
    Application.messagebox('Favor informar o Grupo do Serviço!', 'Atenção',
      mb_ok + mb_iconerror);
    DBEdit28.setfocus;
    exit;
  end;

  if (frmmodulo.qrservico.State = dsinsert) then
  begin
    frmprincipal.logUC('Incluiu Servicos - ' + DBEdit2.Text, 1);
    frmmodulo.qrservico.post;
  end;

  if (frmmodulo.qrservico.State = dsedit) then
  begin
    frmprincipal.logUC('Alterou Servicos - ' + DBEdit2.Text, 2);
    frmmodulo.qrservico.post;
  end;

  frmmodulo.Conexao.commit;
  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
end;

procedure Tfrmservico.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrservico.State = dsinsert) or
    (frmmodulo.qrservico.State = dsedit) then
  begin
    if (frmmodulo.qrservico.State = dsinsert) then
    begin
      // frmprincipal.transMestre.active := true;
      frmprincipal.qrmestre.close;
      frmprincipal.qrmestre.sql.clear;
      frmprincipal.qrmestre.sql.add
        ('update c000000 set sequencia = sequencia - 1 where codigo = ''000011''');
      frmprincipal.qrmestre.execsql;
      // frmprincipal.transMestre.commit;
    end;

    frmmodulo.qrservico.cancel;
  end;

  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
  comando := '';
end;

procedure Tfrmservico.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmservico.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrservico.first;
end;

procedure Tfrmservico.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrservico.last;
end;

procedure Tfrmservico.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrservico.prior;
end;

procedure Tfrmservico.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrservico.next;
end;

procedure Tfrmservico.etipoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmservico.edata_cadastroEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  if frmmodulo.qrservico.State = dsinsert then
end;

procedure Tfrmservico.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmservico.DBEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmservico.DBEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

end;

procedure Tfrmservico.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmservico.RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmservico.DBEdit28Exit(Sender: TObject);
begin

  tedit(Sender).Color := clwindow;
  if (frmmodulo.qrservico.State = dsinsert) or
    (frmmodulo.qrservico.State = dsedit) then
  begin
    frmmodulo.qrservico.FieldByName('codgrupo').asstring :=
      frmprincipal.zerarcodigo(DBEdit28.Text, 6);
    if DBEdit28.Text <> '000000' then
      if not frmprincipal.Locregistro(frmmodulo.qrgrupo_servico, DBEdit28.Text,
        'codigo') then
        blocgrupo_servicoClick(frmservico)
      else
        ERENDA.setfocus
    else
      blocgrupo_servico.setfocus;
  end;

end;

procedure Tfrmservico.blocgrupo_servicoClick(Sender: TObject);
begin
  frmloc_grupo_servico := tfrmloc_grupo_servico.create(self);
  frmloc_grupo_servico.showmodal;
  frmmodulo.qrservico.FieldByName('codGRUPO').asstring :=
    frmmodulo.qrgrupo_servico.FieldByName('codigo').asstring;
  ERENDA.setfocus;
end;

procedure Tfrmservico.DateEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmservico.DBEdit4Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmservico.BitBtn6Click(Sender: TObject);
begin
  frmgrupo_servico := tfrmgrupo_servico.create(self);
  frmgrupo_servico.showmodal;

  frmmodulo.qrgrupo_servico.refresh;
end;

procedure Tfrmservico.blocalizarClick(Sender: TObject);
begin
  frmxloc_SERVICO := tfrmxloc_SERVICO.create(self);
  frmxloc_SERVICO.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrservico.Locate('codigo', resultado_pesquisa1,
      [loCaseInsensitive]);
  end;
end;

procedure Tfrmservico.BitBtn5Click(Sender: TObject);
begin
  frmlista_servicos2 := tfrmlista_servicos2.create(self);
  frmlista_servicos2.showmodal;
end;

procedure Tfrmservico.ERENDAExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if ERENDA.Value = 0 then
  begin
    Application.messagebox('Favor informar o valor do Serviço!', 'Atenção',
      mb_ok + mb_iconerror);
    ERENDA.setfocus;
    exit;
  end;
end;

procedure Tfrmservico.DBEdit2Exit(Sender: TObject);
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

procedure Tfrmservico.ECOMISSAOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;

end;

end.
