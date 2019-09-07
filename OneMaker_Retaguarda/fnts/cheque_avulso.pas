unit cheque_avulso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, maskutils, PageView, Wwdbigrd,
  Wwdbgrid, AdvGlowButton, JvToolEdit, JvDBControls, JvExMask, JvBaseEdits,
  AdvSmoothPanel, AdvSmoothExpanderPanel;

type
  Tfrmcheque_avulso = class(TForm)
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dscheque2: TDataSource;
    qrcheque: TZQuery;
    qrconta_cliente: TZQuery;
    Panel2: TPanel;
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
    Label11: TLabel;
    rsoma: TJvCalcEdit;
    Label12: TLabel;
    rdiferenca: TJvCalcEdit;
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
    qrchequeEMISSAO: TDateField;
    qrchequeVENCIMENTO: TDateField;
    qrchequeDATA_DEPOSITO1: TDateField;
    qrchequeDATA_DEPOSITO2: TDateField;
    qrchequeDATA_DEVOLUCAO1: TDateField;
    qrchequeDATA_DEVOLUCAO2: TDateField;
    qrchequeDATA_CONTA: TDateField;
    qrchequeDATA_BAIXA: TDateField;
    qrconta_clienteDATA_CONTA: TDateField;
    Panel1: TPanel;
    bcancelar: TAdvGlowButton;
    bgravar: TAdvGlowButton;
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
    procedure blocclienteClick(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

  private
    vcliente: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcheque_avulso: Tfrmcheque_avulso;
  comando: string;
   const
   sc_DragMove = $f012;
implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, loc_cliente,
  loc_banco, Cheque_baixa, xloc_cliente, cheque_conta, lista_cheque2,
  xloc_cheque, cheque_menu;

{$R *.dfm}


procedure Tfrmcheque_avulso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (frmmodulo.qrcheque.State = dsinsert) or (frmmodulo.qrcheque.State = dsedit) then
  begin
    frmmodulo.qrcheque.cancel;
    frmmodulo.conexao.rollback;
  end;
  close;
  action := cafree;
end;

procedure Tfrmcheque_avulso.FormShow(Sender: TObject);
begin
  frmmodulo.qrcheque.open;
  frmmodulo.qrcheque.insert;
  frmmodulo.qrcheque.FIELDBYNAME('CODCLIENTE').ASSTRING := CHEQUE_CODCLIENTE;
  frmmodulo.qrcheque.FIELDBYNAME('CODVENDA').ASSTRING := CHEQUE_VENDA;
  frmmodulo.qrcheque.fieldbyname('codigo').asstring := frmprincipal.codifica('000040');
  frmmodulo.qrcheque.FIELDBYNAME('SITUACAO').ASSTRING := '1';

  dbedit1.setfocus;
end;

procedure Tfrmcheque_avulso.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcheque_avulso.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcheque_avulso.bgravarClick(Sender: TObject);
var situacao, tipo: integer;
  DATA: string;
begin

  if frmmodulo.qrcheque.FIELDBYNAME('VALOR').ASFLOAT = 0 then
  begin
    SHOWMESSAGE('Favor informar o valor!');
    DBEDIT16.SETFOCUS;
    exit;
  end;
  if DBDateEdit7.text = '  /  /    ' then
  begin
    SHOWMESSAGE('Favor informar a data de vencimento!');
    DBdateedit7.SETFOCUS;
    exit;
  end;
  if frmmodulo.qrcheque.fieldbyname('codcliente').asstring = '' then
  begin
    SHOWMESSAGE('Favor informar o cliente!');
    ecliente.SETFOCUS;
    exit;
  end;


  if (frmmodulo.qrcheque.State = dsinsert) or (frmmodulo.qrcheque.State = dsedit) then
  begin
    frmmodulo.qrcheque.post;
  end;

  frmmodulo.Conexao.Commit;
   frmcheque_avulso.OnShow(frmcheque_avulso);
 { begin
    rdiferenca.Value := rsoma.value - frmmodulo.qrcheque.fieldbyname('VALOR').AsCurrency;
    rsoma.value := rdiferenca.value;

    if rdiferenca.Value = 0.00 then
    begin
      close
    end
    else
    begin
      frmcheque_avulso.OnShow(frmcheque_avulso);
    end;
  end; }


end;

procedure Tfrmcheque_avulso.AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcheque_avulso.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrcheque.State = dsinsert) or (frmmodulo.qrcheque.State = dsedit) then
  begin
    frmmodulo.qrcheque.cancel;
    frmmodulo.conexao.rollback;
  end;
  close;
end;

procedure Tfrmcheque_avulso.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then PERFORM(WM_NEXTDLGCTL, 0, 0);
end;

procedure Tfrmcheque_avulso.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcheque_avulso.EDATAEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  if frmmodulo.qrcheque.state = dsinsert then
    EDATA.Date := DATE;
end;

procedure Tfrmcheque_avulso.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcheque_avulso.DBEdit1Enter(Sender: TObject);
begin

  tedit(sender).Color := $00A0FAF8;

end;

procedure Tfrmcheque_avulso.DBEdit1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcheque_avulso.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcheque_avulso.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcheque_avulso.DBEdit8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if DBEDIT8.Text <> '' then
  begin
    if (frmmodulo.qrcheque.state = dsinsert) or (frmmodulo.qrcheque.State = dsedit) then
    begin
      if pos('-', dbedit8.text) = 0 then
        frmmodulo.qrcheque.fieldbyname('cEP').asstring := FormatMaskText('99999-999;0;_', dbedit8.text);

    end;
  end;

end;

