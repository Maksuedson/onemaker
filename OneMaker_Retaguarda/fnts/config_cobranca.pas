unit config_cobranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, PageView,
  DB, Menus, ExtDlgs, FileCtrl, AdvGlowButton, maskutils, Collection;

type
  Tfrmconfig_cobranca = class(TForm)
    Panel1: TPanel;
    dsconfig_cobrebem: TDataSource;
    popincluir: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Fechar1: TMenuItem;
    pgravar: TPanel;
    popgravar: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    pficha: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    econta: TDBEdit;
    blocconta: TBitBtn;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit3: TDBEdit;
    OpenDialog1: TOpenDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    FlatPanel1: TPanel;
    Label15: TLabel;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    pnormal: TPanel;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    BitBtn6: TBitBtn;
    DBEdit13: TDBEdit;
    DBEdit4: TDBEdit;
    BitBtn7: TBitBtn;
    DBComboBox1: TDBComboBox;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    PageSheet4: TPageSheet;
    lremessa: TLabel;
    lretorno: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    localremessa: TDirectoryListBox;
    localretorno: TDirectoryListBox;
    PageSheet2: TPageSheet;
    GroupBox3: TGroupBox;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    PageSheet3: TPageSheet;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    pimpresso: TPanel;
    PageView2: TPageView;
    PageSheet5: TPageSheet;
    PageSheet6: TPageSheet;
    GroupBox4: TGroupBox;
    DBEdit5: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    FlatPanel2: TPanel;
    FlatPanel3: TPanel;
    FlatPanel4: TPanel;
    FlatPanel5: TPanel;
    FlatPanel6: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    FlatPanel8: TPanel;
    FlatPanel9: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    FlatPanel10: TPanel;
    FlatPanel11: TPanel;
    FlatPanel12: TPanel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    FlatPanel14: TPanel;
    FlatPanel15: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Label38: TLabel;
    DBEdit61: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    Label32: TLabel;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    Shape1: TShape;
    Shape2: TShape;
    Label35: TLabel;
    DBEdit62: TDBEdit;
    Label36: TLabel;
    DBComboBox2: TDBComboBox;
    Label37: TLabel;
    DBComboBox3: TDBComboBox;
    ViewSplit2: TViewSplit;
    FlatPanel7: TPanel;
    Label39: TLabel;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    Label40: TLabel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    DBNavigator1: TDBNavigator;
    econtadig: TDBEdit;
    DBEdit68: TDBEdit;
    Label41: TLabel;
    DBEdit69: TDBEdit;
    Label42: TLabel;
    DBEdit70: TDBEdit;
    RadioButton6: TRadioButton;
    Label43: TLabel;
    Label44: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure econtaExit(Sender: TObject);
    procedure bloccontaClick(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure bfecharClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit28KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit69Exit(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconfig_cobranca: Tfrmconfig_cobranca;

implementation

uses modulo, principal, loc_contacorrent;

{$R *.dfm}

procedure Tfrmconfig_cobranca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmconfig_cobranca.DBEdit2Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmconfig_cobranca.DBEdit2Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmconfig_cobranca.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmconfig_cobranca.econtaExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmconfig_cobranca.bloccontaClick(Sender: TObject);
begin
  frmloc_contacorrente := tfrmloc_contacorrente.create(self);
  frmloc_contacorrente.showmodal;
  frmmodulo.qrconfig_cobrebem.fieldbyname('codconta').asstring :=
    frmmodulo.qrCONTACORRENTE.fieldbyname('conta').asstring;
  frmmodulo.qrconfig_cobrebem.fieldbyname('codcontadig').asstring :=
    frmmodulo.qrCONTACORRENTE.fieldbyname('contadig').asstring;
  DBEdit3.setfocus;
end;

procedure Tfrmconfig_cobranca.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    perform(wm_nextdlgctl, 0, 0);
  end;
end;

procedure Tfrmconfig_cobranca.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmconfig_cobranca.bexcluirClick(Sender: TObject);
begin
  IF APPLICATION.MESSAGEBOX('Confirma a exclusão deste registro?', 'Atenção',
    mb_yesno + MB_ICONWARNING) = idyes then
  begin
    frmmodulo.qrconfig_cobrebem.Delete;
    frmmodulo.Conexao.commit;
  end;
end;

procedure Tfrmconfig_cobranca.balterarClick(Sender: TObject);
begin
  IF DBEdit1.Text <> '' THEN
  BEGIN
    pficha.enabled := true;
    frmconfig_cobranca.PopupMenu := popgravar;
    pgravar.Visible := true;
    frmmodulo.qrconfig_cobrebem.edit;
    DBEdit2.setfocus;
  END
  ELSE
  BEGIN
    APPLICATION.MESSAGEBOX('Nenhum registro foi selecionado!', 'Atenção!',
      mb_ok + mb_iconinformation);
  END;
end;

procedure Tfrmconfig_cobranca.bincluirClick(Sender: TObject);
begin
  pficha.enabled := true;
  frmconfig_cobranca.PopupMenu := popgravar;
  pgravar.Visible := true;
  frmmodulo.qrconfig_cobrebem.insert;
  frmmodulo.qrconfig_cobrebem.fieldbyname('codigo').asstring :=
    frmprincipal.codifica('000064');
  frmmodulo.qrconfig_cobrebem.fieldbyname('TIPO').asstring := '3';
  RadioButton6.Checked := true;
  DBEdit2.setfocus;
end;

procedure Tfrmconfig_cobranca.bgravarClick(Sender: TObject);
begin
  IF RadioButton1.Checked THEN
    frmmodulo.qrconfig_cobrebem.fieldbyname('DEMONSTRATIVO_TIPO')
      .asinteger := 1;
  IF RadioButton2.Checked THEN
    frmmodulo.qrconfig_cobrebem.fieldbyname('DEMONSTRATIVO_TIPO')
      .asinteger := 2;
  IF RadioButton3.Checked THEN
    frmmodulo.qrconfig_cobrebem.fieldbyname('DEMONSTRATIVO_TIPO')
      .asinteger := 3;
  IF RadioButton4.Checked THEN
    frmmodulo.qrconfig_cobrebem.fieldbyname('TIPO').asinteger := 1;
  IF RadioButton5.Checked THEN
    frmmodulo.qrconfig_cobrebem.fieldbyname('TIPO').asinteger := 2;
  IF RadioButton6.Checked THEN
    frmmodulo.qrconfig_cobrebem.fieldbyname('TIPO').asinteger := 3;

  frmmodulo.qrconfig_cobrebem.fieldbyname('remessa_local').asstring :=
    localremessa.Directory;
  frmmodulo.qrconfig_cobrebem.fieldbyname('retorno_local').asstring :=
    localretorno.Directory;

  pgravar.Visible := false;
  pficha.enabled := false;
  frmconfig_cobranca.PopupMenu := popincluir;
  frmmodulo.qrconfig_cobrebem.Post;
  frmmodulo.Conexao.commit;

end;

procedure Tfrmconfig_cobranca.bcancelarClick(Sender: TObject);
begin
  pgravar.Visible := false;
  pficha.enabled := false;
  frmconfig_cobranca.PopupMenu := popincluir;

  if (frmmodulo.qrconfig_cobrebem.State = dsinsert) or
    (frmmodulo.qrconfig_cobrebem.State = dsedit) then
  begin
    if (frmmodulo.qrconfig_cobrebem.State = dsinsert) then
    begin
      frmprincipal.qrmestre.close;
      frmprincipal.qrmestre.sql.clear;
      frmprincipal.qrmestre.sql.add
        ('update c000000 set sequencia = sequencia - 1 where codigo = ''000064''');
      frmprincipal.qrmestre.execsql;
    end;
    frmmodulo.qrconfig_cobrebem.cancel;
  end;
end;

procedure Tfrmconfig_cobranca.FormShow(Sender: TObject);
begin
  pimpresso.Align := alBottom;
  pgravar.Align := alClient;

  frmmodulo.qrconfig_cobrebem.close;
  frmmodulo.qrconfig_cobrebem.sql.clear;
  frmmodulo.qrconfig_cobrebem.sql.add('select * from c000064 order by codigo');
  frmmodulo.qrconfig_cobrebem.Open;
  frmmodulo.qrconfig_cobrebem.first;

  frmmodulo.qrCONTACORRENTE.close;
  frmmodulo.qrCONTACORRENTE.sql.clear;
  frmmodulo.qrCONTACORRENTE.sql.add('select * from c000041 order by conta');
  frmmodulo.qrCONTACORRENTE.Open;
  frmmodulo.qrCONTACORRENTE.first;

  frmmodulo.qrbanco.close;
  frmmodulo.qrbanco.sql.clear;
  frmmodulo.qrbanco.sql.add('select * from c000013 order by banco');
  frmmodulo.qrbanco.Open;
  frmmodulo.qrbanco.first;
end;

procedure Tfrmconfig_cobranca.econtaKeyPress(Sender: TObject; var Key: Char);
begin
  IF Key = #13 THEN // PERFORM(WM_NEXTDLGCTL,0,0);
  begin
    IF (frmmodulo.qrconfig_cobrebem.State = dsinsert) or
      (frmmodulo.qrconfig_cobrebem.State = dsedit) then
    begin
      if econta.Text <> '' then
        if not frmprincipal.Locregistro(frmmodulo.qrCONTACORRENTE, econta.Text,
          'conta') then
          bloccontaClick(frmconfig_cobranca)
        else
          DBEdit3.setfocus
      else
        blocconta.setfocus;
    end;
  end;
end;

procedure Tfrmconfig_cobranca.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  IF Key = #13 THEN
    bgravar.setfocus;
end;

procedure Tfrmconfig_cobranca.BitBtn6Click(Sender: TObject);
begin
  OpenDialog1.InitialDir := 'cob\Registros';
  OpenDialog1.Filter := '*.conf';
  IF OpenDialog1.Execute THEN
  BEGIN
    frmmodulo.qrconfig_cobrebem.fieldbyname('ARQUIVO_CONFIGURACAO').asstring :=
      OpenDialog1.FileName;
  END;
end;

procedure Tfrmconfig_cobranca.BitBtn7Click(Sender: TObject);
begin
  OpenPictureDialog1.InitialDir := 'img';
  IF OpenPictureDialog1.Execute THEN
  BEGIN
    frmmodulo.qrconfig_cobrebem.fieldbyname('ARQUIVO_logomarca').asstring :=
      OpenPictureDialog1.FileName;
  END;
end;

procedure Tfrmconfig_cobranca.DBCheckBox1Click(Sender: TObject);
begin
  if DBCheckBox1.Checked then
  begin
    lremessa.Visible := true;
    localremessa.Visible := true;
  end
  else
  begin
    lremessa.Visible := false;
    localremessa.Visible := false;
  end;
end;

procedure Tfrmconfig_cobranca.DBCheckBox2Click(Sender: TObject);
begin
  if DBCheckBox2.Checked then
  begin
    lretorno.Visible := true;
    localretorno.Visible := true;
  end
  else
  begin
    lretorno.Visible := false;
    localretorno.Visible := false;
  end;
end;

procedure Tfrmconfig_cobranca.DBEdit1Change(Sender: TObject);
begin
  try
    if frmmodulo.qrconfig_cobrebem.fieldbyname('remessa_local').asstring <> ''
    then
      localremessa.Directory := frmmodulo.qrconfig_cobrebem.fieldbyname
        ('remessa_local').asstring;
    if frmmodulo.qrconfig_cobrebem.fieldbyname('retorno_local').asstring <> ''
    then
      localretorno.Directory := frmmodulo.qrconfig_cobrebem.fieldbyname
        ('retorno_local').asstring;

    IF frmmodulo.qrconfig_cobrebem.fieldbyname('DEMONSTRATIVO_TIPO')
      .asinteger = 1 THEN
      RadioButton1.Checked := true;
    IF frmmodulo.qrconfig_cobrebem.fieldbyname('DEMONSTRATIVO_TIPO')
      .asinteger = 2 THEN
      RadioButton2.Checked := true;
    IF frmmodulo.qrconfig_cobrebem.fieldbyname('DEMONSTRATIVO_TIPO')
      .asinteger = 3 THEN
      RadioButton3.Checked := true;

    IF frmmodulo.qrconfig_cobrebem.fieldbyname('TIPO').asstring = '1' THEN
    BEGIN
      RadioButton4.Checked := true;
    END
    ELSE IF frmmodulo.qrconfig_cobrebem.fieldbyname('TIPO').asstring = '2' THEN
    BEGIN
      RadioButton5.Checked := true;
    END
    else IF frmmodulo.qrconfig_cobrebem.fieldbyname('TIPO').asstring = '3' THEN
    begin
      RadioButton6.Checked := true;
    end;

  except
  end;
end;

procedure Tfrmconfig_cobranca.PageView1Change(Sender: TObject);
begin
  IF PageView1.ActivePageINDEX = 1 THEN
  BEGIN
    try
      if frmmodulo.qrconfig_cobrebem.fieldbyname('remessa_local').asstring <> ''
      then
        localremessa.Directory := frmmodulo.qrconfig_cobrebem.fieldbyname
          ('remessa_local').asstring;
      if frmmodulo.qrconfig_cobrebem.fieldbyname('retorno_local').asstring <> ''
      then
        localretorno.Directory := frmmodulo.qrconfig_cobrebem.fieldbyname
          ('retorno_local').asstring;
    except
    end;
  END;
end;

procedure Tfrmconfig_cobranca.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  IF Key = #13 THEN
    bgravar.setfocus;
end;

procedure Tfrmconfig_cobranca.DBEdit28KeyPress(Sender: TObject; var Key: Char);
begin
  IF Key = #13 THEN
    bgravar.setfocus;
end;

procedure Tfrmconfig_cobranca.RadioButton4Click(Sender: TObject);
begin
  pnormal.Visible := true;
  pimpresso.Visible := false;
end;

procedure Tfrmconfig_cobranca.RadioButton6Click(Sender: TObject);
begin
  pnormal.Visible := true;
  pimpresso.Visible := false;
end;

procedure Tfrmconfig_cobranca.RadioButton5Click(Sender: TObject);
begin
  pimpresso.Visible := true;
  pnormal.Visible := false;
end;

procedure Tfrmconfig_cobranca.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrconfig_cobrebem.first;
end;

procedure Tfrmconfig_cobranca.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrconfig_cobrebem.prior;
end;

procedure Tfrmconfig_cobranca.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrconfig_cobrebem.next;
end;

procedure Tfrmconfig_cobranca.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrconfig_cobrebem.last;
end;

procedure Tfrmconfig_cobranca.DBEdit69Exit(Sender: TObject);
begin

  tedit(Sender).Color := clwindow;
  if DBEdit69.Text <> '' then
  begin
    if frmprincipal.TestaCnpj(DBEdit69.Text) then
    begin
      if pos('-', DBEdit69.Text) = 0 then
        frmmodulo.qrconfig_cobrebem.fieldbyname('CNPJ').asstring :=
          FormatMaskText('99.999.999/9999-99;0;_', DBEdit69.Text);
    end
    else
    begin
      APPLICATION.MESSAGEBOX('CNPJ Inválido!', 'Atenção',
        mb_ok + MB_ICONWARNING);
      frmmodulo.qrconfig_cobrebem.fieldbyname('CNPJ').asstring :=
        frmprincipal.somenteNumero(DBEdit69.Text);
      DBEdit69.setfocus;
    end;
  end;
end;

end.
