unit convenio_pgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ExtCtrls, Collection, Mask, TFlatPanelUnit,
  DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, JvExMask, JvToolEdit, JvBaseEdits;

type
  Tfrmconvenio_pgto = class(TForm)
    ViewSplit1: TViewSplit;
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
    Panel2: TPanel;
    rtotal: TJvCalcEdit;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    Label15: TLabel;
    rdias: TJvCalcEdit;
    FlatPanel2: TFlatPanel;
    ViewSplit3: TViewSplit;
    Label10: TLabel;
    rcaixa: TRadioButton;
    rbanco: TRadioButton;
    Label16: TLabel;
    ecaixa: TShape;
    ebanco: TShape;
    Panel3: TPanel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    N1: TMenuItem;
    ZerarJuros1: TMenuItem;
    qrcontasreceber_pgto: TZQuery;
    ViewSplit2: TViewSplit;
    FlatPanel3: TFlatPanel;
    Label5: TLabel;
    comboforma: TComboBox;
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdesconto1Enter(Sender: TObject);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure rjurosExit(Sender: TObject);
    procedure rjurosKeyPress(Sender: TObject; var Key: Char);
    procedure rboletoKeyPress(Sender: TObject; var Key: Char);
    procedure rcaixaEnter(Sender: TObject);
    procedure rbancoEnter(Sender: TObject);
    procedure rcaixaKeyPress(Sender: TObject; var Key: Char);
    procedure rbancoKeyPress(Sender: TObject; var Key: Char);
    procedure rdiasExit(Sender: TObject);
    procedure rcaixaExit(Sender: TObject);
    procedure rbancoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbancoClick(Sender: TObject);
    procedure rcaixaClick(Sender: TObject);
    procedure rjurosEnter(Sender: TObject);
    procedure rdiasKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure comboformaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconvenio_pgto: Tfrmconvenio_pgto;
  continua_banco: boolean;
  JUROS_A_MAIS: REAL;
  valor_anterior: REAL;
  total_juros, juro_taxa: REAL;

implementation

uses convenio, modulo, principal, troco, contasreceber_banco, // temp,
  Math, contasreceber_recibo, cheque, convenio_receber;

{$R *.dfm}

procedure Tfrmconvenio_pgto.bgravarClick(Sender: TObject);
var
  texto: PWideChar;
  qtde_conta: integer;
  CREDITO, troco: REAL;
  nome_cliente, documento: string;
  percentual: REAL;