procedure Tfrmcheque_avulso.EDATAExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

  if TJvDBDateEdit(sender).text <> '  /  /    ' then
  begin
    try
      TJvDBDateEdit(sender).Date := strtodate(TJvDBDateEdit(sender).text);
    except
      showmessage('Data Inválida');
      TJvDBDateEdit(sender).SetFocus;
    end;
  end;


end;

procedure Tfrmcheque_avulso.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmcheque_avulso.DBEdit24KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcheque_avulso.blocbancoClick(Sender: TObject);
begin
  frmloc_banco := tfrmloc_banco.create(self);
  frmloc_banco.showmodal;
  frmmodulo.qrcheque.fieldbyname('codbanco').asstring := frmmodulo.qrbanco.fieldbyname('numero').asstring;
  dbedit4.setfocus;
end;

procedure Tfrmcheque_avulso.ebancoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrcheque.state = dsinsert) or (frmmodulo.qrcheque.State = dsedit) then
  begin
    frmmodulo.qrcheque.fieldbyname('codbanco').asstring := frmprincipal.zerarcodigo(ebanco.text, 3);
    if ebanco.text <> '000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrbanco, ebanco.text, 'numero') then blocbancoclick(frmcheque_avulso) else dbedit4.setfocus
    else
      blocbanco.SetFocus;
  end;
end;

procedure Tfrmcheque_avulso.DBEdit3Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  if frmmodulo.qrcheque.FIELDBYNAME('TITULAR').ASSTRING = '' then
    frmmodulo.qrcheque.FIELDBYNAME('TITULAR').ASSTRING :=
      frmmodulo.qrcheque.FIELDBYNAME('CLIENTE').ASSTRING;

end;

procedure Tfrmcheque_avulso.blocclienteClick(Sender: TObject);
begin
  frmxloc_CLIENTE := tfrmxloc_CLIENTE.create(self);
  frmxloc_CLIENTE.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrcheque.fieldbyname('codCLIENTE').asstring := resultado_pesquisa1;

    qrconta_cliente.close;
    qrconta_cliente.sql.clear;
    qrconta_cliente.sql.add('select count(codigo) cheque, conta, codbanco, agencia, data_conta from c000040  where codcliente = ''' + ecliente.text + ''' group by conta, codbanco, agencia, data_conta');
    qrconta_cliente.Open;
    if qrconta_cliente.RecordCount > 0 then
    begin
      FRMCHEQUE_CONTA := TFRMCHEQUE_CONTA.CREATE(SELF);
      FRMCHEQUE_CONTA.dsconta_cliente.DataSet := FRMCHEQUE_AVULSO.qrconta_cliente;
      FRMCHEQUE_CONTA.SHOWMODAL;
      if RESULTADO_PESQUISA1 <> '' then
      begin
        frmmodulo.qrcheque.FIELDBYNAME('CONTA').ASSTRING := RESULTADO_PESQUISA1;
        frmmodulo.qrcheque.FIELDBYNAME('CODBANCO').ASSTRING := RESULTADO_PESQUISA2;
        frmmodulo.qrcheque.FIELDBYNAME('AGENCIA').ASSTRING := RESULTADO_PESQUISA3;
        frmmodulo.qrcheque.FIELDBYNAME('DATA_CONTA').ASSTRING := RESULTADO_PESQUISA4;

      end;
    end;



    if frmmodulo.qrcheque.FIELDBYNAME('TITULAR').AsString = '' then
      frmmodulo.qrcheque.FIELDBYNAME('TITULAR').AsString :=
        frmmodulo.qrcheque.FIELDBYNAME('CLIENTE').AsString;
    dbedit3.setfocus;

  end
  else
    ecliente.setfocus;
end;

procedure Tfrmcheque_avulso.eclienteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrcheque.state = dsinsert) or (frmmodulo.qrcheque.State = dsedit) then
  begin
    frmmodulo.qrcheque.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecliente.text, 6);
    if ecliente.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrcliente, ecliente.text, 'codigo') then
      begin
        blocclienteclick(frmcheque_avulso);
      end
      else
      begin


        qrconta_cliente.close;
        qrconta_cliente.sql.clear;
        qrconta_cliente.sql.add('select count(codigo) cheque, conta, codbanco, agencia, data_conta from c000040  where codcliente = ''' + ecliente.text + ''' group by conta, codbanco, agencia, data_conta');
        qrconta_cliente.Open;
        if qrconta_cliente.RecordCount > 0 then
        begin
          FRMCHEQUE_CONTA := TFRMCHEQUE_CONTA.CREATE(SELF);
          FRMCHEQUE_CONTA.dsconta_cliente.DataSet := FRMCHEQUE_AVULSO.qrconta_cliente;
          FRMCHEQUE_CONTA.SHOWMODAL;
          if RESULTADO_PESQUISA1 <> '' then
          begin
            frmmodulo.qrcheque.FIELDBYNAME('CONTA').ASSTRING := RESULTADO_PESQUISA1;
            frmmodulo.qrcheque.FIELDBYNAME('CODBANCO').ASSTRING := RESULTADO_PESQUISA2;
            frmmodulo.qrcheque.FIELDBYNAME('AGENCIA').ASSTRING := RESULTADO_PESQUISA3;
            frmmodulo.qrcheque.FIELDBYNAME('DATA_CONTA').ASSTRING := RESULTADO_PESQUISA4;

          end;
        end;


        dbedit3.setfocus;
        if frmmodulo.qrcheque.FIELDBYNAME('TITULAR').AsString = '' then
          frmmodulo.qrcheque.FIELDBYNAME('TITULAR').AsString :=
            frmmodulo.qrcheque.FIELDBYNAME('CLIENTE').AsString;

      end;
    end
    else
    begin
      bloccliente.SetFocus;
    end;
  end;
end;

end.



////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);


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
