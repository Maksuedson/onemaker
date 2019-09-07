unit agenda_ficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, DB, Buttons, ExtCtrls,
  SHELLAPI, Menus, AdvGlowButton, maskutils, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel;

type
  Tfrmagenda_ficha = class(TForm)
    dsagenda: TDataSource;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBEdit3: TDBEdit;
    SpeedButton3: TSpeedButton;
    DBEdit4: TDBEdit;
    SpeedButton4: TSpeedButton;
    DBEdit5: TDBEdit;
    SpeedButton5: TSpeedButton;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    SpeedButton6: TSpeedButton;
    DBEdit8: TDBEdit;
    SpeedButton7: TSpeedButton;
    DBEdit9: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    pgravar: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    bt_agenda__ficha_fechar: TAdvMetroButton;
    btagenda00001: TAdvGlowButton;
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btagenda00001Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmagenda_ficha: Tfrmagenda_ficha;
     const
  sc_DragMove = $f012;
implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmagenda_ficha.SpeedButton6Click(Sender: TObject);
begin
  ShellExecute(ValidParentForm(Self).Handle, 'open', PChar('mailto:'+DBEDIT8.TEXT), nil, nil, SW_SHOW);
end;

procedure Tfrmagenda_ficha.DBComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN DBEDIT7.SETFOCUS;
end;

procedure Tfrmagenda_ficha.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmagenda_ficha.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmagenda_ficha.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qragenda.State = dsinsert) or (frmmodulo.qragenda.State = dsedit) then
  begin
    if (frmmodulo.qragenda.State = dsinsert) then
    begin
      frmprincipal.qrmestre.close;
      frmprincipal.qrmestre.sql.clear;
      frmprincipal.qrmestre.sql.add('update c000000 set sequencia = sequencia - 1 where codigo = ''000034''');
      frmprincipal.qrmestre.execsql;
    end;
    frmmodulo.qragenda.Cancel;
  end;
  close;
end;

procedure Tfrmagenda_ficha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmagenda_ficha.bgravarClick(Sender: TObject);
begin
  if (frmmodulo.qragenda.State = dsinsert) or (frmmodulo.qragenda.State = dsedit) then
  begin
    if dbcombobox1.Text = 'CLIENTE' then frmmodulo.qragenda.FieldByName('tipoi').asinteger := 1;
    if dbcombobox1.Text = 'CONTATO' then frmmodulo.qragenda.FieldByName('tipoi').asinteger := 2;
    if dbcombobox1.Text = 'FORNECEDOR' then frmmodulo.qragenda.FieldByName('tipoi').asinteger := 3;
    if dbcombobox1.Text = 'FUNCIONÁRIO' then frmmodulo.qragenda.FieldByName('tipoi').asinteger := 4;
    if dbcombobox1.Text = 'OUTROS' then frmmodulo.qragenda.FieldByName('tipoi').asinteger := 5;
    if dbcombobox1.Text = 'TRANSPORTADOR' then frmmodulo.qragenda.FieldByName('tipoi').asinteger := 6;

     frmmodulo.qragenda.post;
     frmmodulo.Conexao.Commit;

  end;
  close;
end;

procedure Tfrmagenda_ficha.btagenda00001Click(Sender: TObject);
begin
  bt_agenda__ficha_fechar.Click;
end;

procedure Tfrmagenda_ficha.DBComboBox1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmagenda_ficha.DBEdit7Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmagenda_ficha.DBComboBox1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if dbcombobox1.Text <> 'CLIENTE' then
  if dbcombobox1.Text <> 'CONTATO' then
  if dbcombobox1.Text <> 'FORNECEDOR' then
  if dbcombobox1.Text <> 'FUNCIONÁRIO' then
  if dbcombobox1.Text <> 'OUTROS' then
  if dbcombobox1.Text <> 'TRANSPORTADOR' then
  begin
    APPLICATION.MESSAGEBOX('Escolha uma opção válida!','Atenção',mb_ok+MB_ICONWARNING );
    dbcombobox1.setfocus;
  end;


end;

procedure Tfrmagenda_ficha.FormShow(Sender: TObject);
begin
  DBComboBox1.SetFocus;
end;

procedure Tfrmagenda_ficha.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmagenda_ficha.DBEdit2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
   IF DBEDIT2.Text <> '' THEN
  BEGIN
    if pos('-',dbedit2.text) = 0 then
       frmmodulo.qragenda.fieldbyname('TELEFONE1').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit2.text);
  end;
end;

procedure Tfrmagenda_ficha.DBEdit3Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
   IF DBEDIT3.Text <> '' THEN
  BEGIN
    if pos('-',dbedit3.text) = 0 then
       frmmodulo.qragenda.fieldbyname('TELEFONE2').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit3.text);
  end;
end;

procedure Tfrmagenda_ficha.DBEdit4Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
   IF DBEDIT4.Text <> '' THEN
  BEGIN
    if pos('-',dbedit4.text) = 0 then
       frmmodulo.qragenda.fieldbyname('TELEFONE3').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit4.text);
  end;
end;

procedure Tfrmagenda_ficha.DBEdit5Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
   IF DBEDIT5.Text <> '' THEN
  BEGIN
    if pos('-',dbedit5.text) = 0 then
       frmmodulo.qragenda.fieldbyname('CELULAR').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit5.text);
  end;
end;

procedure Tfrmagenda_ficha.DBEdit6Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
   IF DBEDIT6.Text <> '' THEN
  BEGIN
    if pos('-',dbedit6.text) = 0 then
       frmmodulo.qragenda.fieldbyname('FAX').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit6.text);
  end;
end;

end.
