unit prevenda_fechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, Mask,
  TFlatPanelUnit, Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, wwdbedit, Wwdotdot, Wwdbcomb, AdvShapeButton, AdvGlowButton,
  frxDesgn, frxClass, frxDBSet, DBAccess, JvMemoryDataset, JvExMask, JvToolEdit,
  JvBaseEdits;

type
  Tfrmprevenda_fechamento = class(TForm)
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    pconvenio: TFlatPanel;
    HeaderView3: THeaderView;
    Label16: TLabel;
    FlatPanel7: TFlatPanel;
    Label17: TLabel;
    Label18: TLabel;
    econvenio_codcliente: TEdit;
    bconvenio_cliente: TBitBtn;
    econvenio_cliente: TEdit;
    convenio_combo: TwwDBComboBox;
    FlatPanel4: TFlatPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    econvenio_codconvenio: TEdit;
    econvenio_convenio: TEdit;
    rconvenio_desconto: TJvCalcEdit;
    rconvenio_liquido: TJvCalcEdit;
    QUERY1: TZQuery;
    query2: TZQuery;
    query3: TZQuery;
    Button1: TButton;
    bcancela_cupom: TBitBtn;
    Cancela1: TMenuItem;
    Shape6: TShape;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edinheiro: TShape;
    echequeav: TShape;
    echequeap: TShape;
    ecartaocred: TShape;
    ecartaodeb: TShape;
    ecrediario: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Label11: TLabel;
    Label12: TLabel;
    Shape7: TShape;
    Label15: TLabel;
    econvenio: TShape;
    rdinheiro: TJvCalcEdit;
    rchequeav: TJvCalcEdit;
    rchequeap: TJvCalcEdit;
    rcartaocred: TJvCalcEdit;
    rcartaodeb: TJvCalcEdit;
    rcrediario: TJvCalcEdit;
    rconvenio: TJvCalcEdit;
    Panel4: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Panel5: TPanel;
    Shape15: TShape;
    Shape16: TShape;
    Label13: TLabel;
    Shape17: TShape;
    Shape18: TShape;
    Label14: TLabel;
    rsoma: TJvCalcEdit;
    rdiferenca: TJvCalcEdit;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    AdvShapeButton1: TAdvShapeButton;
    Bevel3: TBevel;
    rdesconto2: TJvCalcEdit;
    racrescimo2: TJvCalcEdit;
    rdesconto1: TJvCalcEdit;
    racrescimo1: TJvCalcEdit;
    Panel1: TPanel;
    rsubtotal: TJvCalcEdit;
    Panel2: TPanel;
    rtotal: TJvCalcEdit;
    Bevel1: TBevel;
    fxduplicata: TfrxReport;
    qrduplicata: TJvMemoryData;
    qrduplicataemitente_fantasia: TStringField;
    qrduplicataemitente_razao: TStringField;
    qrduplicataemitente_slogan: TStringField;
    qrduplicataemitente_telefone: TStringField;
    qrduplicataemitente_endereco: TStringField;
    qrduplicataemitente_cnpj: TStringField;
    qrduplicataemitente_ie: TStringField;
    qrduplicatadata_emissao: TStringField;
    qrduplicatafatura_numero: TStringField;
    qrduplicatafatura_valor: TStringField;
    qrduplicataduplicata_numero: TStringField;
    qrduplicataduplicata_valor: TStringField;
    qrduplicatadata_vencimento: TStringField;
    qrduplicatadesconto: TStringField;
    qrduplicatadesconto_ate: TStringField;
    qrduplicatacondicoes_especiais: TStringField;
    qrduplicatasacado_nome: TStringField;
    qrduplicatasacado_endereco: TStringField;
    qrduplicatasacado_municipio: TStringField;
    qrduplicatasacado_uf: TStringField;
    qrduplicatasacado_cep: TStringField;
    qrduplicatasacado_praca: TStringField;
    qrduplicatasacado_cnpj: TStringField;
    qrduplicatasacado_ie: TStringField;
    qrduplicatanotas_ficais: TStringField;
    qrduplicataextenso: TStringField;
    fsduplicata: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    bduplicata: TButton;
    qrcliente: TZQuery;
    Shape8: TShape;
    efinanceira: TShape;
    rfinanceira: TJvCalcEdit;
    Label22: TLabel;
    IBQuery1: TZQuery;
    PTEF1: TFlatPanel;
    ptef2: TFlatPanel;
    BCH_TECBAN: TButton;
    BCH_REDECARD: TButton;
    bcartao: TButton;
    bpgto: TButton;
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure racrescimo2KeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1Enter(Sender: TObject);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure racrescimo1Exit(Sender: TObject);
    procedure racrescimo2Exit(Sender: TObject);
    procedure rdinheiroExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rdinheiroEnter(Sender: TObject);
    procedure rchequeavEnter(Sender: TObject);
    procedure rchequeapEnter(Sender: TObject);
    procedure rcartaocredEnter(Sender: TObject);
    procedure rcartaodebEnter(Sender: TObject);
    procedure rcrediarioEnter(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure rchequeavExit(Sender: TObject);
    procedure rchequeapExit(Sender: TObject);
    procedure rcartaocredExit(Sender: TObject);
    procedure rcartaodebExit(Sender: TObject);
    procedure rcrediarioExit(Sender: TObject);
    procedure rconvenioEnter(Sender: TObject);
    procedure rconvenioExit(Sender: TObject);
    procedure rconvenioKeyPress(Sender: TObject; var Key: Char);
    procedure econvenio_codclienteEnter(Sender: TObject);
    procedure econvenio_codclienteExit(Sender: TObject);
    procedure econvenio_codclienteKeyPress(Sender: TObject; var Key: Char);
    procedure bconvenio_clienteClick(Sender: TObject);
    procedure convenio_comboExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bcancela_cupomClick(Sender: TObject);
    procedure Cancela1Click(Sender: TObject);
    procedure bduplicataClick(Sender: TObject);
    procedure rfinanceiraExit(Sender: TObject);
    procedure rfinanceiraEnter(Sender: TObject);
    procedure rfinanceiraKeyPress(Sender: TObject; var Key: Char);
    procedure BCH_TECBANClick(Sender: TObject);
    procedure BCH_REDECARDClick(Sender: TObject);
    procedure bcartaoClick(Sender: TObject);
    procedure bpgtoClick(Sender: TObject);
  private
    { Private declarations }
    function retorna_letra(numero: Integer): string;
  public
    { Public declarations }
  end;

var
  frmprevenda_fechamento: Tfrmprevenda_fechamento;

  porta_impressora: string;
  cons_cheque: boolean;

  JA_ABERTO: boolean;

  iOrdem: Integer;
  sNumero: string;
  rValor: real;

implementation

uses modulo, principal, prevenda_contasreceber, troco, venda_impressao,
  extenso1, venda_obs, cheque, ecf, venda, prevenda, xloc_cliente,
  cheque_avulso, venda_financeira, unFuncoesTEF, consulta_cheque,
  duplicata_impressao, prevenda_cliente;

{$R *.dfm}

function Tfrmprevenda_fechamento.retorna_letra(numero: Integer): string;
begin
  case numero of
    1:
      result := 'A';
    2:
      result := 'B';
    3:
      result := 'C';
    4:
      result := 'D';
    5:
      result := 'E';
    6:
      result := 'F';
    7:
      result := 'G';
    8:
      result := 'H';
    9:
      result := 'I';
    10:
      result := 'J';
    11:
      result := 'K';
    12:
      result := 'L';
    13:
      result := 'M';
    14:
      result := 'N';
    15:
      result := 'O';
    16:
      result := 'P';
    17:
      result := 'Q';
    18:
      result := 'R';
    19:
      result := 'S';
    20:
      result := 'T';
    21:
      result := 'U';
    22:
      result := 'V';
    23:
      result := 'W';
    24:
      result := 'X';
    25:
      result := 'Y';
    26:
      result := 'Z';
  end;
end;

procedure Tfrmprevenda_fechamento.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmprevenda_fechamento.racrescimo2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    rdinheiro.SetFocus;
end;

procedure Tfrmprevenda_fechamento.rdesconto1Enter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento.rdesconto1Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  if rdesconto1.value <> 0 then
  begin
    rdesconto2.value := rsubtotal.value * (rdesconto1.value / 100);
  end;
  rtotal.value := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmprevenda_fechamento.rdesconto2Exit(Sender: TObject);
var
  qc: Integer;
begin
  TEdit(Sender).color := clwindow;
  if rsubtotal.value <> 0 then
  begin
    rdesconto1.value := (rdesconto2.value * 100) / rsubtotal.value;
  end;
  qc := 0;

  if rdinheiro.value > 0 then
    qc := 1;
  if rchequeav.value > 0 then
    qc := qc + 1;
  if rchequeap.value > 0 then
    qc := qc + 1;
  if rcartaocred.value > 0 then
    qc := qc + 1;
  if rcartaodeb.value > 0 then
    qc := qc + 1;
  if rcrediario.value > 0 then
    qc := qc + 1;
  if rconvenio.value > 0 then
    qc := qc + 1;

  rtotal.value := rsubtotal.value - rdesconto2.value + racrescimo2.value;

  if qc = 1 then
  begin
    if rdinheiro.value > 0 then
      rdinheiro.value := rtotal.value; // rdinheiro.Value-rdesconto2.Value;
    if rchequeav.value > 0 then
      rchequeav.value := rtotal.value; // rchequeav.Value-rdesconto2.Value;
    if rchequeap.value > 0 then
      rchequeap.value := rtotal.value; // rchequeap.Value-rdesconto2.Value;
    if rcartaocred.value > 0 then
      rcartaocred.value := rtotal.value; // rcartaocred.Value-rdesconto2.Value;
    if rcartaodeb.value > 0 then
      rcartaodeb.value := rtotal.value; // rcartaodeb.Value-rdesconto2.Value;
    if rcrediario.value > 0 then
      rcrediario.value := rtotal.value; // rcrediario.Value-rdesconto2.Value;
    if rconvenio.value > 0 then
      rconvenio.value := rtotal.value; // rconvenio.Value-rdesconto2.Value;
  end;

  // rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmprevenda_fechamento.racrescimo1Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  if racrescimo1.value <> 0 then
  begin
    racrescimo2.value := rsubtotal.value * (racrescimo1.value / 100);
  end;
  rtotal.value := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmprevenda_fechamento.racrescimo2Exit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  if rsubtotal.value <> 0 then
  begin
    racrescimo1.value := (racrescimo2.value * 100) / rsubtotal.value;
  end;

  {
    IF rdinheiro.value > 0 then rdinheiro.Value := rdinheiro.Value+
    +rdesconto2.Value;
    if rchequeav.value > 0 then rchequeav.Value := rchequeav.Value-rdesconto2.Value;
    if rchequeap.value > 0 then rchequeap.Value := rchequeap.Value-rdesconto2.Value;
    if rcartaocred.value > 0 then rcartaocred.Value := rcartaocred.Value-rdesconto2.Value;
    if rcartaodeb.value > 0 then rcartaodeb.Value := rcartaodeb.Value-rdesconto2.Value;
    if rcrediario.value > 0 then rcrediario.Value := rcrediario.Value-rdesconto2.Value;
    if rconvenio.value > 0 then rconvenio.Value := rconvenio.Value-rdesconto2.Value;
  }

  rtotal.value := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmprevenda_fechamento.rdinheiroExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  edinheiro.Brush.color := clwindow;

  rsoma.value := rdinheiro.value + rchequeav.value + rchequeap.value +
    rcartaocred.value + rcartaodeb.value + rconvenio.value + rcrediario.value +
    rfinanceira.value;
  rdiferenca.value := rtotal.value - rsoma.value;
end;

procedure Tfrmprevenda_fechamento.bgravarClick(Sender: TObject);
var
  texto: PWideChar;
  desconto_acrescimo: real;
  tp_desconto_acrescimo: string;
  v_dinheiro: real;
  item: Integer;
  ALIQUOTA, formasp, TIPO_DESCONTO: string;
  y: Integer;

  ecf_ok: boolean;
  qtef: Integer;
  cvinc: boolean;
begin

  if USA_TEF then
  begin
    cons_cheque := false;
    TEFFINAL := false;
    elcheque := false;

    if (rchequeap.value + rchequeav.value) > 0 then
    begin
      if application.messagebox('Deseja consultar o Cheque?', 'Consulta Cheque',
        mb_yesno + mb_iconquestion + MB_DEFBUTTON2) = idyes then
      begin
        qtef := 0;
        if rcartaocred.value > 0 then
          qtef := 1;
        if rcartaodeb.value > 0 then
          qtef := qtef + 1;
        if rchequeav.value > 0 then
          qtef := qtef + 1;
        if rchequeap.value > 0 then
          qtef := qtef + 1;
        if qtef > 1 then
        begin
          application.messagebox
            ('Não é possível prosseguir com duas ou mais formas de pagamento que utilizam TEF!',
            'Erro', mb_ok + mb_iconerror);
          exit;
        end
        else
        begin
          cons_cheque := TRUE;
        end;
      end
      else
      begin
        if (rcartaocred.value > 0) and (rcartaodeb.value > 0) then
        begin
          application.messagebox
            ('Não é possível prosseguir com duas ou mais formas de pagamento que utilizam TEF!',
            'Erro', mb_ok + mb_iconerror);
          exit;
        end;
      end;
    end
    else
    begin
      if (rcartaocred.value > 0) and (rcartaodeb.value > 0) then
      begin
        application.messagebox
          ('Não é possível prosseguir com duas ou mais formas de pagamento que utilizam TEF!',
          'Erro', mb_ok + mb_iconerror);
        exit;
      end;
    end;
  end;

  TEFFINAL := false;
  elcheque := false;
  FI_LANCTO := '';
  FI_CODIGO := '';
  FI_BORDERO := '';
  FI_PROPOSTA := '';
  FI_VENCIMENTO := '';
  FI_NOME := '';

  numero_cupomx := '';

  try
    if (rcrediario.value > 0) or (rconvenio.value > 0) then
    begin
      FRMMODULO.QRCONFIG.OPEN;
      if FRMMODULO.QRCONFIG.FieldByName('VENDA_LIMITE_CLIENTE').ASINTEGER = 1
      then
      begin
        if FRMMODULO.qrcliente.FieldByName('situacao').ASINTEGER = 3 then
        begin
          application.messagebox
            ('Cliente com crédito bloqueado! Não será possível prosseguir com o fechamento!',
            'Atenção', mb_ok + mb_iconerror);
          rcrediario.SetFocus;
          exit;
        end;
        // if frmmodulo.qrcliente.FieldByName('situacao').asinteger = 4 then
        // begin
        // application.messagebox('Cliente INATIVO! Não será possível prosseguir com o fechamento!','Atenção',mb_ok+mb_iconerror);
        // rcrediario.setfocus;
        // exit;
        // end;
        if FRMMODULO.qrcliente.FieldByName('situacao').ASINTEGER = 5 then
        begin
          application.messagebox
            ('Cliente no SPC! Não será possível prosseguir com o fechamento!',
            'Atenção', mb_ok + mb_iconerror);
          rcrediario.SetFocus;
          exit;
        end;

        if FRMMODULO.qrcliente.FieldByName('situacao').ASINTEGER = 2 then
        begin
          texto := PWideChar('Cliente está com cadastro em observação: ' + #13 +
            FRMMODULO.qrcliente.FieldByName('obs1').asstring + #13 +
            FRMMODULO.qrcliente.FieldByName('obs2').asstring + #13 +
            FRMMODULO.qrcliente.FieldByName('obs3').asstring + #13 +
            FRMMODULO.qrcliente.FieldByName('obs4').asstring + #13 + '' + #13 +
            'Deseja prosseguir com a venda?');

          if application.messagebox(texto, 'Crédito em Observação',
            mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idno then
          begin
            rcrediario.SetFocus;
            exit;
          end;
        end;

        if FRMMODULO.qrcliente.FieldByName('LIMITE').ASFLOAT <> 0 then
        begin
          if rcrediario.value > limite_disponivel then
          begin
            texto := PWideChar('Este cliente possue um limite disponível de:' +
              #13 + ' ---> R$ ' + formatfloat('###,###,##0.00',
              limite_disponivel) + '  <--- ' + #13 +
              'É necessário autorização para prosseguir! ' + #13 +
              'Deseja continuar?');
            if application.messagebox(texto, 'Atenção',
              mb_yesno + MB_ICONWARNING) = idyes then
            begin
              if not frmPrincipal.autentica('Liberar venda', 4) then
              begin
                application.messagebox
                  ('Desculpe! Seu acesso não foi autorizado!', 'Aviso',
                  mb_ok + mb_iconerror);
                rcrediario.SetFocus;
                exit;
              end;
            end
            else
            begin
              rcrediario.SetFocus;
              exit;
            end;
          end;
        end;
      end;
    end;

    v_dinheiro := rdinheiro.value;

    if rdiferenca.value <> 0 then
    begin
      if rdinheiro.value > rdiferenca.value then
      begin
        frmvenda_troco := tfrmvenda_troco.create(self);
        frmvenda_troco.ltroco.caption := formatfloat('###,###,##0.00',
          (rdiferenca.value) * (-1));
        frmvenda_troco.showmodal;
        rdinheiro.value := rdinheiro.value + rdiferenca.value;
        rdiferenca.value := 0;
      end
      else
      begin
        application.messagebox
          ('Os valores informados nas formas de pagamento não confere com o valor total desta venda! Favor verificar!',
          'Atenção', mb_ok + MB_ICONWARNING);
        rdinheiro.SetFocus;
        exit;
      end;
    end;

    CONTINUAR := TRUE;

    if (rchequeav.value <> 0) or (rchequeap.value <> 0) then
    begin
      FRMMODULO.QRCONFIG.OPEN;
      if FRMMODULO.QRCONFIG.FieldByName('VENDA_CADASTRO_CHEQUE').ASINTEGER = 1
      then
      begin
        CHEQUE_CODCLIENTE := FRMMODULO.qrcliente.FieldByName('codigo').asstring;
        CHEQUE_VENDA := numero_vendax;

        frmcheque_avulso := Tfrmcheque_avulso.create(self);
        frmcheque_avulso.showmodal;
      end;
    end;
    if not CONTINUAR then
      exit;

    FRMMODULO.QRCONFIG.OPEN;
    if FRMMODULO.QRCONFIG.FieldByName('VENDA_CADASTRO_CHEQUE').ASINTEGER = 1
    then
    begin
      // cadastrar cheques
    end;

    if rfinanceira.value <> 0 then
    begin
      FI_CODIGO := '';
      FRMVENDA_FINANCEIRA := TFRMVENDA_FINANCEIRA.create(self);
      FRMVENDA_FINANCEIRA.showmodal;
      if FI_CODIGO = '' then
      begin
        application.messagebox
          ('É necessário informar a Instituição Financeira para prosseguir com esta forma de pagamento!',
          'Erro', mb_ok + mb_iconerror);
        exit;
      end;
    end;

    if not CONTINUAR then
      exit;

    if (rcrediario.value <> 0) or (rconvenio.value <> 0) then
    begin
      frmprevenda_contasreceber := tfrmprevenda_contasreceber.create(self);
      if frmprevenda.qrorcamento.FieldByName('obs').asstring <> '' then
        frmprevenda_contasreceber.rqtde.text :=
          frmprevenda.qrorcamento.FieldByName('obs').asstring;
      frmprevenda_contasreceber.showmodal;
    end;

    if not CONTINUAR then
      exit;

    bgravar.Enabled := false;

    if not JA_ABERTO then
    begin


      // if ecf_abre_cupom(ecf_modelo, '') = 'ERRO' then exit;
      // numero_cupomx := ecf_numero_cupom(ecf_modelo);

      application.ProcessMessages;

      frmprevenda.qrorcamento_produto.FIRST;
      while not frmprevenda.qrorcamento_produto.EOF do
      begin
        if frmprevenda.qrorcamento_produto.FieldByName('SITUACAO').asstring = '2'
        then
          TIPO_DESCONTO := '%'
        else
          TIPO_DESCONTO := '$';

        if (frmprevenda.qrorcamento_produto.FieldByName('CST').asstring = '060')
          or (frmprevenda.qrorcamento_produto.FieldByName('CST')
          .asstring = '010') or
          (frmprevenda.qrorcamento_produto.FieldByName('CST').asstring = '070')
        then
          ALIQUOTA := 'FF'
        else if (frmprevenda.qrorcamento_produto.FieldByName('CST')
          .asstring = '040') or
          (frmprevenda.qrorcamento_produto.FieldByName('CST').asstring = '030')
        then
          ALIQUOTA := 'II'
        else if (frmprevenda.qrorcamento_produto.FieldByName('CST')
          .asstring = '041') or
          (frmprevenda.qrorcamento_produto.FieldByName('CST').asstring = '050')
          or (frmprevenda.qrorcamento_produto.FieldByName('CST')
          .asstring = '051') or
          (frmprevenda.qrorcamento_produto.FieldByName('CST').asstring = '090')
        then
          ALIQUOTA := 'NN'
        else
        begin
          ALIQUOTA := formatfloat('00.00',
            frmprevenda.qrorcamento_produto.FieldByName('aliquota').ASFLOAT);
        end;

        frmprevenda.qrorcamento_produto.next;

      end;

      //ecf_abre_gaveta(ecf_modelo);

      JA_ABERTO := TRUE;
      JAFINALIZADO := false;

    end;

    if not JAFINALIZADO then
    begin
      ecf_ok := True;

      BLOCKINPUT(false);
      JAFINALIZADO := TRUE
    end;




    if USA_TEF then
    begin

      if TEFFINAL then
      begin

        if (FileExists(sTEFKoneKPath + 'TEF.Imp')) then
        begin
          TEFImprimeTransacao('V');
        end;

        if stefretorno = '0' then
        begin
          TEFVerificaGerenciadorAtivo;
          TEFFechaOperacao;
        end
        else
        begin
          TEFVerificaGerenciadorAtivo;
          TEFNaoConfirmaOperacao;

          TEFVerificaArquivosPendentes;
          TEFVerificaOperacaoPendente;

          bgravar.Enabled := TRUE;
          exit;
        end;
      end;

    end;

    // ***************************************************************************\\
    // ***************************************************************************\\
    // ***************************************************************************\\

    // lancamento da venda

    FI_LANCTO := frmPrincipal.codifica('000123');
    FRMMODULO.qrvenda.OPEN;
    FRMMODULO.qrvenda.insert;
    FRMMODULO.qrvenda.FieldByName('codigo').asstring := numero_vendax;
    FRMMODULO.qrvenda.FieldByName('data').asdatetime :=
      FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime;
    FRMMODULO.qrvenda.FieldByName('codcliente').asstring :=
      FRMMODULO.qrcliente.FieldByName('codigo').asstring;
    FRMMODULO.qrvenda.FieldByName('codvendedor').asstring :=
      frmprevenda.qrorcamento.FieldByName('codvendedor').asstring;
    FRMMODULO.qrvenda.FieldByName('codcaixa').asstring :=
      FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
    FRMMODULO.qrvenda.FieldByName('TOTAL').ASFLOAT := rtotal.value;
    FRMMODULO.qrvenda.FieldByName('SUBTOTAL').ASFLOAT := rsubtotal.value;
    FRMMODULO.qrvenda.FieldByName('meio_dinheiro').ASFLOAT := rdinheiro.value;
    FRMMODULO.qrvenda.FieldByName('meio_chequeav').ASFLOAT := rchequeav.value;
    FRMMODULO.qrvenda.FieldByName('meio_chequeap').ASFLOAT := rchequeap.value;
    FRMMODULO.qrvenda.FieldByName('meio_cartaocred').ASFLOAT :=
      rcartaocred.value;
    FRMMODULO.qrvenda.FieldByName('meio_cartaodeb').ASFLOAT := rcartaodeb.value;
    FRMMODULO.qrvenda.FieldByName('meio_crediario').ASFLOAT := rcrediario.value;
    FRMMODULO.qrvenda.FieldByName('meio_cONVENIO').ASFLOAT := rconvenio.value;
    FRMMODULO.qrvenda.FieldByName('meio_FINANCEIRA').ASFLOAT :=
      rfinanceira.value;
    FRMMODULO.qrvenda.FieldByName('desconto').ASFLOAT := rdesconto2.value;
    FRMMODULO.qrvenda.FieldByName('acrescimo').ASFLOAT := racrescimo2.value;
    FRMMODULO.qrvenda.FieldByName('OBS').asstring := '';
    FRMMODULO.qrvenda.FieldByName('COD_FINANCEIRA').asstring := FI_CODIGO;
    FRMMODULO.qrvenda.FieldByName('COD_FINANCEIRA_LANCTO').asstring :=
      FI_LANCTO;

    FRMMODULO.qrvenda.FieldByName('NUMERO_CUPOM_FISCAL').asstring :=
      numero_cupomx;
    if numero_cupomx <> '' then
      FRMMODULO.qrvenda.FieldByName('cupom_fiscal').ASINTEGER := 1;
    FRMMODULO.qrvenda.post;

    /// /  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
    FRMMODULO.qrcaixa_mov.OPEN;

    if rdinheiro.value <> 0 then
    begin
      FRMMODULO.qrcaixa_mov.insert;
      FRMMODULO.qrcaixa_mov.FieldByName('codigo').asstring :=
        frmPrincipal.codifica('000044');
      FRMMODULO.qrcaixa_mov.FieldByName('codcaixa').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('codoperador').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('data').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime;
      FRMMODULO.qrcaixa_mov.FieldByName('saida').ASFLOAT := 0;
      FRMMODULO.qrcaixa_mov.FieldByName('entrada').ASFLOAT := rdinheiro.value;
      FRMMODULO.qrcaixa_mov.FieldByName('valor').ASFLOAT := rdinheiro.value;
      FRMMODULO.QRCONFIG.OPEN;
      FRMMODULO.qrcaixa_mov.FieldByName('codconta').asstring :=
        FRMMODULO.QRCONFIG.FieldByName('PLANO_VENDA_AV').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('movimento').ASINTEGER := 3;
      // venda em dinheiro
      FRMMODULO.qrcaixa_mov.FieldByName('historico').asstring := 'Venda No. ' +
        numero_vendax + ' - ' + FRMMODULO.qrcliente.FieldByName('nome')
        .asstring;
      FRMMODULO.qrcaixa_mov.post;
    end;
    if rchequeav.value <> 0 then
    begin

      FRMMODULO.qrcaixa_mov.insert;
      FRMMODULO.qrcaixa_mov.FieldByName('codigo').asstring :=
        frmPrincipal.codifica('000044');
      FRMMODULO.qrcaixa_mov.FieldByName('codcaixa').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('codoperador').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('data').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime;
      FRMMODULO.qrcaixa_mov.FieldByName('saida').ASFLOAT := 0;
      FRMMODULO.qrcaixa_mov.FieldByName('entrada').ASFLOAT := 0;
      FRMMODULO.qrcaixa_mov.FieldByName('valor').ASFLOAT := rchequeav.value;
      FRMMODULO.QRCONFIG.OPEN;
      FRMMODULO.qrcaixa_mov.FieldByName('codconta').asstring :=
        FRMMODULO.QRCONFIG.FieldByName('PLANO_VENDA_AV').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('movimento').ASINTEGER := 5;
      // venda em cheque a vista
      FRMMODULO.qrcaixa_mov.FieldByName('historico').asstring := 'Venda No. ' +
        numero_vendax + ' - ' + FRMMODULO.qrcliente.FieldByName('nome')
        .asstring;
      FRMMODULO.qrcaixa_mov.post;
    end;
    if rchequeap.value <> 0 then
    begin
      FRMMODULO.qrcaixa_mov.insert;
      FRMMODULO.qrcaixa_mov.FieldByName('codigo').asstring :=
        frmPrincipal.codifica('000044');
      FRMMODULO.qrcaixa_mov.FieldByName('codcaixa').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('codoperador').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('data').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime;
      FRMMODULO.qrcaixa_mov.FieldByName('saida').ASFLOAT := 0;
      FRMMODULO.qrcaixa_mov.FieldByName('entrada').ASFLOAT := 0;
      FRMMODULO.qrcaixa_mov.FieldByName('valor').ASFLOAT := rchequeap.value;
      FRMMODULO.QRCONFIG.OPEN;
      FRMMODULO.qrcaixa_mov.FieldByName('codconta').asstring :=
        FRMMODULO.QRCONFIG.FieldByName('PLANO_VENDA_AP').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('movimento').ASINTEGER := 6;
      // venda em cheque a prazo
      FRMMODULO.qrcaixa_mov.FieldByName('historico').asstring := 'Venda No. ' +
        numero_vendax + ' - ' + FRMMODULO.qrcliente.FieldByName('nome')
        .asstring;
      FRMMODULO.qrcaixa_mov.post;
    end;
    if rcartaocred.value <> 0 then
    begin
      FRMMODULO.QRCONFIG.OPEN;
      if FRMMODULO.QRCONFIG.FieldByName('VENDA_CADASTRO_CARTAO').ASINTEGER = 1
      then
      begin
        // cadastrar cartoes de credito
      end;
      FRMMODULO.qrcaixa_mov.insert;
      FRMMODULO.qrcaixa_mov.FieldByName('codigo').asstring :=
        frmPrincipal.codifica('000044');
      FRMMODULO.qrcaixa_mov.FieldByName('codcaixa').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('codoperador').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('data').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime;
      FRMMODULO.qrcaixa_mov.FieldByName('saida').ASFLOAT := 0;
      FRMMODULO.qrcaixa_mov.FieldByName('entrada').ASFLOAT := 0;
      FRMMODULO.qrcaixa_mov.FieldByName('valor').ASFLOAT := rcartaocred.value;
      FRMMODULO.QRCONFIG.OPEN;
      FRMMODULO.qrcaixa_mov.FieldByName('codconta').asstring :=
        FRMMODULO.QRCONFIG.FieldByName('PLANO_VENDA_AP').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('movimento').ASINTEGER := 7;
      // venda em cartao de credito
      FRMMODULO.qrcaixa_mov.FieldByName('historico').asstring := 'Venda No. ' +
        numero_vendax + ' - ' + FRMMODULO.qrcliente.FieldByName('nome')
        .asstring;
      FRMMODULO.qrcaixa_mov.post;
    end;
    if rcartaodeb.value <> 0 then
    begin
      FRMMODULO.QRCONFIG.OPEN;
      if FRMMODULO.QRCONFIG.FieldByName('VENDA_CADASTRO_CARTAO').ASINTEGER = 1
      then
      begin
        // cadastrar cartoes de debito
      end;
      FRMMODULO.qrcaixa_mov.insert;
      FRMMODULO.qrcaixa_mov.FieldByName('codigo').asstring :=
        frmPrincipal.codifica('000044');
      FRMMODULO.qrcaixa_mov.FieldByName('codcaixa').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('codoperador').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('data').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime;
      FRMMODULO.qrcaixa_mov.FieldByName('saida').ASFLOAT := 0;
      FRMMODULO.qrcaixa_mov.FieldByName('entrada').ASFLOAT := 0;
      FRMMODULO.qrcaixa_mov.FieldByName('valor').ASFLOAT := rcartaodeb.value;
      FRMMODULO.QRCONFIG.OPEN;
      FRMMODULO.qrcaixa_mov.FieldByName('codconta').asstring :=
        FRMMODULO.QRCONFIG.FieldByName('PLANO_VENDA_AP').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('movimento').ASINTEGER := 8;
      // venda em cartao de credito
      FRMMODULO.qrcaixa_mov.FieldByName('historico').asstring := 'Venda No. ' +
        numero_vendax + ' - ' + FRMMODULO.qrcliente.FieldByName('nome')
        .asstring;
      FRMMODULO.qrcaixa_mov.post;
    end;

    if rconvenio.value <> 0 then
    begin
      FRMMODULO.qrcaixa_mov.insert;
      FRMMODULO.qrcaixa_mov.FieldByName('codigo').asstring :=
        frmPrincipal.codifica('000044');
      FRMMODULO.qrcaixa_mov.FieldByName('codcaixa').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('codoperador').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('data').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime;
      FRMMODULO.qrcaixa_mov.FieldByName('saida').ASFLOAT := 0;
      FRMMODULO.qrcaixa_mov.FieldByName('entrada').ASFLOAT := 0;
      FRMMODULO.qrcaixa_mov.FieldByName('valor').ASFLOAT := rconvenio.value;
      FRMMODULO.QRCONFIG.OPEN;
      FRMMODULO.qrcaixa_mov.FieldByName('codconta').asstring :=
        FRMMODULO.QRCONFIG.FieldByName('PLANO_VENDA_AP').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('movimento').ASINTEGER := 40;
      // venda em cartao de credito
      FRMMODULO.qrcaixa_mov.FieldByName('historico').asstring := 'Venda No. ' +
        numero_vendax + ' - ' + FRMMODULO.qrcliente.FieldByName('nome')
        .asstring;
      FRMMODULO.qrcaixa_mov.post;
    end;

    if rfinanceira.value <> 0 then
    begin
      FRMMODULO.qrcaixa_mov.insert;
      FRMMODULO.qrcaixa_mov.FieldByName('codigo').asstring :=
        frmPrincipal.codifica('000044');
      FRMMODULO.qrcaixa_mov.FieldByName('codcaixa').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('codoperador').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('data').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime;
      FRMMODULO.qrcaixa_mov.FieldByName('saida').ASFLOAT := 0;
      FRMMODULO.qrcaixa_mov.FieldByName('entrada').ASFLOAT := 0;
      FRMMODULO.qrcaixa_mov.FieldByName('valor').ASFLOAT := rfinanceira.value;
      FRMMODULO.QRCONFIG.OPEN;
      FRMMODULO.qrcaixa_mov.FieldByName('codconta').asstring :=
        FRMMODULO.QRCONFIG.FieldByName('PLANO_VENDA_AP').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('movimento').ASINTEGER := 42;
      // venda em cartao de credito
      FRMMODULO.qrcaixa_mov.FieldByName('historico').asstring :=
        'Venda Financeira ' + FI_NOME + ' No. ' + numero_vendax + ' - ' +
        FRMMODULO.qrcliente.FieldByName('nome').asstring;
      FRMMODULO.qrcaixa_mov.post;

      // lancamento de financeira

      IBQuery1.close;
      IBQuery1.sql.clear;
      IBQuery1.sql.add('insert into c000123');
      IBQuery1.sql.add
        ('(CODIGO, CODBANCO, DATA, CODCLIENTE, VALOR, SITUACAO, DATA_PGTO, VALOR_PAGO, BORDERO, PROPOSTA, OBS, CODVENDA)');
      IBQuery1.sql.add('values');
      IBQuery1.sql.add
        ('(:CODIGO, :CODBANCO, :DATA, :CODCLIENTE, :VALOR, :SITUACAO, :DATA_PGTO, :VALOR_PAGO, :BORDERO, :PROPOSTA, :OBS, :CODVENDA)');

      IBQuery1.ParamByName('CODIGO').asstring := FI_LANCTO;
      IBQuery1.ParamByName('CODbanco').asstring := FI_CODIGO;
      IBQuery1.ParamByName('DATA').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime;
      IBQuery1.ParamByName('CODCLIENTE').asstring :=
        FRMMODULO.qrcliente.FieldByName('codigo').asstring;
      IBQuery1.ParamByName('VALOR').ASFLOAT := rfinanceira.value;
      IBQuery1.ParamByName('SITUACAO').asstring := '1';
      IBQuery1.ParamByName('DATA_PGTO').asdatetime := STRTODATE(FI_VENCIMENTO);
      IBQuery1.ParamByName('VALOR_PAGO').ASFLOAT := 0;
      IBQuery1.ParamByName('BORDERO').asstring := FI_BORDERO;
      IBQuery1.ParamByName('PROPOSTA').asstring := FI_PROPOSTA;
      IBQuery1.ParamByName('OBS').asstring := '';
      IBQuery1.ParamByName('CODVENDA').asstring := numero_vendax;
      IBQuery1.ExecSQL;

    end;

    if rcrediario.value <> 0 then
    begin
      FRMMODULO.qrcaixa_mov.insert;
      FRMMODULO.qrcaixa_mov.FieldByName('codigo').asstring :=
        frmPrincipal.codifica('000044');
      FRMMODULO.qrcaixa_mov.FieldByName('codcaixa').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('codoperador').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('data').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime;
      FRMMODULO.qrcaixa_mov.FieldByName('saida').ASFLOAT := 0;
      FRMMODULO.qrcaixa_mov.FieldByName('entrada').ASFLOAT := 0;
      FRMMODULO.qrcaixa_mov.FieldByName('valor').ASFLOAT := rcrediario.value;
      FRMMODULO.QRCONFIG.OPEN;
      FRMMODULO.qrcaixa_mov.FieldByName('codconta').asstring :=
        FRMMODULO.QRCONFIG.FieldByName('PLANO_VENDA_AP').asstring;

      FRMMODULO.qrcaixa_mov.FieldByName('movimento').ASINTEGER := 4;
      // venda em cheque a vista
      FRMMODULO.qrcaixa_mov.FieldByName('historico').asstring := 'Venda No. ' +
        numero_vendax + ' - ' + FRMMODULO.qrcliente.FieldByName('nome')
        .asstring;
      FRMMODULO.qrcaixa_mov.post;

      // lancamento do contas a receber

      FRMMODULO.qrcontasreceber.OPEN;
      if rdinheiro.value <> 0 then
      begin
        FRMMODULO.qrcontasreceber.insert;
        FRMMODULO.qrcontasreceber.FieldByName('codigo').asstring :=
          numero_vendax + '/00';
        FRMMODULO.qrcontasreceber.FieldByName('codvenda').asstring :=
          numero_vendax;
        FRMMODULO.qrcontasreceber.FieldByName('codcliente').asstring :=
          FRMMODULO.qrcliente.FieldByName('codigo').asstring;
        FRMMODULO.qrcontasreceber.FieldByName('codregiao').asstring :=
          FRMMODULO.qrcliente.FieldByName('codregiao').asstring;
        FRMMODULO.qrcontasreceber.FieldByName('codvendedor').asstring :=
          frmprevenda.qrorcamento.FieldByName('codvendedor').asstring;
        FRMMODULO.qrcontasreceber.FieldByName('codcaixa').asstring :=
          FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
        FRMMODULO.qrcontasreceber.FieldByName('data_emissao').asdatetime :=
          FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime;
        FRMMODULO.qrcontasreceber.FieldByName('data_vencimento').asdatetime :=
          FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime;
        FRMMODULO.qrcontasreceber.FieldByName('valor_original').ASFLOAT :=
          rdinheiro.value;
        FRMMODULO.qrcontasreceber.FieldByName('valor_pago').ASFLOAT :=
          rdinheiro.value;
        FRMMODULO.qrcontasreceber.FieldByName('valor_atual').ASFLOAT := 0;
        FRMMODULO.qrcontasreceber.FieldByName('documento').asstring :=
          'ENTRADA';
        FRMMODULO.qrcontasreceber.FieldByName('tipo').asstring :=
          frmprevenda.qrvenda_contasreceber.FieldByName('tipo').asstring;
        FRMMODULO.qrcontasreceber.FieldByName('situacao').ASINTEGER := 2;
        FRMMODULO.qrcontasreceber.FieldByName('filtro').ASINTEGER := 0;
        FRMMODULO.qrcontasreceber.FieldByName('numero_cupom').asstring :=
          numero_cupomx;
        FRMMODULO.qrcontasreceber.post;

      end;

      y := 1;
      frmprevenda.qrvenda_contasreceber.FIRST;
      while not frmprevenda.qrvenda_contasreceber.EOF do
      begin
        FRMMODULO.qrcontasreceber.insert;
        FRMMODULO.qrcontasreceber.FieldByName('codigo').asstring :=
          numero_vendax + '/' + frmPrincipal.zerarcodigo(inttostr(y), 2);
        FRMMODULO.qrcontasreceber.FieldByName('codvenda').asstring :=
          numero_vendax;
        FRMMODULO.qrcontasreceber.FieldByName('codcliente').asstring :=
          FRMMODULO.qrcliente.FieldByName('codigo').asstring;
        FRMMODULO.qrcontasreceber.FieldByName('codregiao').asstring :=
          FRMMODULO.qrcliente.FieldByName('codregiao').asstring;
        FRMMODULO.qrcontasreceber.FieldByName('codvendedor').asstring :=
          frmprevenda.qrorcamento.FieldByName('codvendedor').asstring;
        FRMMODULO.qrcontasreceber.FieldByName('codcaixa').asstring :=
          FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
        FRMMODULO.qrcontasreceber.FieldByName('data_emissao').asdatetime :=
          FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime;
        FRMMODULO.qrcontasreceber.FieldByName('data_vencimento').asdatetime :=
          frmprevenda.qrvenda_contasreceber.FieldByName('vencimento')
          .asdatetime;
        FRMMODULO.qrcontasreceber.FieldByName('valor_original').ASFLOAT :=
          frmprevenda.qrvenda_contasreceber.FieldByName('valor').ASFLOAT;
        FRMMODULO.qrcontasreceber.FieldByName('valor_atual').ASFLOAT :=
          frmprevenda.qrvenda_contasreceber.FieldByName('valor').ASFLOAT;
        FRMMODULO.qrcontasreceber.FieldByName('documento').asstring :=
          frmprevenda.qrvenda_contasreceber.FieldByName('documento').asstring;
        FRMMODULO.qrcontasreceber.FieldByName('tipo').asstring :=
          frmprevenda.qrvenda_contasreceber.FieldByName('tipo').asstring;
        FRMMODULO.qrcontasreceber.FieldByName('situacao').ASINTEGER := 1;
        FRMMODULO.qrcontasreceber.FieldByName('filtro').ASINTEGER := 0;
        FRMMODULO.qrcontasreceber.FieldByName('numero_cupom').asstring :=
          numero_cupomx;
        FRMMODULO.qrcontasreceber.post;
        frmprevenda.qrvenda_contasreceber.next;
        y := y + 1;
      end;


      //

    end;

    item := 1;

    // lancamento dos produtos
    FRMMODULO.QRPRODUTO_MOV.OPEN;
    frmprevenda.qrorcamento_produto.FIRST;
    while not frmprevenda.qrorcamento_produto.EOF do
    begin
      FRMMODULO.QRPRODUTO.close;
      FRMMODULO.QRPRODUTO.sql.clear;
      FRMMODULO.QRPRODUTO.sql.add('SELECT * FROM C000025 WHERE CODIGO = ''' +
        frmprevenda.qrorcamento_produto.FieldByName('codproduto')
        .asstring + '''');
      FRMMODULO.QRPRODUTO.OPEN;

      FRMMODULO.QRPRODUTO_MOV.insert;
      FRMMODULO.QRPRODUTO_MOV.FieldByName('codigo').asstring :=
        frmPrincipal.codifica('000032');
      FRMMODULO.QRPRODUTO_MOV.FieldByName('codnota').asstring := numero_vendax;
      FRMMODULO.QRPRODUTO_MOV.FieldByName('numeronota').asstring :=
        numero_vendax;
      FRMMODULO.QRPRODUTO_MOV.FieldByName('codproduto').asstring :=
        frmprevenda.qrorcamento_produto.FieldByName('codproduto').asstring;
      FRMMODULO.QRPRODUTO_MOV.FieldByName('qtde').ASFLOAT :=
        frmprevenda.qrorcamento_produto.FieldByName('qtde').ASFLOAT;
      FRMMODULO.QRPRODUTO_MOV.FieldByName('unitario').ASFLOAT :=
        frmprevenda.qrorcamento_produto.FieldByName('unitario').ASFLOAT;
      FRMMODULO.QRPRODUTO_MOV.FieldByName('total').ASFLOAT :=
        frmprevenda.qrorcamento_produto.FieldByName('total').ASFLOAT;
      FRMMODULO.QRPRODUTO_MOV.FieldByName('desconto').ASFLOAT :=
        frmprevenda.qrorcamento_produto.FieldByName('desconto').ASFLOAT;
      FRMMODULO.QRPRODUTO_MOV.FieldByName('acrescimo').ASFLOAT :=
        frmprevenda.qrorcamento_produto.FieldByName('acrescimo').ASFLOAT;
      FRMMODULO.QRPRODUTO_MOV.FieldByName('unidade').asstring :=
        frmprevenda.qrorcamento_produto.FieldByName('unidade').asstring;

      FRMMODULO.QRPRODUTO_MOV.FieldByName('ALIQUOTA').ASFLOAT :=
        FRMMODULO.QRPRODUTO.FieldByName('aliquota').ASFLOAT;
      FRMMODULO.QRPRODUTO_MOV.FieldByName('CST').asstring :=
        FRMMODULO.QRPRODUTO.FieldByName('CST').asstring;

      FRMMODULO.QRPRODUTO_MOV.FieldByName('cupom_item').asstring :=
        frmPrincipal.zerarcodigo(inttostr(item), 3);
      FRMMODULO.QRPRODUTO_MOV.FieldByName('cupom_numero').asstring :=
        numero_cupomx;
      FRMMODULO.QRPRODUTO_MOV.FieldByName('cupom_modelo').asstring := '2D';
      if ecf_modelo <> '' then
      begin
        // frmmodulo.qrproduto_mov.fieldbyname('ecf_serie').asstring := frmprincipal.pstatus.panels[11].text;
        // frmmodulo.qrproduto_mov.fieldbyname('ecf_caixa').asstring := frmprincipal.pstatus.panels[9].text;
      end;
      FRMMODULO.QRPRODUTO_MOV.FieldByName('codcliente').asstring :=
        FRMMODULO.qrcliente.FieldByName('CODIGO').asstring;
      FRMMODULO.QRPRODUTO_MOV.FieldByName('codvendedor').asstring :=
        frmprevenda.qrorcamento.FieldByName('CODVENDEDOR').asstring;
      FRMMODULO.QRPRODUTO_MOV.FieldByName('MOVIMENTO').ASINTEGER := 2; // VENDA
      item := item + 1;
      FRMMODULO.QRPRODUTO_MOV.FieldByName('data').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime;

      FRMMODULO.QRPRODUTO.EDIT;
      FRMMODULO.QRPRODUTO.FieldByName('DATA_ULTIMAVENDA').asdatetime :=
        FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime;
      FRMMODULO.QRPRODUTO.post;

      FRMMODULO.QRPRODUTO_MOV.post;
      frmprevenda.qrorcamento_produto.next;
    end;
    frmprevenda.qrorcamento.Delete;

    FRMMODULO.Conexao.Commit;

  except
    application.messagebox
      ('Esta venda não poder ser concluída por ter gerado erros! Todos os lançamentos feitos nela serão cancelados!',
      'Erro', mb_ok + mb_iconerror);
    //ecf_cancela_cupom(ecf_modelo, 'V');
    FRMMODULO.Conexao.Rollback;
  end;

  VALOR_NOTAZ := rtotal.value;
  NUMERO_NOTAZ := numero_cupomx;

  if imp_duplicata = '1' then
  begin
    if rcrediario.value <> 0 then
    begin
      if application.messagebox('Deseja imprimir as duplicatas?', 'Aviso',
        mb_yesno + mb_iconquestion) = idyes then
      begin
        FRMMODULO.QRCONFIG.OPEN;
        if FRMMODULO.QRCONFIG.FieldByName('tipo_duplicata').asstring = 'LASER'
        then
        begin
          bduplicataClick(frmprevenda_fechamento);
        end
        else
        begin
          Button1Click(frmprevenda_fechamento);
        end;
      end;
    end;
  end;

  JA_ABERTO := false;

  close;

end;

procedure Tfrmprevenda_fechamento.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmprevenda_fechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmprevenda_fechamento.FormShow(Sender: TObject);
begin
  if USA_TEF then
  begin
    PTEF1.visible := TRUE;
    ptef2.visible := TRUE;
  end;

  FRMMODULO.QRCONFIG.OPEN;
  porta_impressora := FRMMODULO.QRCONFIG.FieldByName
    ('VENDA_PORTA_IMPRESSORA').asstring;

  // rsubtotal.value := frmprevenda.qrorcamentoTOTAL.AsFloat;
  // rtotal.value := frmprevenda.qrorcamentoTOTAL.AsFloat;

  numero_vendax := frmPrincipal.codifica('000048');

  pconvenio.visible := false;

  rdesconto1.SetFocus;
end;

procedure Tfrmprevenda_fechamento.rdinheiroEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
  edinheiro.Brush.color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento.rchequeavEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
  echequeav.Brush.color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento.rchequeapEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
  echequeap.Brush.color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento.rcartaocredEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
  ecartaocred.Brush.color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento.rcartaodebEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
  ecartaodeb.Brush.color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento.rcrediarioEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
  ecrediario.Brush.color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento.Cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmprevenda_fechamento.rchequeavExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  echequeav.Brush.color := clwindow;

  rsoma.value := rdinheiro.value + rchequeav.value + rchequeap.value +
    rcartaocred.value + rcartaodeb.value + rconvenio.value + rcrediario.value +
    rfinanceira.value;
  rdiferenca.value := rtotal.value - rsoma.value;
end;

procedure Tfrmprevenda_fechamento.rchequeapExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  echequeap.Brush.color := clwindow;

  rsoma.value := rdinheiro.value + rchequeav.value + rchequeap.value +
    rcartaocred.value + rcartaodeb.value + rconvenio.value + rcrediario.value +
    rfinanceira.value;
  rdiferenca.value := rtotal.value - rsoma.value;
end;

procedure Tfrmprevenda_fechamento.rcartaocredExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  ecartaocred.Brush.color := clwindow;

  rsoma.value := rdinheiro.value + rchequeav.value + rchequeap.value +
    rcartaocred.value + rcartaodeb.value + rconvenio.value + rcrediario.value +
    rfinanceira.value;
  rdiferenca.value := rtotal.value - rsoma.value;
end;

procedure Tfrmprevenda_fechamento.rcartaodebExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  ecartaodeb.Brush.color := clwindow;

  rsoma.value := rdinheiro.value + rchequeav.value + rchequeap.value +
    rcartaocred.value + rcartaodeb.value + rconvenio.value + rcrediario.value +
    rfinanceira.value;
  rdiferenca.value := rtotal.value - rsoma.value;
end;

procedure Tfrmprevenda_fechamento.rcrediarioExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  ecrediario.Brush.color := clwindow;

  rsoma.value := rdinheiro.value + rchequeav.value + rchequeap.value +
    rcartaocred.value + rcartaodeb.value + rconvenio.value + rcrediario.value +
    rfinanceira.value;
  rdiferenca.value := rtotal.value - rsoma.value;
end;

procedure Tfrmprevenda_fechamento.rconvenioEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;
  econvenio.Brush.color := $00A0FAF8;

end;

procedure Tfrmprevenda_fechamento.rconvenioExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  econvenio.Brush.color := clwindow;

  /// /////////////////

  if rconvenio.value > 0 then
  begin

    frmprevenda_contasreceber := tfrmprevenda_contasreceber.create(self);
    frmprevenda_contasreceber.showmodal;

    query2.close;
    query2.sql.clear;
    query2.sql.add('select * from c000007 where codigo = ''' +
      frmprevenda.qrorcamentoCODCLIENTE.asstring + '''');
    query2.OPEN;
    begin
      econvenio_codcliente.text := query2.FieldByName('codigo').asstring;
      econvenio_cliente.text := query2.FieldByName('nome').asstring;
      if query2.FieldByName('codconvenio').asstring <> '' then
      begin
        econvenio_codconvenio.text := query2.FieldByName('codconvenio')
          .asstring;
        QUERY1.close;
        QUERY1.sql.clear;
        QUERY1.sql.add('select * from c000071 where codigo = ''' +
          query2.FieldByName('codconvenio').asstring + '''');
        QUERY1.OPEN;
        if QUERY1.RecNo > 0 then
          econvenio_convenio.text := QUERY1.FieldByName('nome').asstring
        else
        begin
          application.messagebox('Convênio não encontrado!', 'Atenção!',
            mb_ok + mb_iconerror);
          rconvenio.SetFocus;
          exit;
        end;
      end
      else
      begin
        application.messagebox('Este cliente não pertence a nenhum convênio!',
          'Atenção!', mb_ok + mb_iconerror);
        rconvenio.SetFocus;
        exit;
      end;
      if frmprevenda_fechamento.rdesconto1.value > 0 then
      begin
        if application.messagebox
          ('Foi dado desconto no final desta venda! Acrescentar o desconto do convênio?',
          'Atenção', mb_yesno + MB_ICONWARNING) = idyes then
          rconvenio_desconto.value := QUERY1.FieldByName('desconto').ASFLOAT
        else
          rconvenio_desconto.value := 0;
      end
      else
        rconvenio_desconto.value := QUERY1.FieldByName('desconto').ASFLOAT;

      if rconvenio_desconto.value <> 0 then
      begin
        rconvenio_liquido.value := frmprevenda_fechamento.rsubtotal.value -
          (frmprevenda_fechamento.rsubtotal.value *
          ((rconvenio_desconto.value + frmprevenda_fechamento.rdesconto1.
          value) / 100));
      end
      else
        rconvenio_liquido.value := frmprevenda_fechamento.rtotal.value;
    end;
  end;

  {
    query3.Close;
    query3.SQL.clear;
    query3.SQL.add('select * from c000070 where codcliente = '''+frmvenda.lcliente_codigo.Caption+''' order by nome');
    query3.open;
    query3.First;
    convenio_combo.items.Clear;
    convenio_combo.Items.Add('O MESMO');
    while not query3.eof do
    begin
    convenio_combo.Items.Add(query3.FIELDBYNAME('NOME').ASSTRING);
    query3.NEXT;
    end;
    convenio_combo.ItemIndex := 0;
    convenio_combo.SetFocus;
    end
    else
    begin
    econvenio_codcliente.setfocus;
    end;
  }

  /// /////////////////

  rsoma.value := rdinheiro.value + rchequeav.value + rchequeap.value +
    rcartaocred.value + rcartaodeb.value + rconvenio.value + rcrediario.value;
  rdiferenca.value := rtotal.value - rsoma.value;

end;

procedure Tfrmprevenda_fechamento.rconvenioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmprevenda_fechamento.econvenio_codclienteEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A0FAF8;

end;

procedure Tfrmprevenda_fechamento.econvenio_codclienteExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  // econvenio_coDcliente.text := frmprincipal.zerarcodigo(frmvenda_inicio.ECLIENTE.Text,6);
  if econvenio_codcliente.text <> '000000' then
  begin
    query2.close;
    query2.sql.clear;
    query2.sql.add('select * from c000007 where codigo = ''' +
      econvenio_codcliente.text + '''');
    query2.OPEN;
    if query2.RecordCount = 0 then
    begin
      application.messagebox('Cliente não encontrado!', 'Atenção!',
        mb_ok + MB_ICONWARNING);
      bconvenio_clienteClick(frmprevenda_fechamento);
    end
    else
    begin
      econvenio_codcliente.text := query2.FieldByName('codigo').asstring;
      econvenio_cliente.text := query2.FieldByName('nome').asstring;
      if query2.FieldByName('codconvenio').asstring <> '' then
      begin
        econvenio_codconvenio.text := query2.FieldByName('codconvenio')
          .asstring;
        QUERY1.close;
        QUERY1.sql.clear;
        QUERY1.sql.add('select * from c000071 where codigo = ''' +
          query2.FieldByName('codconvenio').asstring + '''');
        QUERY1.OPEN;
        if QUERY1.RecNo > 0 then
          econvenio_convenio.text := QUERY1.FieldByName('nome').asstring
        else
        begin
          application.messagebox('Convênio não encontrado!', 'Atenção!',
            mb_ok + mb_iconerror);
          econvenio_codcliente.SetFocus;
          exit;
        end;
      end
      else
      begin
        application.messagebox('Este cliente não pertence a nenhum convênio!',
          'Atenção!', mb_ok + mb_iconerror);
        econvenio_codcliente.SetFocus;
        exit;
      end;
      if frmprevenda_fechamento.rdesconto1.value > 0 then
      begin
        if application.messagebox
          ('Foi dado desconto no final desta venda! Acrescentar o desconto do convênio?',
          'Atenção', mb_yesno + MB_ICONWARNING) = idyes then
          rconvenio_desconto.value := QUERY1.FieldByName('desconto').ASFLOAT
        else
          rconvenio_desconto.value := 0;
      end
      else
        rconvenio_desconto.value := QUERY1.FieldByName('desconto').ASFLOAT;

      if rconvenio_desconto.value <> 0 then
      begin
        rconvenio_liquido.value := frmprevenda_fechamento.rsubtotal.value -
          (frmprevenda_fechamento.rsubtotal.value *
          ((rconvenio_desconto.value + frmprevenda_fechamento.rdesconto1.
          value) / 100));
      end
      else
        rconvenio_liquido.value := frmprevenda_fechamento.rtotal.value;

      convenio_combo.SetFocus;
    end;
  end
  else
  begin
    bconvenio_cliente.SetFocus;
  end;

end;

procedure Tfrmprevenda_fechamento.econvenio_codclienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);

end;

procedure Tfrmprevenda_fechamento.bconvenio_clienteClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    econvenio_codcliente.text := resultado_pesquisa1;
    econvenio_cliente.text := resultado_pesquisa2;
    if resultado_pesquisa7 <> '' then
    begin
      econvenio_codconvenio.text := resultado_pesquisa7;
      QUERY1.close;
      QUERY1.sql.clear;
      QUERY1.sql.add('select * from c000071 where codigo = ''' +
        resultado_pesquisa7 + '''');
      QUERY1.OPEN;

      if QUERY1.RecNo > 0 then
        econvenio_convenio.text := QUERY1.FieldByName('nome').asstring
      else
      begin
        application.messagebox('Convênio não encontrado!', 'Atenção!',
          mb_ok + mb_iconerror);
        econvenio_codcliente.SetFocus;
        exit;
      end;
    end
    else
    begin
      application.messagebox('Este cliente não pertence a nenhum convênio!',
        'Atenção!', mb_ok + mb_iconerror);
      econvenio_codcliente.SetFocus;
      exit;
    end;
    if frmprevenda_fechamento.rdesconto1.value > 0 then
    begin
      if application.messagebox
        ('Foi dado desconto no final desta venda! Acrescentar o desconto do convênio?',
        'Atenção', mb_yesno + MB_ICONWARNING) = idyes then
        rconvenio_desconto.value := QUERY1.FieldByName('desconto').ASFLOAT
      else
        rconvenio_desconto.value := 0;
    end
    else
      rconvenio_desconto.value := QUERY1.FieldByName('desconto').ASFLOAT;

    if rconvenio_desconto.value <> 0 then
    begin
      rconvenio_liquido.value := frmprevenda_fechamento.rsubtotal.value -
        (frmprevenda_fechamento.rsubtotal.value *
        ((rconvenio_desconto.value + frmprevenda_fechamento.rdesconto1.
        value) / 100));
    end
    else
      rconvenio_liquido.value := frmprevenda_fechamento.rtotal.value;

    query3.close;
    query3.sql.clear;
    query3.sql.add('select * from c000070 where codcliente = ''' +
      econvenio_codcliente.text + ''' order by nome');
    query3.OPEN;
    query3.FIRST;
    convenio_combo.items.clear;
    convenio_combo.items.add('O MESMO');
    while not query3.EOF do
    begin
      convenio_combo.items.add(query3.FieldByName('NOME').asstring);
      query3.next;
    end;
    convenio_combo.ItemIndex := 0;
    convenio_combo.SetFocus;
  end
  else
  begin
    econvenio_codcliente.SetFocus;
  end;

end;

procedure Tfrmprevenda_fechamento.convenio_comboExit(Sender: TObject);
begin
  pconvenio.visible := TRUE;

end;

procedure Tfrmprevenda_fechamento.Button1Click(Sender: TObject);
var
  F: TEXTFILE;
  DI, ME, AN, CID, texto: string;
  item: Integer;
begin
  item := 1;

  if frmprevenda.qrvenda_contasreceber.RecordCount > 0 then
  begin
    ASSIGNFILE(F, porta_impressora);
    REWRITE(F);
    frmprevenda.qrvenda_contasreceber.FIRST;
    while not frmprevenda.qrvenda_contasreceber.EOF do
    begin

      writeln(F, #27 + #51);
      writeln(F, #18 + #27#72 + #20, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      DI := copy(frmprevenda.lvenda_data.caption, 1, 2);
      ME := copy(frmprevenda.lvenda_data.caption, 4, 2);
      AN := copy(frmprevenda.lvenda_data.caption, 7, 4);
      writeln(F,
        '                                                                   ' +
        DI + '  ' + ME + '  ' + AN); // 66
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');

      writeln(F, '  ' + frmPrincipal.Texto_Justifica
        (formatfloat('###,###,###,##0.00', VALOR_NOTAZ), 10, ' ', 'E') +
        '       ' + frmPrincipal.Texto_Justifica(NUMERO_NOTAZ, 10, ' ', 'D') +
        '   ' + frmPrincipal.Texto_Justifica(formatfloat('###,###,###,##0.00',
        frmprevenda.qrvenda_contasreceber.FieldByName('VALOR').ASFLOAT), 10,
        ' ', 'E') + '   ' + frmPrincipal.Texto_Justifica(NUMERO_NOTAZ + '/' +
        frmPrincipal.zerarcodigo(inttostr(item), 2), 10, ' ', 'D') + ' ' +
        frmPrincipal.Texto_Justifica
        (datetostr(frmprevenda.qrvenda_contasreceber.FieldByName('vencimento')
        .asdatetime), 10, ' ', 'D'));

      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');

      writeln(F, '');
      writeln(F, '                             ' +
        FRMMODULO.qrcliente.FieldByName('nome').asstring); // 31
      writeln(F, '');
      writeln(F, '                             ' +
        FRMMODULO.qrcliente.FieldByName('ENDERECO').asstring);
      writeln(F, '');
      writeln(F, '');
      CID := FRMMODULO.qrcliente.FieldByName('Cidade').asstring;
      texto := CID + FRMMODULO.qrcliente.FieldByName('uf').asstring;
      while length(texto) < 36 do
      begin
        CID := CID + ' ';
        texto := CID + FRMMODULO.qrcliente.FieldByName('uf').asstring;
      end;
      texto := texto + '    ' + FRMMODULO.qrcliente.FieldByName('cep').asstring;
      writeln(F, '                             ' + texto); // 31
      writeln(F, '');
      writeln(F, '                               ' + EMITENTE_CIDADE); // 31
      writeln(F, '');
      writeln(F, '                               ' +
        FRMMODULO.qrcliente.FieldByName('cpf').asstring); // 31
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');

      texto := AnsiUpperCase
        (extenso(frmprevenda.qrvenda_contasreceber.FieldByName('VALOR')
        .ASFLOAT));
      if copy(texto, 1, 2) = ' E' then
        Delete(texto, 1, 2);
      writeln(F, '                          ' + #15 + #27#72 + #20 + texto);
      // 28
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');
      writeln(F, '');

      frmprevenda.qrvenda_contasreceber.next;
      item := item + 1;

    end;
    CLOSEFILE(F);

  end;

end;

procedure Tfrmprevenda_fechamento.bcancela_cupomClick(Sender: TObject);
var
  texto: PWideChar;
  i: Integer;
begin
  FRMMODULO.QRCONFIG.OPEN;
  if FRMMODULO.QRCONFIG.FieldByName('ECF_TIPO').asstring = 'ECF-Remoto' then
  begin
    FRMMODULO.qrecf_comando.OPEN;
    FRMMODULO.qrecf_comando.insert;
    FRMMODULO.qrecf_comando.FieldByName('sequencia').asstring :=
      frmPrincipal.codifica('000072');
    FRMMODULO.qrecf_comando.FieldByName('comando').asstring := 'CANCELARCUPOM';
    FRMMODULO.qrecf_comando.post;
    FRMMODULO.Conexao.Commit;
    FRMMODULO.conexao_ecfserver.Commit;
  end
  else
  begin
    if frmPrincipal.autentica('Cancel.Cupom', 4) then
    begin
      try
        i := strtoint(ecf_numero_cupom(ecf_modelo));
        if (ecf_modelo = 'URANO') then
          //
        else
          i := i - 1;
        texto := PWideChar(frmPrincipal.zerarcodigo(inttostr(i), 6));
        texto := PWideChar('Confirma o Cancelamento do Cupom Nº ' +
          texto + '?');
      except
        texto := 'Confirma o Cancelamento do Cupom?';
      end;
      if application.messagebox(texto, 'Cancelamento de Cupom',
        mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then
      begin
        ecf_cancela_cupom(ecf_modelo, '');
      end;
    end
    else
    begin
      application.messagebox('Acesso não permitido!', 'Erro!',
        mb_ok + mb_iconerror);
    end;
  end;
end;

procedure Tfrmprevenda_fechamento.Cancela1Click(Sender: TObject);
begin
  bcancela_cupomClick(frmprevenda_fechamento);
end;

procedure Tfrmprevenda_fechamento.bduplicataClick(Sender: TObject);
var
  sano: string;
  sOrdem: string;
  d, m, a: word;
begin
  qrduplicata.OPEN;

  frmduplicata_impressao := tfrmduplicata_impressao.create(self);
  if numero_cupomx <> '' then
    frmduplicata_impressao.ed_fatura_numero.text := numero_cupomx
  else
    frmduplicata_impressao.ed_fatura_numero.text := numero_vendax;

  frmduplicata_impressao.ed_fatura_valor.value := rtotal.value;
  frmduplicata_impressao.showmodal;

  sOrdem := inttostr(iOrdem);
  while length(sOrdem) < 6 do
    sOrdem := '0' + sOrdem;

  DecodeDate(FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime,
    a, m, d);
  sano := copy(inttostr(a), 3, 2);
  while qrduplicata.RecordCount <> 0 do
    qrduplicata.Delete;
  qrduplicata.Refresh;

  frmprevenda.qrvenda_contasreceber.FIRST;
  while not frmprevenda.qrvenda_contasreceber.EOF do
  begin

    qrduplicata.insert;
    qrduplicata.FieldByName('emitente_fantasia').asstring := emitente_fantasia;
    qrduplicata.FieldByName('emitente_RAZAO').asstring := emitente_nome;
    qrduplicata.FieldByName('emitente_telefone').asstring := 'Fone: ' +
      emitente_telefone;
    qrduplicata.FieldByName('emitente_endereco').asstring := emitente_endereco +
      ' - ' + EMITENTE_CIDADE + ' - ' + emitente_cep;
    qrduplicata.FieldByName('emitente_cnpj').asstring := emitente_cnpj;
    qrduplicata.FieldByName('emitente_ie').asstring := emitente_ie;

    qrduplicata.FieldByName('FATURA_NUMERO').asstring := sNumero;

    qrduplicata.FieldByName('fatura_valor').asstring :=
      formatfloat('###,###,##0.00', rValor);

    // qrduplicata.fieldbyname('duplicata_numero').asstring   := qrduplicata.fieldbyname('FATURA_NUMERO').asstring+'/'+frmprevenda.qrvenda_contasreceber.fieldbyname('prestacao').asstring;

    qrduplicata.FieldByName('duplicata_numero').asstring := sOrdem + '/' + sano
      + retorna_letra(strtoint(frmprevenda.qrvenda_contasreceber.FieldByName
      ('prestacao').asstring));
    qrduplicata.FieldByName('duplicata_valor').asstring :=
      formatfloat('###,###,##0.00',
      frmprevenda.qrvenda_contasreceber.FieldByName('valor').ASFLOAT);
    qrduplicata.FieldByName('data_vencimento').asdatetime :=
      frmprevenda.qrvenda_contasreceber.FieldByName('vencimento').asdatetime;
    qrduplicata.FieldByName('data_emissao').asdatetime :=
      FRMMODULO.qrcaixa_operador.FieldByName('DATA').asdatetime;
    qrduplicata.FieldByName('extenso').asstring :=
      AnsiUpperCase(extenso(frmprevenda.qrvenda_contasreceber.FieldByName
      ('valor').ASFLOAT));

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from c000007 where codigo = ''' +
      FRMMODULO.qrvenda.FieldByName('codcliente').asstring + '''');
    qrcliente.OPEN;
    qrduplicata.FieldByName('sacado_nome').asstring :=
      qrcliente.FieldByName('nome').asstring;
    qrduplicata.FieldByName('sacado_endereco').asstring :=
      qrcliente.FieldByName('endereco').asstring + ' ' +
      qrcliente.FieldByName('bairro').asstring;
    qrduplicata.FieldByName('sacado_municipio').asstring :=
      qrcliente.FieldByName('cidade').asstring;
    qrduplicata.FieldByName('sacado_uf').asstring :=
      qrcliente.FieldByName('uf').asstring;
    qrduplicata.FieldByName('sacado_cep').asstring :=
      qrcliente.FieldByName('cep').asstring;
    qrduplicata.FieldByName('sacado_cnpj').asstring :=
      qrcliente.FieldByName('cpf').asstring;
    qrduplicata.FieldByName('sacado_ie').asstring :=
      qrcliente.FieldByName('rg').asstring;
    qrduplicata.FieldByName('sacado_praca').asstring := EMITENTE_CIDADE;
    qrduplicata.post;

    frmprevenda.qrvenda_contasreceber.next;
  end;

  qrduplicata.SortOnFields('duplicata_numero');

  fxduplicata.LoadFromFile('\OneMaker\server\rel\f000150.fr3');
  fxduplicata.ShowReport;
end;

procedure Tfrmprevenda_fechamento.rfinanceiraExit(Sender: TObject);
begin
  TEdit(Sender).color := clwindow;
  efinanceira.Brush.color := clwindow;

  rsoma.value := rdinheiro.value + rchequeav.value + rchequeap.value +
    rcartaocred.value + rcartaodeb.value + rconvenio.value + rcrediario.value +
    rfinanceira.value;
  rdiferenca.value := rtotal.value - rsoma.value;
end;

procedure Tfrmprevenda_fechamento.rfinanceiraEnter(Sender: TObject);
begin
  TEdit(Sender).color := $00A8FFFF;;
  efinanceira.Brush.color := $00A8FFFF;;
end;

procedure Tfrmprevenda_fechamento.rfinanceiraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmprevenda_fechamento.BCH_TECBANClick(Sender: TObject);
var
  vlr: string;
  i: Integer;
  F: TEXTFILE;
begin
  ASSIGNFILE(F, sTEFKoneKPath + 'gp.tmp');
  REWRITE(F);
  writeln(F, 'TECBAN');
  CLOSEFILE(F);
  ITEFTECBAN := 1;
  TEFLimpaVariaveis;
  vlr := formatfloat('#############0.00', rchequeav.value + rchequeap.value);
  i := pos(',', vlr);
  if i <> 0 then
    Delete(vlr, i, 1);
  sTEFValorTotal := vlr;

  TEFVendaCheque;

  if stefretorno = '0' then
  begin
    elcheque := TRUE;
    TEFFINAL := TRUE;
  end;
end;

procedure Tfrmprevenda_fechamento.BCH_REDECARDClick(Sender: TObject);
var
  vlr: string;
  i: Integer;
  F: TEXTFILE;
begin
  ASSIGNFILE(F, sTEFKoneKPath + 'gp.tmp');
  REWRITE(F);
  writeln(F, 'REDECARD');
  CLOSEFILE(F);
  ITEFTECBAN := 0;
  TEFLimpaVariaveis;
  vlr := formatfloat('#############0.00', rchequeav.value + rchequeap.value);
  i := pos(',', vlr);
  if i <> 0 then
    Delete(vlr, i, 1);
  sTEFValorTotal := vlr;
  TEFVendaCheque;
  if stefretorno = '0' then
  begin
    elcheque := TRUE;
    TEFFINAL := TRUE;
  end;

end;

procedure Tfrmprevenda_fechamento.bcartaoClick(Sender: TObject);
var
  i: Integer;
  F: TEXTFILE;
  vlr: string;
  ecf_ok: boolean;
begin
  if (rcartaocred.value > 0) or (rcartaodeb.value > 0) then
  begin
    TEFFINAL := false;

    if rcartaocred.value > 0 then
    begin
      ASSIGNFILE(F, sTEFKoneKPath + 'gp.tmp');
      REWRITE(F);
      writeln(F, 'REDECARD');
      CLOSEFILE(F);
      ITEFTECBAN := 0
    end
    else
    begin
      if frmPrincipal.msgcard() then
      begin
        ASSIGNFILE(F, sTEFKoneKPath + 'gp.tmp');
        REWRITE(F);
        writeln(F, 'REDECARD');
        CLOSEFILE(F);
        ITEFTECBAN := 0
      end
      else
      begin
        ASSIGNFILE(F, sTEFKoneKPath + 'gp.tmp');
        REWRITE(F);
        writeln(F, 'TECBAN');
        CLOSEFILE(F);
        ITEFTECBAN := 1;
      end;
    end;

    CONTINUA := TRUE;

    TEFLimpaVariaveis;

    ecf_ok := false;
    repeat
      sTEFDoctoVinculado := ecf_numero_cupom(ecf_modelo);
      if sTEFDoctoVinculado = 'ERRO' then
      begin
        BLOCKINPUT(false);
        if application.messagebox('Impressora não responde! Tentar novamente?',
          'Erro ECF', mb_yesno + mb_iconerror) = idno then
        begin
          CONTINUA := false;
          ecf_ok := TRUE;
        end
        else
          BLOCKINPUT(TRUE);
      end
      else
        ecf_ok := TRUE;

    until ecf_ok = TRUE;
    BLOCKINPUT(false);

    if CONTINUA then
    begin
      for i := 1 to 6 do
        sTEFDoctoVinculado := sTEFDoctoVinculado + ' ';

      for i := 1 to 14 do
        sTEFValorTotal := sTEFValorTotal + ' ';

      vlr := formatfloat('#############0.00', rcartaocred.value +
        rcartaodeb.value);
      i := pos(',', vlr);
      if i <> 0 then
        Delete(vlr, i, 1);

      sTEFValorTotal := vlr;
      sTEFValorTotal := inttostr(strtoint(sTEFValorTotal));
      sTEFMoeda := '0';

      TEFVendaCartao; // 1 passo

      if stefretorno = '0' then
      begin
        TEFFINAL := TRUE;
      end;
    end;
  end;

end;

procedure Tfrmprevenda_fechamento.bpgtoClick(Sender: TObject);
var
  ret: Integer;
  ecf_ok: boolean;
begin
  if not cons_cheque then
  begin

    if (rcartaocred.value > 0) or (rcartaodeb.value <> 0) then
    begin

      CONTINUA := TRUE;
      ecf_ok := false;
      repeat

        if ecf_efetua_forma_pgto(ecf_modelo, FCARTAOCR,
          rcartaocred.value + rcartaodeb.value) = 'ERRO' then
        begin
          BLOCKINPUT(false);
          if application.messagebox
            ('Impressora não responde! Tentar novamente?', 'Erro ECF',
            mb_yesno + mb_iconerror) = idno then
          begin
            CONTINUA := false;
            ecf_ok := TRUE;
          end
          else
            BLOCKINPUT(TRUE);
        end
        else
          ecf_ok := TRUE;

      until ecf_ok = TRUE;

      BLOCKINPUT(false);

    end;

  end
  else
  begin
    if (rchequeav.value > 0) or (rchequeap.value <> 0) then
    begin
      CONTINUA := TRUE;
      ecf_ok := false;
      repeat

        if ecf_efetua_forma_pgto(ecf_modelo, FCHEQUEAV,
          rchequeav.value + rchequeap.value) = 'ERRO' then
        begin
          BLOCKINPUT(false);
          if application.messagebox
            ('Impressora não responde! Tentar novamente?', 'Erro ECF',
            mb_yesno + mb_iconerror) = idno then
          begin
            CONTINUA := false;
            ecf_ok := TRUE;
          end
          else
            BLOCKINPUT(TRUE);
        end
        else
          ecf_ok := TRUE;

      until ecf_ok = TRUE;

      BLOCKINPUT(false);

    end;

  end;

end;

end.
