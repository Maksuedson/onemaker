unit venda_fechamento_especial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, Mask, Spin,
  AdvGlowButton, ExtCtrls, TFlatPanelUnit, RzEdit,
  RzSpnEdt, AdvMetroButton, AdvSmoothPanel, AdvSmoothExpanderPanel, JvExMask,
  JvToolEdit, JvBaseEdits;

type
  Tfrmvenda_fechamento_especial = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox2: TGroupBox;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    rcredito: TJvCalcEdit;
    bimprime: TBitBtn;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    rrazao: TRadioButton;
    rbobina: TRadioButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    evias: TRzSpinEdit;
    AdvSmoothExpanderPanel1: TAdvSmoothExpanderPanel;
    AdvMetroButton1: TAdvMetroButton;
    Panel6: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel8: TPanel;
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure rcreditoEnter(Sender: TObject);
    procedure rcreditoExit(Sender: TObject);
    procedure rcreditoKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bimprimeClick(Sender: TObject);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure AdvSmoothExpanderPanel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_fechamento_especial: Tfrmvenda_fechamento_especial;
     const
   sc_DragMove = $f012;
implementation

uses modulo, venda, principal, notas_venda_impressao, venda_impressao;

{$R *.dfm}

procedure Tfrmvenda_fechamento_especial.AdvMetroButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_fechamento_especial.AdvSmoothExpanderPanel1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure Tfrmvenda_fechamento_especial.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_fechamento_especial.bgravarClick(Sender: TObject);
begin

  // lancamento dos produtos
  FRMMODULO.QRPRODUTO_MOV.OPEN;
  frmvenda.qrvenda_produto.First;
  while not frmvenda.qrvenda_produto.Eof do
  begin
    FRMMODULO.QRPRODUTO_MOV.Insert;
    FRMMODULO.QRPRODUTO_MOV.FieldByName('codigo').AsString :=
      frmprincipal.codifica('000032');
    FRMMODULO.QRPRODUTO_MOV.FieldByName('codnota').AsString :=
      frmvenda.lvenda_codigo.Caption;
    FRMMODULO.QRPRODUTO_MOV.FieldByName('numeronota').AsString :=
      frmvenda.lvenda_codigo.Caption;
    FRMMODULO.QRPRODUTO_MOV.FieldByName('codproduto').AsString :=
      frmvenda.qrvenda_produto.FieldByName('codproduto').AsString;
    FRMMODULO.QRPRODUTO_MOV.FieldByName('qtde').asfloat :=
      frmvenda.qrvenda_produto.FieldByName('qtde').asfloat;
    FRMMODULO.QRPRODUTO_MOV.FieldByName('unitario').asfloat :=
      frmvenda.qrvenda_produto.FieldByName('unitario').asfloat;
    FRMMODULO.QRPRODUTO_MOV.FieldByName('total').asfloat :=
      frmvenda.qrvenda_produto.FieldByName('total').asfloat;

    if FRMMODULO.QRPRODUTO_MOV.FieldByName('qtde').asfloat < 0 then
      FRMMODULO.QRPRODUTO_MOV.FieldByName('qtde').asfloat :=
        FRMMODULO.QRPRODUTO_MOV.FieldByName('qtde').asfloat * (-1);
    if FRMMODULO.QRPRODUTO_MOV.FieldByName('total').asfloat < 0 then
      FRMMODULO.QRPRODUTO_MOV.FieldByName('total').asfloat :=
        FRMMODULO.QRPRODUTO_MOV.FieldByName('total').asfloat * (-1);

    FRMMODULO.QRPRODUTO_MOV.FieldByName('desconto').asfloat :=
      frmvenda.qrvenda_produto.FieldByName('desconto').asfloat;
    FRMMODULO.QRPRODUTO_MOV.FieldByName('acrescimo').asfloat :=
      frmvenda.qrvenda_produto.FieldByName('acrescimo').asfloat;
    FRMMODULO.QRPRODUTO_MOV.FieldByName('codcliente').AsString :=
      frmvenda.lcliente_codigo.Caption;
    FRMMODULO.QRPRODUTO_MOV.FieldByName('codvendedor').AsString :=
      frmvenda.lvendedor_codigo.Caption;

    case frmvenda.qrvenda_produto.FieldByName('tipo').asinteger of
      0:
        FRMMODULO.QRPRODUTO_MOV.FieldByName('MOVIMENTO').asinteger := 2;
        // VENDA
      1:
        FRMMODULO.QRPRODUTO_MOV.FieldByName('MOVIMENTO').asinteger := 2;
        // VENDA
      2:
        FRMMODULO.QRPRODUTO_MOV.FieldByName('MOVIMENTO').asinteger := 2;
        // VENDA

      10:
        FRMMODULO.QRPRODUTO_MOV.FieldByName('MOVIMENTO').asinteger := 7;
        // devolucao de VENDA
      11:
        FRMMODULO.QRPRODUTO_MOV.FieldByName('MOVIMENTO').asinteger := 7;
        // devolucao de VENDA
      12:
        FRMMODULO.QRPRODUTO_MOV.FieldByName('MOVIMENTO').asinteger := 7;
        // devolucao de VENDA

      20:
        FRMMODULO.QRPRODUTO_MOV.FieldByName('MOVIMENTO').asinteger := 2;
        // VENDA
      21:
        FRMMODULO.QRPRODUTO_MOV.FieldByName('MOVIMENTO').asinteger := 2;
        // VENDA
      22:
        FRMMODULO.QRPRODUTO_MOV.FieldByName('MOVIMENTO').asinteger := 2;
        // VENDA
    end;

    FRMMODULO.QRPRODUTO_MOV.FieldByName('data').AsString :=
      frmvenda.lvenda_data.Caption;
    FRMMODULO.QRPRODUTO_MOV.Post;
    frmvenda.qrvenda_produto.next;
  end;

  if RadioButton1.Checked then
  begin
    FRMMODULO.Conexao.Commit;
  end;

  if RadioButton2.Checked then
  begin
    FRMMODULO.qrvenda.OPEN;
    FRMMODULO.qrvenda.Insert;
    FRMMODULO.qrvenda.FieldByName('codigo').AsString :=
      frmvenda.lvenda_codigo.Caption;
    FRMMODULO.qrvenda.FieldByName('data').AsString :=
      frmvenda.lvenda_data.Caption;
    FRMMODULO.qrvenda.FieldByName('codcliente').AsString :=
      frmvenda.lcliente_codigo.Caption;
    FRMMODULO.qrvenda.FieldByName('codvendedor').AsString :=
      frmvenda.lvendedor_codigo.Caption;
    FRMMODULO.qrvenda.FieldByName('codcaixa').AsString :=
      frmvenda.lcaixa_codigo.Caption;
    FRMMODULO.qrvenda.FieldByName('TOTAL').asfloat := rcredito.value;
    FRMMODULO.qrvenda.FieldByName('SUBTOTAL').asfloat := rcredito.value;
    FRMMODULO.qrvenda.FieldByName('OBS').AsString :=
      'TROCA DE MERCAD.- CREDIT.VALOR';
    FRMMODULO.qrvenda.Post;

    FRMMODULO.qrcontasreceber.OPEN;
    FRMMODULO.qrcontasreceber.Insert;
    FRMMODULO.qrcontasreceber.FieldByName('codigo').AsString :=
      frmvenda.lvenda_codigo.Caption + '/01';
    FRMMODULO.qrcontasreceber.FieldByName('codvenda').AsString :=
      frmvenda.lvenda_codigo.Caption;
    FRMMODULO.qrcontasreceber.FieldByName('codcliente').AsString :=
      frmvenda.lcliente_codigo.Caption;
    FRMMODULO.qrcontasreceber.FieldByName('codvendedor').AsString :=
      frmvenda.lvendedor_codigo.Caption;
    FRMMODULO.qrcontasreceber.FieldByName('codcaixa').AsString :=
      frmvenda.lcaixa_codigo.Caption;
    FRMMODULO.qrcontasreceber.FieldByName('data_emissao').AsString :=
      frmvenda.lvenda_data.Caption;
    FRMMODULO.qrcontasreceber.FieldByName('data_vencimento').AsString :=
      frmvenda.lvenda_data.Caption;
    FRMMODULO.qrcontasreceber.FieldByName('valor_original').asfloat :=
      rcredito.value * (-1);
    FRMMODULO.qrcontasreceber.FieldByName('valor_atual').asfloat :=
      rcredito.value * (-1);
    FRMMODULO.qrcontasreceber.FieldByName('documento').AsString := 'CRED.TROCA';
    FRMMODULO.qrcontasreceber.FieldByName('tipo').AsString := 'CREDIARIO';
    FRMMODULO.qrcontasreceber.FieldByName('situacao').asinteger := 1;
    FRMMODULO.qrcontasreceber.FieldByName('filtro').asinteger := 0;
    FRMMODULO.qrcontasreceber.FieldByName('codregiao').AsString :=
      FRMMODULO.qrcliente.FieldByName('codregiao').AsString;
    FRMMODULO.qrcontasreceber.Post;

    FRMMODULO.qrcaixa_mov.OPEN;
    FRMMODULO.qrcaixa_mov.Insert;
    FRMMODULO.qrcaixa_mov.FieldByName('codigo').AsString :=
      frmprincipal.codifica('000044');
    FRMMODULO.qrcaixa_mov.FieldByName('codcaixa').AsString :=
      FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').AsString;
    FRMMODULO.qrcaixa_mov.FieldByName('codoperador').AsString :=
      FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').AsString;
    FRMMODULO.qrcaixa_mov.FieldByName('data').AsString :=
      FRMMODULO.qrcaixa_operador.FieldByName('DATA').AsString;
    FRMMODULO.qrcaixa_mov.FieldByName('saida').asfloat := 0;
    FRMMODULO.qrcaixa_mov.FieldByName('entrada').asfloat := 0;
    FRMMODULO.qrcaixa_mov.FieldByName('valor').asfloat := rcredito.value * (-1);

    FRMMODULO.qrconfig.OPEN;
    FRMMODULO.qrcaixa_mov.FieldByName('codconta').AsString :=
      FRMMODULO.qrconfig.FieldByName('PLANO_OUTRAS_ENTRADAS').AsString;
    FRMMODULO.qrcaixa_mov.FieldByName('movimento').asinteger := 4;
    // venda CREDIARIO
    FRMMODULO.qrcaixa_mov.FieldByName('historico').AsString :=
      'Crédito Troca - Venda No. ' + frmvenda.lvenda_codigo.Caption + ' - ' +
      frmvenda.lcliente_nome.Caption;
    FRMMODULO.qrcaixa_mov.Post;
    FRMMODULO.Conexao.Commit;
  end;

  if RadioButton3.Checked then
  begin
    FRMMODULO.qrvenda.OPEN;
    FRMMODULO.qrvenda.Insert;
    FRMMODULO.qrvenda.FieldByName('codigo').AsString :=
      frmvenda.lvenda_codigo.Caption;
    FRMMODULO.qrvenda.FieldByName('data').AsString :=
      frmvenda.lvenda_data.Caption;
    FRMMODULO.qrvenda.FieldByName('codcliente').AsString :=
      frmvenda.lcliente_codigo.Caption;
    FRMMODULO.qrvenda.FieldByName('codvendedor').AsString :=
      frmvenda.lvendedor_codigo.Caption;
    FRMMODULO.qrvenda.FieldByName('codcaixa').AsString :=
      frmvenda.lcaixa_codigo.Caption;
    FRMMODULO.qrvenda.FieldByName('TOTAL').asfloat := rcredito.value * (-1);
    FRMMODULO.qrvenda.FieldByName('SUBTOTAL').asfloat := rcredito.value * (-1);
    FRMMODULO.qrvenda.FieldByName('OBS').AsString :=
      'TROCA DE MERCAD.- DEVOL. VALOR';
    FRMMODULO.qrvenda.Post;
    FRMMODULO.qrcaixa_mov.OPEN;
    FRMMODULO.qrcaixa_mov.Insert;
    FRMMODULO.qrcaixa_mov.FieldByName('codigo').AsString :=
      frmprincipal.codifica('000044');
    FRMMODULO.qrcaixa_mov.FieldByName('codcaixa').AsString :=
      FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').AsString;
    FRMMODULO.qrcaixa_mov.FieldByName('codoperador').AsString :=
      FRMMODULO.qrcaixa_operador.FieldByName('CODIGO').AsString;
    FRMMODULO.qrcaixa_mov.FieldByName('data').AsString :=
      FRMMODULO.qrcaixa_operador.FieldByName('DATA').AsString;
    FRMMODULO.qrcaixa_mov.FieldByName('saida').asfloat := rcredito.value;
    FRMMODULO.qrcaixa_mov.FieldByName('entrada').asfloat := 0;
    FRMMODULO.qrcaixa_mov.FieldByName('valor').asfloat := rcredito.value * (-1);
    FRMMODULO.qrconfig.OPEN;
    FRMMODULO.qrcaixa_mov.FieldByName('codconta').AsString :=
      FRMMODULO.qrconfig.FieldByName('PLANO_OUTRAS_ENTRADAS').AsString;
    FRMMODULO.qrcaixa_mov.FieldByName('movimento').asinteger := 3;
    // venda dinheiro
    FRMMODULO.qrcaixa_mov.FieldByName('historico').AsString :=
      'Devol. Valor Troca - Venda No. ' + frmvenda.lvenda_codigo.Caption + ' - '
      + frmvenda.lcliente_nome.Caption;
    FRMMODULO.qrcaixa_mov.Post;

    FRMMODULO.Conexao.Commit;
  end;

  bimprimeClick(frmvenda_fechamento_especial);

  close;
  frmvenda.close;

