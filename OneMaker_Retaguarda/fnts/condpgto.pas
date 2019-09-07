unit condpgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, PageView, Wwdbigrd,
  Wwdbgrid, AdvGlowButton, wwdblook, Vcl.Imaging.jpeg, AdvMetroButton,
  AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  Tfrmcondpgto = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dscondpgto2: TDataSource;
    qrcondpgto: TZQuery;
    Relatrios1: TMenuItem;
    dscondpgto: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    dscondpgto_parcela: TDataSource;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Panel1: TPanel;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    wwDBGrid1: TwwDBGrid;
    Panel3: TPanel;
    wwDBGrid2: TwwDBGrid;
    bitbtn6: TAdvGlowButton;
    comboproduto: TwwDBLookupCombo;
    combotipo2: TwwDBLookupCombo;
    DBEdit4: TDBEdit;
    edtdias: TEdit;
    Label3: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    ckentrada: TCheckBox;
    Label5: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label6: TLabel;
    comboentrada: TwwDBLookupCombo;
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
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bfinalizarClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure edtdiasKeyPress(Sender: TObject; var Key: Char);
    procedure edtdiasExit(Sender: TObject);
    procedure combotipo2KeyPress(Sender: TObject; var Key: Char);
    procedure ckentradaKeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcondpgto: Tfrmcondpgto;
  comando: string;
    const
   sc_DragMove = $f012;


implementation

uses modulo, principal, loc_regiao, regiao, loc_funci;

{$R *.dfm}

procedure Tfrmcondpgto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcondpgto.FormShow(Sender: TObject);
begin

  pgravar.visible := false;
  pgravar.Align := alClient;

  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.SQL.clear;
  frmmodulo.qrcondpgto.SQL.add('select * from c000015 order by codigo');
  frmmodulo.qrcondpgto.open;
  frmmodulo.qrcondpgto.first;
  frmmodulo.qrformapgto.open;
  frmmodulo.qrformapgto.first;
  comboentrada.Text := 'DINHEIRO';
  combotipo2.Text := 'CARTEIRA';
  edtdias.Text := '30';
  pficha.Enabled := false;
end;

procedure Tfrmcondpgto.enomeEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcondpgto.enomeExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmcondpgto.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrcondpgto.insert;
  frmmodulo.qrcondpgto.fieldbyname('codigo').asstring :=
    frmprincipal.codifica('000015');
  pficha.Enabled := true;
  DBEdit2.setfocus;
  pgravar.visible := true;

  PopupMenu := Pop2;
end;

procedure Tfrmcondpgto.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcondpgto.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcondpgto.balterarClick(Sender: TObject);
begin

  if DBEdit1.Text <> '' then
  begin

    frmmodulo.qrcondpgto.Edit;
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

procedure Tfrmcondpgto.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.iCloud.CurrentUser.Privileged then
  // if frmprincipal.autentica('Excluir CONDPGTO', 4) then
  begin

    while frmmodulo.qrcondpgto_parcela.RecordCount <> 0 do
      frmmodulo.qrcondpgto_parcela.Delete;
    frmprincipal.logUC('Excluiu Condicoes de Pagamento - ' +
      frmmodulo.qrcondpgto.fieldbyname('condpgto').asstring, 3);
    frmmodulo.qrcondpgto.Delete;
    frmmodulo.Conexao.commit;

  end
  else
  begin
    Application.messagebox('Acesso não permitido!', 'Erro!',
      mb_ok + mb_iconerror);
  end;
end;

procedure Tfrmcondpgto.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcondpgto.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin

  if DBEdit2.Text = '' then
  begin
    Application.messagebox('Favor informar a condição de pagamento!', 'Erro',
      mb_ok + mb_iconerror);
    DBEdit2.setfocus;
    exit;

  end;

  if (frmmodulo.qrcondpgto_parcela.State = dsinsert) or
    (frmmodulo.qrcondpgto_parcela.State = dsedit) then
    frmmodulo.qrcondpgto_parcela.post;

  if (frmmodulo.qrcondpgto.State = dsinsert) then
  begin
    frmprincipal.logUC('Incluiu Condicao de Pagamento - ' +
      frmmodulo.qrcondpgto.fieldbyname('condpgto').asstring, 1);
    frmmodulo.qrcondpgto.post;
  end;

  if (frmmodulo.qrcondpgto.State = dsedit) then
  begin
    frmprincipal.logUC('Alterou Condicao de Pagamento - ' +
      frmmodulo.qrcondpgto.fieldbyname('condpgto').asstring, 2);
    frmmodulo.qrcondpgto.post;
  end;

  frmmodulo.Conexao.commit;
  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
end;

procedure Tfrmcondpgto.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrcondpgto.State = dsinsert) or
    (frmmodulo.qrcondpgto.State = dsedit) then
    frmmodulo.qrcondpgto.cancel;

  pficha.Enabled := false;
  pgravar.visible := false;
  PopupMenu := Pop1;
  comando := '';

