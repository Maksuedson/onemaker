unit convenio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, PageView, AdvGlowButton,
  wwdbedit, Wwdotdot, Wwdbcomb, UCBase, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit, JvDBControls,
  dxGDIPlusClasses;

type
  Tfrmconvenio = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsconvenio2: TDataSource;
    qrconvenio: TZQuery;
    Relatrios1: TMenuItem;
    dsconvenio: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    LRG: TLabel;
    LCPF: TLabel;
    Label3: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    DBEdit1: TDBEdit;
    edata_cadastro: TJvDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    qrloc: TZQuery;
    euf: TwwDBComboBox;
    UCControls1: TUCControls;
    Panel1: TPanel;
    bt_convenio01: TAdvMetroButton;
    bt_convenio02: TAdvMetroButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure edata_cadastroExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure bt_cad_voltarClick(Sender: TObject);
    procedure bt_cad_proximoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconvenio: Tfrmconvenio;
  comando: string;
  valorx: real;
   const
   sc_DragMove = $f012;

implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, xloc_convenio;

{$R *.dfm}

procedure Tfrmconvenio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmconvenio.enomeEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmconvenio.enomeExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmconvenio.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrconvenio.insert;
  frmmodulo.qrconvenio.fieldbyname('codigo').asstring :=
    frmprincipal.codifica('000071');
  pficha.Enabled := true;
  edata_cadastro.setfocus;
  pgravar.Visible := true;

  PopupMenu := Pop2;
end;

procedure Tfrmconvenio.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmconvenio.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmconvenio.balterarClick(Sender: TObject);
begin

  if DBEdit1.Text <> '' then
  begin

    frmmodulo.qrconvenio.Edit;
    pficha.Enabled := true;
    edata_cadastro.setfocus;
    pgravar.Visible := true;
    PopupMenu := Pop2;
  end
  else
  begin
    Showmessage('Nenhum registro foi selecionado!');
  end;

end;

