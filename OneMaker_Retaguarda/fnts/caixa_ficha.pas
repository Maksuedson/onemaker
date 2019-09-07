unit caixa_ficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, TFlatPanelUnit, Collection, Mask,
  DBCtrls, DB, Menus, AdvGlowButton, RzEdit, RzDBEdit, ACBrBase, ACBrEnterTab,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  Tfrmcaixa_ficha = class(TForm)
    Label5: TLabel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label6: TLabel;
    econta: TDBEdit;
    blocconta: TBitBtn;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    dscaixa_mov: TDataSource;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Panel4: TPanel;
    bgravar: TAdvGlowButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    ed_valor: TRzDBNumericEdit;
    ACBrEnterTab1: TACBrEnterTab;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    bfechar: TAdvMetroButton;
    ccaaii0025: TAdvGlowButton;
    procedure bgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButton1KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton2KeyPress(Sender: TObject; var Key: Char);
    procedure econtaEnter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure bloccontaClick(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure Gravar1Click(Sender: TObject);
    procedure ed_valorKeyPress(Sender: TObject; var Key: Char);
    procedure bfecharClick(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ccaaii0025Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcaixa_ficha: Tfrmcaixa_ficha;
  entrada_original, saida_original: real;
  // variaveis para pegar o valor da ent e saida, caso o
  // lancamento esteja sendo alterado.
    const
   sc_DragMove = $f012;
implementation

uses caixa, loc_conta, modulo, principal, ecf;

{$R *.dfm}

procedure Tfrmcaixa_ficha.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcaixa_ficha.bfecharClick(Sender: TObject);
begin
  FRMCAIXA.QRCAIXA_MOV.CANCEL;
  CLOSE;
end;

procedure Tfrmcaixa_ficha.bgravarClick(Sender: TObject);
begin

  if ed_valor.value = 0 then
  begin
    APPLICATION.MESSAGEBOX('Valor informar um valor válido!', 'Atenção',
      mb_ok + mb_iconerror);
    ed_valor.setfocus;
    exit;
  end;

  if RadioButton1.Checked then
  begin
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('ENTRADA').ASFLOAT := ed_valor.value;
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('SAIDA').ASFLOAT := 0;
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('MOVIMENTO').ASINTEGER := 1;
   //erro comunicacao
   // ecf_SUPRIMENTOX(ecf_modelo, FORMATFLOAT('##############0.00',
   //   ed_valor.value), FDINHEIRO);
    frmprincipal.logUC('Incluiu ou Alterou Movimento Entrada Caixa - ' + FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME
    ('historico').asstring, 2);
  end
  else
  begin
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('SAIDA').ASFLOAT := ed_valor.value;
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('ENTRADA').ASFLOAT := 0;
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('MOVIMENTO').ASINTEGER := 2;
    ed_valor.value := (ed_valor.value) * (-1);
    frmprincipal.logUC('Incluiu ou Alterou Movimento Saida Caixa - ' + FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME
    ('historico').asstring, 2);
    //erro comunicacao
    //ecf_sangriaX(ecf_modelo, FORMATFLOAT('##############0.00', ed_valor.value));
  end;

  FRMCAIXA.RENTRADA.value := FRMCAIXA.RENTRADA.value +
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('entrada').ASFLOAT - entrada_original;
  FRMCAIXA.Rsaida.value := FRMCAIXA.Rsaida.value +
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('saida').ASFLOAT - saida_original;
  FRMCAIXA.RSALDO.value := FRMCAIXA.RENTRADA.value - FRMCAIXA.Rsaida.value;



  FRMCAIXA.QRCAIXA_MOV.POST;
  FRMMODULO.CONEXAO.COMMIT;
  FRMCAIXA.QRCAIXA_MOV.Refresh;
  CLOSE;
end;

procedure Tfrmcaixa_ficha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcaixa_ficha.RadioButton1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    econta.setfocus;
end;

procedure Tfrmcaixa_ficha.RadioButton2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    econta.setfocus;
end;

procedure Tfrmcaixa_ficha.econtaEnter(Sender: TObject);
begin
  tedit(Sender).color := $00A0FAF8;
end;

procedure Tfrmcaixa_ficha.DBEdit1Exit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
end;

procedure Tfrmcaixa_ficha.bloccontaClick(Sender: TObject);
begin
  frmloc_conta := tfrmloc_conta.create(self);
  frmloc_conta.showmodal;
  FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('codconta').asstring :=
    FRMMODULO.qrplano.FIELDBYNAME('codigo').asstring;
  DBEdit1.setfocus;

end;

procedure Tfrmcaixa_ficha.ccaaii0025Click(Sender: TObject);
begin
  FRMCAIXA.QRCAIXA_MOV.CANCEL;
  CLOSE;
end;

procedure Tfrmcaixa_ficha.econtaExit(Sender: TObject);
begin
  tedit(Sender).color := clwindow;
  if (FRMCAIXA.QRCAIXA_MOV.state = dsinsert) or
    (FRMCAIXA.QRCAIXA_MOV.state = dsedit) then
  begin
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('codconta').asstring :=
      frmprincipal.zerarcodigo(econta.text, 6);
    if econta.text <> '000000' then
      if not frmprincipal.Locregistro(FRMMODULO.qrplano, econta.text, 'codigo')
      then
        bloccontaClick(frmcaixa_ficha)
      else
        DBEdit1.setfocus
    else
      blocconta.setfocus;
  end;

end;

procedure Tfrmcaixa_ficha.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcaixa_ficha.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ed_valor.setfocus;
end;

procedure Tfrmcaixa_ficha.FormShow(Sender: TObject);
begin
  entrada_original := FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('entrada').ASFLOAT;
  saida_original := FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('saida').ASFLOAT;

  DBEdit1.setfocus;
  RadioButton1.setfocus;
end;

procedure Tfrmcaixa_ficha.econtaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcaixa_ficha.Gravar1Click(Sender: TObject);
begin
  bgravar.setfocus;
  bgravar.OnClick(frmcaixa_ficha)
end;

procedure Tfrmcaixa_ficha.ed_valorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ed_valor.setfocus;
end;

end.
