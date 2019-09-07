unit contasreceber_pgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ExtCtrls, Collection, Mask,
  TFlatPanelUnit, AdvGlowButton, AdvShapeButton, ComCtrls,
  wwdbdatetimepicker, AdvMetroButton, AdvSmoothPanel,
  AdvSmoothExpanderPanel, JvExMask, JvToolEdit, JvBaseEdits;

type
  Tfrmcontasreceber_pgto = class(TForm)
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    rdesconto2: TJvCalcEdit;
    rjuros: TJvCalcEdit;
    rdesconto1: TJvCalcEdit;
    Panel1: TPanel;
    rliquido: TJvCalcEdit;
    Label15: TLabel;
    rdias: TJvCalcEdit;
    FlatPanel2: TFlatPanel;
    Label10: TLabel;
    rcaixa: TRadioButton;
    rbanco: TRadioButton;
    Label16: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    AdvShapeButton1: TAdvShapeButton;
    bitbtn2: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    rmeio: TPanel;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    N1: TMenuItem;
    ZerarJuros1: TMenuItem;
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
    edinheiro: TShape;
    echequeav: TShape;
    echequeap: TShape;
    ecartao: TShape;
    eboleto: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Label11: TLabel;
    Label12: TLabel;
    Shape15: TShape;
    Label13: TLabel;
    Shape17: TShape;
    Label14: TLabel;
    rdinheiro: TJvCalcEdit;
    rchequeav: TJvCalcEdit;
    rchequeap: TJvCalcEdit;
    rcartao: TJvCalcEdit;
    rboleto: TJvCalcEdit;
    FlatPanel3: TFlatPanel;
    Shape16: TShape;
    Shape18: TShape;
    rsoma: TJvCalcEdit;
    rdiferenca: TJvCalcEdit;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Label17: TLabel;
    edata: TwwDBDateTimePicker;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel2: TPanel;
    rtotal: TJvCalcEdit;
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdesconto1Enter(Sender: TObject);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure rjurosExit(Sender: TObject);
    procedure rjurosKeyPress(Sender: TObject; var Key: Char);
    procedure rdinheiroExit(Sender: TObject);
    procedure rchequeavExit(Sender: TObject);
    procedure rchequeapExit(Sender: TObject);
    procedure rcartaoExit(Sender: TObject);
    procedure rboletoExit(Sender: TObject);
    procedure rdinheiroEnter(Sender: TObject);
    procedure rchequeavEnter(Sender: TObject);
    procedure rchequeapEnter(Sender: TObject);
    procedure rcartaoEnter(Sender: TObject);
    procedure rboletoEnter(Sender: TObject);
    procedure rboletoKeyPress(Sender: TObject; var Key: Char);
    procedure rcaixaKeyPress(Sender: TObject; var Key: Char);
    procedure rbancoKeyPress(Sender: TObject; var Key: Char);
    procedure rdiasExit(Sender: TObject);
    procedure rbancoClick(Sender: TObject);
    procedure rcaixaClick(Sender: TObject);
    procedure rjurosEnter(Sender: TObject);
    procedure rdiasKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_pgto: Tfrmcontasreceber_pgto;
  continua_banco: boolean;
  JUROS_A_MAIS: REAL;
  valor_anterior: REAL;

  juros_valor, juros_desconto: REAL;
    const
   sc_DragMove = $f012;
implementation

uses contasreceber, modulo, principal, troco, contasreceber_banco,
  Math, contasreceber_recibo;

{$R *.dfm}

procedure Tfrmcontasreceber_pgto.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontasreceber_pgto.bgravarClick(Sender: TObject);
var
  texto: PWideChar;
  qtde_conta: integer;
  CREDITO, troco: REAL;
  nome_cliente, documento: string;
  percentual: REAL;
  numero_contas: string;
  i, vqtde_parcelas, vqtde_parcelas1, vgera_parcela, vgera_parcela1: integer;
  vdesconto, vvalor_pago, vvalor_pago1: double;

  diferenca_juro: REAL;
