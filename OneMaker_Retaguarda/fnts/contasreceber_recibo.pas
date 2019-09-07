unit contasreceber_recibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxRich, frxDBSet, AdvShapeButton,
  AdvGlowButton, Mask, RzEdit, RzSpnEdt, AdvReflectionImage;

type
  Tfrmcontasreceber_recibo = class(TForm)
    PopupMenu1: TPopupMenu;
    TPa4tinta: TMenuItem;
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    fxrecibo: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxRichObject1: TfrxRichObject;
    fscontasreceber: TfrxDBDataset;
    Panel1: TPanel;
    bgravar: TAdvGlowButton;
    combo_modelo: TComboBox;
    Label2: TLabel;
    Bevel2: TBevel;
    Label1: TLabel;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    Label3: TLabel;
    evias: TRzSpinEdit;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure TPRazaoClick(Sender: TObject);
    procedure TPImpressoClick(Sender: TObject);
    procedure TPContratoClick(Sender: TObject);
    procedure TPPersonalizadoClick(Sender: TObject);
    procedure TPa4tintaClick(Sender: TObject);
    procedure TPBobinaClick(Sender: TObject);
    procedure TPa5tintaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_recibo: Tfrmcontasreceber_recibo;
  porta_impressora: string;

implementation

uses modulo, principal, contasreceber, extenso1, contasreceber_pgto, // temp,
  ecf, convenio_pgto, convenio_receber;

{$R *.dfm}

procedure Tfrmcontasreceber_recibo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmcontasreceber_recibo.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontasreceber_recibo.bgravarClick(Sender: TObject);
begin
  case combo_modelo.ItemIndex of
    0:
      TPa4tintaClick(frmcontasreceber_recibo);
    1:
      TPBobinaClick(frmcontasreceber_recibo);
    2:
      TPa5tintaClick(frmcontasreceber_recibo);
  end;
  close;
end;

procedure Tfrmcontasreceber_recibo.FormShow(Sender: TObject);
begin

  if self.Tag = 150 then
  begin
    combo_modelo.Items.clear;
    combo_modelo.Items.add('01 - Recibo - ECF');
    combo_modelo.Items.add('02 - Bobina');
    combo_modelo.Items.add('03 - Papel A4 - Laser / Tinta');
  end
  else
  // if ecf_modelo = '' then
  begin
    combo_modelo.Items.clear;
    combo_modelo.Items.add('01 - Recibo - ECF');
    combo_modelo.Items.add('02 - Bobina');
    combo_modelo.Items.add('03 - Papel A4 - Laser / Tinta');
  end;
  // else
  // begin
  // combo_modelo.Items.clear;
  // combo_modelo.Items.add('Recibo - ECF');
  // end;
  frmmodulo.qrconfig.open;
  combo_modelo.ItemIndex := frmmodulo.qrconfig.FieldByName('recibo_TIPONOTA')
    .asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName
    ('VENDA_PORTA_IMPRESSORA').asstring;

end;

procedure Tfrmcontasreceber_recibo.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmcontasreceber_recibo.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bgravar.SetFocus;
end;

procedure Tfrmcontasreceber_recibo.TPNota_FiscalClick(Sender: TObject);
begin
  // verificar
end;

procedure Tfrmcontasreceber_recibo.TPRazaoClick(Sender: TObject);
begin
  // verificar
end;

procedure Tfrmcontasreceber_recibo.TPImpressoClick(Sender: TObject);
begin
  // verificar
end;

procedure Tfrmcontasreceber_recibo.TPContratoClick(Sender: TObject);
begin
  // verificar
end;

procedure Tfrmcontasreceber_recibo.TPPersonalizadoClick(Sender: TObject);
begin
  // verificar
end;

procedure Tfrmcontasreceber_recibo.TPa4tintaClick(Sender: TObject);
var
  I: INTEGER;
  DATA, CUPOM, DOCUMENTO, VALOR: string;
  arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  subir_papel, conta_formas: INTEGER;
  dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario: real;
  vias: INTEGER;