end;

procedure Tfrmvenda_fechamento_especial.rcreditoEnter(Sender: TObject);
begin
  rcredito.Color := $00A0FAF8;
end;

procedure Tfrmvenda_fechamento_especial.rcreditoExit(Sender: TObject);
begin
  rcredito.Color := clwindow;
end;

procedure Tfrmvenda_fechamento_especial.rcreditoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    RadioButton1.setfocus;
end;

procedure Tfrmvenda_fechamento_especial.RadioButton1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bgravar.setfocus;
end;

procedure Tfrmvenda_fechamento_especial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tfrmvenda_fechamento_especial.bimprimeClick(Sender: TObject);
var
  formapgto, v1, v2: string;
  y: integer;

  arquivo: textfile;
  texto1, texto2, texto3, texto4, texto5, texto6: string;
  subir_papel, conta_formas, vias: integer;
  credito: real;

begin

  if rrazao.Checked = true then
  begin

  end

  else
  begin

    FRMMODULO.qrconfig.OPEN;
    subir_papel := FRMMODULO.qrconfig.FieldByName('bobina_subirpapel')
      .asinteger;

    vias := evias.IntValue;

    while vias <> 0 do

    begin

      assignfile(arquivo, impressora_venda);

      rewrite(arquivo);
      writeln(arquivo, #18 + #27#71 + #20,
        frmprincipal.Texto_Justifica(emitente_fantasia, 30, ' ', 'C'));
      writeln(arquivo, #15 + #27#72 + #20,
        frmprincipal.Texto_Justifica(emitente_endereco, 52, ' ', 'C'));
      writeln(arquivo, #15 + #27#72 + #20,
        frmprincipal.Texto_Justifica(emitente_cidade + ' - CEP ' + emitente_cep,
        52, ' ', 'C'));
      writeln(arquivo, #15 + #27#72 + #20,
        frmprincipal.Texto_Justifica('Telefone: ' + emitente_telefone, 52,
        ' ', 'C'));
      writeln(arquivo, #15 + #27#72 + #20,
        '----------------------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20,
        'No. ' + frmprincipal.Texto_Justifica(frmvenda.lvenda_codigo.Caption, 6,
        '0', 'E') + '  Emis: ' + frmprincipal.Texto_Justifica
        (frmvenda.lvenda_data.Caption, 10, ' ', 'E') + ' ' +
        frmprincipal.Texto_Justifica(timetostr(time), 5, ' ', 'E') + '  Vd: ' +
        frmprincipal.Texto_Justifica(frmvenda.lvendedor_nome.Caption, 13,
        ' ', 'D'));

      // informacoes do cliente
      writeln(arquivo, #15 + #27#72 + #20,
        '----------------------------------------------------');
      if frmvenda.lcliente_codigo.Caption = '999999' then
        writeln(arquivo, #15 + #27#72 + #20,
          'Cliente...: ' + frmprincipal.Texto_Justifica
          (frmvenda.lcliente_codigo.Caption, 6, '0', 'E') + ' ' +
          frmprincipal.Texto_Justifica(frmvenda.LRETIRADO.Caption, 32,
          ' ', 'D'))
      else
        writeln(arquivo, #15 + #27#72 + #20,
          'Cliente...: ' + frmprincipal.Texto_Justifica
          (frmvenda.lcliente_codigo.Caption, 6, '0', 'E') + ' ' +
          frmprincipal.Texto_Justifica(frmvenda.lcliente_nome.Caption, 32,
          ' ', 'D'));

      writeln(arquivo, #15 + #27#72 + #20,
        'Endereco..: ' + frmprincipal.Texto_Justifica
        (FRMMODULO.qrcliente.FieldByName('endereco').AsString + ' ' +
        FRMMODULO.qrcliente.FieldByName('bairro').AsString, 39, ' ', 'D'));
      writeln(arquivo, #15 + #27#72 + #20,
        'Cid/UF/CEP: ' + frmprincipal.Texto_Justifica
        (FRMMODULO.qrcliente.FieldByName('cidade').AsString + '/' +
        FRMMODULO.qrcliente.FieldByName('uf').AsString + '  ' +
        FRMMODULO.qrcliente.FieldByName('cep').AsString, 39, ' ', 'D'));
      // writeln(arquivo,#15+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('telefone1').asstring+'/'+frmmodulo.qrcliente.fieldbyname('celular').asstring+'/'+frmmodulo.qrcliente.fieldbyname('telefone2').asstring,39,' ','D'));
      // writeln(arquivo,#15+#27#72+#20,'CPF/CNPJ..: '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('cpf').asstring,39,' ','D'));
      // writeln(arquivo,#15+#27#72+#20,'RG/IE.....: '+frmprincipal.Texto_Justifica(frmmodulo.qrcliente.fieldbyname('rg').asstring,39,' ','D'));
      writeln(arquivo, #15 + #27#72 + #20,
        '----------------------------------------------------');
      writeln(arquivo, #18 + #27#71 + #20, '   DEVOLUCAO DE MERCADORIA');
      writeln(arquivo, #15 + #27#72 + #20,
        '----------------------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20,
        'CODIGO PRODUTO                  QUANTIDADE     TOTAL');
      writeln(arquivo, #15 + #27#72 + #20,
        '----------------------------------------------------');

      frmvenda.qrvenda_produto.Refresh;
      frmvenda.qrvenda_produto.First;

      while not frmvenda.qrvenda_produto.Eof do
      begin
        texto1 := frmvenda.qrvenda_produto.FieldByName('serial').AsString;

        writeln(arquivo, #15 + #27#72 + #20,
          frmprincipal.Texto_Justifica(frmvenda.qrvenda_produto.FieldByName
          ('codproduto').AsString, 6, '0', 'E') + ' ' +
          frmprincipal.Texto_Justifica(frmvenda.qrvenda_produto.FieldByName
          ('produto').AsString, 21, '0', 'E') + ' ' +
          frmprincipal.Texto_Justifica(formatfloat('###,##0.00',
          frmvenda.qrvenda_produto.FieldByName('qtde').asfloat), 10, ' ', 'E') +
          ' ' + frmprincipal.Texto_Justifica
          (frmvenda.qrvenda_produto.FieldByName('numeracao').AsString, 2, ' ',
          'D') + frmprincipal.Texto_Justifica(formatfloat('###,##0.00',
          frmvenda.qrvenda_produto.FieldByName('total').asfloat), 10,
          ' ', 'E'));
        frmvenda.qrvenda_produto.next;
      end;

      writeln(arquivo, #15 + #27#72 + #20,
        '----------------------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20,
        '                             | SUBTOTAL  |' +
        frmprincipal.Texto_Justifica(formatfloat('###,##0.00',
        frmvenda.rtotal.value), 10, ' ', 'E'));
      writeln(arquivo, #15 + #27#72 + #20,
        '                             | CREDITO   |' +
        frmprincipal.Texto_Justifica(formatfloat('###,##0.00', rcredito.value),
        10, ' ', 'E'));

      writeln(arquivo, #15 + #27#72 + #20,
        '----------------------------------------------------');
      writeln(arquivo, #15 + #27#72 + #20, '');
      writeln(arquivo, #15 + #27#72 + #20, '');
      writeln(arquivo, #15 + #27#72 + #20, '');
      writeln(arquivo, #15 + #27#72 + #20,
        '         ------------------------------------       ');
      writeln(arquivo, #15 + #27#72 + #20, '                      Assinatura');

      while subir_papel <> 0 do
      begin
        writeln(arquivo, #15 + #27#72 + #20, '');
        subir_papel := subir_papel - 1;
      end;

      subir_papel := 14;

      vias := vias - 1;

      {
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
      }

      closefile(arquivo);

    end;

  end;

end;

end.