begin

  try

    FRMMODULO.QRCAIXA_MOV.CLOSE;
    FRMMODULO.QRCAIXA_MOV.SQL.CLEAR;
    FRMMODULO.QRCAIXA_MOV.SQL.ADD
      ('select * from c000044 where codigo = ''999999''');
    FRMMODULO.QRCAIXA_MOV.open;

    FRMMODULO.QRCONFIG.open;
    if FRMMODULO.QRCONFIG.FieldByName('CONTASRECEBER_DESCONTO_PERMITIR')
      .ASINTEGER = 0 then
    begin
      if rdesconto2.VALUE > 0 then
      begin
        Application.messagebox
          ('Não é permitido dar desconto no recebimento! Favor se informar com a gerência!',
          'Atenção', mb_ok + MB_ICONWARNING);
        rdesconto2.setfocus;
        EXIT;
      end;
    end
    else
    begin
      if FRMMODULO.QRCONFIG.FieldByName('CONTASRECEBER_DESCONTO_PERMITIR')
        .ASINTEGER = 1 then
      begin
        if rdesconto1.VALUE > FRMMODULO.QRCONFIG.FieldByName
          ('CONTASRECEBER_DESCONTO_percent').ASfloat then
        begin
          texto := PWideChar('Desconto máximo permito:' + #13 + ' ---> R$ ' +
            formatfloat('###,###,##0.00',
            FRMMODULO.QRCONFIG.FieldByName('CONTASRECEBER_DESCONTO_percent')
            .ASfloat) + '%  <--- ' + #13 +
            'É necessário autorização para prosseguir! ' + #13 +
            'Deseja continuar?');
          if Application.messagebox(texto, 'Atenção', mb_yesno + MB_ICONWARNING)
            = idyes then
          begin
            if not frmPrincipal.autentica('Concessão de Desconto', 3) then
            begin
              Application.messagebox('Desculpe! Seu acesso não foi autorizado!',
                'Aviso', mb_ok + MB_ICONERROR);
              rdesconto1.setfocus;
              EXIT;
            end;
          end
          else
          begin
            rdesconto1.setfocus;
            EXIT;
          end;
        end;
      end;
    end;
    nome_cliente := copy(FRMMODULO.qrcliente.FieldByName('nome')
      .asstring, 1, 20);

    numero_contas := '''';
    frmcontasreceber.qrcr.First;
    while not frmcontasreceber.qrcr.Eof do
    begin
      if frmcontasreceber.qrcr.FieldByName('filtro').ASINTEGER = 1 then
        numero_contas := numero_contas + frmcontasreceber.qrcr.FieldByName
          ('codigo').asstring + ''',''';
      frmcontasreceber.qrcr.Next;

    end;

    i := length(numero_contas);

    delete(numero_contas, i - 1, 2);

    frmcontasreceber.qrcontasreceber.CLOSE;
    frmcontasreceber.qrcontasreceber.SQL.CLEAR;
    frmcontasreceber.qrcontasreceber.SQL.ADD
      ('select * from c000049 where codcliente = ''' +
      FRMMODULO.qrcliente.FieldByName('codigo').asstring +
      ''' and situacao = 1 and codigo in (' + numero_contas +
      ') order by data_vencimento');
    frmcontasreceber.qrcontasreceber.open;

    // #################### 01 conta ############################\\
    // #################### 01 conta ############################\\
    // #################### 01 conta ############################\\
    // #################### 01 conta ############################\\

    if frmcontasreceber.qrcontasreceber.RecordCount = 1 then
    begin
      PRESTACOES := frmcontasreceber.qrcontasreceber.FieldByName
        ('CODIGO').asstring;
      if rbanco.Checked then
      begin
        rsoma.VALUE := rtotal.VALUE;
        rdiferenca.VALUE := 0;
        continua_banco := false;
        frmcontasreceber_banco := tfrmcontasreceber_banco.create(self);
        frmcontasreceber_banco.dateedit1.date := edata.DateTime;
        // frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
        frmcontasreceber_banco.Edit1.Text := 'Recebto. ' + nome_cliente +
          ' - Docto: ' + frmcontasreceber.qrcontasreceber.FieldByName
          ('documento').asstring;
        frmcontasreceber_banco.showmodal;
        if not continua_banco then
          EXIT;
      end;
      if rcaixa.Checked then
      begin
        if rsoma.VALUE = 0 then
        begin
          Application.messagebox('Favor informar o meio do recebimento!',
            'Atenção', mb_ok + MB_ICONWARNING);
          EXIT;
        end;
      end;
      frmcontasreceber.qrcontasreceber.edit;
      frmcontasreceber.qrcontasreceber.FieldByName('DATA_PAGAMENTO').asdatetime
        := edata.DateTime;
      // frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;

      if rdiferenca.VALUE < 0 then
      begin
        if Application.messagebox('A diferença será lançada como crédito?',
          'Atenção', mb_yesno + MB_DEFBUTTON2 + mb_iconquestion) = idyes then
        begin
          frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASfloat :=
            frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASfloat +
            rsoma.VALUE;
          frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat :=
            frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat
            + rjuros.VALUE - rdesconto2.VALUE - rsoma.VALUE;
          CREDITO := rdiferenca.VALUE * (-1);
          troco := 0;
        end
        else
        begin
          frmvenda_troco := tfrmvenda_troco.create(self);
          frmvenda_troco.ltroco.caption := formatfloat('###,###,##0.00',
            (rdiferenca.VALUE) * (-1));
          frmvenda_troco.showmodal;
          Application.ProcessMessages;
          frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASfloat :=
            frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASfloat +
            rsoma.VALUE + rdiferenca.VALUE;
          frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat :=
            (frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat
            + rjuros.VALUE) - (rdesconto2.VALUE + rsoma.VALUE +
            rdiferenca.VALUE);
          troco := rdiferenca.VALUE * (-1);
          CREDITO := 0;

          // RDINHEIRO.VALUE := RDINHEIRO.VALUE + RDIFERENCA.VALUE;
          // RDIFERENCA.VALUE := 0;

          // showmessage('deilson '+ floattostr(RDINHEIRO.VALUE));

        end;
      end
      else
      begin
        frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASfloat :=
          frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASfloat +
          rsoma.VALUE;
        frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat :=
          STRTOFLOAT(formatfloat('########0.00',
          (frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat +
          rjuros.VALUE - rdesconto2.VALUE - rsoma.VALUE)));
      end;

      if (frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat <
        0.02) and (frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
        .ASfloat > (-0.02)) then
      begin
        frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
          .ASfloat := 0;
        frmcontasreceber.qrcontasreceber.FieldByName('situacao').ASINTEGER := 2;
        frmcontasreceber.qrcontasreceber.FieldByName('filtro').ASINTEGER := 0;
      end;
      with frmcontasreceber.qrcontasreceber_pgto do
      begin

        CLOSE;
        SQL.CLEAR;
        SQL.ADD('insert into c000050');
        SQL.ADD('(codconta,data,valor_parcela,valor_juros,valor_desconto,valor_pago,dinheiro,chequeav,chequeap,cartao,boleto,troco,credito,codcliente,caixa_banco)');
        SQL.ADD('values');
        SQL.ADD('(:codconta,:data,:valor_parcela,:valor_juros,:valor_desconto,:valor_pago,:dinheiro,:chequeav,:chequeap,:cartao,:boleto,:troco,:credito,:codcliente,:caixa_banco)');
        params.parambyname('codconta').asstring :=
          copy(frmcontasreceber.qrcontasreceber.FieldByName('codigo')
          .asstring, 1, 9);
        params.parambyname('data').asdatetime := edata.DateTime;
        // frmcontasreceber.qrcontasreceber.fieldbyname('data_pagamento').asdatetime;
        params.parambyname('valor_parcela').ASfloat := rliquido.VALUE;
        params.parambyname('valor_juros').ASfloat := rjuros.VALUE;
        params.parambyname('valor_desconto').ASfloat := rdesconto2.VALUE;
        params.parambyname('valor_pago').ASfloat := rsoma.VALUE;
        params.parambyname('dinheiro').ASfloat := rdinheiro.VALUE;
        params.parambyname('chequeav').ASfloat := rchequeav.VALUE;
        params.parambyname('chequeap').ASfloat := rchequeap.VALUE;
        params.parambyname('cartao').ASfloat := rcartao.VALUE;
        params.parambyname('boleto').ASfloat := rboleto.VALUE;
        params.parambyname('troco').ASfloat := troco;
        params.parambyname('credito').ASfloat := CREDITO;
        params.parambyname('CODCLIENTE').asstring :=
          frmcontasreceber.qrcontasreceber.FieldByName('CODCLIENTE').asstring;
        if rcaixa.Checked then
          params.parambyname('CAIXA_BANCO').ASINTEGER := 1
        else
          params.parambyname('CAIXA_BANCO').ASINTEGER := 2;
        execsql;

      end;
      if rcaixa.Checked then
      begin
        if (rdinheiro.VALUE) <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          if troco <> 0 then
          begin
            FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat :=
              rdinheiro.VALUE - troco;
            FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat :=
              rdinheiro.VALUE - troco;
          end
          else
          begin
            FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat :=
              rdinheiro.VALUE - troco;
            FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat :=
              rdinheiro.VALUE - troco;
          end;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 9;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente + ' - Docto: ' + frmcontasreceber.qrcontasreceber.
            FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
          troco := 0;
        end;
        if rchequeav.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rchequeav.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 10;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente + ' - Docto: ' + frmcontasreceber.qrcontasreceber.
            FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
          if troco <> 0 then
          begin
            FRMMODULO.QRCAIXA_MOV.open;
            FRMMODULO.QRCAIXA_MOV.insert;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
              frmPrincipal.codifica('000044');
            FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
              FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
              FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
            FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
              FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
            FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := troco * (-1);
            FRMMODULO.QRCAIXA_MOV.FieldByName('saida').ASfloat := troco;
            FRMMODULO.QRCONFIG.open;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
              FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO')
              .asstring;

            FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 9;
            FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
              'Troco no Recebto. ' + nome_cliente + ' - Docto: ' +
              frmcontasreceber.qrcontasreceber.FieldByName('documento')
              .asstring;
            FRMMODULO.QRCAIXA_MOV.post;
          end;
          troco := 0;
        end;
        if rchequeap.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rchequeap.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 11;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente + ' - Docto: ' + frmcontasreceber.qrcontasreceber.
            FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
          if troco <> 0 then
          begin
            FRMMODULO.QRCAIXA_MOV.open;
            FRMMODULO.QRCAIXA_MOV.insert;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
              frmPrincipal.codifica('000044');
            FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
              FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
              FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
            FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
              FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
            FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := troco * (-1);
            FRMMODULO.QRCAIXA_MOV.FieldByName('saida').ASfloat := troco;
            FRMMODULO.QRCONFIG.open;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
              FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO')
              .asstring;

            FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 9;
            FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
              'Troco no Recebto. ' + nome_cliente + ' - Docto: ' +
              frmcontasreceber.qrcontasreceber.FieldByName('documento')
              .asstring;
            FRMMODULO.QRCAIXA_MOV.post;
          end;
          troco := 0;

        end;
        if rcartao.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rcartao.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 12;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente + ' - Docto: ' + frmcontasreceber.qrcontasreceber.
            FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
          if troco <> 0 then
          begin
            FRMMODULO.QRCAIXA_MOV.open;
            FRMMODULO.QRCAIXA_MOV.insert;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
              frmPrincipal.codifica('000044');
            FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
              FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
              FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
            FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
              FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
            FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := troco * (-1);
            FRMMODULO.QRCAIXA_MOV.FieldByName('saida').ASfloat := troco;
            FRMMODULO.QRCONFIG.open;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
              FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO')
              .asstring;

            FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 9;
            FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
              'Troco no Recebto. ' + nome_cliente + ' - Docto: ' +
              frmcontasreceber.qrcontasreceber.FieldByName('documento')
              .asstring;
            FRMMODULO.QRCAIXA_MOV.post;
          end;
          troco := 0;
        end;
        if rboleto.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rboleto.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 15;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente + ' - Docto: ' + frmcontasreceber.qrcontasreceber.
            FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
          if troco <> 0 then
          begin
            FRMMODULO.QRCAIXA_MOV.open;
            FRMMODULO.QRCAIXA_MOV.insert;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
              frmPrincipal.codifica('000044');
            FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
              FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
              FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
            FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
              FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
            FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := troco * (-1);
            FRMMODULO.QRCAIXA_MOV.FieldByName('saida').ASfloat := troco;
            FRMMODULO.QRCONFIG.open;
            FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
              FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO')
              .asstring;

            FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 9;
            FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
              'Troco no Recebto. ' + nome_cliente + ' - Docto: ' +
              frmcontasreceber.qrcontasreceber.FieldByName('documento')
              .asstring;
            FRMMODULO.QRCAIXA_MOV.post;
          end;
          troco := 0;
        end;

        if rdesconto2.VALUE > 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat :=
            rdesconto2.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 14;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
            'Desc.Recebto. ' + nome_cliente + ' - Docto: ' +
            frmcontasreceber.qrcontasreceber.FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rjuros.VALUE > 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rjuros.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 13;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
            'Juros Recebido ' + nome_cliente + ' - Docto: ' +
            frmcontasreceber.qrcontasreceber.FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
      end; // caixa
      if rbanco.Checked then
      begin
        FRMMODULO.QRCAIXA_MOV.open;
        FRMMODULO.QRCAIXA_MOV.insert;
        FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
          frmPrincipal.codifica('000044');
        FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
          FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
        FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
          FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
        FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
          FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
        FRMMODULO.QRCAIXA_MOV.FieldByName('saida').ASfloat := 0;
        FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
        FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rtotal.VALUE;
        FRMMODULO.QRCONFIG.open;
        FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
          FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

        FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 15;
        // BOLETO
        FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. ' +
          nome_cliente + ' - Docto: ' + frmcontasreceber.qrcontasreceber.
          FieldByName('documento').asstring;
        FRMMODULO.QRCAIXA_MOV.post;
        if rdesconto2.VALUE > 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat :=
            rdesconto2.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 14;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
            'Desc.Recebto. ' + nome_cliente + ' - Docto: ' +
            frmcontasreceber.qrcontasreceber.FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rjuros.VALUE > 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rjuros.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 13;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
            'Juros Recebido ' + nome_cliente + ' - Docto: ' +
            frmcontasreceber.qrcontasreceber.FieldByName('documento').asstring;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
      end; // banco
      frmcontasreceber.qrcontasreceber.post;
      FRMMODULO.Conexao.Commit;

      frmcontasreceber.qrcontasreceber.Refresh;
    end
    else
    begin // apenas 01 conta
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// //////////////  V A R I A S   C O N T A S  ////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////
      /// ///////////////////////////////////////////////////////////////////////////



      // showmessage(floattostr(frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat));

      if vqtde_parcelas > 1 then
        vdesconto := rdesconto2.VALUE / vqtde_parcelas;

      if rbanco.Checked then
      begin
        rsoma.VALUE := rtotal.VALUE;
        rdiferenca.VALUE := 0;
        continua_banco := false;
        frmcontasreceber_banco := tfrmcontasreceber_banco.create(self);
        frmcontasreceber_banco.dateedit1.date := edata.DateTime;
        // frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
        frmcontasreceber_banco.Edit1.Text := 'Recebto. ' + nome_cliente;
        frmcontasreceber_banco.showmodal;
        if not continua_banco then
          EXIT;
      end;
      if rcaixa.Checked then
      begin
        if rsoma.VALUE = 0 then
        begin
          Application.messagebox('Favor informar o meio do recebimento!',
            'Atenção', mb_ok + MB_ICONWARNING);
          EXIT;
        end;
      end;

      if rdiferenca.VALUE < 0 then
      begin
        if Application.messagebox('A diferença será lançada como crédito?',
          'Atenção', mb_yesno + MB_DEFBUTTON2 + mb_iconquestion) = idyes then
        begin
          CREDITO := rdiferenca.VALUE * (-1);
          troco := 0;
        end
        else
        begin
          frmvenda_troco := tfrmvenda_troco.create(self);
          frmvenda_troco.ltroco.caption := formatfloat('###,###,##0.00',
            (rdiferenca.VALUE) * (-1));
          frmvenda_troco.showmodal;

          troco := rdiferenca.VALUE * (-1);
          CREDITO := 0;

          rdinheiro.VALUE := rdinheiro.VALUE + rdiferenca.VALUE;
          rdiferenca.VALUE := 0;

          // showmessage('deilson '+ floattostr(RDINHEIRO.VALUE));

        end;
      end;

      vgera_parcela := 0;
      vgera_parcela1 := 0;

      if rdiferenca.VALUE <> 0 then
      begin
        if btn_gerar = '1' then
        begin
          if Application.messagebox
            ('Deseja Gerar uma parcela do restante do Débito?', 'Aviso',
            mb_yesno + MB_ICONWARNING) = idyes then
            vgera_parcela := 1;

        end
        else
        begin
          if Application.messagebox
            ('Deseja Gerar uma parcela do restante do Débito?', 'Aviso',
            mb_yesno + MB_ICONWARNING + MB_DEFBUTTON2) = idyes then
            vgera_parcela := 1;
        end;
      end;

      frmcontasreceber.qrcontasreceber_pgto.CLOSE;
      frmcontasreceber.qrcontasreceber_pgto.SQL.CLEAR;
      frmcontasreceber.qrcontasreceber_pgto.SQL.ADD
        ('select * from c000050 where codcliente = ''' +
        frmcontasreceber.qrcontasreceber.FieldByName('CODCLIENTE')
        .asstring + '''');
      frmcontasreceber.qrcontasreceber_pgto.open;
      // repassar as contas para dar baixa
      PRESTACOES := '';

      vvalor_pago := (rsoma.VALUE + total_credito) + rdesconto2.VALUE;
      // total pago pelo cliente
      vqtde_parcelas := frmcontasreceber.qrcontasreceber.RecordCount;

      vvalor_pago1 := (rsoma.VALUE + total_credito) + rdesconto2.VALUE;
      // total pago pelo cliente

      vqtde_parcelas1 := frmcontasreceber.qrcontasreceber.RecordCount;

      frmcontasreceber.qrcontasreceber.First;

      while not frmcontasreceber.qrcontasreceber.Eof do
      begin
        PRESTACOES := PRESTACOES + ', ' + frmcontasreceber.qrcontasreceber.
          FieldByName('CODIGO').asstring;
        frmcontasreceber.qrcontasreceber.edit;

        with frmcontasreceber.qrcontasreceber_pgto do
        begin
          insert;
          FieldByName('codconta').asstring :=
            frmcontasreceber.qrcontasreceber.FieldByName('codigo').asstring;
          FieldByName('data').asdatetime := edata.DateTime;
          // frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
          FieldByName('valor_parcela').ASfloat :=
            frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat;
          if rjuros.VALUE <> 0 then
          begin
            FieldByName('valor_juros').ASfloat :=
              (frmcontasreceber.qrcontasreceber.FieldByName('VALOR_ATUAL')
              .ASfloat * JUROS_A_MAIS) + frmcontasreceber.qrcontasreceber.
              FieldByName('VALOR_juros').ASfloat;
          end
          else
          begin
            FieldByName('valor_juros').ASfloat := 0;
          end;

          if rdesconto1.VALUE <> 0 then
          begin
            FieldByName('valor_desconto').ASfloat :=
              frmcontasreceber.qrcontasreceber.FieldByName('VALOR_atual')
              .ASfloat * (rdesconto1.VALUE / 100);
          end
          else
          begin
            FieldByName('valor_desconto').ASfloat;
          end;

          (* ********************************* *)
          if vgera_parcela = 0 then
          begin
            if vvalor_pago1 > 0 then
            begin

              if (vvalor_pago1 >= frmcontasreceber.qrcontasreceber.FieldByName
                ('valor_atual').ASfloat) then
              begin
                FieldByName('valor_pago').ASfloat := FieldByName('valor_pago')
                  .ASfloat + STRTOFLOAT(formatfloat('##########0.00',
                  frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                  .ASfloat));
                vvalor_pago1 := vvalor_pago1 -
                  frmcontasreceber.qrcontasreceber.FieldByName
                  ('valor_atual').ASfloat;
              end
              else
              begin
                FieldByName('valor_pago').ASfloat := FieldByName('valor_pago')
                  .ASfloat + STRTOFLOAT(formatfloat('##########0.00',
                  vvalor_pago1));
                vvalor_pago1 := 0;
              end;
            end;
          end
          else
          begin
            FieldByName('valor_pago').ASfloat := FieldByName('valor_pago')
              .ASfloat + STRTOFLOAT(formatfloat('##########0.00',
              frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
              .ASfloat));
          end;
          (* ******************************** *)

          percentual :=
            ((frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
            .ASfloat + FieldByName('valor_juros').ASfloat -
            FieldByName('valor_desconto').ASfloat) * 100) / rtotal.VALUE;

          if rdinheiro.VALUE <> 0 then
            FieldByName('dinheiro').ASfloat :=
              (rdinheiro.VALUE * (percentual / 100));
          if rchequeav.VALUE <> 0 then
            FieldByName('chequeav').ASfloat :=
              (rchequeav.VALUE * (percentual / 100));
          if rchequeap.VALUE <> 0 then
            FieldByName('chequeap').ASfloat :=
              (rchequeap.VALUE * (percentual / 100));
          if rcartao.VALUE <> 0 then
            FieldByName('cartao').ASfloat :=
              (rcartao.VALUE * (percentual / 100));
          if rboleto.VALUE <> 0 then
            FieldByName('boleto').ASfloat :=
              (rboleto.VALUE * (percentual / 100));
          if rdiferenca.VALUE <> 0 then
            FieldByName('troco').ASfloat :=
              (rdiferenca.VALUE * (percentual / 100));
          if CREDITO <> 0 then
            FieldByName('credito').ASfloat := (CREDITO * (percentual / 100));
          FieldByName('CODCLIENTE').asstring :=
            frmcontasreceber.qrcontasreceber.FieldByName('CODCLIENTE').asstring;
          if rcaixa.Checked then
            FieldByName('CAIXA_BANCO').ASINTEGER := 1
          else
            FieldByName('CAIXA_BANCO').ASINTEGER := 2;
          post;

          vqtde_parcelas1 := vqtde_parcelas1 - 1;

        end;

        if (vgera_parcela = 0) and (rdiferenca.VALUE <> 0) then
        begin
          if vvalor_pago > 0 then
          begin

            if rjuros.VALUE > 0 then
            begin

              if ((vvalor_pago + juros_desconto) >=
                frmcontasreceber.qrcontasreceber.FieldByName('restante').ASfloat)
              then
              begin

                frmcontasreceber.qrcontasreceber.FieldByName('valor_pago')
                  .ASfloat := frmcontasreceber.qrcontasreceber.FieldByName
                  ('valor_pago').ASfloat + frmcontasreceber.qrcontasreceber.
                  FieldByName('valor_atual').ASfloat;

                vvalor_pago := vvalor_pago - frmcontasreceber.qrcontasreceber.
                  FieldByName('RESTANTE').ASfloat;
                frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                  .ASfloat := 0;
                frmcontasreceber.qrcontasreceber.FieldByName('situacao')
                  .ASINTEGER := 2;
              end
              else
              begin

                frmcontasreceber.qrcontasreceber.FieldByName('valor_pago')
                  .ASfloat := frmcontasreceber.qrcontasreceber.FieldByName
                  ('valor_pago').ASfloat + vvalor_pago;

                // deilson showmessage(' menor restante DA COMPRA '+floattostr(frmcontasreceber.qrcontasreceber.FieldByName('restante').asfloat)+ ' VALOR PAGP' + floattostr(VVALOR_PAGO));

                if vvalor_pago < frmcontasreceber.qrcontasreceber.FieldByName
                  ('restante').ASfloat then
                begin
                  frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                    .ASfloat := frmcontasreceber.qrcontasreceber.FieldByName
                    ('restante').ASfloat - vvalor_pago;
                end
                else
                begin
                  vvalor_pago := 0;
                  frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                    .ASfloat :=
                    STRTOFLOAT(formatfloat('##########0.00',
                    frmcontasreceber.qrcontasreceber.FieldByName('restante')
                    .ASfloat - frmcontasreceber.qrcontasreceber.FieldByName
                    ('valor_pago').ASfloat));
                end;

              end;

            end
            else
            begin

              // showmessage(inttostr(vqtde_parcelas));
              // showmessage(' antes ' + floattostr(vvalor_pago)+ ' ' + floattostr(frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat));

              if (vvalor_pago >= frmcontasreceber.qrcontasreceber.FieldByName
                ('valor_atual').ASfloat) then
              begin
                frmcontasreceber.qrcontasreceber.FieldByName('valor_pago')
                  .ASfloat := frmcontasreceber.qrcontasreceber.FieldByName
                  ('valor_pago').ASfloat + frmcontasreceber.qrcontasreceber.
                  FieldByName('valor_atual').ASfloat;
                vvalor_pago := vvalor_pago - frmcontasreceber.qrcontasreceber.
                  FieldByName('valor_atual').ASfloat;
                frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                  .ASfloat := 0;
                frmcontasreceber.qrcontasreceber.FieldByName('situacao')
                  .ASINTEGER := 2;
              end
              else

              begin

                frmcontasreceber.qrcontasreceber.FieldByName('valor_pago')
                  .ASfloat := frmcontasreceber.qrcontasreceber.FieldByName
                  ('valor_pago').ASfloat + vvalor_pago;

                vvalor_pago := 0;

                if frmcontasreceber.qrcontasreceber.FieldByName('valor_pago')
                  .ASfloat < 0 then
                begin
                  frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                    .ASfloat := 0;
                  frmcontasreceber.qrcontasreceber.FieldByName('situacao')
                    .ASINTEGER := 2;
                  vvalor_pago1 := vvalor_pago1 -
                    (frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                    .ASfloat * (-1));

                end
                else
                  frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                    .ASfloat :=
                    STRTOFLOAT(formatfloat('##########0.00',
                    frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
                    .ASfloat - frmcontasreceber.qrcontasreceber.FieldByName
                    ('valor_pago').ASfloat));
              end;

            end;

          end;

        end
        else
        begin
          // gerar uma nova prestacao no restante

          frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').ASfloat :=
            frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').ASfloat +
            frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat;
          frmcontasreceber.qrcontasreceber.FieldByName('valor_atual')
            .ASfloat := 0;
          frmcontasreceber.qrcontasreceber.FieldByName('situacao')
            .ASINTEGER := 2;

        end;

        if frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat < 0
        then
        begin
          frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat :=
            0; // frmcontasreceber.qrcontasreceber.FieldByName('valor_parcela').asfloat - frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat;
          frmcontasreceber.qrcontasreceber.FieldByName('situacao')
            .ASINTEGER := 2;
        end;


        // showmessage(' valor atual ' + floattostr(frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat));

        frmcontasreceber.qrcontasreceber.FieldByName('DATA_PAGAMENTO')
          .asdatetime := edata.DateTime;
        // frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
        frmcontasreceber.qrcontasreceber.FieldByName('filtro').ASINTEGER := 0;
        frmcontasreceber.qrcontasreceber.post;

        // aqui

        if (frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat
          <= 0) and (frmcontasreceber.qrcontasreceber.FieldByName('situacao')
          .ASINTEGER = 1) then

        begin

          frmcontasreceber.qrcontasreceber.edit;
          frmcontasreceber.qrcontasreceber.FieldByName('situacao')
            .ASINTEGER := 2;
          frmcontasreceber.qrcontasreceber.post;
        end;


        // showmessage(floattostr(frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat));
        // showmessage(floattostr(frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat));

        frmcontasreceber.qrcontasreceber.Next;

        vqtde_parcelas := vqtde_parcelas - 1;

      end;

      // if rdiferenca.Value > 0 then
      if vgera_parcela = 1 then
      begin
        if Application.messagebox
          ('Será feito um lançamento do restante do débito!', 'Atenção',
          MB_okCANCEL + MB_ICONASTERISK) = IDok then
        begin

          frmcontasreceber.qrcontasreceber.insert;
          frmcontasreceber.qrcontasreceber.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000049') + '/RE';
          frmcontasreceber.qrcontasreceber.FieldByName('codvenda').asstring
            := 'RESTAN';
          frmcontasreceber.qrcontasreceber.FieldByName('codcliente').asstring :=
            FRMMODULO.qrcliente.FieldByName('CODIGO').asstring;
          frmcontasreceber.qrcontasreceber.FieldByName('codvendedor').asstring
            := '000099';
          frmcontasreceber.qrcontasreceber.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
          frmcontasreceber.qrcontasreceber.FieldByName('data_emissao').asstring
            := FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          frmcontasreceber.qrcontasreceber.FieldByName('data_vencimento')
            .asstring := FRMMODULO.qrcaixa_operador.FieldByName('DATA')
            .asstring;
          frmcontasreceber.qrcontasreceber.FieldByName('valor_original').ASfloat
            := rdiferenca.VALUE;
          frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').ASfloat :=
            rdiferenca.VALUE;
          frmcontasreceber.qrcontasreceber.FieldByName('documento').asstring :=
            'RESTANTE DEBITO';
          frmcontasreceber.qrcontasreceber.FieldByName('tipo').asstring :=
            'CARTEIRA';
          frmcontasreceber.qrcontasreceber.FieldByName('situacao')
            .ASINTEGER := 1;
          frmcontasreceber.qrcontasreceber.FieldByName('filtro').ASINTEGER := 0;
          frmcontasreceber.qrcontasreceber.post;
        end
        else
        begin
          showmessage('Cancelado pelo usuário.');
          FRMMODULO.Conexao.Rollback;
          EXIT;
        end;
      end;

      if rcaixa.Checked then
      begin
        if rdinheiro.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rdinheiro.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat :=
            rdinheiro.VALUE;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 9;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rchequeav.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rchequeav.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 10;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rchequeap.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rchequeap.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 11;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rcartao.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rcartao.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 12;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rboleto.VALUE <> 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rboleto.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 15;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. '
            + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rdesconto2.VALUE > 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat :=
            rdesconto2.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 14;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
            'Desc.Recebto. ' + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rjuros.VALUE > 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rjuros.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;

          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 13;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
            'Juros Recebido ' + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
      end;

      if rbanco.Checked then
      begin
        FRMMODULO.QRCAIXA_MOV.open;
        FRMMODULO.QRCAIXA_MOV.insert;
        FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
          frmPrincipal.codifica('000044');
        FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
          FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
        FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
          FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').asstring;
        FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
          FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
        FRMMODULO.QRCAIXA_MOV.FieldByName('saida').ASfloat := 0;
        FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
        FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rtotal.VALUE;

        FRMMODULO.QRCONFIG.open;
        FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
          FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

        FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 15;
        // BOLETO
        FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring := 'Recebto. ' +
          nome_cliente;
        FRMMODULO.QRCAIXA_MOV.post;
        if rdesconto2.VALUE > 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat :=
            rdesconto2.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 14;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
            'Desc.Recebto. ' + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
        if rjuros.VALUE > 0 then
        begin
          FRMMODULO.QRCAIXA_MOV.open;
          FRMMODULO.QRCAIXA_MOV.insert;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codigo').asstring :=
            frmPrincipal.codifica('000044');
          FRMMODULO.QRCAIXA_MOV.FieldByName('codcaixa').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codoperador').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('data').asstring :=
            FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
          FRMMODULO.QRCAIXA_MOV.FieldByName('valor').ASfloat := rjuros.VALUE;
          FRMMODULO.QRCAIXA_MOV.FieldByName('entrada').ASfloat := 0;
          FRMMODULO.QRCONFIG.open;
          FRMMODULO.QRCAIXA_MOV.FieldByName('codconta').asstring :=
            FRMMODULO.QRCONFIG.FieldByName('PLANO_RECEBTO_CREDIARIO').asstring;

          FRMMODULO.QRCAIXA_MOV.FieldByName('movimento').ASINTEGER := 13;
          FRMMODULO.QRCAIXA_MOV.FieldByName('historico').asstring :=
            'Juros Recebido ' + nome_cliente;
          FRMMODULO.QRCAIXA_MOV.post;
        end;
      end;
      FRMMODULO.Conexao.Commit;
      frmcontasreceber.qrcontasreceber.Refresh;
    end;

    try
      if Application.messagebox('Deseja imprimir o recibo?', 'Aviso',
        mb_yesno + mb_iconquestion) = idyes then
      begin
        BitBtn1.OnClick(frmcontasreceber_pgto);
      end;
    except

    end;

  except
    showmessage('Houve erro no processamento!');
    FRMMODULO.Conexao.Rollback;
  end;
  CLOSE;
end;

procedure Tfrmcontasreceber_pgto.AdvSmoothExpanderPanel1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmcontasreceber_pgto.bcancelarClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmcontasreceber_pgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcontasreceber_pgto.rdesconto1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmcontasreceber_pgto.rdesconto1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if rdesconto1.VALUE <> 0 then
  begin
    rdesconto2.VALUE := rliquido.VALUE * (rdesconto1.VALUE / 100);
  end;
  rtotal.VALUE := rliquido.VALUE - rdesconto2.VALUE + rjuros.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rdesconto2Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if rliquido.VALUE <> 0 then
  begin
    rdesconto1.VALUE := (rdesconto2.VALUE * 100) / rliquido.VALUE;
  end;
  rtotal.VALUE := rliquido.VALUE - rdesconto2.VALUE + rjuros.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmcontasreceber_pgto.rjurosExit(Sender: TObject);
var
  vj: REAL;
begin

  tedit(Sender).Color := clwindow;

  if valor_anterior <> rjuros.VALUE then
  begin
    if rjuros.VALUE <> 0 then
    begin
      vj := rjuros.VALUE - total_juros;
      vj := vj * 100 / rliquido.VALUE;
      JUROS_A_MAIS := vj / 100;
    end;
    juros_desconto := juros_valor - rjuros.VALUE;
  end;
  rtotal.VALUE := rliquido.VALUE - rdesconto2.VALUE + rjuros.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rjurosKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    rcaixa.setfocus;
end;

procedure Tfrmcontasreceber_pgto.rdinheiroExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  edinheiro.Brush.Color := clwindow;

  rsoma.VALUE := rdinheiro.VALUE + rchequeav.VALUE + rchequeap.VALUE +
    rcartao.VALUE + rboleto.VALUE;
  rdiferenca.VALUE := rtotal.VALUE - rsoma.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rchequeavExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  echequeav.Brush.Color := clwindow;

  rsoma.VALUE := rdinheiro.VALUE + rchequeav.VALUE + rchequeap.VALUE +
    rcartao.VALUE + rboleto.VALUE;
  rdiferenca.VALUE := rtotal.VALUE - rsoma.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rchequeapExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  echequeap.Brush.Color := clwindow;

  rsoma.VALUE := rdinheiro.VALUE + rchequeav.VALUE + rchequeap.VALUE +
    rcartao.VALUE + rboleto.VALUE;
  rdiferenca.VALUE := rtotal.VALUE - rsoma.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rcartaoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  ecartao.Brush.Color := clwindow;

  rsoma.VALUE := rdinheiro.VALUE + rchequeav.VALUE + rchequeap.VALUE +
    rcartao.VALUE + rboleto.VALUE;
  rdiferenca.VALUE := rtotal.VALUE - rsoma.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rboletoExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  eboleto.Brush.Color := clwindow;

  rsoma.VALUE := rdinheiro.VALUE + rchequeav.VALUE + rchequeap.VALUE +
    rcartao.VALUE + rboleto.VALUE;
  rdiferenca.VALUE := rtotal.VALUE - rsoma.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rdinheiroEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  edinheiro.Brush.Color := $00A0FAF8;
end;

procedure Tfrmcontasreceber_pgto.rchequeavEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  echequeav.Brush.Color := $00A0FAF8;

end;

procedure Tfrmcontasreceber_pgto.rchequeapEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  echequeap.Brush.Color := $00A0FAF8;

end;

procedure Tfrmcontasreceber_pgto.rcartaoEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  ecartao.Brush.Color := $00A0FAF8;

end;

procedure Tfrmcontasreceber_pgto.rboletoEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  eboleto.Brush.Color := $00A0FAF8;

end;

procedure Tfrmcontasreceber_pgto.rboletoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcontasreceber_pgto.rcaixaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    rdinheiro.setfocus;
end;

procedure Tfrmcontasreceber_pgto.rbancoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmcontasreceber_pgto.rdiasExit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;

  // calculo de juros
  rjuros.VALUE := total_juros;

  if rdias.VALUE <> 0 then
  begin
    if juro_taxa <> 0 then
    begin
      JUROS_A_MAIS := (rdias.VALUE * (juro_taxa / 100));
      rjuros.VALUE := rliquido.VALUE * (rdias.VALUE * (juro_taxa / 100));
      rjuros.VALUE := total_juros + rjuros.VALUE;
    end;
  end;
  //
  rtotal.VALUE := rliquido.VALUE + rjuros.VALUE - rdesconto2.VALUE;

end;

procedure Tfrmcontasreceber_pgto.rbancoClick(Sender: TObject);
begin

  Height := 249;
  rmeio.visible := false;
end;

procedure Tfrmcontasreceber_pgto.rcaixaClick(Sender: TObject);
begin

  Height := 451;
  rmeio.visible := true;
end;

procedure Tfrmcontasreceber_pgto.rjurosEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  valor_anterior := rjuros.VALUE;
end;

procedure Tfrmcontasreceber_pgto.rdiasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    rcaixa.setfocus;
end;

procedure Tfrmcontasreceber_pgto.BitBtn1Click(Sender: TObject);
begin
  frmcontasreceber_recibo := tfrmcontasreceber_recibo.create(self);
  frmcontasreceber_recibo.showmodal;
end;

procedure Tfrmcontasreceber_pgto.BitBtn2Click(Sender: TObject);
begin
  if not frmPrincipal.autentica('Zerar Juros', 4) then
  begin
    Application.messagebox('Não autorizado!', 'Atenção!', mb_ok + MB_ICONERROR);
    rdinheiro.setfocus;
    EXIT;
  end;

  rjuros.Enabled := true;
  rjuros.setfocus;
end;

procedure Tfrmcontasreceber_pgto.FormShow(Sender: TObject);
begin
  juros_valor := rjuros.VALUE;
  juros_desconto := 0;
  edata.DateTime := FRMMODULO.qrcaixa_operador.FieldByName('data').asdatetime;
  rdesconto1.setfocus;
end;

end.