begin

  application.messagebox('Função não Implementada!', 'Atenção',
    mb_ok + MB_ICONWARNING);
  exit;

  frmmodulo.qrconfig.open;
  subir_papel := frmmodulo.qrconfig.FieldByName('bobina_subirpapel').asinteger;
  assignfile(arquivo, impressora_venda);
  rewrite(arquivo);
  vias := evias.intValue;

  while vias <> 0 do
  begin

    ecf_recebimento_nao_fiscal(ecf_modelo, '03',
      frmcontasreceber_pgto.rTOTAL.value, FDINHEIRO);

    ecf_relatorio_gerencial(ecf_modelo,
      '   R E C I B O     D E    P A G A M E N T O');
    ecf_relatorio_gerencial(ecf_modelo,
      '------------------------------------------------');
    ecf_relatorio_gerencial(ecf_modelo,
      'Cliente: ' + copy(frmmodulo.qrcliente.FieldByName('nome')
      .asstring, 1, 38));
    ecf_relatorio_gerencial(ecf_modelo,
      'CPF....: ' + frmmodulo.qrcliente.FieldByName('cpf').asstring);
    ecf_relatorio_gerencial(ecf_modelo,
      '------------------------------------------------');
    ecf_relatorio_gerencial(ecf_modelo,
      'Recebemos do cliente acima informado, a importância' + 'de (' +
      extenso1.extenso(frmcontasreceber_pgto.rTOTAL.value) + ')' +
      'referente ao recebimento da(s) prestção(ões) abaixo relacionada(s):');
    ecf_relatorio_gerencial(ecf_modelo,
      '------------------------------------------------');
    ecf_relatorio_gerencial(ecf_modelo,
      'Vencimento  Cupom      Documento      Valor - R$');
    ecf_relatorio_gerencial(ecf_modelo,
      '------------------------------------------------');

    frmcontasreceber.qrcr.open;
    frmcontasreceber.qrcr.First;
    while not frmcontasreceber.qrcr.Eof do
    begin
      if frmcontasreceber.qrcr.FieldByName('FILTRO').asinteger = 1 then
      begin
        DATA := frmcontasreceber.qrcr.FieldByName('DATA_VENCIMENTO').asstring;
        DOCUMENTO := FRMPRINCIPAL.texto_justifica
          (frmcontasreceber.qrcr.FieldByName('DOCUMENTO').asstring, 10,
          ' ', 'D');
        VALOR := FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
          frmcontasreceber.qrcr.FieldByName('VALOR_ATUAL').ASfloat), 12,
          ' ', 'E');
        CUPOM := FRMPRINCIPAL.texto_justifica
          (frmcontasreceber.qrcr.FieldByName('NUMERO_CUPOM').asstring, 6,
          '0', 'E');

        ecf_relatorio_gerencial(ecf_modelo, DATA + '  ' + CUPOM + '    ' +
          DOCUMENTO + '    ' + VALOR);

      end;
      frmcontasreceber.qrcr.next;
    end;

    ecf_relatorio_gerencial(ecf_modelo,
      '------------------------------------------------');
    ecf_relatorio_gerencial(ecf_modelo, '                                TOTAL:'
      + FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
      frmcontasreceber_pgto.rliquido.value), 10, ' ', 'E'));
    ecf_relatorio_gerencial(ecf_modelo, '                             DESCONTO:'
      + FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
      frmcontasreceber_pgto.rdesconto2.value), 10, ' ', 'E'));
    ecf_relatorio_gerencial(ecf_modelo, '                            ACRESCIMO:'
      + FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
      frmcontasreceber_pgto.rjuros.value), 10, ' ', 'E'));
    ecf_relatorio_gerencial(ecf_modelo, '                            PAGAMENTO:'
      + FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
      frmcontasreceber_pgto.rsoma.value), 10, ' ', 'E'));
    ecf_relatorio_gerencial(ecf_modelo, '                             RESTANTE:'
      + FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
      frmcontasreceber_pgto.rdiferenca.value), 10, ' ', 'E'));
    ecf_relatorio_gerencial(ecf_modelo,
      '------------------------------------------------');
    ecf_relatorio_gerencial(ecf_modelo,
      'Para maior clareza firmamos o presente.         ');
    ecf_relatorio_gerencial(ecf_modelo, '');
    ecf_relatorio_gerencial(ecf_modelo, emitente_cidade +
      FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy', date) + '.');
    ecf_relatorio_gerencial(ecf_modelo, '');
    ecf_relatorio_gerencial(ecf_modelo, '');
    ecf_relatorio_gerencial(ecf_modelo, '');
    ecf_relatorio_gerencial(ecf_modelo,
      '------------------------------------------------');
    ecf_relatorio_gerencial(ecf_modelo, '          Assinatura do Funcionário');
    ecf_fecha_relatorio_gerencial(ecf_modelo);
  end;

end;

procedure Tfrmcontasreceber_recibo.TPBobinaClick(Sender: TObject);
var
  arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  subir_papel, conta_formas: INTEGER;
  dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario: real;
  vias: INTEGER;
  I: INTEGER;
  DATA, CUPOM, DOCUMENTO, VALOR: string;

begin
  // NORMAL               --> #18+#27#72+#20
  // NORMAL NEGRITO       --> #18+#27#71+#20
  // FONTE GRANDE         --> #27#72+#14
  // FONTE GRANDE NEGRITO --> #27#71+#14
  // CONDENSADO           --> #15+#27#72+#20
  // CONDENSADO NEGRITO   --> #15+#27#71+#20

  frmmodulo.qrconfig.open;
  subir_papel := frmmodulo.qrconfig.FieldByName('bobina_subirpapel').asinteger;
  assignfile(arquivo, impressora_venda);
  rewrite(arquivo);
  evias.IntValue := 1;

  if self.Tag = 150 then // convenio
  begin

   vias := evias.intValue;

    while vias <> 0 do
    begin

      writeln(arquivo, #18 + #27#71 + #20,
        FRMPRINCIPAL.texto_justifica(emitente_fantasia, 40, ' ', 'C'));
      writeln(arquivo, #15 + #27#72 + #20,
        FRMPRINCIPAL.texto_justifica(emitente_endereco, 48, ' ', 'C'));
      writeln(arquivo, #15 + #27#72 + #20,
        FRMPRINCIPAL.texto_justifica(emitente_cidade + ' - CEP ' + emitente_cep,
        48, ' ', 'C'));
      writeln(arquivo, #15 + #27#72 + #20,
        FRMPRINCIPAL.texto_justifica('Telefone: ' + emitente_telefone, 48,
        ' ', 'C'));
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, '   R E C I B O     D E    P A G A M E N T O');
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, 'Convenio: ' + copy(resultado_pesquisa2, 1, 38));
      writeln(arquivo, 'CPF....: ' + resultado_pesquisa4);
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, 'Recebemos do cliente acima informado, a importância' +
        #13 + 'de (' + extenso1.extenso(frmconvenio_pgto.rTOTAL.value) + ')' +
        #13 + 'referente ao recebimento da(s) prestacao(oes) abaixo relacionada(s):');
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, 'Vencimento  Cupom      Documento      Valor - R$');
      writeln(arquivo, '------------------------------------------------');

      frmconvenio_pgto.qrcontasreceber_pgto.open;
      frmconvenio_pgto.qrcontasreceber_pgto.First;
      while not frmconvenio_pgto.qrcontasreceber_pgto.Eof do
      begin
        if frmconvenio_receber.qrpgto.FieldByName('FILTRO').asinteger = 0 then
        begin
          DATA := frmconvenio_pgto.qrcontasreceber_pgto.FieldByName
            ('DATA').asstring;
          DOCUMENTO := FRMPRINCIPAL.texto_justifica
            (frmconvenio_pgto.qrcontasreceber_pgto.FieldByName('CODCONTA')
            .asstring, 10, ' ', 'D');
          VALOR := FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
            frmconvenio_pgto.qrcontasreceber_pgto.FieldByName('VALOR_PAGO')
            .ASfloat), 12, ' ', 'E');
          CUPOM := FRMPRINCIPAL.texto_justifica('000000', 6, '0', 'E');

          writeln(arquivo, DATA + '  ' + CUPOM + '    ' + DOCUMENTO +
            '    ' + VALOR);

        end;
        frmconvenio_pgto.qrcontasreceber_pgto.next;
      end;

      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, '                                TOTAL:' +
        FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
        frmconvenio_pgto.rliquido.value), 10, ' ', 'E'));
      writeln(arquivo, '                             DESCONTO:' +
        FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
        frmconvenio_pgto.rdesconto2.value), 10, ' ', 'E'));
      writeln(arquivo, '                            ACRESCIMO:' +
        FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
        frmconvenio_pgto.rjuros.value), 10, ' ', 'E'));
      writeln(arquivo, '                            PAGAMENTO:' +
        FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
        frmconvenio_pgto.rTOTAL.value), 10, ' ', 'E'));

      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, 'Para maior clareza firmamos o presente.         ');
      writeln(arquivo, '');
      writeln(arquivo, emitente_cidade +
        FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy', date) + '.');
      writeln(arquivo, '');
      writeln(arquivo, '');
      writeln(arquivo, '');
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, '          Assinatura do Funcionario');
      while subir_papel <> 0 do
      begin
        writeln(arquivo, #15 + #27#72 + #20, '');
        subir_papel := subir_papel - 1;
      end;
      writeln(arquivo, #15 + #27#72 + #20, '');
      writeln(arquivo, #15 + #27#72 + #20, '');
      writeln(arquivo, #15 + #27#72 + #20, '');
      writeln(arquivo, #27 + #109); // 27 = 1Bh, 109 = 6Dh
      vias := vias - 1;
    end
  end
  else
  begin
    vias := evias.intValue;
    while vias <> 0 do
    begin
      writeln(arquivo, #18 + #27#71 + #20,
        FRMPRINCIPAL.texto_justifica(emitente_fantasia, 40, ' ', 'C'));
      writeln(arquivo, #15 + #27#72 + #20,
        FRMPRINCIPAL.texto_justifica(emitente_endereco, 48, ' ', 'C'));
      writeln(arquivo, #15 + #27#72 + #20,
        FRMPRINCIPAL.texto_justifica(emitente_cidade + ' - CEP ' + emitente_cep,
        48, ' ', 'C'));
      writeln(arquivo, #15 + #27#72 + #20,
        FRMPRINCIPAL.texto_justifica('Telefone: ' + emitente_telefone, 48,
        ' ', 'C'));
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, '   R E C I B O     D E    P A G A M E N T O');
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, 'Cliente: ' +
        copy(frmmodulo.qrcliente.FieldByName('nome').asstring, 1, 38));
      writeln(arquivo, 'CPF....: ' + frmmodulo.qrcliente.FieldByName('cpf')
        .asstring);
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, 'Recebemos do cliente acima informado, a importância' +
        'de (' + extenso1.extenso(frmcontasreceber_pgto.rTOTAL.value) + ')' +
        'referente ao recebimento da(s) prestacao(oes) abaixo relacionada(s):');
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, 'Vencimento  Cupom      Documento      Valor - R$');
      writeln(arquivo, '------------------------------------------------');

      frmcontasreceber.qrcr.open;
      frmcontasreceber.qrcr.First;
      while not frmcontasreceber.qrcr.Eof do
      begin
        if frmcontasreceber.qrcr.FieldByName('FILTRO').asinteger = 1 then
        begin
          DATA := frmcontasreceber.qrcr.FieldByName('DATA_VENCIMENTO').asstring;
          DOCUMENTO := FRMPRINCIPAL.texto_justifica
            (frmcontasreceber.qrcr.FieldByName('DOCUMENTO').asstring, 10,
            ' ', 'D');
          VALOR := FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
            frmcontasreceber.qrcr.FieldByName('VALOR_ATUAL').ASfloat), 12,
            ' ', 'E');
          CUPOM := FRMPRINCIPAL.texto_justifica
            (frmcontasreceber.qrcr.FieldByName('NUMERO_CUPOM').asstring, 6,
            '0', 'E');

          writeln(arquivo, DATA + '  ' + CUPOM + '    ' + DOCUMENTO +
            '    ' + VALOR);

        end;
        frmcontasreceber.qrcr.next;
      end;

      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, '                                TOTAL:' +
        FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
        frmcontasreceber_pgto.rliquido.value), 10, ' ', 'E'));
      writeln(arquivo, '                             DESCONTO:' +
        FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
        frmcontasreceber_pgto.rdesconto2.value), 10, ' ', 'E'));
      writeln(arquivo, '                            ACRESCIMO:' +
        FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
        frmcontasreceber_pgto.rjuros.value), 10, ' ', 'E'));
      writeln(arquivo, '                            PAGAMENTO:' +
        FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
        frmcontasreceber_pgto.rsoma.value), 10, ' ', 'E'));
      writeln(arquivo, '                             RESTANTE:' +
        FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',
        frmcontasreceber_pgto.rdiferenca.value), 10, ' ', 'E'));
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, 'Para maior clareza firmamos o presente.         ');
      writeln(arquivo, '');
      writeln(arquivo, emitente_cidade +
        FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy', date) + '.');
      writeln(arquivo, '');
      writeln(arquivo, '');
      writeln(arquivo, '');
      writeln(arquivo, '------------------------------------------------');
      writeln(arquivo, '          Assinatura do Funcionario');
      while subir_papel <> 0 do
      begin
        writeln(arquivo, #15 + #27#72 + #20, '');
        subir_papel := subir_papel - 1;
      end;
      writeln(arquivo, #15 + #27#72 + #20, '');
      writeln(arquivo, #15 + #27#72 + #20, '');
      writeln(arquivo, #15 + #27#72 + #20, '');
      writeln(arquivo, #27 + #109); // 27 = 1Bh, 109 = 6Dh
      vias := vias - 1;
    end;
  end;
  closefile(arquivo);

end;

procedure Tfrmcontasreceber_recibo.TPa5tintaClick(Sender: TObject);
var
  I: INTEGER;
begin

  if self.Tag = 150 then
  begin
    application.messagebox('Função não Implementada!', 'Atenção',
      mb_ok + MB_ICONWARNING);
    exit;
  end;

  frmcontasreceber.qrcr_recibo.open;
  while frmcontasreceber.qrcr_recibo.RecordCount <> 0 do
    frmcontasreceber.qrcr_recibo.Delete;

  frmcontasreceber.qrcr.open;
  frmcontasreceber.qrcr.First;
  while not frmcontasreceber.qrcr.Eof do
  begin
    if frmcontasreceber.qrcr.FieldByName('FILTRO').asinteger = 1 then
    begin
      frmcontasreceber.qrcr_recibo.Insert;
      // qrcr.fieldbyname('FILTRO').AsINTEGER := 0;
      frmcontasreceber.qrcr_recibo.FieldByName('DATA_EMISSAO').asstring :=
        frmcontasreceber.qrcr.FieldByName('DATA_EMISSAO').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('CODIGO').asstring :=
        frmcontasreceber.qrcr.FieldByName('CODIGO').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('DATA_VENCIMENTO').asstring :=
        frmcontasreceber.qrcr.FieldByName('DATA_VENCIMENTO').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('DOCUMENTO').asstring :=
        frmcontasreceber.qrcr.FieldByName('DOCUMENTO').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('VALOR_ORIGINAL').asstring :=
        frmcontasreceber.qrcr.FieldByName('VALOR_ORIGINAL').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('VALOR_PAGO').asstring :=
        frmcontasreceber.qrcr.FieldByName('VALOR_PAGO').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('VALOR_ATUAL').asstring :=
        frmcontasreceber.qrcr.FieldByName('VALOR_ATUAL').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('JUROS').asstring :=
        frmcontasreceber.qrcr.FieldByName('JUROS').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('CODCEDENTE').asstring :=
        frmcontasreceber.qrcr.FieldByName('CODCEDENTE').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('TIPO').asstring :=
        frmcontasreceber.qrcr.FieldByName('TIPO').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('VALOR_JUROS').asstring :=
        frmcontasreceber.qrcr.FieldByName('VALOR_JUROS').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('DATA_PAGAMENTO').asstring :=
        frmcontasreceber.qrcr.FieldByName('DATA_PAGAMENTO').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('CODVENDEDOR').asstring :=
        frmcontasreceber.qrcr.FieldByName('CODVENDEDOR').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('CODCAIXA').asstring :=
        frmcontasreceber.qrcr.FieldByName('CODCAIXA').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('CODCLIENTE').asstring :=
        frmcontasreceber.qrcr.FieldByName('CODCLIENTE').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('VALOR_DESCONTO').asstring :=
        frmcontasreceber.qrcr.FieldByName('VALOR_DESCONTO').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('SITUACAO').asstring :=
        frmcontasreceber.qrcr.FieldByName('SITUACAO').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('CODVENDA').asstring :=
        frmcontasreceber.qrcr.FieldByName('CODVENDA').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('NOSSONUMERO').asstring :=
        frmcontasreceber.qrcr.FieldByName('NOSSONUMERO').asstring;
      frmcontasreceber.qrcr_recibo.FieldByName('CODREGIAO').asstring :=
        frmcontasreceber.qrcr.FieldByName('CODREGIAO').asstring;
      frmcontasreceber.qrcr_recibo.post;
    end;
    frmcontasreceber.qrcr.next;
  end;
  frmcontasreceber.qrcr_recibo.Refresh;
  frmcontasreceber.qrcr_recibo.First;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;
  frmmodulo.qrrelatorio.FieldByName('valor1').ASfloat :=
    frmcontasreceber_pgto.rsoma.value;
  frmmodulo.qrrelatorio.FieldByName('valor2').ASfloat :=
    frmcontasreceber_pgto.rdesconto2.value;
  frmmodulo.qrrelatorio.FieldByName('valor3').ASfloat :=
    frmcontasreceber_pgto.rjuros.value;
  frmmodulo.qrrelatorio.FieldByName('valor4').ASfloat :=
    frmcontasreceber_pgto.rliquido.value;
  frmmodulo.qrrelatorio.FieldByName('valor5').ASfloat :=
    frmcontasreceber_pgto.rdiferenca.value;

  frmmodulo.qrrelatorio.FieldByName('linha2').asstring :=
    '(' + extenso1.extenso(frmcontasreceber_pgto.rsoma.value) + ')';
  frmmodulo.qrrelatorio.FieldByName('linha1').asstring :=
    frmmodulo.qrcliente.FieldByName('nome').asstring;
  frmmodulo.qrrelatorio.FieldByName('linha4').asstring := emitente_cidade +
    FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy', date) + '.';
  I := LENGTH(PRESTACOES);
  if I > 0 then
  begin
    if copy(PRESTACOES, I, 1) = ',' then
      Delete(PRESTACOES, I, 1);
  end;
  if copy(PRESTACOES, 1, 1) = ',' then
    Delete(PRESTACOES, 1, 1);
  frmmodulo.qrrelatorio.FieldByName('linha3').asstring :=
    ' recebimento da(s) prestaçõe(s) nº : ' + PRESTACOES;

  frmmodulo.qrrelatorio.post;

  fxrecibo.LoadFromFile('c:\OneMaker\server\rel\f000078.fr3');
  fxrecibo.ShowReport;

end;

end.
