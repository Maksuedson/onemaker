unit cheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, PageView, Wwdbigrd,
  Wwdbgrid, AdvGlowButton, dxGDIPlusClasses, cyBaseSpeedButton, cySpeedButton,
  AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask, JvToolEdit,
  JvDBControls;

type
  Tfrmcheque = class(TForm)
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dscheque2: TDataSource;
    qrcheque: TZQuery;
    qrconta_cliente: TZQuery;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    Panel1: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    GroupBox1: TGroupBox;
    DBDateEdit2: TJvDBDateEdit;
    DBDateEdit3: TJvDBDateEdit;
    DBDateEdit4: TJvDBDateEdit;
    DBDateEdit5: TJvDBDateEdit;
    DBDateEdit6: TJvDBDateEdit;
    DBEdit9: TDBEdit;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    LRG: TLabel;
    Label21: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label22: TLabel;
    DBEdit1: TDBEdit;
    EDATA: TJvDBDateEdit;
    DBEdit4: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    ecliente: TDBEdit;
    bloccliente: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    ebanco: TDBEdit;
    blocbanco: TBitBtn;
    DBEdit6: TDBEdit;
    DBDateEdit1: TJvDBDateEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBDateEdit7: TJvDBDateEdit;
    Panel2: TPanel;
    bgravar: TAdvGlowButton;
    N1: TMenuItem;
    FichadeCadastro1: TMenuItem;
    Informaesdabaixa1: TMenuItem;
    DBText1: TDBText;
    Bevel1: TBevel;
    qrconta_clienteCHEQUE: TIntegerField;
    qrconta_clienteCONTA: TWideStringField;
    qrconta_clienteCODBANCO: TWideStringField;
    qrconta_clienteAGENCIA: TWideStringField;
    qrchequeCODIGO: TWideStringField;
    qrchequeSITUACAO: TIntegerField;
    qrchequeCODCLIENTE: TWideStringField;
    qrchequeTITULAR: TWideStringField;
    qrchequeCODBANCO: TWideStringField;
    qrchequeAGENCIA: TWideStringField;
    qrchequeCONTA: TWideStringField;
    qrchequeNUMERO: TWideStringField;
    qrchequeVALOR: TFloatField;
    qrchequeDESCONTO: TFloatField;
    qrchequeLIQUIDO: TFloatField;
    qrchequeCODVENDA: TWideStringField;
    qrchequeOBS1: TWideStringField;
    qrchequeOBS2: TWideStringField;
    qrchequeCODCONTAS_PAGAR: TWideStringField;
    qrchequeDESTINO: TWideStringField;
    qrchequeCODCONTA_CORRENTE: TWideStringField;
    qrchequeCODCONTA: TWideStringField;
    qrconta_clienteBANCO: TStringField;
    qrchequeCLIENTE: TStringField;
    qrchequebanco: TStringField;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    AdvMetroButton1: TAdvMetroButton;
    qrchequeEMISSAO: TDateField;
    qrchequeVENCIMENTO: TDateField;
    qrchequeDATA_DEPOSITO1: TDateField;
    qrchequeDATA_DEPOSITO2: TDateField;
    qrchequeDATA_DEVOLUCAO1: TDateField;
    qrchequeDATA_DEVOLUCAO2: TDateField;
    qrchequeDATA_CONTA: TDateField;
    qrchequeDATA_BAIXA: TDateField;
    qrconta_clienteDATA_CONTA: TDateField;
    fgggh14: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure etipoExit(Sender: TObject);
    procedure EDATAEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8Exit(Sender: TObject);
    procedure EDATAExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure blocbancoClick(Sender: TObject);
    procedure ebancoExit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure Fichadecadastro1Click(Sender: TObject);
    procedure InformaesdaBaixa1Click(Sender: TObject);
    procedure blocclienteClick(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure cySpeedButton1Click(Sender: TObject);
    procedure cySpeedButton2Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure fgggh14Click(Sender: TObject);

  private
    vcliente: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcheque: Tfrmcheque;
  comando: string;
   const
   sc_DragMove = $f012;
implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, loc_cliente,
  loc_banco, Cheque_baixa, xloc_cliente, cheque_conta, lista_cheque2,
  xloc_cheque, cheque_menu;

{$R *.dfm}

procedure Tfrmcheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcheque.FormShow(Sender: TObject);
begin
  DBEdit1.setfocus;
end;

procedure Tfrmcheque.enomeEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcheque.enomeExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmcheque.bgravarClick(Sender: TObject);
var
  situacao, tipo: integer;
  DATA: string;
begin

  if frmcheque_menu.qrcheque.FIELDBYNAME('VALOR').ASFLOAT = 0 then
  begin
    SHOWMESSAGE('Favor informar o valor!');
    DBEdit16.setfocus;
    exit;
  end;
  if DBDateEdit7.text = '  /  /    ' then
  begin
    SHOWMESSAGE('Favor informar a data de vencimento!');
    DBDateEdit7.setfocus;
    exit;
  end;
  if frmcheque_menu.qrcheque.FIELDBYNAME('codcliente').asstring = '' then
  begin
    SHOWMESSAGE('Favor informar o cliente!');
    ecliente.setfocus;
    exit;
  end;

  if (frmcheque_menu.qrcheque.State = dsinsert) then
  begin
    frmprincipal.logUC('Incluiu Cheque - Nr: ' + DBEdit7.text + ' Cliente: ' +
      DBEdit2.text, 1);
    frmcheque_menu.qrcheque.post;
  end;

  if (frmcheque_menu.qrcheque.State = dsedit) then
  begin
    frmprincipal.logUC('Alterou Cheque - Nr: ' + DBEdit7.text + ' Cliente: ' +
      DBEdit2.text, 2);
    frmcheque_menu.qrcheque.post;
  end;

  frmmodulo.Conexao.Commit;

  close;

end;

procedure Tfrmcheque.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcheque.bcancelarClick(Sender: TObject);
begin
  if (frmcheque_menu.qrcheque.State = dsinsert) or
    (frmcheque_menu.qrcheque.State = dsedit) then
  begin
    frmcheque_menu.qrcheque.cancel;
    frmmodulo.Conexao.rollback;
  end;
  close;
end;

procedure Tfrmcheque.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcheque.etipoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmcheque.fgggh14Click(Sender: TObject);
begin
  AdvMetroButton1.Click;
end;

procedure Tfrmcheque.EDATAEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  if frmcheque_menu.qrcheque.State = dsinsert then
    EDATA.Date := Date;
end;

procedure Tfrmcheque.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcheque.DBEdit1Enter(Sender: TObject);
begin

  tedit(Sender).Color := $00A0FAF8;

end;

procedure Tfrmcheque.DBEdit1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
end;

procedure Tfrmcheque.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcheque.RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcheque.DBEdit8Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if DBEdit8.text <> '' then
  begin
    if (frmcheque_menu.qrcheque.State = dsinsert) or
      (frmcheque_menu.qrcheque.State = dsedit) then
    begin
      if pos('-', DBEdit8.text) = 0 then
        frmcheque_menu.qrcheque.FIELDBYNAME('cEP').asstring :=
          FormatMaskText('99999-999;0;_', DBEdit8.text);

    end;
  end;

end;

procedure Tfrmcheque.EDATAExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

  if TJvDBDateEdit(Sender).text <> '  /  /    ' then
  begin
    try
      TJvDBDateEdit(Sender).Date := strtodate(TJvDBDateEdit(Sender).text);
    except
      SHOWMESSAGE('Data Inválida');
      TJvDBDateEdit(Sender).setfocus;
    end;
  end;

end;

procedure Tfrmcheque.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmcheque.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcheque.blocbancoClick(Sender: TObject);
begin
  frmloc_banco := tfrmloc_banco.create(self);
  frmloc_banco.showmodal;
  frmcheque_menu.qrcheque.FIELDBYNAME('codbanco').asstring :=
    frmmodulo.qrbanco.FIELDBYNAME('numero').asstring;
  DBEdit4.setfocus;
end;

procedure Tfrmcheque.ebancoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmcheque_menu.qrcheque.State = dsinsert) or
    (frmcheque_menu.qrcheque.State = dsedit) then
  begin
    frmcheque_menu.qrcheque.FIELDBYNAME('codbanco').asstring :=
      frmprincipal.zerarcodigo(ebanco.text, 3);
    if ebanco.text <> '000' then
      if not frmprincipal.Locregistro(frmmodulo.qrbanco, ebanco.text, 'numero')
      then
        blocbancoClick(frmcheque)
      else
        DBEdit4.setfocus
    else
      blocbanco.setfocus;
  end;