procedure Tfrmconvenio.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir CONVENIO', 3) then
  begin

    qrloc.close;
    qrloc.sql.clear;
    qrloc.sql.add('select * from c000007 where codconvenio = ''' +
      DBEdit1.Text + '''');
    qrloc.open;

    if qrloc.recordcount > 0 then
    begin
      application.messagebox
        ('Existem clientes cadastrados para este convênio! Impossível prosseguir com exclusão!',
        'Aviso', mb_ok + MB_ICONerror);
      exit;
    end;

    frmprincipal.logUC('Excluiu Convenios - ' + DBEdit2.Text, 3);
    frmmodulo.qrconvenio.Delete;
    frmmodulo.Conexao.commit;

  end
  else
  begin
    application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + MB_ICONerror);
  end;
end;

procedure Tfrmconvenio.blocalizarClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_convenio := tfrmxloc_convenio.create(self);
  frmxloc_convenio.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrconvenio.Locate('codigo', resultado_pesquisa1,
      [loCaseInsensitive]);
  end;
end;

procedure Tfrmconvenio.bt_cad_proximoClick(Sender: TObject);
begin
  DBAdvGlowButton3.Click;
end;

procedure Tfrmconvenio.bt_cad_voltarClick(Sender: TObject);
begin
  DBAdvGlowButton2.Click;
end;

procedure Tfrmconvenio.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmconvenio.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin

  if DBEdit2.Text = '' then
  begin
    application.messagebox('Favor informar o nome do convênio!', 'Erro',
      mb_ok + MB_ICONerror);
    DBEdit2.setfocus;
    exit;

  end;

  if (frmmodulo.qrconvenio.State = dsinsert) then
  begin
    frmprincipal.logUC('Incluiu Convenio - ' + DBEdit2.Text, 1);
    frmmodulo.qrconvenio.post;
  end;

  if (frmmodulo.qrconvenio.State = dsedit) then
  begin
    frmprincipal.logUC('Alterou Convenio - ' + DBEdit2.Text, 2);
    frmmodulo.qrconvenio.post;
  end;

  frmmodulo.Conexao.commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := Pop1;
end;

procedure Tfrmconvenio.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrconvenio.State = dsinsert) or
    (frmmodulo.qrconvenio.State = dsedit) then
    frmmodulo.qrconvenio.cancel;

  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := Pop1;
  comando := '';

end;

procedure Tfrmconvenio.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmconvenio.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrconvenio.first;
end;

procedure Tfrmconvenio.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrconvenio.last;

end;

procedure Tfrmconvenio.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrconvenio.prior;

end;

procedure Tfrmconvenio.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrconvenio.next;

end;

procedure Tfrmconvenio.etipoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmconvenio.edata_cadastroEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  if frmmodulo.qrconvenio.State = dsinsert then
    edata_cadastro.Date := Date;
end;

procedure Tfrmconvenio.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmconvenio.DBEdit1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmconvenio.DBEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmconvenio.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmconvenio.RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmconvenio.DBEdit15Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if DBEdit15.Text <> '' then
  begin
    if (frmmodulo.qrconvenio.State = dsinsert) or
      (frmmodulo.qrconvenio.State = dsedit) then
    begin

      if frmprincipal.TestaCnpj(DBEdit15.Text) then
      begin
        // frmmodulo.qrCONVENIO.fieldbyname('cpf').asstring := FormatMaskText('99.999.999/9999-99;0;_',dbedit15.text);

        if pos('/', DBEdit15.Text) = 0 then
          frmmodulo.qrconvenio.fieldbyname('CNPJ').asstring :=
            FormatMaskText('99.999.999/9999-99;0;_', DBEdit15.Text);
      end
      else
      begin
        Showmessage('CNPJ Inválido!');
        DBEdit15.setfocus;
      end;
    end;
  end;
end;

procedure Tfrmconvenio.DBEdit8Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if DBEdit8.Text <> '' then
  begin
    if (frmmodulo.qrconvenio.State = dsinsert) or
      (frmmodulo.qrconvenio.State = dsedit) then
    begin
      if pos('-', DBEdit8.Text) = 0 then
        frmmodulo.qrconvenio.fieldbyname('cEP').asstring :=
          FormatMaskText('99999-999;0;_', DBEdit8.Text);

    end;
  end;

end;

procedure Tfrmconvenio.edata_cadastroExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

  if TJvDBDateEdit(Sender).Text <> '  /  /    ' then
  begin
    try
      TJvDBDateEdit(Sender).Date := strtodate(TJvDBDateEdit(Sender).Text);
    except
      Showmessage('Data Inválida');
      TJvDBDateEdit(Sender).setfocus;
    end;
  end;
end;

procedure Tfrmconvenio.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmconvenio.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    bgravar.setfocus;
  end;
end;

procedure Tfrmconvenio.BitBtn5Click(Sender: TObject);
begin
  //
end;

procedure Tfrmconvenio.FormShow(Sender: TObject);
begin
  frmmodulo.qrconvenio.close;
  frmmodulo.qrconvenio.sql.clear;
  frmmodulo.qrconvenio.sql.add('select * from c000071 order by codigo');
  frmmodulo.qrconvenio.open;

  pgravar.Align := alClient;
end;

procedure Tfrmconvenio.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmconvenio.DBEdit16Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if frmmodulo.qrconvenio.State = dsedit then
  begin
    if valorx <> frmmodulo.qrconvenio.fieldbyname('limite').asfloat then
    begin
      if frmprincipal.autentica('Alterar Convênio', 3) then
      begin
        //
      end
      else
      begin
        application.messagebox('Acesso não permitido!', 'Erro!',
          mb_ok + MB_ICONerror);
        frmmodulo.qrconvenio.fieldbyname('limite').asfloat := valorx;
      end;
    end;
  end;
end;

procedure Tfrmconvenio.DBEdit9Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if frmmodulo.qrconvenio.State = dsedit then
  begin
    if valorx <> frmmodulo.qrconvenio.fieldbyname('desconto').asfloat then
    begin
      if frmprincipal.autentica('Alterar Convênio', 3) then
      begin
        //
      end
      else
      begin
        application.messagebox('Acesso não permitido!', 'Erro!',
          mb_ok + MB_ICONerror);
        frmmodulo.qrconvenio.fieldbyname('desconto').asfloat := valorx;
      end;
    end;
  end;
end;

procedure Tfrmconvenio.DBEdit16Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  valorx := frmmodulo.qrconvenio.fieldbyname('LIMITE').asfloat;
end;

procedure Tfrmconvenio.DBEdit9Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  valorx := frmmodulo.qrconvenio.fieldbyname('desconto').asfloat;
end;

procedure Tfrmconvenio.DBEdit2Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

  if DBEdit2.Text = '' then
  begin
    application.messagebox('Favor informar um nome válido para este registro!',
      'Atenção', mb_ok + MB_ICONerror);
    DBEdit2.setfocus;
    exit;
  end;

end;

end.

/// /  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);