begin

  try
    FRMMODULO.QRCONFIG.OPEN;
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
            if not frmPrincipal.autentica('Concessão de Desconto', 4) then
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

    continua_banco := false;
    if rbanco.Checked then
    begin
      continua_banco := false;
      frmcontasreceber_banco := tfrmcontasreceber_banco.create(self);
      frmcontasreceber_banco.dateedit1.date :=
        FRMMODULO.qrcaixa_operador.FieldByName('DATA').ASdatetime;
      frmcontasreceber_banco.Edit1.Text := 'Recebto. Convênio: ' +
        frmconvenio_receber.locconvenio.Text;
      frmcontasreceber_banco.showmodal;
      if not continua_banco then
        EXIT;
    end;

    qrcontasreceber_pgto.close;
    qrcontasreceber_pgto.sql.clear;
    qrcontasreceber_pgto.sql.add
      ('select * from c000050 where codcliente = ''xx11xx''');
    qrcontasreceber_pgto.OPEN;

    with frmconvenio_receber do
    begin
      qrcliente.first;
      while not qrcliente.eof do
      begin
        qrpgto.close;
        qrpgto.sql.clear;
        qrpgto.sql.add('select * from c000049');
        qrpgto.sql.add('where');
        qrpgto.sql.add('tipo = ''CONVENIO''');
        qrpgto.sql.add('and codcliente = ''' + qrcliente.FieldByName('codigo')
          .asstring + '''');
        qrpgto.sql.add('and situacao = 1');
        qrpgto.sql.add('and data_emissao <= :datax');
        qrpgto.Params.ParamByName('datax').ASdatetime :=
          frmconvenio_receber.edata.date;
        qrpgto.OPEN;

        qrpgto.first;
        while not qrpgto.eof do
        begin
          qrpgto.edit;
          qrpgto.FieldByName('VALOR_PAGO').ASfloat :=
            qrpgto.FieldByName('VALOR_PAGO').ASfloat +
            qrpgto.FieldByName('valor_atual').ASfloat;
          qrpgto.FieldByName('data_pagamento').ASdatetime :=
            FRMMODULO.qrcaixa_operador.FieldByName('data').ASdatetime;
          with qrcontasreceber_pgto do
          begin
            OPEN;
            insert;
            FieldByName('codconta').asstring :=
              qrpgto.FieldByName('codigo').asstring;
            FieldByName('data').asstring :=
              qrpgto.FieldByName('data_pagamento').asstring;
            FieldByName('valor_parcela').ASfloat :=
              qrpgto.FieldByName('valor_atual').ASfloat;
            FieldByName('valor_juros').ASfloat := 0;
            FieldByName('valor_desconto').ASfloat := 0;
            FieldByName('valor_pago').ASfloat :=
              qrpgto.FieldByName('valor_atual').ASfloat;
            if comboforma.Text = 'DINHEIRO' then
              FieldByName('dinheiro').ASfloat :=
                qrpgto.FieldByName('valor_atual').ASfloat;
            if comboforma.Text = 'CHEQUE A VISTA' then
              FieldByName('chequeav').ASfloat :=
                qrpgto.FieldByName('valor_atual').ASfloat;
            if comboforma.Text = 'CHEQUE A PRAZO' then
              FieldByName('chequeap').ASfloat :=
                qrpgto.FieldByName('valor_atual').ASfloat;
            if comboforma.Text = 'CARTAO' then
              FieldByName('cartao').ASfloat :=
                qrpgto.FieldByName('valor_atual').ASfloat;
            if comboforma.Text = 'DEPOSITO' then
              FieldByName('boleto').ASfloat :=
                qrpgto.FieldByName('valor_atual').ASfloat;
            FieldByName('CODCLIENTE').asstring :=
              qrpgto.FieldByName('CODCLIENTE').asstring;
            if rcaixa.Checked then
              FieldByName('CAIXA_BANCO').ASINTEGER := 1
            else
              FieldByName('CAIXA_BANCO').ASINTEGER := 2;
            post;
          end;
          qrpgto.FieldByName('valor_atual').ASfloat := 0;
          qrpgto.FieldByName('situacao').ASINTEGER := 2;
          qrpgto.FieldByName('filtro').ASINTEGER := 0;
          qrpgto.post;
          qrpgto.Next;
        end;
        qrcliente.Next;
      end;
    end;

    if rcaixa.Checked then
    begin
      FRMMODULO.qrcaixa_mov.OPEN;
      FRMMODULO.qrcaixa_mov.insert;
      FRMMODULO.qrcaixa_mov.FieldByName('codigo').asstring :=
        frmPrincipal.codifica('000044');
      FRMMODULO.qrcaixa_mov.FieldByName('codoperador').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('data').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('valor').ASfloat := rtotal.VALUE;
      if comboforma.Text = 'DINHEIRO' then
      begin
        FRMMODULO.qrcaixa_mov.FieldByName('entrada').ASfloat := rtotal.VALUE;
        FRMMODULO.qrcaixa_mov.FieldByName('movimento').ASINTEGER := 9;
      end;
      if comboforma.Text = 'CHEQUE A VISTA' then
      begin
        FRMMODULO.qrcaixa_mov.FieldByName('entrada').ASfloat := 0;
        FRMMODULO.qrcaixa_mov.FieldByName('movimento').ASINTEGER := 10;
      end;
      if comboforma.Text = 'CHEQUE A PRAZO' then
      begin
        FRMMODULO.qrcaixa_mov.FieldByName('entrada').ASfloat := 0;
        FRMMODULO.qrcaixa_mov.FieldByName('movimento').ASINTEGER := 11;
      end;
      if comboforma.Text = 'CARTAO' then
      begin
        FRMMODULO.qrcaixa_mov.FieldByName('entrada').ASfloat := 0;
        FRMMODULO.qrcaixa_mov.FieldByName('movimento').ASINTEGER := 12;
      end;
      if comboforma.Text = 'DEPOSITO' then
      begin
        FRMMODULO.qrcaixa_mov.FieldByName('entrada').ASfloat := 0;
        FRMMODULO.qrcaixa_mov.FieldByName('movimento').ASINTEGER := 15;
      end;
      FRMMODULO.qrcaixa_mov.FieldByName('historico').asstring :=
        'Recebto.Convenio: ' + frmconvenio_receber.locconvenio.Text;
      FRMMODULO.qrcaixa_mov.post;
    end;
    if rbanco.Checked then
    begin
      FRMMODULO.qrcaixa_mov.OPEN;
      FRMMODULO.qrcaixa_mov.insert;
      FRMMODULO.qrcaixa_mov.FieldByName('codigo').asstring :=
        frmPrincipal.codifica('000044');
      FRMMODULO.qrcaixa_mov.FieldByName('codoperador').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('codigo').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('data').asstring :=
        FRMMODULO.qrcaixa_operador.FieldByName('DATA').asstring;
      FRMMODULO.qrcaixa_mov.FieldByName('valor').ASfloat := rtotal.VALUE;
      FRMMODULO.qrcaixa_mov.FieldByName('entrada').ASfloat := 0;
      FRMMODULO.qrcaixa_mov.FieldByName('movimento').ASINTEGER := 15;
      FRMMODULO.qrcaixa_mov.FieldByName('historico').asstring :=
        'Recebto.Convenio: ' + frmconvenio_receber.locconvenio.Text;
      FRMMODULO.qrcaixa_mov.post;
    end;

    FRMMODULO.Conexao.Commit;
    frmconvenio_receber.qrcliente.ReFRESH;
    frmconvenio_receber.qrproduto.ReFRESH;
    frmconvenio_receber.qrproduto2.ReFRESH;
    frmconvenio_receber.qrproduto3.ReFRESH;
    frmconvenio_receber.qrreceber.ReFRESH;

    try
      if Application.messagebox('Deseja imprimir o recibo?', 'Aviso',
        mb_yesno + MB_ICONQUESTION) = idyes then
      begin
        BitBtn1.OnClick(frmconvenio_receber);
      end;
    except
    end;

  except
    showmessage('Houve erro no processamento!');
    FRMMODULO.Conexao.Rollback;
  end;
  close;
end;

procedure Tfrmconvenio_pgto.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmconvenio_pgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmconvenio_pgto.rdesconto1Enter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
end;

procedure Tfrmconvenio_pgto.rdesconto1Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if rdesconto1.VALUE <> 0 then
  begin
    rdesconto2.VALUE := rliquido.VALUE * (rdesconto1.VALUE / 100);
  end;
  rtotal.VALUE := rliquido.VALUE - rdesconto2.VALUE + rjuros.VALUE;
end;

procedure Tfrmconvenio_pgto.rdesconto2Exit(Sender: TObject);
begin
  tedit(Sender).Color := clwindow;
  if rliquido.VALUE <> 0 then
  begin
    rdesconto1.VALUE := (rdesconto2.VALUE * 100) / rliquido.VALUE;
  end;
  rtotal.VALUE := rliquido.VALUE - rdesconto2.VALUE + rjuros.VALUE;
end;

procedure Tfrmconvenio_pgto.rdesconto1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(wm_nextdlgctl, 0, 0);
end;

procedure Tfrmconvenio_pgto.rjurosExit(Sender: TObject);
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
  end;
  rtotal.VALUE := rliquido.VALUE - rdesconto2.VALUE + rjuros.VALUE;
end;

procedure Tfrmconvenio_pgto.rjurosKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    rcaixa.setfocus;
end;

procedure Tfrmconvenio_pgto.rboletoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmconvenio_pgto.rcaixaEnter(Sender: TObject);
begin
  ecaixa.visible := true;
  ebanco.visible := false;
end;

procedure Tfrmconvenio_pgto.rbancoEnter(Sender: TObject);
begin
  ecaixa.visible := false;
  ebanco.visible := true;
end;

procedure Tfrmconvenio_pgto.rcaixaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    comboforma.setfocus;
end;

procedure Tfrmconvenio_pgto.rbancoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmconvenio_pgto.rdiasExit(Sender: TObject);
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

procedure Tfrmconvenio_pgto.rcaixaExit(Sender: TObject);
begin
  ecaixa.visible := false;
end;

procedure Tfrmconvenio_pgto.rbancoExit(Sender: TObject);
begin
  ebanco.visible := false;
end;

procedure Tfrmconvenio_pgto.FormShow(Sender: TObject);
begin
  total_juros := 0;
  juro_taxa := 0;
end;

procedure Tfrmconvenio_pgto.rbancoClick(Sender: TObject);
begin
  Height := 249;
end;

procedure Tfrmconvenio_pgto.rcaixaClick(Sender: TObject);
begin
  Height := 460;
end;

procedure Tfrmconvenio_pgto.rjurosEnter(Sender: TObject);
begin
  tedit(Sender).Color := $00A0FAF8;
  valor_anterior := rjuros.VALUE;
end;

procedure Tfrmconvenio_pgto.rdiasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    rcaixa.setfocus;
end;

procedure Tfrmconvenio_pgto.BitBtn1Click(Sender: TObject);
begin
  frmcontasreceber_recibo := tfrmcontasreceber_recibo.create(self);
  frmcontasreceber_recibo.Tag := 150; //convenio
  frmcontasreceber_recibo.showmodal;
end;

procedure Tfrmconvenio_pgto.BitBtn2Click(Sender: TObject);
begin
  if not frmPrincipal.autentica('Zerar Juros', 4) then
  begin
    Application.messagebox('Não autorizado!', 'Atenção!', mb_ok + MB_ICONERROR);
    EXIT;
  end;

  rjuros.VALUE := 0;
  rtotal.VALUE := rliquido.VALUE - rdesconto2.VALUE + rjuros.VALUE;
end;

procedure Tfrmconvenio_pgto.comboformaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

end.