end;

procedure Tfrmcheque.DBEdit3Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  if frmcheque_menu.qrcheque.FIELDBYNAME('TITULAR').asstring = '' then
    frmcheque_menu.qrcheque.FIELDBYNAME('TITULAR').asstring :=
      frmcheque_menu.qrcheque.FIELDBYNAME('CLIENTE').asstring;

end;

procedure Tfrmcheque.Fichadecadastro1Click(Sender: TObject);
begin
  PageView1.activepageindex := 0;
end;

procedure Tfrmcheque.InformaesdaBaixa1Click(Sender: TObject);
begin
  PageView1.activepageindex := 1;
end;

procedure Tfrmcheque.blocclienteClick(Sender: TObject);
begin
  frmxloc_CLIENTE := tfrmxloc_CLIENTE.create(self);
  frmxloc_CLIENTE.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmcheque_menu.qrcheque.FIELDBYNAME('codCLIENTE').asstring :=
      resultado_pesquisa1;

    qrconta_cliente.close;
    qrconta_cliente.sql.clear;
    qrconta_cliente.sql.add
      ('select count(codigo) cheque, conta, codbanco, agencia, data_conta from c000040  where codcliente = '''
      + ecliente.text + ''' group by conta, codbanco, agencia, data_conta');
    qrconta_cliente.Open;
    if qrconta_cliente.RecordCount > 0 then
    begin
      FRMCHEQUE_CONTA := TFRMCHEQUE_CONTA.create(self);
      FRMCHEQUE_CONTA.dsconta_cliente.DataSet := frmcheque.qrconta_cliente;
      FRMCHEQUE_CONTA.showmodal;
      if resultado_pesquisa1 <> '' then
      begin
        frmcheque_menu.qrcheque.FIELDBYNAME('CONTA').asstring :=
          resultado_pesquisa1;
        frmcheque_menu.qrcheque.FIELDBYNAME('CODBANCO').asstring :=
          RESULTADO_PESQUISA2;
        frmcheque_menu.qrcheque.FIELDBYNAME('AGENCIA').asstring :=
          RESULTADO_PESQUISA3;
        frmcheque_menu.qrcheque.FIELDBYNAME('DATA_CONTA').asstring :=
          RESULTADO_PESQUISA4;

      end;
    end;

    if frmcheque_menu.qrcheque.FIELDBYNAME('TITULAR').asstring = '' then
      frmcheque_menu.qrcheque.FIELDBYNAME('TITULAR').asstring :=
        frmcheque_menu.qrcheque.FIELDBYNAME('CLIENTE').asstring;
    DBEdit3.setfocus;

  end
  else
    ecliente.setfocus;
end;

procedure Tfrmcheque.cySpeedButton1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmcheque.cySpeedButton2Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmcheque.eclienteExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if (frmcheque_menu.qrcheque.State = dsinsert) or
    (frmcheque_menu.qrcheque.State = dsedit) then
  begin
    frmcheque_menu.qrcheque.FIELDBYNAME('codcliente').asstring :=
      frmprincipal.zerarcodigo(ecliente.text, 6);
    if ecliente.text <> '000000' then
    begin
      if not frmprincipal.Locregistro(frmmodulo.qrcliente, ecliente.text,
        'codigo') then
      begin
        blocclienteClick(frmcheque);
      end
      else
      begin

        qrconta_cliente.close;
        qrconta_cliente.sql.clear;
        qrconta_cliente.sql.add
          ('select count(codigo) cheque, conta, codbanco, agencia, data_conta from c000040  where codcliente = '''
          + ecliente.text + ''' group by conta, codbanco, agencia, data_conta');
        qrconta_cliente.Open;
        if qrconta_cliente.RecordCount > 0 then
        begin
          FRMCHEQUE_CONTA := TFRMCHEQUE_CONTA.create(self);
          FRMCHEQUE_CONTA.dsconta_cliente.DataSet := frmcheque.qrconta_cliente;
          FRMCHEQUE_CONTA.showmodal;
          if resultado_pesquisa1 <> '' then
          begin
            frmcheque_menu.qrcheque.FIELDBYNAME('CONTA').asstring :=
              resultado_pesquisa1;
            frmcheque_menu.qrcheque.FIELDBYNAME('CODBANCO').asstring :=
              RESULTADO_PESQUISA2;
            frmcheque_menu.qrcheque.FIELDBYNAME('AGENCIA').asstring :=
              RESULTADO_PESQUISA3;
            frmcheque_menu.qrcheque.FIELDBYNAME('DATA_CONTA').asstring :=
              RESULTADO_PESQUISA4;

          end;
        end;

        DBEdit3.setfocus;
        if frmcheque_menu.qrcheque.FIELDBYNAME('TITULAR').asstring = '' then
          frmcheque_menu.qrcheque.FIELDBYNAME('TITULAR').asstring :=
            frmcheque_menu.qrcheque.FIELDBYNAME('CLIENTE').asstring;

      end;
    end
    else
    begin
      bloccliente.setfocus;
    end;
  end;
end;

end.

/// /  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);

{ SITUACAO DO CHEQUE
  1 - ATIVO
  2 - BAIXA - 1o.DEPOSITO
  3 - BAIXA - 2o.DEPOSITO
  4 - BAIXA - DESCONTADO
  5 - BAIXA - 1a.DEVOLUCAO
  6 - BAIXA - 2a.DEVOLUCAO
  7 - BAIXA - REPASSADO
  8 - BAIXA - SUSTADO
  9 - BAIXA - OUTROS
}