end;

procedure Tfrmcondpgto.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcondpgto.etipoExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmcondpgto.edata_cadastroEnter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
  if frmmodulo.qrcondpgto.State = dsinsert then
end;

procedure Tfrmcondpgto.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcondpgto.DBEdit1Enter(Sender: TObject);
begin
  TEdit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcondpgto.DBEdit1Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;
end;

procedure Tfrmcondpgto.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bitbtn6.setfocus;
end;

procedure Tfrmcondpgto.RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcondpgto.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmcondpgto.BitBtn6Click(Sender: TObject);
var
  x, i, dias: integer;

begin
  try

    frmmodulo.qrcondpgto_parcela.close;
    frmmodulo.qrcondpgto_parcela.SQL.clear;
    frmmodulo.qrcondpgto_parcela.SQL.add
      ('delete from c000016 where codcondpgto = ''' +
      frmmodulo.qrcondpgto.fieldbyname('codigo').asstring + '''');
    frmmodulo.qrcondpgto_parcela.ExecSQL;

    frmmodulo.qrcondpgto_parcela.SQL.clear;
    frmmodulo.qrcondpgto_parcela.SQL.add
      ('select * from c000016 where codcondpgto = ''' +
      frmmodulo.qrcondpgto.fieldbyname('codigo').asstring +
      ''' order by numero');
    frmmodulo.qrcondpgto_parcela.open;

    i := frmmodulo.qrcondpgto.fieldbyname('parcelas').asinteger;
    x := 1;
    dias := StrToInt(edtdias.Text);

    while i <> 0 do
    begin
      frmmodulo.qrcondpgto_parcela.insert;
      frmmodulo.qrcondpgto_parcela.fieldbyname('codigo').asstring :=
        frmprincipal.codifica('000016');
      frmmodulo.qrcondpgto_parcela.fieldbyname('codcondpgto').asstring :=
        frmmodulo.qrcondpgto.fieldbyname('codigo').asstring;
      frmmodulo.qrcondpgto_parcela.fieldbyname('numero').asinteger := x;
      frmmodulo.qrcondpgto_parcela.fieldbyname('percentual').asfloat :=
        100 / frmmodulo.qrcondpgto.fieldbyname('parcelas').asinteger;
      frmmodulo.qrcondpgto_parcela.fieldbyname('dias').asinteger := (x * dias);
      frmmodulo.qrcondpgto_parcela.fieldbyname('tipo').asstring :=
        combotipo2.Text;

      if ckentrada.Checked then
      begin
        frmmodulo.qrcondpgto_parcela.fieldbyname('dias').asinteger :=
          (x * dias) - dias;
        if x = 1 then
          frmmodulo.qrcondpgto_parcela.fieldbyname('tipo').asstring :=
            comboentrada.Text;
      end;
      frmmodulo.qrcondpgto_parcela.post;
      i := i - 1;
      x := x + 1;
    end;
    frmmodulo.qrcondpgto_parcela.Refresh;
    wwDBGrid1.setfocus;

  except
  end;

end;

procedure Tfrmcondpgto.DBEdit1Change(Sender: TObject);
begin
  try
    frmmodulo.qrcondpgto_parcela.close;
    frmmodulo.qrcondpgto_parcela.SQL.clear;
    frmmodulo.qrcondpgto_parcela.SQL.add
      ('select * from c000016 where codcondpgto = ''' +
      frmmodulo.qrcondpgto.fieldbyname('codigo').asstring +
      ''' order by numero');
    frmmodulo.qrcondpgto_parcela.open;
  except
  end;
end;

procedure Tfrmcondpgto.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcondpgto.DBEdit4Exit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;

  if (frmmodulo.qrcondpgto.State = dsinsert) or
    (frmmodulo.qrcondpgto.State = dsedit) then
  begin
    try
      if DBEdit4.Text = '' then
      begin
        Showmessage('Favor informar um número válido!');
        DBEdit4.setfocus;
      end;
    except
      Showmessage('Quantidade inválida!');
      DBEdit4.setfocus;
    end;
  end;
end;

procedure Tfrmcondpgto.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcondpgto.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcondpgto.edtdiasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bitbtn6.setfocus;
end;

procedure Tfrmcondpgto.edtdiasExit(Sender: TObject);
begin
  TEdit(Sender).Color := clwindow;

  if (frmmodulo.qrcondpgto.State = dsinsert) or
    (frmmodulo.qrcondpgto.State = dsedit) then
  begin
    try
      if edtdias.Text = '' then
      begin
        Showmessage('Favor informar um número válido!');
        edtdias.setfocus;
      end;
    except
      Showmessage('Quantidade inválida!');
      edtdias.setfocus;
    end;
  end;

end;

procedure Tfrmcondpgto.combotipo2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcondpgto.ckentradaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

end.

/// /  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);
